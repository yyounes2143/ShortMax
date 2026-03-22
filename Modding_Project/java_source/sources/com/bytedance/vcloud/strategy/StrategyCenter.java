package com.bytedance.vcloud.strategy;

import android.content.Context;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class StrategyCenter {
    public static final int ALGO_CONFIG_SMART_SERVICE_PACKAGE_URL = 31021;
    public static final int ALGO_CONFIG_STRING_BANDWIDTH = 31007;
    public static final int ALGO_CONFIG_STRING_COMMON = 31001;
    public static final int ALGO_CONFIG_STRING_DASP = 31026;
    public static final int ALGO_CONFIG_STRING_DOWNLOAD_IO = 31023;
    public static final int ALGO_CONFIG_STRING_DYNAMIC = 31011;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_DOWNLOAD_IO = 31024;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAYLOAD = 31015;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAYRANGE = 31016;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAY_BUFFER = 31019;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PRELOAD = 31014;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_SELECT_BITRATE = 31017;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_TIMEINFO = 31013;
    public static final int ALGO_CONFIG_STRING_IO_DEMAND = 31022;
    public static final int ALGO_CONFIG_STRING_MODULE_CONFIG = 31008;
    public static final int ALGO_CONFIG_STRING_OPTION = 31012;
    public static final int ALGO_CONFIG_STRING_PLAY_BUFFER = 31018;
    public static final int ALGO_CONFIG_STRING_PLAY_LOAD = 31004;
    public static final int ALGO_CONFIG_STRING_PLAY_RANGE = 31005;
    public static final int ALGO_CONFIG_STRING_PRELOAD = 31010;
    public static final int ALGO_CONFIG_STRING_PRELOAD_BACKGROUND = 31020;
    public static final int ALGO_CONFIG_STRING_PRELOAD_TIMELINESS = 31003;
    public static final int ALGO_CONFIG_STRING_SELECT_BITRATE = 31006;
    public static final int ALGO_CONFIG_STRING_SELECT_DYNAMIC_CURVE = 31025;
    public static final int ALGO_CONFIG_STRING_SMART_PRELOAD = 31002;
    @Deprecated
    public static final int ALGO_CONFIG_STRING_SMART_RANGE_REQUEST = 31009;
    public static final int ALGO_STRING_BEGIN = 59000;
    public static final int ALGO_STRING_SELECT_PORTRAIT_NEED = 59004;
    public static final int APP_BLOCK_TYPE = 1011;
    public static final int APP_CONFIG_CACHE_DIR = 31209;
    public static final int APP_CONFIG_SESSION_ID = 31211;
    public static final int APP_DASP_FEATURE = 31223;
    public static final int APP_HAR_MODE = 1009;
    public static final int APP_MEDIA_LIST_LOAD_MORE = 31220;
    public static final int APP_MEDIA_LIST_UPDATE = 31221;
    public static final int APP_PAUSE_ALL_PRELOAD = 31215;
    public static final int APP_PAUSE_SCENE_PRELOAD = 31217;
    public static final int APP_PRELOAD_CANCEL_ALL_EVENT = 31205;
    public static final int APP_REFRESH_MEDIA_LIST = 31219;
    public static final int APP_RESUME_ALL_PRELOAD = 31216;
    public static final int APP_RESUME_SCENE_PRELOAD = 31218;
    public static final int APP_SOLARIA_PORTRAIT = 31222;
    public static final int APP_STATE = 1001;
    public static final int APP_STATE_BACKGROUND = 2;
    public static final int APP_STATE_FOREGROUND = 1;
    public static final int APP_UPDATE_TRACE_HOST = 31207;
    public static final int BANDWIDTH_DEFAULT_INITIAL_SPEED = 1004;
    public static final int BANDWIDTH_QUEUE_SIZE = 1002;
    public static final int CLEAR_DATA = 6;
    public static final int CONFIG_PEAK_SETTING = 31206;
    public static final int DASP_SIGNAL_PLAY = 31224;
    public static final int DASP_SIGNAL_REALTIME = 31225;
    public static final int DATA_SERIALIZED_KEY_VALUE = 31212;
    public static final int DATA_SERIALIZED_UPDATE = 31210;
    public static final int DEVICE_POWER_MODE = 1012;
    public static final int DEVICE_THERMAL_MODE = 1013;
    public static final int DOWNLOAD_IO_STATE_DOWNLOADING = 1;
    public static final int DOWNLOAD_IO_STATE_IDLE = 2;
    public static final int DOWNLOAD_IO_STATE_UNKNOWN = 0;
    public static final int ENABLE_SMART_SERVICE = 808;
    public static final int ENGINE_NET_SCORE = 31213;
    public static final int EVENT_ADAPTIVE_RANGE_BUFFER = 2009;
    public static final int EVENT_ADAPTIVE_RANGE_ENABLED = 2008;
    public static final int EVENT_FIRST_FRAME_LABEL = 2007;
    public static final int EVENT_LOAD_CONTROL_SLIDING_WINDOW = 2017;
    public static final int EVENT_LOAD_CONTROL_VERSION = 2016;
    public static final int EVENT_MODULE_ACTIVATED = 2014;
    public static final int EVENT_NETWORK_STALL_LIST = 2020;
    public static final int EVENT_NORIFY_DOWNLOAD_STATE = 2500;
    public static final int EVENT_PLAYER_RANGE_DETERMINED = 2013;
    public static final int EVENT_PLAY_BUFFER_DIFF_RESULT = 2011;
    public static final int EVENT_PLAY_RELATED_PRELOAD_FINISHED = 2012;
    public static final int EVENT_PLAY_TASK_OPERATE = 2000;
    public static final int EVENT_PRELOAD_DECISION_INFO = 2015;
    public static final int EVENT_PRELOAD_DECISION_INFO2 = 2021;
    public static final int EVENT_PRELOAD_PERSONALIZED_OPTION = 2004;
    public static final int EVENT_PRELOAD_SWITCH = 2001;
    public static final int EVENT_REMAINING_BUFFER_DURATION_AT_STOP = 2010;
    public static final int EVENT_RE_BUFFER_DURATION_INITIAL = 2002;
    public static final int EVENT_SCENE_SWITCH = 2018;
    public static final int EVENT_SERIALIZED_DATA = 2019;
    public static final int EVENT_STALL_LABEL = 2006;
    public static final int EVENT_STARTUP_DURATION = 2003;
    public static final int EVENT_WATCH_DURATION_LABEL = 2005;
    public static final int GET_MEDIA_LIST_BY_SCENE_ID = 31302;
    public static final int GET_NETWORK_SPEED = 20401;
    public static final int GET_PRELOAD_STRATEGY_LOG_INFO = 31301;
    public static final int GLOBAL_OPTION_END = 60000;
    public static final int GLOBAL_OPTION_START = 50000;
    public static final int LANDSCAPE_PLAY_TYPE = 1007;
    public static final int LOAD_DATA = 1;
    public static final int LOAD_KEY_VALUE_DATA = 5;
    public static final int LOG_DEBUG = 1;
    public static final int LOG_ERROR = 4;
    public static final int LOG_FATAL = 5;
    public static final int LOG_INFO = 2;
    public static final int LOG_LEVEL = 10000;
    public static final int LOG_TYPE_ERROR = 3;
    public static final int LOG_TYPE_EVENT = 1;
    public static final int LOG_TYPE_PLAY = 0;
    public static final int LOG_TYPE_PRIORITY_TASK = 4;
    public static final int LOG_TYPE_STRATEGY = 2;
    public static final int LOG_VERBOSE = 0;
    public static final int LOG_WARN = 3;
    public static final int MODULE_SWITCH_ABR = 807;
    public static final int MODULE_SWITCH_BANDWIDTH = 803;
    public static final int MODULE_SWITCH_PLAY_LOAD = 806;
    public static final int MODULE_SWITCH_PRELOAD = 805;
    public static final int MODULE_SWITCH_SELECT_BITRATE = 804;
    public static final int NETWORK_TYPE_APP = 1008;
    public static final int NET_STATE_CHANGED = 1202;
    public static final int NetStateUnReachable = 0;
    public static final int NetStateUnknown = -1;
    public static final int NetStateWWAN = 10;
    public static final int NetStateWifi = 20;
    public static final int ONE_PLAY_CONFIG_PLAY_BUFFER = 56008;
    public static final int ONE_PLAY_CONFIG_PLAY_LOAD = 56006;
    public static final int ONE_PLAY_CONFIG_PLAY_RANGE = 56007;
    public static final int OPTION_ALL_PRELOAD_FINISH_MESSAGE = 50007;
    public static final int OPTION_AUTO_RESUME_TASK_WHEN_PLAY = 50009;
    public static final int OPTION_CACHE_SELECTED_REP = 50020;
    public static final int OPTION_CACHE_TIMESTAMP = 50003;
    public static final int OPTION_CHECK_EXITED_LC = 50004;
    public static final int OPTION_CHECK_ORIGIN_LC = 50005;
    public static final int OPTION_ENABLE_IO_DECISION = 50008;
    public static final int OPTION_ENABLE_USE_CACHE_FLAG = 50011;
    public static final int OPTION_JAVA_KEY_BEGIN = 58000;
    public static final int OPTION_JAVA_KEY_END = 58999;
    public static final int OPTION_JAVA_SPEED_INFO_UPDATE = 58001;
    public static final int OPTION_LIMIT_REQ_LOG_COUNT = 50024;
    public static final int OPTION_PAUSE_IO_WHEN_REQ_END = 50010;
    public static final int OPTION_PLAYER_CONTEXT_INFO = 50012;
    public static final int OPTION_PRELOAD_MP3_SUPPORT = 50019;
    public static final int OPTION_SELECT_BITRATE_MODE = 50006;
    public static final int OPTION_STOP_BACKGROUND = 50001;
    public static final int OPTION_STOP_TASK_END_PLAY = 50002;
    public static final int OPTION_USE_ENGINE_NETWORK_TIMEOUT = 50080;
    public static final int PLAY_INTERACTION_BLOCK_DURATION_NON_PRELOADED = 802;
    public static final int PLAY_INTERACTION_BLOCK_DURATION_PRELOADED = 801;
    public static final int PLAY_TASK_EST_PLAYTIME = 103;
    public static final int PLAY_TASK_FIRST_BLOCK_DECISION_TIME = 101;
    public static final int PLAY_TASK_FIRST_BLOCK_EXEC_TIME = 102;
    public static final int PLAY_TASK_PAUSE = 1;
    public static final int PLAY_TASK_RANGE = 4;
    public static final int PLAY_TASK_RANGE_DURATION = 5;
    public static final int PLAY_TASK_RESUME = 2;
    public static final int PLAY_TASK_SAFE_FACTOR = 7;
    public static final int PLAY_TASK_SEEK_LABEL = 100;
    public static final int PLAY_TASK_SMART_LEVEL = 104;
    public static final int PLAY_TASK_STOP = 3;
    public static final int PLAY_TASK_TARGET_BUFFER = 6;
    public static final int PORTRAIT_CHANGED = 1003;
    public static final int PRELOAD_SMART_CONFIG_JSON_UPDATE = 31203;
    public static final int PRELOAD_SMART_RET_LABEL = 31201;
    public static final int PRELOAD_TIMELINESS_RET_LABEL = 31202;
    public static final int REMOVE_DATA = 3;
    public static final int SAVE_DATA = 2;
    public static final int SAVE_KEY_VALUE_DATA = 4;
    public static final int SELECT_BITRATE_TYPE_PLAY = 1;
    public static final int SELECT_BITRATE_TYPE_PRELOAD = 2;
    @Deprecated
    public static final int SMART_RANGE_REQUEST_LABEL = 31204;
    private static final String TAG = "VCStrategy";
    public static final int TRAFFIC_EXCITATION = 1005;
    public static final int TTNETWORK_LEVEL = 1010;
    public static final int USER_CHOOSE_QUALITY_MODE = 1006;
    public static final int VOD_SETTINGS_PORTRAIT = 31214;
    private IStrategyEventListener mListener;
    private long mHandle = 0;
    private boolean mDidStart = false;
    private int mLogLevel = 3;
    private SmartServiceWrapper mSmartServiceWrapper = new SmartServiceWrapper();
    private ISmartServiceSupplier mSmartServiceSupplier = new ISmartServiceSupplier() { // from class: com.bytedance.vcloud.strategy.StrategyCenter.1
        @Override // com.bytedance.vcloud.strategy.ISmartServiceSupplier
        public String executeSmartService(String str, String str2) {
            try {
                return String.valueOf(StrategyCenter.this.mSmartServiceWrapper.predictSmartSlice(new JSONObject(str2)));
            } catch (JSONException unused) {
                return "";
            }
        }

        @Override // com.bytedance.vcloud.strategy.ISmartServiceSupplier
        public String getLastResult(String str) {
            return String.valueOf(StrategyCenter.this.mSmartServiceWrapper.getLastResult());
        }
    };

    public StrategyCenter(IStrategyEventListener iStrategyEventListener) {
        this.mListener = null;
        this.mListener = iStrategyEventListener;
    }

    private native void _addInterimMedia(long j10, String str, ISelectBitrateListener iSelectBitrateListener, String str2, boolean z10, boolean z11);

    private native void _addMedia(long j10, String str, ISelectBitrateListener iSelectBitrateListener, String str2, boolean z10);

    private native void _addMediaWithCallback(long j10, String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener, String str2, boolean z10, boolean z11);

    private native void _addPriorityTask(long j10, String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener);

    private native void _businessEvent(long j10, int i10, int i11);

    private native void _businessEvent(long j10, int i10, int i11, int i12);

    private native void _businessEvent(long j10, int i10, int i11, String str);

    private native void _businessEvent(long j10, int i10, String str);

    private native long _create(IStrategyEventListener iStrategyEventListener);

    private native void _createPlayer(long j10, long j11, String str, String str2);

    private native void _createPlayerWithTag(long j10, long j11, String str, String str2, String str3);

    private native void _createScene(long j10, String str);

    private native void _destroyScene(long j10, String str);

    private native void _focusMedia(long j10, String str, int i10);

    private native float _getFloatValue(long j10, int i10, float f10);

    private native int _getIntValue(long j10, int i10, int i11);

    private native long _getLongValue(long j10, int i10, long j11);

    private native long _getLongValue(long j10, int i10, String str, long j11);

    private native String _getStrValue(long j10, int i10, String str);

    private native int _iPlayerVersion(long j10);

    private native void _insertMedia(long j10, String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener, String str2, int i10);

    private native boolean _isIOManagerVersionMatch(long j10);

    private native void _makeCurrentPlayer(long j10, String str);

    private native void _moveMedia(long j10, String str, int i10, int i11);

    private native void _moveToScene(long j10, String str);

    private native void _playSelection(long j10, String str, int i10, int i11);

    private native String _popLogData(long j10, int i10, String str);

    private native void _release(long j10);

    private native void _releasePlayer(long j10, String str, String str2);

    private native void _removeAllMedia(long j10, String str, int i10);

    private native void _removeMedia(long j10, String str, int i10, int i11);

    private native void _removeMedia(long j10, String str, String str2);

    private native void _removePriorityTask(long j10, String str);

    private native String _selectBitrate(long j10, String str, int i10, String str2, Object obj);

    private native String _selectBitrateStringMap(long j10, String str, int i10, String str2, Object obj);

    private native String _selectBitrateStringMapWithObject(long j10, Object obj, int i10, String str, Object obj2);

    private native void _setAlgorithmJson(long j10, int i10, String str);

    private native void _setAppInfo(long j10, String str);

    private native void _setAppServer(long j10, IAppService iAppService);

    private native void _setEventListener(long j10, IStrategyEventListener iStrategyEventListener);

    private native void _setFloatValue(long j10, int i10, float f10);

    private native void _setIOManager(long j10, long j11, long j12);

    private native void _setIntValue(long j10, int i10, int i11);

    private native void _setIntervalMS(long j10, int i10);

    private native void _setLogCallback(long j10, ILogCallback iLogCallback);

    private native void _setLongValue(long j10, int i10, long j11);

    private native void _setPlayDoubleConfig(long j10, String str, int i10, double d10);

    private native void _setPlayIntConfig(long j10, String str, int i10, int i11);

    private native void _setPlayLongConfig(long j10, String str, int i10, long j11);

    private native void _setPlayStringConfig(long j10, String str, int i10, String str2);

    private native void _setPlayTaskProgress(long j10, float f10);

    private native void _setProbeType(long j10, int i10);

    private native void _setSettingsInfo(long j10, String str, String str2);

    private native void _setSmartServiceSupplier(long j10, ISmartServiceSupplier iSmartServiceSupplier);

    private native void _setStateSupplier(long j10, IStrategyStateSupplier iStrategyStateSupplier);

    private native void _setStrValue(long j10, int i10, String str);

    private native void _start(long j10);

    private native void _stop(long j10);

    private native void _updateMedia(long j10, String str, String str2, String str3);

    public void addMedia(String str, ISelectBitrateListener iSelectBitrateListener, String str2, boolean z10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _addMedia(j10, str, iSelectBitrateListener, str2, z10);
    }

    public void addPriorityTask(String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _addPriorityTask(j10, str, iSelectBitrateListener, iPreloadTaskCallbackListener);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void businessEvent(int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _businessEvent(j10, i10, i11);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public void create(Context context, boolean z10) {
        if (!isLoadLibrarySucceed()) {
            if (z10) {
                StrategyCenterJniLoader.loadLibrary(context);
                if (!StrategyCenterJniLoader.isLibraryLoaded) {
                    Log.i(TAG, "load library fail.");
                    return;
                }
            }
            this.mHandle = _create(this.mListener);
        }
    }

    public void createPlayer(long j10, String str, String str2) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return;
        }
        _createPlayer(j11, j10, str, str2);
    }

    public void createScene(String str) {
        long j10 = this.mHandle;
        if (j10 != 0 && str != null) {
            _createScene(j10, str);
        }
    }

    public void destroyScene(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _destroyScene(j10, str);
    }

    public void focusMedia(String str, int i10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _focusMedia(j10, str, i10);
    }

    public float getFloatValue(int i10, float f10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return f10;
        }
        try {
            return _getFloatValue(j10, i10, f10);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            return f10;
        }
    }

    public int getIntValue(int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return i11;
        }
        try {
            return _getIntValue(j10, i10, i11);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            return i11;
        }
    }

    public long getLongValue(int i10, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return j10;
        }
        try {
            return _getLongValue(j11, i10, j10);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            return j10;
        }
    }

    public String getStringValue(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return str;
        }
        try {
            return _getStrValue(j10, i10, str);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            return str;
        }
    }

    public int iPlayerVersion() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return -1;
        }
        return _iPlayerVersion(j10);
    }

    public void insertMedia(String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener, String str2, int i10) {
        Log.d("StrategyBridge", "handle = " + this.mHandle + ",insert media, sceneId = " + str2 + " pos = " + i10 + ",info = " + str);
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _insertMedia(j10, str, iSelectBitrateListener, iPreloadTaskCallbackListener, str2, i10);
    }

    public boolean isIOManagerVersionMatch() {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return false;
        }
        return _isIOManagerVersionMatch(j10);
    }

    public boolean isLoadLibrarySucceed() {
        if (this.mHandle != 0) {
            return true;
        }
        return false;
    }

    public boolean isRunning() {
        return this.mDidStart;
    }

    public void makeCurrentPlayer(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _makeCurrentPlayer(j10, str);
    }

    public void moveMedia(String str, int i10, int i11) {
        Log.d("StrategyBridge", "handle = " + this.mHandle + ",move media, sceneId = " + str + " fromPosition = " + i10 + ",toPosition = " + i11);
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _moveMedia(j10, str, i10, i11);
    }

    public void playSelection(String str, int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _playSelection(j10, str, i10, i11);
    }

    public String popLogData(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return "";
        }
        return _popLogData(j10, i10, str);
    }

    public void releasePlayer(String str, String str2) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _releasePlayer(j10, str, str2);
    }

    public void removeAllMedia(String str, int i10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _removeAllMedia(j10, str, i10);
    }

    public void removeMedia(String str, int i10, int i11) {
        Log.d("StrategyBridge", "handle = " + this.mHandle + ",remove media, sceneId = " + str + " startPosition = " + i10 + ",count = " + i11);
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _removeMedia(j10, str, i10, i11);
    }

    public void removePriorityTask(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _removePriorityTask(j10, str);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public String selectBitrate(String str, int i10, String str2, Object obj) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        try {
            return _selectBitrate(j10, str, i10, str2, obj);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
            return null;
        }
    }

    @Deprecated
    public String selectBitrateStringMap(String str, int i10, String str2, Object obj) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        try {
            return _selectBitrateStringMap(j10, str, i10, str2, obj);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
            return null;
        }
    }

    public String selectBitrateStringMapWithObject(JSONObject jSONObject, int i10, String str, Object obj) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return null;
        }
        try {
            return _selectBitrateStringMapWithObject(j10, jSONObject, i10, str, obj);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
            return null;
        }
    }

    public void setAlgorithmJson(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setAlgorithmJson(j10, i10, str);
    }

    public void setAppInfo(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setAppInfo(j10, str);
    }

    public void setAppServer(IAppService iAppService) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setAppServer(j10, iAppService);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setEventListener(IStrategyEventListener iStrategyEventListener) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setEventListener(j10, iStrategyEventListener);
    }

    public void setFloatValue(int i10, float f10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setFloatValue(j10, i10, f10);
    }

    public void setIOManager(long j10, long j11) {
        long j12 = this.mHandle;
        if (j12 == 0) {
            return;
        }
        _setIOManager(j12, j10, j11);
    }

    public void setIntValue(int i10, int i11) {
        if (i10 == 10000) {
            this.mLogLevel = i11;
        }
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setIntValue(j10, i10, i11);
    }

    public void setLogCallback(ILogCallback iLogCallback) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setLogCallback(j10, iLogCallback);
    }

    public void setLongValue(int i10, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return;
        }
        try {
            _setLongValue(j11, i10, j10);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public void setPlayDoubleConfig(String str, int i10, double d10) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setPlayDoubleConfig(j10, str, i10, d10);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setPlayIntConfig(String str, int i10, int i11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setPlayIntConfig(j10, str, i10, i11);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setPlayLongConfig(String str, int i10, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return;
        }
        try {
            _setPlayLongConfig(j11, str, i10, j10);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setPlayStringConfig(String str, int i10, String str2) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setPlayStringConfig(j10, str, i10, str2);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setSettingsInfo(String str, String str2) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setSettingsInfo(j10, str, str2);
    }

    public void setSmartServiceSupplier(ISmartServiceSupplier iSmartServiceSupplier) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setSmartServiceSupplier(j10, iSmartServiceSupplier);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void setStateSupplier(IStrategyStateSupplier iStrategyStateSupplier) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _setStateSupplier(j10, iStrategyStateSupplier);
    }

    public void setStringValue(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _setStrValue(j10, i10, str);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public void start(Context context, boolean z10) {
        String stringValue;
        if (this.mDidStart) {
            return;
        }
        create(context, z10);
        if (this.mHandle == 0) {
            return;
        }
        setIntValue(10000, this.mLogLevel);
        _start(this.mHandle);
        if (getIntValue(808, 0) != 0 && (stringValue = getStringValue(31021, "")) != null && !stringValue.isEmpty()) {
            this.mSmartServiceWrapper.configServer(stringValue);
            setSmartServiceSupplier(this.mSmartServiceSupplier);
        }
        this.mDidStart = true;
    }

    public void stop() {
        if (!this.mDidStart) {
            return;
        }
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _stop(j10);
        this.mDidStart = false;
    }

    public void switchToScene(String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _moveToScene(j10, str);
    }

    public void updateMedia(String str, String str2, String str3) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _updateMedia(j10, str, str2, str3);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public void addMedia(String str, ISelectBitrateListener iSelectBitrateListener, String str2, boolean z10, boolean z11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _addInterimMedia(j10, str, iSelectBitrateListener, str2, z10, z11);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
        }
    }

    public void createPlayer(long j10, String str, String str2, String str3) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return;
        }
        try {
            _createPlayerWithTag(j11, j10, str, str2, str3);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            _createPlayer(this.mHandle, j10, str, str2);
        }
    }

    public void businessEvent(int i10, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _businessEvent(j10, i10, str);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public long getLongValue(int i10, String str, long j10) {
        long j11 = this.mHandle;
        if (j11 == 0) {
            return j10;
        }
        try {
            return _getLongValue(j11, i10, str, j10);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
            return j10;
        }
    }

    public void removeMedia(String str, String str2) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        _removeMedia(j10, str, str2);
    }

    public void addMedia(String str, ISelectBitrateListener iSelectBitrateListener, IPreloadTaskCallbackListener iPreloadTaskCallbackListener, String str2, boolean z10, boolean z11) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _addMediaWithCallback(j10, str, iSelectBitrateListener, iPreloadTaskCallbackListener, str2, z10, z11);
        } catch (Throwable th2) {
            Log.i(TAG, th2.toString());
            try {
                _addInterimMedia(this.mHandle, str, iSelectBitrateListener, str2, z10, z11);
            } catch (Throwable th3) {
                Log.i(TAG, th3.toString());
            }
        }
    }

    public void businessEvent(int i10, int i11, int i12) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _businessEvent(j10, i10, i11, i12);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }

    public void businessEvent(int i10, int i11, String str) {
        long j10 = this.mHandle;
        if (j10 == 0) {
            return;
        }
        try {
            _businessEvent(j10, i10, i11, str);
        } catch (Throwable th2) {
            Log.e(TAG, th2.toString());
        }
    }
}
