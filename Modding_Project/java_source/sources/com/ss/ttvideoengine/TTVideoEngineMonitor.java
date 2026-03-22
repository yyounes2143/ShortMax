package com.ss.ttvideoengine;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
@Keep
/* loaded from: classes6.dex */
public final class TTVideoEngineMonitor {
    private static final String ACTION_CROSSTALK_DIDHAPPEN = "com.bytedance.android.vodsdk.player.monitor.ACTION_CROSSTALK_DIDHAPPEN";
    private static final String ACTION_LIVE_PLAYER_PLAYING = "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_PLAYING";
    private static final String ACTION_LIVE_PLAYER_STOP_OR_RELEASE = "com.bytedance.android.livesdk.player.monitor.ACTION_LIVE_PLAYER_STOP_OR_RELEASE";
    private static final String TAG = "TTVideoEngineMonitor";
    private static volatile boolean enableCheck = false;
    private static volatile TTVideoEngineMonitor instance;
    private final Context mContext;
    private CrosstalkReceiver mCrosstalkReceiver;
    private Handler mainHandler;
    private HashMap<String, TTVideoEngineStateWrapper> allEngineWrapper = new HashMap<>();
    private int playingCount = 0;
    private HashMap<String, TTVideoEngineLivePlayerInfo> playingLivePLayerInfos = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class CrosstalkReceiver extends BroadcastReceiver {
        private CrosstalkReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            TTVideoEngineLivePlayerInfo tTVideoEngineLivePlayerInfo;
            boolean z10;
            if (TTVideoEngineMonitor.enableCheck && intent != null && !TextUtils.isEmpty(intent.getAction())) {
                intent.getAction();
                String stringExtra = intent.getStringExtra("enginehash");
                if (TextUtils.isEmpty(stringExtra)) {
                    return;
                }
                String action = intent.getAction();
                action.hashCode();
                if (!action.equals(TTVideoEngineMonitor.ACTION_LIVE_PLAYER_STOP_OR_RELEASE)) {
                    if (action.equals(TTVideoEngineMonitor.ACTION_LIVE_PLAYER_PLAYING)) {
                        synchronized (this) {
                            tTVideoEngineLivePlayerInfo = (TTVideoEngineLivePlayerInfo) TTVideoEngineMonitor.this.playingLivePLayerInfos.get(stringExtra);
                        }
                        if (tTVideoEngineLivePlayerInfo != null) {
                            return;
                        }
                        String stringExtra2 = intent.getStringExtra(ITTVideoEngineEventSource.KEY_TAG);
                        String stringExtra3 = intent.getStringExtra(ITTVideoEngineEventSource.KEY_SUBTAG);
                        TTVideoEngineLivePlayerInfo tTVideoEngineLivePlayerInfo2 = new TTVideoEngineLivePlayerInfo();
                        if (!TextUtils.isEmpty(stringExtra2)) {
                            tTVideoEngineLivePlayerInfo2.mTag = stringExtra2;
                        }
                        if (!TextUtils.isEmpty(stringExtra3)) {
                            tTVideoEngineLivePlayerInfo2.mSubTag = stringExtra3;
                        }
                        synchronized (this) {
                            TTVideoEngineMonitor.this.playingLivePLayerInfos.put(stringExtra, tTVideoEngineLivePlayerInfo2);
                            if (TTVideoEngineMonitor.this.playingCount + TTVideoEngineMonitor.this.playingLivePLayerInfos.size() >= 2) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                        }
                        if (z10) {
                            TTVideoEngineMonitor.this.postRunCrosstalkCheck();
                            return;
                        }
                        return;
                    }
                    return;
                }
                synchronized (this) {
                    TTVideoEngineMonitor.this.playingLivePLayerInfos.remove(stringExtra);
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public final class TTVideoEngineLivePlayerInfo {
        public String mTag = "";
        public String mSubTag = "";

        public TTVideoEngineLivePlayerInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class TTVideoEngineStateWrapper {
        private boolean hasSetPlaying = false;
        private WeakReference<TTVideoEngine> weakVideoEngine;

        public TTVideoEngineStateWrapper(TTVideoEngine tTVideoEngine) {
            this.weakVideoEngine = null;
            this.weakVideoEngine = new WeakReference<>(tTVideoEngine);
        }
    }

    private TTVideoEngineMonitor(Context context) {
        this.mContext = context.getApplicationContext();
        start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void crosstalkCheck() {
        ArrayList<TTVideoEngine> arrayList;
        boolean z10;
        HashMap<String, TTVideoEngineLivePlayerInfo> hashMap;
        boolean z11;
        boolean z12;
        boolean z13;
        int i10;
        int i11;
        ArrayList<TTVideoEngine> arrayList2;
        synchronized (this) {
            try {
                int size = this.playingLivePLayerInfos.size();
                int i12 = this.playingCount;
                arrayList = null;
                z10 = false;
                if (i12 + size >= 2) {
                    if (i12 > 0) {
                        arrayList2 = new ArrayList<>();
                        ArrayList arrayList3 = new ArrayList();
                        for (String str : this.allEngineWrapper.keySet()) {
                            TTVideoEngineStateWrapper tTVideoEngineStateWrapper = this.allEngineWrapper.get(str);
                            if (tTVideoEngineStateWrapper != null) {
                                TTVideoEngine tTVideoEngine = (TTVideoEngine) tTVideoEngineStateWrapper.weakVideoEngine.get();
                                if (tTVideoEngine != null) {
                                    if (tTVideoEngineStateWrapper.hasSetPlaying) {
                                        arrayList2.add(tTVideoEngine);
                                    }
                                } else {
                                    arrayList3.add(str);
                                }
                            }
                        }
                        if (arrayList3.size() > 0) {
                            Iterator it = arrayList3.iterator();
                            while (it.hasNext()) {
                                this.allEngineWrapper.remove((String) it.next());
                            }
                        }
                        z12 = true;
                    } else {
                        arrayList2 = null;
                        z12 = false;
                    }
                    if (size > 0) {
                        z13 = true;
                        hashMap = new HashMap<>(this.playingLivePLayerInfos);
                        arrayList = arrayList2;
                        z11 = true;
                    } else {
                        hashMap = null;
                        z13 = false;
                        arrayList = arrayList2;
                        z11 = true;
                    }
                } else {
                    hashMap = null;
                    z11 = false;
                    z12 = false;
                    z13 = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!z11) {
            return;
        }
        if (arrayList != null) {
            i10 = arrayList.size();
        } else {
            i10 = 0;
        }
        if (hashMap != null) {
            i11 = hashMap.size();
        } else {
            i11 = 0;
        }
        if (i10 + i11 < 2) {
            return;
        }
        z12 = (arrayList == null || arrayList.size() <= 0) ? false : false;
        z13 = (hashMap == null || hashMap.size() <= 0) ? false : false;
        ArrayList arrayList4 = new ArrayList();
        if (z12 && arrayList != null && arrayList.size() > 0) {
            Iterator<TTVideoEngine> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                ArrayList<HashMap<String, Object>> crosstalkHappen = it2.next().crosstalkHappen(arrayList, hashMap);
                if (z13 && !z10 && crosstalkHappen != null && crosstalkHappen.size() > 0) {
                    arrayList4.addAll(crosstalkHappen);
                    z10 = true;
                }
            }
        }
        if (z13 && hashMap != null && hashMap.size() > 0) {
            for (String str2 : hashMap.keySet()) {
                TTVideoEngineLivePlayerInfo tTVideoEngineLivePlayerInfo = hashMap.get(str2);
                if (tTVideoEngineLivePlayerInfo != null) {
                    arrayList4.add(generateCrosstalkMap(tTVideoEngineLivePlayerInfo.mTag, tTVideoEngineLivePlayerInfo.mSubTag, 1, str2));
                }
            }
            String generateCrosstalkCallbackStr = generateCrosstalkCallbackStr(arrayList4);
            if (!TextUtils.isEmpty(generateCrosstalkCallbackStr)) {
                Intent intent = new Intent(ACTION_CROSSTALK_DIDHAPPEN);
                intent.putExtra("crosstalk_info_list", generateCrosstalkCallbackStr);
                try {
                    LocalBroadcastManager.getInstance(this.mContext).sendBroadcast(intent);
                } catch (Exception e10) {
                    TTVideoEngineLog.w(TAG, e10.getMessage());
                }
            }
        }
    }

    @Keep
    public static void enableCrosstalkCheck(Context context, boolean z10) {
        enableCheck = z10;
        getInstance(context);
    }

    @Nullable
    private static String generateCrosstalkCallbackStr(ArrayList<HashMap<String, Object>> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            try {
                return new JSONArray((Collection) arrayList).toString();
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private static HashMap<String, Object> generateCrosstalkMap(String str, String str2, int i10, String str3) {
        HashMap<String, Object> hashMap = new HashMap<>();
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(ITTVideoEngineEventSource.KEY_TAG, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put(ITTVideoEngineEventSource.KEY_SUBTAG, str2);
        }
        hashMap.put("islive", Integer.valueOf(i10));
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put("enginehash", str3);
        }
        return hashMap;
    }

    @Keep
    public static TTVideoEngineMonitor getInstance(Context context) {
        if (instance == null) {
            synchronized (TTVideoEngineMonitor.class) {
                try {
                    if (instance == null) {
                        instance = new TTVideoEngineMonitor(context);
                        TTVideoEngineLog.i(TAG, "Construct TTVideoEngineMonitor");
                    }
                } finally {
                }
            }
        }
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void postRunCrosstalkCheck() {
        try {
            if (this.mainHandler == null) {
                this.mainHandler = new Handler(Looper.getMainLooper());
            }
            this.mainHandler.postDelayed(new Runnable() { // from class: com.ss.ttvideoengine.p
                @Override // java.lang.Runnable
                public final void run() {
                    TTVideoEngineMonitor.this.crosstalkCheck();
                }
            }, 100L);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void registerBroadcastReceiver(Context context) {
        IntentFilter intentFilter = new IntentFilter(ACTION_LIVE_PLAYER_PLAYING);
        intentFilter.addAction(ACTION_LIVE_PLAYER_STOP_OR_RELEASE);
        this.mCrosstalkReceiver = new CrosstalkReceiver();
        LocalBroadcastManager.getInstance(context).registerReceiver(this.mCrosstalkReceiver, intentFilter);
    }

    private void unregisterBroadcastReceiver(Context context) {
        if (this.mCrosstalkReceiver != null) {
            try {
                LocalBroadcastManager.getInstance(context).unregisterReceiver(this.mCrosstalkReceiver);
            } catch (Exception e10) {
                TTVideoEngineLog.w(TAG, e10.getMessage());
            }
            this.mCrosstalkReceiver = null;
        }
    }

    public void engineStateChange(int i10, boolean z10) {
        if (!TTVideoEngine.sEngineCrosstalkCheck) {
            return;
        }
        boolean z11 = false;
        if (!z10) {
            synchronized (this) {
                try {
                    TTVideoEngineStateWrapper tTVideoEngineStateWrapper = this.allEngineWrapper.get(i10 + "");
                    if (tTVideoEngineStateWrapper != null && tTVideoEngineStateWrapper.hasSetPlaying) {
                        tTVideoEngineStateWrapper.hasSetPlaying = false;
                        this.playingCount--;
                    }
                } finally {
                }
            }
            return;
        }
        synchronized (this) {
            try {
                TTVideoEngineStateWrapper tTVideoEngineStateWrapper2 = this.allEngineWrapper.get(i10 + "");
                if (tTVideoEngineStateWrapper2 != null && !tTVideoEngineStateWrapper2.hasSetPlaying) {
                    tTVideoEngineStateWrapper2.hasSetPlaying = true;
                    this.playingCount++;
                    if (this.playingCount + this.playingLivePLayerInfos.size() >= 2) {
                        z11 = true;
                    }
                }
            } finally {
            }
        }
        if (z11) {
            postRunCrosstalkCheck();
        }
    }

    public void start() {
        if (enableCheck && this.mCrosstalkReceiver == null) {
            registerBroadcastReceiver(this.mContext);
        }
    }

    public void startObserve(int i10, TTVideoEngine tTVideoEngine) {
        if (tTVideoEngine == null) {
            return;
        }
        TTVideoEngineStateWrapper tTVideoEngineStateWrapper = new TTVideoEngineStateWrapper(tTVideoEngine);
        synchronized (this) {
            HashMap<String, TTVideoEngineStateWrapper> hashMap = this.allEngineWrapper;
            hashMap.put(i10 + "", tTVideoEngineStateWrapper);
        }
    }

    public void stop() {
        unregisterBroadcastReceiver(this.mContext);
    }

    public void stopObserve(int i10) {
        synchronized (this) {
            HashMap<String, TTVideoEngineStateWrapper> hashMap = this.allEngineWrapper;
            hashMap.remove(i10 + "");
        }
    }
}
