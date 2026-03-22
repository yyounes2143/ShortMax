package com.ss.ttvideoengine.strategrycenter;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.vcloud.strategy.IAppService;
import com.bytedance.vcloud.strategy.ILogCallback;
import com.bytedance.vcloud.strategy.StrategyCenterJniLoader;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.LibraryLoaderProxy;
import com.ss.ttvideoengine.TTNetWorkListener;
import com.ss.ttvideoengine.TTNetworkStateCallback;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.database.IKVStorage;
import com.ss.ttvideoengine.database.IKVStorageProvider;
import com.ss.ttvideoengine.database.KVDBManager;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.log.VideoEventManager;
import com.ss.ttvideoengine.model.BareVideoModel;
import com.ss.ttvideoengine.model.BarrageMaskInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.portrait.PortraitChangeListener;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.preload.PreloadScene;
import com.ss.ttvideoengine.selector.strategy.GearStrategy;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.selector.strategy.GearStrategyContext;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class StrategyHelper {
    public static final String LOG_KEY_PRECISE_CACHE_CONTROL = "st_play_task_op";
    static final String TAG = "VCStrategy";
    private IStrategyEventListener mEventListener;
    private com.bytedance.vcloud.strategy.StrategyCenter mCenter = null;
    private IStrategyStateSupplier mSupplier = null;
    private IPortraitService mPortraitService = null;
    private boolean mDidSetAppInfo = false;
    private long mIOManager = 0;
    private long mIOManagerVersion = 0;
    private Context mContext = null;
    private int mLogLevel = 5;
    private int mAppID = 0;
    private boolean mCheckPlayerVer = false;
    private boolean mPlayerIsMatch = false;
    private TTNetworkStateCallback mNetWorkChangeCb = null;
    private WeakReference<TTNetworkStateCallback> mNetWorkChangeCbr = null;
    private final ReentrantLock mLock = new ReentrantLock();
    private DBHelper mDBHelper = null;
    private Map<Integer, Integer> mModuleSwitchMap = new ConcurrentHashMap(5);
    private StrategyEvent mInnerEvent = new StrategyEvent();
    private Map<Integer, Integer> mSettingMap = new ConcurrentHashMap();
    private Map<Integer, String> mJsonStringMap = new ConcurrentHashMap();
    private IKVStorageProvider mStorageProvider = null;
    private int mEnableSpeedInfoUpdate = 0;
    private boolean mSpeedInfoUpdate = true;
    private float mLastBandwidth = -1.0f;
    private ReentrantLock mSpeedLock = new ReentrantLock();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public final class DBHelper {
        private static final String dataBaseName = "TTVideoEngine_vod_strategy_database_v01";
        private static final String dataIndex = "data_index";
        Context mContext;
        private final ArrayList<String> mIndexArray = new ArrayList<>();
        IKVStorage mKVStorage = null;
        final int mMaxCacheNum = 2000;
        WeakReference<StrategyHelper> mSHelper;

        public DBHelper(Context context, StrategyHelper strategyHelper) {
            this.mSHelper = null;
            this.mContext = context;
            this.mSHelper = new WeakReference<>(strategyHelper);
        }

        private boolean _create() {
            if (this.mKVStorage == null) {
                if (StrategyHelper.this.mStorageProvider != null) {
                    this.mKVStorage = StrategyHelper.this.mStorageProvider.getKVStorage(dataBaseName);
                    TTVideoEngineLog.d(StrategyHelper.TAG, "use kv storage provider");
                } else {
                    this.mKVStorage = new KVDBManager(this.mContext, dataBaseName);
                    TTVideoEngineLog.d(StrategyHelper.TAG, "use KVDBManager");
                    return ((KVDBManager) this.mKVStorage).isCreateDBSuccess();
                }
            }
            if (this.mKVStorage != null) {
                return true;
            }
            return false;
        }

        private void _loadData() {
            ArrayList<String> stringToStringArray;
            StrategyHelper strategyHelper = this.mSHelper.get();
            if (strategyHelper != null && (stringToStringArray = stringToStringArray(this.mKVStorage.getString(dataIndex))) != null && !stringToStringArray.isEmpty()) {
                this.mIndexArray.addAll(stringToStringArray);
                Iterator<String> it = stringToStringArray.iterator();
                while (it.hasNext()) {
                    String string = this.mKVStorage.getString(it.next());
                    if (!TextUtils.isEmpty(string)) {
                        strategyHelper.getCenter().businessEvent(com.bytedance.vcloud.strategy.StrategyCenter.DATA_SERIALIZED_UPDATE, string);
                    }
                }
            }
        }

        private void _saveDataIndexes() {
            this.mKVStorage.putString(dataIndex, indexToString(this.mIndexArray));
        }

        private String indexToString(ArrayList<String> arrayList) {
            if (arrayList != null) {
                StringBuilder sb2 = new StringBuilder(arrayList.size());
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    sb2.append(arrayList.get(i10));
                    if (i10 < arrayList.size() - 1) {
                        sb2.append(",");
                    }
                }
                return sb2.toString();
            }
            return null;
        }

        @Nullable
        private ArrayList<String> stringToStringArray(String str) {
            ArrayList<String> arrayList = null;
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                String[] split = str.split(",");
                if (split == null || split.length <= 0) {
                    return null;
                }
                ArrayList<String> arrayList2 = new ArrayList<>();
                try {
                    for (String str2 : split) {
                        if (!TextUtils.isEmpty(str2)) {
                            arrayList2.add(str2);
                        }
                    }
                    return arrayList2;
                } catch (Throwable th2) {
                    th = th2;
                    arrayList = arrayList2;
                    TTVideoEngineLog.d(th);
                    return arrayList;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        public void clear() {
            try {
                this.mKVStorage.clear();
            } catch (Throwable th2) {
                TTVideoEngineLog.e(StrategyHelper.TAG, "clear fail. " + th2.toString());
            }
        }

        public void event(int i10, String str, String str2) {
            switch (i10) {
                case 1:
                    loadDB();
                    return;
                case 2:
                    saveData(str, str2);
                    return;
                case 3:
                    removeData(str);
                    return;
                case 4:
                    saveKeyValue(str, str2);
                    return;
                case 5:
                    loadKeyValue(str);
                    return;
                case 6:
                    clear();
                    return;
                default:
                    return;
            }
        }

        public void loadDB() {
            try {
                if (!_create()) {
                    TTVideoEngineLog.e(StrategyHelper.TAG, "create db fail.");
                } else {
                    _loadData();
                }
            } catch (Throwable th2) {
                TTVideoEngineLog.d(th2);
            }
        }

        public void loadKeyValue(String str) {
            try {
                if (!_create()) {
                    TTVideoEngineLog.e(StrategyHelper.TAG, "create db fail.");
                    return;
                }
                StrategyHelper strategyHelper = this.mSHelper.get();
                if (strategyHelper == null) {
                    return;
                }
                strategyHelper.getCenter().businessEvent(com.bytedance.vcloud.strategy.StrategyCenter.DATA_SERIALIZED_KEY_VALUE, this.mKVStorage.getString(str));
            } catch (Throwable th2) {
                TTVideoEngineLog.e(StrategyHelper.TAG, "load key value fail. " + th2.toString());
            }
        }

        public void removeData(String str) {
            try {
                this.mIndexArray.remove(str);
                this.mKVStorage.removeString(str);
                _saveDataIndexes();
            } catch (Throwable th2) {
                TTVideoEngineLog.e(StrategyHelper.TAG, "remove data fail. " + th2.toString());
            }
        }

        public void saveData(String str, String str2) {
            try {
                this.mIndexArray.add(str);
                if (this.mIndexArray.size() > 2000) {
                    this.mKVStorage.removeString(this.mIndexArray.remove(0));
                }
                _saveDataIndexes();
                this.mKVStorage.putString(str, str2);
            } catch (Throwable th2) {
                TTVideoEngineLog.e(StrategyHelper.TAG, "save data fail. " + th2.toString());
            }
        }

        public void saveKeyValue(String str, String str2) {
            try {
                this.mKVStorage.putString(str, str2);
            } catch (Throwable th2) {
                TTVideoEngineLog.e(StrategyHelper.TAG, "save key value fail. " + th2.toString());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public static class MyALogCallBak implements ILogCallback {
        MyALogCallBak() {
        }

        @Override // com.bytedance.vcloud.strategy.ILogCallback
        public void log(String str) {
            TTVideoEngineLog.i(StrategyHelper.TAG, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class MyAppServer implements IAppService {
        private WeakReference<StrategyHelper> mHelper;

        MyAppServer(StrategyHelper strategyHelper) {
            this.mHelper = null;
            this.mHelper = new WeakReference<>(strategyHelper);
        }

        @Override // com.bytedance.vcloud.strategy.IAppService
        public void addGroupConfig(String str, String str2, String str3) {
            StrategyHelper strategyHelper = this.mHelper.get();
            if (strategyHelper != null && strategyHelper.mPortraitService != null) {
                ArrayList arrayList = new ArrayList();
                try {
                    JSONArray jSONArray = new JSONArray(str3);
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        arrayList.add(jSONArray.getString(i10));
                    }
                } catch (Throwable unused) {
                }
                HashMap hashMap = new HashMap();
                hashMap.put("from", str);
                hashMap.put("name", str2);
                strategyHelper.mPortraitService.addGroupConfig(hashMap, arrayList);
            }
        }

        @Override // com.bytedance.vcloud.strategy.IAppService
        public String getMediaPortrait(String str, String str2, String str3) {
            StrategyHelper strategyHelper = this.mHelper.get();
            if (strategyHelper != null && strategyHelper.mPortraitService != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", IPortraitService.TYPE_ONE_PORTRAIT);
                hashMap.put("name", str3);
                hashMap.put("video_id", str2);
                hashMap.put("from", str);
                Map<String, String> portraits = strategyHelper.mPortraitService.getPortraits(hashMap);
                if (portraits != null) {
                    return new JSONObject(portraits).toString();
                }
            }
            return null;
        }

        @Override // com.bytedance.vcloud.strategy.IAppService
        public String getMediaPortraits(String str, String str2, String str3) {
            StrategyHelper strategyHelper = this.mHelper.get();
            if (strategyHelper != null && strategyHelper.mPortraitService != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", IPortraitService.TYPE_GROUP_PORTRAITS);
                hashMap.put("name", str3);
                hashMap.put("video_id", str2);
                hashMap.put("from", str);
                Map<String, String> portraits = strategyHelper.mPortraitService.getPortraits(hashMap);
                if (portraits != null) {
                    return new JSONObject(portraits).toString();
                }
            }
            return null;
        }

        @Override // com.bytedance.vcloud.strategy.IAppService
        @Nullable
        public String getPortrait(String str, String str2) {
            StrategyHelper strategyHelper = this.mHelper.get();
            if (strategyHelper != null && strategyHelper.mPortraitService != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", IPortraitService.TYPE_ONE_PORTRAIT);
                hashMap.put("from", str);
                hashMap.put("name", str2);
                Map<String, String> portraits = strategyHelper.mPortraitService.getPortraits(hashMap);
                if (portraits != null && portraits.containsKey(str2)) {
                    return portraits.get(str2);
                }
                return "";
            }
            return null;
        }

        @Override // com.bytedance.vcloud.strategy.IAppService
        @Nullable
        public String getPortraits(String str, String str2) {
            StrategyHelper strategyHelper = this.mHelper.get();
            if (strategyHelper != null && strategyHelper.mPortraitService != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", IPortraitService.TYPE_GROUP_PORTRAITS);
                hashMap.put("name", str2);
                hashMap.put("from", str);
                Map<String, String> portraits = strategyHelper.mPortraitService.getPortraits(hashMap);
                if (portraits != null) {
                    return new JSONObject(portraits).toString();
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class MyIStrategyEventListener implements com.bytedance.vcloud.strategy.IStrategyEventListener {
        private WeakReference<StrategyHelper> mHelper;

        MyIStrategyEventListener(StrategyHelper strategyHelper) {
            this.mHelper = null;
            this.mHelper = new WeakReference<>(strategyHelper);
        }

        @Override // com.bytedance.vcloud.strategy.IStrategyEventListener
        public void onEvent(String str, int i10, int i11, String str2) {
            TTVideoEngineLog.i(StrategyHelper.TAG, "on event, videoID = " + str + ", key = " + i10 + ", value = " + i11 + ", info = " + str2);
            if (i10 == 2019) {
                StrategyHelper strategyHelper = this.mHelper.get();
                if (strategyHelper != null && strategyHelper.mDBHelper != null) {
                    strategyHelper.mDBHelper.event(i11, str, str2);
                    return;
                }
                return;
            }
            StrategyHelper.this.mInnerEvent.event(str, i10, i11, str2);
            StrategyHelper.this.mLock.lock();
            if (StrategyHelper.this.mEventListener != null) {
                StrategyHelper.this.mLock.unlock();
                if (i10 == 2012 || i10 >= 2500) {
                    StrategyHelper.this.mEventListener.onEvent(str, i10, i11, str2);
                    return;
                }
                return;
            }
            StrategyHelper.this.mLock.unlock();
        }

        @Override // com.bytedance.vcloud.strategy.IStrategyEventListener
        public void onEventLog(String str, String str2) {
            TTVideoEngineLog.d(StrategyHelper.TAG, "eventName: " + str + ", logInfo: " + str2);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    VideoEventManager.instance.addEventV2(true, new JSONObject(str2), str);
                } catch (JSONException e10) {
                    TTVideoEngineLog.d(e10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class StrategyHelperHolder {
        private static final StrategyHelper Instance = new StrategyHelper();

        private StrategyHelperHolder() {
        }
    }

    private void _configParams() {
        this.mDBHelper = new DBHelper(this.mContext, this);
        getCenter().setIntValue(10000, this.mLogLevel);
        getCenter().setIntValue(801, StrategyKeys.mInteractionBlockDurationPreloaded);
        getCenter().setIntValue(802, StrategyKeys.mInteractionBlockDurationNonPreloaded);
        for (Map.Entry<Integer, String> entry : this.mJsonStringMap.entrySet()) {
            getCenter().setAlgorithmJson(entry.getKey().intValue(), entry.getValue());
        }
        for (Map.Entry<Integer, Integer> entry2 : this.mSettingMap.entrySet()) {
            getCenter().setIntValue(entry2.getKey().intValue(), entry2.getValue().intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String _mapToString(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                    jSONObject.put(key, value);
                }
            }
            return jSONObject.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int _netState(int i10) {
        if (i10 == -1) {
            return 0;
        }
        if (i10 == 0) {
            return 20;
        }
        if (i10 != 2 && i10 != 3 && i10 != 1 && i10 != 4) {
            return -1;
        }
        return 10;
    }

    private void _netStateListener() {
        if (this.mNetWorkChangeCb != null) {
            return;
        }
        this.mNetWorkChangeCb = new TTNetworkStateCallback() { // from class: com.ss.ttvideoengine.strategrycenter.StrategyHelper.3
            @Override // com.ss.ttvideoengine.TTNetworkStateCallback
            public void onAccessChanged(int i10, int i11, int i12) {
                if (i10 == 0) {
                    StrategyHelper.this.getCenter().businessEvent(1202, StrategyHelper._netState(i12));
                }
            }
        };
        if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 16L)) {
            this.mNetWorkChangeCbr = new WeakReference<>(this.mNetWorkChangeCb);
            TTNetWorkListener.getInstance().startListen(this.mNetWorkChangeCbr);
        }
    }

    private Map<String, Integer> _stringToIntValueMap(String str) {
        if (str != null && str.length() >= 2) {
            HashMap hashMap = new HashMap();
            for (String str2 : str.split(",")) {
                try {
                    try {
                        String[] split = str2.split(":");
                        if (split.length == 2) {
                            hashMap.put(split[0], Integer.valueOf(Integer.parseInt(split[1])));
                        }
                    } catch (NumberFormatException e10) {
                        TTVideoEngineLog.d(e10);
                        return hashMap;
                    }
                } catch (Throwable unused) {
                    return hashMap;
                }
            }
            return hashMap;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public Map<String, String> _stringToMap(String str, Map<String, String> map) {
        if (!TextUtils.isEmpty(str) && map != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    String string = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string)) {
                        map.put(next, string);
                    }
                }
            } catch (Exception unused) {
            }
            return map;
        }
        return null;
    }

    public static void buildMaskInfo(Map map, String str, String str2) {
        List arrayList;
        try {
            if (map.containsKey("infos")) {
                arrayList = (List) map.get("infos");
            } else {
                arrayList = new ArrayList();
            }
            HashMap hashMap = new HashMap();
            hashMap.put(BarrageMaskInfo.KEY_MASK_FILE_HASH, str2);
            if (!TextUtils.isEmpty(str)) {
                hashMap.put("urls", new String[]{str});
            }
            hashMap.put("media_type", "mask");
            arrayList.add(hashMap);
            map.put("infos", arrayList);
        } catch (Throwable th2) {
            TTVideoEngineLog.e(TAG, th2.toString());
        }
    }

    public static void buildMediaInfo(Map map, String str, String str2, String[] strArr) {
        List arrayList;
        try {
            if (map.containsKey("infos")) {
                arrayList = (List) map.get("infos");
            } else {
                arrayList = new ArrayList();
            }
            HashMap hashMap = new HashMap();
            hashMap.put("urls", strArr);
            hashMap.put(BarrageMaskInfo.KEY_MASK_FILE_HASH, str2);
            arrayList.add(hashMap);
            if (TextUtils.isEmpty(str)) {
                str = str2;
            }
            map.put("vid", str);
            map.put("infos", arrayList);
        } catch (Throwable th2) {
            TTVideoEngineLog.e(TAG, th2.toString());
        }
    }

    public static StrategyHelper helper() {
        return StrategyHelperHolder.Instance;
    }

    private void internalStart(boolean z10) {
        String str;
        TTVideoEngineLog.i(TAG, "internalStart needLoadLibrary=" + z10);
        getCenter().create(this.mContext, z10);
        if (!getCenter().isLoadLibrarySucceed()) {
            TTVideoEngineLog.i(TAG, "internalStart isLoadLibrarySucceed false");
            return;
        }
        _configParams();
        _netStateListener();
        if (this.mJsonStringMap.get(31001) == null) {
            if (this.mAppID == 32) {
                str = "{\"strategy_center_v1\":{\"feed\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}},\"fullscreen_immersive\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}},\"story\":{\"preload_strategy\":{\"name\":\"adaptive\",\"low_buf\":5,\"high_buf\":20,\"tasks\":[{\"count\":5,\"size\":800,\"offset\":0}]}}}}";
            } else {
                str = "{\"strategy_center_v1\":{\"engine_default\":{\"preload_strategy\":{\"name\":\"default\",\"tasks\":[{\"download_progress\":100,\"count\":5,\"offset\":0,\"size\":800}]}},\"video_range_request\":{\"enable_concurrent_download\":0,\"allowed_segment_download\":0,\"fixed_size\":3000,\"fixed_duration\":10}}}";
            }
            setAlgorithmJson(31001, str);
        }
        getCenter().setIOManager(this.mIOManager, this.mIOManagerVersion);
        if (!getCenter().isIOManagerVersionMatch()) {
            TTVideoEngineLog.i(TAG, "io manager interface not match, start fail.");
            return;
        }
        getCenter().setLogCallback(new MyALogCallBak());
        if (this.mPortraitService != null) {
            getCenter().setAppServer(new MyAppServer(this));
        }
        JSONObject jsonObject = SettingsHelper.helper().getJsonObject(SettingsHelper.MODULE_VOD);
        if (jsonObject != null) {
            getCenter().setSettingsInfo(SettingsHelper.MODULE_VOD, jsonObject.toString());
        }
        PreloadScene preloadScene = new PreloadScene("engine_default");
        preloadScene.mSceneId = "engine_default";
        preloadScene.mBriefSceneId = "engine_brief_default";
        preloadScene.mAutoPlay = 1;
        preloadScene.mMute = 0;
        preloadScene.mMaxVisibleCardCnt = 1;
        preloadScene.setAlgorithmName("engine_default");
        helper().getCenter().createScene(preloadScene.toJsonString());
        getCenter().setStateSupplier(new com.bytedance.vcloud.strategy.IStrategyStateSupplier() { // from class: com.ss.ttvideoengine.strategrycenter.StrategyHelper.1
            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public double getNetworkScore() {
                return PortraitNetworkScore.getInstance().getLastTargetBitrate();
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public double getNetworkSpeed() {
                if (StrategyHelper.this.mSupplier != null) {
                    return StrategyHelper.this.mSupplier.getNetworkSpeed();
                }
                return 0.0d;
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public int getNetworkType() {
                return StrategyHelper._netState(TTNetWorkListener.getInstance().getCurrentAccessType());
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public String mediaInfoJsonString(String str2) {
                Map<String, Object> mediaInfo;
                if (StrategyHelper.this.mSupplier == null || (mediaInfo = StrategyHelper.this.mSupplier.mediaInfo(str2)) == null) {
                    return null;
                }
                try {
                    return new JSONObject(mediaInfo).toString();
                } catch (Throwable th2) {
                    TTVideoEngineLog.d(th2);
                    return null;
                }
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public String onAfterSelect(String str2, String str3, int i10, Object obj) {
                IGearStrategyListener iGearStrategyListener;
                GearStrategyContext gearStrategyContext;
                TTVideoEngine tTVideoEngine;
                Object obj2;
                GearStrategyConfig gearStrategyConfig;
                TTVideoEngineLog.i(StrategyHelper.TAG, "[GearStrategy] StrategyHelper.onAfterSelect type=" + i10 + " context=" + obj);
                if (obj instanceof GearStrategyContext) {
                    gearStrategyContext = (GearStrategyContext) obj;
                    iGearStrategyListener = gearStrategyContext.getGearStrategyListener();
                } else {
                    iGearStrategyListener = null;
                    gearStrategyContext = null;
                }
                if (iGearStrategyListener == null && (gearStrategyConfig = TTVideoEngine.getGearStrategyConfig()) != null) {
                    iGearStrategyListener = gearStrategyConfig.getGearStrategyListener();
                }
                if (iGearStrategyListener == null) {
                    TTVideoEngineLog.i(StrategyHelper.TAG, "listener is null");
                    return str3;
                }
                if (gearStrategyContext != null) {
                    obj2 = gearStrategyContext.getUserData();
                    WeakReference<TTVideoEngine> videoEngineRef = gearStrategyContext.getVideoEngineRef();
                    if (videoEngineRef != null) {
                        tTVideoEngine = videoEngineRef.get();
                    } else {
                        tTVideoEngine = null;
                    }
                } else {
                    tTVideoEngine = null;
                    obj2 = null;
                }
                HashMap hashMap = new HashMap();
                StrategyHelper.this._stringToMap(str3, hashMap);
                if (tTVideoEngine != null) {
                    tTVideoEngine.setLoggerLongOption(109, System.currentTimeMillis());
                }
                iGearStrategyListener.onAfterSelect(null, hashMap, i10, obj2);
                if (tTVideoEngine != null) {
                    tTVideoEngine.setLoggerLongOption(110, System.currentTimeMillis());
                    if (hashMap.containsKey(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_USER_SELECTED)) {
                        try {
                            tTVideoEngine.setLoggerLongOption(101, Long.parseLong(hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE_USER_SELECTED)));
                        } catch (NumberFormatException unused) {
                        }
                        tTVideoEngine.setLoggerIntOption(102, 9);
                        return "";
                    }
                    if (hashMap.containsKey(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE)) {
                        try {
                            tTVideoEngine.setLoggerLongOption(101, Long.parseLong(hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_VIDEO_BITRATE)));
                        } catch (NumberFormatException unused2) {
                        }
                    }
                    if (hashMap.containsKey(GearStrategy.GEAR_STRATEGY_KEY_SELECT_REASON)) {
                        try {
                            tTVideoEngine.setLoggerIntOption(102, Integer.parseInt(hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_SELECT_REASON)));
                        } catch (NumberFormatException unused3) {
                        }
                    }
                    if (hashMap.containsKey("speed")) {
                        try {
                            tTVideoEngine.setLoggerLongOption(103, Long.parseLong(hashMap.get("speed")));
                        } catch (NumberFormatException unused4) {
                        }
                    }
                    if (hashMap.containsKey(104)) {
                        try {
                            tTVideoEngine.setLoggerIntOption(104, Integer.parseInt(hashMap.get(GearStrategy.GEAR_STRATEGY_KEY_ERROR_CODE)));
                            return "";
                        } catch (NumberFormatException unused5) {
                            return "";
                        }
                    }
                    return "";
                }
                return "";
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public String onBeforeSelect(String str2, String str3, int i10, Object obj) {
                GearStrategyContext gearStrategyContext;
                IGearStrategyListener iGearStrategyListener;
                TTVideoEngine tTVideoEngine;
                Object obj2;
                GearStrategyConfig gearStrategyConfig;
                TTVideoEngineLog.i(StrategyHelper.TAG, "[GearStrategy] StrategyHelper.onBeforeSelect type=" + i10 + " context=" + obj);
                BareVideoModel bareVideoModel = null;
                TTVideoEngine tTVideoEngine2 = null;
                if (obj instanceof GearStrategyContext) {
                    gearStrategyContext = (GearStrategyContext) obj;
                    iGearStrategyListener = gearStrategyContext.getGearStrategyListener();
                } else {
                    gearStrategyContext = null;
                    iGearStrategyListener = null;
                }
                if (iGearStrategyListener == null && (gearStrategyConfig = TTVideoEngine.getGearStrategyConfig()) != null) {
                    iGearStrategyListener = gearStrategyConfig.getGearStrategyListener();
                }
                if (iGearStrategyListener == null) {
                    TTVideoEngineLog.i(StrategyHelper.TAG, "listener is null");
                    return str3;
                }
                if (gearStrategyContext != null) {
                    obj2 = gearStrategyContext.getUserData();
                    IVideoModel videoModel = gearStrategyContext.getVideoModel();
                    WeakReference<TTVideoEngine> videoEngineRef = gearStrategyContext.getVideoEngineRef();
                    if (videoEngineRef != null) {
                        tTVideoEngine2 = videoEngineRef.get();
                    }
                    tTVideoEngine = tTVideoEngine2;
                    bareVideoModel = videoModel;
                } else {
                    tTVideoEngine = null;
                    obj2 = null;
                }
                if (bareVideoModel == null) {
                    bareVideoModel = new BareVideoModel.Builder().build();
                    bareVideoModel.fromMediaInfoJsonString(str2);
                }
                HashMap hashMap = new HashMap();
                StrategyHelper.this._stringToMap(str3, hashMap);
                if (tTVideoEngine != null) {
                    tTVideoEngine.setLoggerLongOption(107, System.currentTimeMillis());
                }
                iGearStrategyListener.onBeforeSelect(bareVideoModel, hashMap, i10, obj2);
                if (tTVideoEngine != null) {
                    tTVideoEngine.setLoggerLongOption(108, System.currentTimeMillis());
                }
                StrategyHelper.this.getCenter().updateMedia(bareVideoModel.getVideoRefStr(2), "", bareVideoModel.toMediaInfoJsonString());
                return StrategyHelper.this._mapToString(hashMap);
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            public String selectBitrateJsonString(String str2, int i10) {
                Map<String, Integer> selectBitrate;
                if (StrategyHelper.this.mSupplier == null || (selectBitrate = StrategyHelper.this.mSupplier.selectBitrate(str2, i10)) == null) {
                    return null;
                }
                try {
                    return new JSONObject(selectBitrate).toString();
                } catch (Throwable th2) {
                    TTVideoEngineLog.d(th2);
                    return null;
                }
            }

            @Override // com.bytedance.vcloud.strategy.IStrategyStateSupplier
            @Nullable
            public String selectBitrateJsonString(String str2, String str3, int i10) {
                Map<String, Integer> selectBitrate;
                if (StrategyHelper.this.mSupplier == null || (selectBitrate = StrategyHelper.this.mSupplier.selectBitrate(new StrategyMediaParam(str2, str3, i10))) == null) {
                    return null;
                }
                try {
                    return new JSONObject(selectBitrate).toString();
                } catch (Throwable th2) {
                    TTVideoEngineLog.d(th2);
                    return null;
                }
            }
        });
        getCenter().start(this.mContext, z10);
        helper().getCenter().switchToScene("engine_default");
        Map<String, Object> allLabels = PortraitEngine.getInstance().getAllLabels();
        if (allLabels != null) {
            try {
                getCenter().businessEvent(com.bytedance.vcloud.strategy.StrategyCenter.VOD_SETTINGS_PORTRAIT, new JSONObject(allLabels).toString());
            } catch (Exception unused) {
            }
        }
        PortraitEngine.getInstance().addPortraitListener(new PortraitChangeListener() { // from class: com.ss.ttvideoengine.strategrycenter.StrategyHelper.2
            @Override // com.ss.ttvideoengine.portrait.PortraitChangeListener
            public void onPortraitChange(String str2, Object obj) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(str2, obj);
                } catch (Exception unused2) {
                }
                StrategyHelper.this.getCenter().businessEvent(com.bytedance.vcloud.strategy.StrategyCenter.VOD_SETTINGS_PORTRAIT, jSONObject.toString());
            }
        });
    }

    public boolean checkPlayerVersion(int i10) {
        if (i10 != -1 && getCenter().isLoadLibrarySucceed()) {
            boolean z10 = true;
            this.mCheckPlayerVer = true;
            if (getCenter().iPlayerVersion() != i10) {
                z10 = false;
            }
            this.mPlayerIsMatch = z10;
        }
        return this.mPlayerIsMatch;
    }

    public void configAppInfo(String str, Map map) {
        if (!this.mDidSetAppInfo && getCenter().isLoadLibrarySucceed()) {
            getCenter().setAppInfo(str);
            this.mDidSetAppInfo = true;
        }
        if (map != null && map.containsKey("appid")) {
            this.mAppID = TTHelper.parseInt(map.get("appid"));
        }
    }

    public void enableSpeedInfoUpdate(int i10) {
        this.mEnableSpeedInfoUpdate = i10;
    }

    public com.bytedance.vcloud.strategy.StrategyCenter getCenter() {
        if (this.mCenter == null) {
            this.mLock.lock();
            try {
                if (this.mCenter == null) {
                    this.mCenter = new com.bytedance.vcloud.strategy.StrategyCenter(new MyIStrategyEventListener(this));
                }
            } finally {
                this.mLock.unlock();
            }
        }
        return this.mCenter;
    }

    @Nullable
    public Map<String, Object> getLogData(String str) {
        return this.mInnerEvent.getLogData(str);
    }

    public int getLogLevel() {
        return this.mLogLevel;
    }

    public float getNetworkSpeed() {
        if (this.mEnableSpeedInfoUpdate == 0) {
            return helper().getCenter().getFloatValue(com.bytedance.vcloud.strategy.StrategyCenter.GET_NETWORK_SPEED, -1.0f);
        }
        this.mSpeedLock.lock();
        try {
            if (!this.mSpeedInfoUpdate && this.mLastBandwidth > 0.0f) {
                TTVideoEngineLog.d(TAG, "speed doesnt need to be updated, update: " + this.mSpeedInfoUpdate + ", last: " + this.mLastBandwidth);
                return this.mLastBandwidth;
            }
            float floatValue = helper().getCenter().getFloatValue(com.bytedance.vcloud.strategy.StrategyCenter.GET_NETWORK_SPEED, -1.0f);
            if (floatValue > 0.0f) {
                TTVideoEngineLog.d(TAG, "speed update success, result: " + floatValue);
                this.mLastBandwidth = floatValue;
                this.mSpeedInfoUpdate = false;
            }
            return this.mLastBandwidth;
        } finally {
            this.mSpeedLock.unlock();
        }
    }

    public IStrategyStateSupplier getSupplier() {
        return this.mSupplier;
    }

    public boolean isRunning() {
        return getCenter().isRunning();
    }

    public boolean loadPluginLibrary(LibraryLoaderProxy libraryLoaderProxy) {
        this.mLock.lock();
        try {
            StrategyCenterJniLoader.loadCustomLibrary();
            return libraryLoaderProxy.loadLibrary("preload");
        } catch (Throwable th2) {
            try {
                TTVideoEngineLog.i(TAG, th2.toString());
                this.mLock.unlock();
                return false;
            } finally {
                this.mLock.unlock();
            }
        }
    }

    public int moduleSwitch(int i10) {
        if (!this.mModuleSwitchMap.containsKey(Integer.valueOf(i10))) {
            if (!getCenter().isRunning()) {
                return 0;
            }
            this.mModuleSwitchMap.put(Integer.valueOf(i10), Integer.valueOf(getCenter().getIntValue(i10, 0)));
        }
        return ((Integer) TTHelper.nonNullElse(this.mModuleSwitchMap.get(Integer.valueOf(i10)), 0)).intValue();
    }

    public boolean needCheckPlayerVersion() {
        return !this.mCheckPlayerVer;
    }

    public boolean playerIsMatch() {
        return this.mPlayerIsMatch;
    }

    @Nullable
    public Map<String, Object> popOneEventLog(String str) {
        return this.mInnerEvent.popLogData(1, str);
    }

    @Nullable
    public Map<String, Object> popOnePlayLog(String str) {
        return this.mInnerEvent.popLogData(0, str);
    }

    public void removeLogData(String str) {
        this.mInnerEvent.removeLogData(str);
    }

    @Nullable
    public Map<String, Integer> selectResolution(IVideoModel iVideoModel, int i10, @Nullable Map<String, String> map, GearStrategyContext gearStrategyContext) {
        String selectBitrate = getCenter().selectBitrate(iVideoModel.toMediaInfoJsonString(), i10, _mapToString(map), gearStrategyContext);
        if (TextUtils.isEmpty(selectBitrate)) {
            TTVideoEngineLog.d(TAG, "[GearStrategy]StrategyHelper.selectResolution result invalid retString=" + selectBitrate);
            return null;
        }
        return _stringToIntValueMap(selectBitrate);
    }

    public Map<String, Integer> selectResolutionStringMap(IVideoModel iVideoModel, int i10, @Nullable Map<String, String> map, GearStrategyContext gearStrategyContext) {
        String selectBitrateStringMap;
        String str;
        String str2;
        TTVideoEngineLog.i(TAG, "[GearStrategy]GearStrategy called");
        if (EngineGlobalConfig.getInstance().getEnableSelectUseObject() == 1) {
            selectBitrateStringMap = getCenter().selectBitrateStringMapWithObject(iVideoModel.getMediaInfo(), i10, _mapToString(map), gearStrategyContext);
        } else {
            selectBitrateStringMap = getCenter().selectBitrateStringMap(iVideoModel.toMediaInfoJsonString(), i10, _mapToString(map), gearStrategyContext);
        }
        if (TextUtils.isEmpty(selectBitrateStringMap)) {
            TTVideoEngineLog.d(TAG, "[GearStrategy]StrategyHelper.selectResolution result invalid retString=" + selectBitrateStringMap);
            return null;
        }
        HashMap hashMap = new HashMap();
        _stringToMap(selectBitrateStringMap, hashMap);
        if (map != null) {
            map.putAll(hashMap);
        }
        HashMap hashMap2 = new HashMap();
        if (hashMap.containsKey("video") && (str2 = hashMap.get("video")) != null) {
            hashMap2.put("video", Integer.valueOf(Integer.parseInt(str2)));
        }
        if (hashMap.containsKey("audio") && (str = hashMap.get("audio")) != null) {
            hashMap2.put("audio", Integer.valueOf(Integer.parseInt(str)));
        }
        return hashMap2;
    }

    public void setAlgorithmJson(int i10, String str) {
        if (TextUtils.isEmpty(str)) {
            TTVideoEngineLog.i(TAG, "[preload] Algorithm json " + str);
        } else if (getCenter().isLoadLibrarySucceed()) {
            getCenter().setAlgorithmJson(i10, str);
        } else {
            this.mJsonStringMap.put(Integer.valueOf(i10), str);
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setEventListener(IStrategyEventListener iStrategyEventListener) {
        this.mLock.lock();
        try {
            this.mEventListener = iStrategyEventListener;
        } finally {
            this.mLock.unlock();
        }
    }

    public void setIOManager(long j10, long j11) {
        this.mLock.lock();
        try {
            this.mIOManager = j10;
            this.mIOManagerVersion = j11;
        } finally {
            this.mLock.unlock();
        }
    }

    public void setIntValue(int i10, int i11) {
        if (i10 > 50000 && i10 < 60000) {
            if (i10 >= 58000 && i10 <= 58999 && i10 == 58001) {
                enableSpeedInfoUpdate(i11);
            }
            if (getCenter().isLoadLibrarySucceed()) {
                getCenter().setIntValue(i10, i11);
            } else {
                this.mSettingMap.put(Integer.valueOf(i10), Integer.valueOf(i11));
            }
        }
    }

    public void setKVStorageProvider(IKVStorageProvider iKVStorageProvider) {
        this.mStorageProvider = iKVStorageProvider;
    }

    public void setLogLevel(int i10) {
        getCenter().setIntValue(10000, i10);
        this.mLogLevel = i10;
    }

    public void setPortraitService(IPortraitService iPortraitService) {
        this.mLock.lock();
        try {
            if (this.mPortraitService == null && iPortraitService != null) {
                getCenter().setAppServer(new MyAppServer(this));
            }
            this.mPortraitService = iPortraitService;
            this.mLock.unlock();
        } catch (Throwable th2) {
            this.mLock.unlock();
            throw th2;
        }
    }

    public void setStringValue(int i10, String str) {
        if (i10 > 50000 && i10 < 60000) {
            if (getCenter().isLoadLibrarySucceed()) {
                getCenter().setStringValue(i10, str);
            } else {
                this.mJsonStringMap.put(Integer.valueOf(i10), str);
            }
        }
    }

    public void setSupplier(IStrategyStateSupplier iStrategyStateSupplier) {
        this.mSupplier = iStrategyStateSupplier;
    }

    public void speedInfoUpdate() {
        this.mSpeedLock.lock();
        try {
            TTVideoEngineLog.d(TAG, "speed info update");
            this.mSpeedInfoUpdate = true;
        } finally {
            this.mSpeedLock.unlock();
        }
    }

    public void start(boolean z10) {
        getCenter();
        this.mLock.lock();
        try {
            internalStart(z10);
        } finally {
            try {
            } finally {
            }
        }
    }

    @Nullable
    public Map<String, Object> getLogData(String str, String str2) {
        return this.mInnerEvent.getLogData(str, str2);
    }
}
