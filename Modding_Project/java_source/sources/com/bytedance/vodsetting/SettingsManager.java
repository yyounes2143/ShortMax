package com.bytedance.vodsetting;

import android.annotation.SuppressLint;
import android.content.Context;
import com.bytedance.vodsetting.Module;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class SettingsManager {
    private static final String LOCAL_CACHE_EXPIRE = "local_cache_expire";
    private static final String TAG = "Manager";
    @SuppressLint({"StaticFieldLeak"})
    private static SettingsManager instance;
    private boolean mAppBackGround;
    private final HashMap<String, Storage> mStorages;
    private final ReentrantReadWriteLock mListenerLock = new ReentrantReadWriteLock();
    private final ArrayList<SettingsListener> mListeners = new ArrayList<>();
    private Context mContext = null;
    private Fetcher mFetcher = null;
    private boolean mUseCache = true;
    private long mExpire = 0;
    private int mFetchInterval = 600;
    private long mVersion = 0;
    private int mMaxFetchTimes = 100;
    private Timer mSchedule = null;
    private TimerTask mTask = null;
    private final long mLocalCacheExpire = 0;
    private final ModuleItem[] cModuleItems = {ModuleItem.VOD, ModuleItem.MDL, ModuleItem.UPLOAD, ModuleItem.BIZ_PORTRAIT};

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum ModuleItem {
        VOD(1, "vod"),
        MDL(2, Module.MDL),
        UPLOAD(4, Module.UPLOAD),
        BIZ_PORTRAIT(16, Module.BIZ_PORTRAIT);
        
        int intValue;
        String stringValue;

        ModuleItem(int i10, String str) {
            this.intValue = i10;
            this.stringValue = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class MyFetcherListener implements FetcherListener {
        private final WeakReference<SettingsManager> mManager;

        MyFetcherListener(SettingsManager settingsManager) {
            this.mManager = new WeakReference<>(settingsManager);
        }

        @Override // com.bytedance.vodsetting.FetcherListener
        public void onResult(int i10, String str, JSONObject jSONObject) {
            onResult(i10, str, jSONObject, null, null);
        }

        @Override // com.bytedance.vodsetting.FetcherListener
        public void onResult(int i10, String str, JSONObject jSONObject, String str2, String str3) {
            SettingsManager settingsManager = this.mManager.get();
            if (settingsManager == null) {
                return;
            }
            Log.v(SettingsManager.TAG, "refresh settings: code " + i10 + ", message = " + str);
            if (i10 != 0) {
                Log.e(SettingsManager.TAG, "refresh data fail. code = " + i10);
                return;
            }
            JSONObject optJSONObject = jSONObject.optJSONObject(Module.GeneralSettings);
            if (optJSONObject != null) {
                long optLong = optJSONObject.optLong(Module.CommonKey.ConfigVersion);
                settingsManager.mFetcher.setConfigVersion(optLong);
                Storage storage = (Storage) SettingsManager.this.mStorages.get(Module.COMMON);
                storage.putLong(Module.CommonKey.ConfigVersion, optLong);
                int optInt = optJSONObject.optInt(Module.CommonKey.MaxFetchTimes, -1);
                if (optInt > 0) {
                    storage.putInt(Module.CommonKey.MaxFetchTimes, optInt);
                    settingsManager.mFetcher.setMaxFetchTimes(optInt);
                }
                int optInt2 = optJSONObject.optInt(Module.CommonKey.FetchInterval);
                if (optInt2 > 0 && optInt2 != storage.getInt(Module.CommonKey.FetchInterval, -1)) {
                    storage.putInt(Module.CommonKey.FetchInterval, optInt2);
                    settingsManager.mFetcher.setFetchInterval(optInt2);
                    SettingsManager.this._smartScheduleEvent(optInt2);
                }
                long optLong2 = optJSONObject.optLong("local_cache_expire");
                if (optLong2 > 0) {
                    storage.putLong("local_cache_expire", System.currentTimeMillis() + (optLong2 * 1000));
                }
                boolean optBoolean = optJSONObject.optBoolean(Module.CommonKey.UseLocalCache);
                storage.putInt(Module.CommonKey.UseLocalCache, optBoolean ? 1 : 0);
                if (!optBoolean) {
                    for (int i11 = 0; i11 < SettingsManager.this.cModuleItems.length; i11++) {
                        ((Storage) SettingsManager.this.mStorages.get(SettingsManager.this.cModuleItems[i11].stringValue)).removeAllCache();
                    }
                }
            }
            JSONObject optJSONObject2 = jSONObject.optJSONObject(Module.CustomSettings);
            if (optJSONObject2 != null) {
                if (str2 == null || str2.equals(Module.ALL)) {
                    for (int i12 = 0; i12 < SettingsManager.this.cModuleItems.length; i12++) {
                        SettingsManager settingsManager2 = SettingsManager.this;
                        settingsManager2._storeSettingsInfo(settingsManager2.cModuleItems[i12].stringValue, str3, optJSONObject2.optJSONObject(SettingsManager.this.cModuleItems[i12].stringValue));
                    }
                    return;
                }
                SettingsManager.this._storeSettingsInfo(str2, str3, optJSONObject2.optJSONObject(str2));
            }
        }
    }

    private SettingsManager() {
        HashMap<String, Storage> hashMap = new HashMap<>();
        this.mStorages = hashMap;
        hashMap.put(Module.COMMON, new Storage(Module.COMMON, 2));
        int i10 = 0;
        while (true) {
            ModuleItem[] moduleItemArr = this.cModuleItems;
            if (i10 < moduleItemArr.length) {
                HashMap<String, Storage> hashMap2 = this.mStorages;
                String str = moduleItemArr[i10].stringValue;
                hashMap2.put(str, new Storage(str, 3));
                i10++;
            } else {
                return;
            }
        }
    }

    private synchronized void _cancelScheduleEvent() {
        if (this.mTask != null) {
            Log.v(TAG, "cancel schedule");
            this.mTask.cancel();
            this.mTask = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _loadLocalData(String str) {
        Storage storage = this.mStorages.get(str);
        if (storage.tryToLoadLocal(this.mContext.getApplicationContext())) {
            if (this.mUseCache) {
                _notifyListener(str, 1000);
            } else {
                storage.removeAllCache();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void _loadLocalSettings(String str, boolean z10) {
        try {
            if (this.mExpire < 1) {
                Storage storage = this.mStorages.get(Module.COMMON);
                storage.tryToLoadLocal(this.mContext.getApplicationContext());
                int i10 = 0;
                this.mFetchInterval = storage.getInt(Module.CommonKey.FetchInterval, 0);
                this.mVersion = storage.getLong(Module.CommonKey.ConfigVersion, 0L);
                this.mExpire = storage.getLong("local_cache_expire", 0L);
                boolean z11 = true;
                if (storage.getInt(Module.CommonKey.UseLocalCache, 1) <= 0) {
                    z11 = false;
                }
                this.mUseCache = z11;
                this.mMaxFetchTimes = storage.getInt(Module.CommonKey.MaxFetchTimes, this.mMaxFetchTimes);
                while (true) {
                    ModuleItem[] moduleItemArr = this.cModuleItems;
                    if (i10 >= moduleItemArr.length) {
                        break;
                    }
                    _loadLocalData(moduleItemArr[i10].stringValue);
                    i10++;
                }
            }
            Fetcher fetcher = this.mFetcher;
            if (fetcher != null) {
                fetcher.setFetchInterval(this.mFetchInterval);
                this.mFetcher.setMaxFetchTimes(this.mMaxFetchTimes);
                this.mFetcher.setConfigVersion(this.mVersion);
            }
            if (z10) {
                long currentTimeMillis = System.currentTimeMillis();
                Log.v(TAG, "use cache: " + this.mUseCache + ", expire = " + this.mExpire + ", curTimeMs = " + currentTimeMillis);
                if (!this.mUseCache || this.mExpire <= currentTimeMillis) {
                    refresh(str);
                }
            }
            _smartScheduleEvent(this.mFetchInterval);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void _notifyListener(String str, int i10) {
        this.mListenerLock.readLock().lock();
        Iterator<SettingsListener> it = this.mListeners.iterator();
        while (it.hasNext()) {
            it.next().onNotify(str, i10);
        }
        this.mListenerLock.readLock().unlock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void _smartScheduleEvent(long j10) {
        try {
            Log.v(TAG, "smart schedule mAppBackGround:" + this.mAppBackGround + ", interval:" + j10);
            if (this.mAppBackGround) {
                _cancelScheduleEvent();
            } else {
                _startScheduleEvent(j10);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void _startScheduleEvent(long j10) {
        try {
            TimerTask timerTask = this.mTask;
            if (timerTask != null) {
                timerTask.cancel();
            }
            this.mTask = new TimerTask() { // from class: com.bytedance.vodsetting.SettingsManager.3
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    SettingsManager.this.refresh(Module.ALL);
                }
            };
            Timer timer = this.mSchedule;
            if (timer != null) {
                timer.purge();
            } else {
                this.mSchedule = new Timer(true);
            }
            if (j10 * 1000 < 1000) {
                j10 = 86400;
            }
            Log.v(TAG, "start schedule");
            long j11 = j10 * 1000;
            this.mSchedule.schedule(this.mTask, j11, j11);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _storeSettingsInfo(String str, String str2, JSONObject jSONObject) {
        boolean z10;
        if (jSONObject != null) {
            Storage storage = this.mStorages.get(str);
            JSONObject jsonObject = storage.getJsonObject();
            if (jsonObject == null || !jsonObject.toString().equals(jSONObject.toString())) {
                if (str2 != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                storage.storeJsonObject(jSONObject, z10);
                _notifyListener(str, 1000);
            }
        }
    }

    public static synchronized SettingsManager shareSettings() {
        SettingsManager settingsManager;
        synchronized (SettingsManager.class) {
            try {
                if (instance == null) {
                    instance = new SettingsManager();
                }
                settingsManager = instance;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return settingsManager;
    }

    public void addListener(SettingsListener settingsListener) {
        if (settingsListener == null) {
            return;
        }
        this.mListenerLock.writeLock().lock();
        this.mListeners.add(settingsListener);
        this.mListenerLock.writeLock().unlock();
    }

    public int getCommonInt(String str, int i10) {
        return getInt(Module.COMMON, str, i10);
    }

    public long getCommonLong(String str, long j10) {
        return getLong(Module.COMMON, str, j10);
    }

    public String getCommonString(String str, String str2) {
        return getString(Module.COMMON, str, str2);
    }

    public int getInt(String str, String str2, int i10) {
        return this.mStorages.get(str).getInt(str2, i10);
    }

    public JSONArray getJsonArray(String str, String str2) {
        return this.mStorages.get(str).getJsonArray(str2);
    }

    public JSONObject getJsonObject(String str, String str2) {
        return this.mStorages.get(str).getJsonObject(str2);
    }

    public long getLong(String str, String str2, long j10) {
        return this.mStorages.get(str).getLong(str2, j10);
    }

    public int getMDLInt(String str, int i10) {
        return getInt(Module.MDL, str, i10);
    }

    public JSONArray getMDLJsonArray(String str) {
        return getJsonArray(Module.MDL, str);
    }

    public JSONObject getMDLJsonObject(String str) {
        return getJsonObject(Module.MDL, str);
    }

    public long getMDLLong(String str, long j10) {
        return getLong(Module.MDL, str, j10);
    }

    public String getMDLString(String str, String str2) {
        return getString(Module.MDL, str, str2);
    }

    public String getString(String str, String str2, String str3) {
        return this.mStorages.get(str).getString(str2, str3);
    }

    public int getUploadInt(String str, int i10) {
        return getInt(Module.UPLOAD, str, i10);
    }

    public JSONArray getUploadJsonArray(String str) {
        return getJsonArray(Module.UPLOAD, str);
    }

    public JSONObject getUploadJsonObject(String str) {
        return getJsonObject(Module.UPLOAD, str);
    }

    public long getUploadLong(String str, long j10) {
        return getLong(Module.UPLOAD, str, j10);
    }

    public String getUploadString(String str, String str2) {
        return getString(Module.UPLOAD, str, str2);
    }

    public int getVodInt(String str, int i10) {
        return getInt("vod", str, i10);
    }

    public JSONArray getVodJsonArray(String str) {
        return getJsonArray("vod", str);
    }

    public JSONObject getVodJsonObject(String str) {
        return getJsonObject("vod", str);
    }

    public long getVodLong(String str, long j10) {
        return getLong("vod", str, j10);
    }

    public String getVodString(String str, String str2) {
        return getString("vod", str, str2);
    }

    public synchronized boolean isAppBackGround() {
        return this.mAppBackGround;
    }

    public void loadLocal(final int i10) {
        new Thread(new Runnable() { // from class: com.bytedance.vodsetting.SettingsManager.1
            @Override // java.lang.Runnable
            public void run() {
                if ((i10 & 8) > 0) {
                    SettingsManager.this._loadLocalData(Module.COMMON);
                }
                for (int i11 = 0; i11 < SettingsManager.this.cModuleItems.length; i11++) {
                    if ((i10 & SettingsManager.this.cModuleItems[i11].intValue) > 0) {
                        SettingsManager settingsManager = SettingsManager.this;
                        settingsManager._loadLocalData(settingsManager.cModuleItems[i11].stringValue);
                    }
                }
            }
        }).start();
    }

    public void loadLocalAndRefresh(final String str, boolean z10) {
        if (z10) {
            new Thread(new Runnable() { // from class: com.bytedance.vodsetting.SettingsManager.2
                @Override // java.lang.Runnable
                public void run() {
                    SettingsManager.this._loadLocalSettings(str, true);
                }
            }).start();
        } else {
            _loadLocalSettings(str, true);
        }
    }

    public void putCommonInt(String str, int i10) {
        this.mStorages.get(Module.COMMON).putInt(str, i10);
    }

    public void putCommonLong(String str, long j10) {
        this.mStorages.get(Module.COMMON).putLong(str, j10);
    }

    public void putCommonString(String str, String str2) {
        this.mStorages.get(Module.COMMON).putString(str, str2);
    }

    public void refresh() {
        Fetcher fetcher = this.mFetcher;
        if (fetcher != null) {
            fetcher.fetch(Module.ALL, null, true);
        }
    }

    public void refreshIfNeed(String str) {
        Fetcher fetcher = this.mFetcher;
        if (fetcher != null) {
            fetcher.fetch(str, null, false);
        }
    }

    public void removeListener(SettingsListener settingsListener) {
        if (settingsListener == null) {
            return;
        }
        this.mListenerLock.writeLock().lock();
        this.mListeners.remove(settingsListener);
        this.mListenerLock.writeLock().unlock();
    }

    public synchronized void setAppBackground(boolean z10) {
        if (this.mAppBackGround != z10) {
            Log.v(TAG, "setAppBackground:" + z10);
            this.mAppBackGround = z10;
            _smartScheduleEvent((long) this.mFetchInterval);
        }
    }

    public SettingsManager setContext(Context context) {
        if (this.mContext == null) {
            this.mContext = context;
            for (Storage storage : this.mStorages.values()) {
                storage.mContext = context;
            }
            this.mFetcher = new Fetcher(context.getApplicationContext(), new MyFetcherListener(this));
        }
        return this;
    }

    public SettingsManager setDebug(boolean z10) {
        this.mFetcher.setDebug(z10);
        Log.setDebugSwitch(z10);
        return this;
    }

    public SettingsManager setFetchInterval(int i10) {
        this.mFetcher.setFetchInterval(i10);
        return this;
    }

    public SettingsManager setMaxFetchTimes(int i10) {
        this.mMaxFetchTimes = i10;
        return this;
    }

    public SettingsManager setMaxRetryTimes(int i10) {
        this.mFetcher.setMaxRetryTimes(i10);
        return this;
    }

    public SettingsManager setNet(NetInterface netInterface) {
        this.mFetcher.setNet(netInterface);
        return this;
    }

    public JSONObject getJsonObject(String str) {
        return this.mStorages.get(str).getJsonObject();
    }

    public void refresh(String str) {
        Fetcher fetcher = this.mFetcher;
        if (fetcher != null) {
            fetcher.fetch(str, null, true);
        }
    }

    public void refresh(String str, String str2) {
        Fetcher fetcher = this.mFetcher;
        if (fetcher != null) {
            fetcher.fetch(str, str2, true);
        }
    }
}
