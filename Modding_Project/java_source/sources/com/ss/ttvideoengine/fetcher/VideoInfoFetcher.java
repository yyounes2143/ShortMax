package com.ss.ttvideoengine.fetcher;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.huawei.hms.framework.common.ContainerUtils;
import com.ss.ttvideoengine.InfoWrapper;
import com.ss.ttvideoengine.Resolution;
import com.ss.ttvideoengine.TTVideoEngineConfig;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.database.VideoModelDBManager;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.net.ChannelSelect;
import com.ss.ttvideoengine.net.NetUtils;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoInfoFetcher {
    private static final String KEY_CODE = "code";
    private static final String KEY_LOGID = "tttrace_id";
    private static final String KEY_MESSAGE = "message";
    private static final int MSG_IS_ERROR = 1;
    private static final int MSG_IS_EXCEPTION = 3;
    private static final int MSG_IS_RETRY = 0;
    private static final int MSG_IS_SUCCESS = 2;
    private static final String TAG = "VideoInfoFetcher";
    private static HashMap<String, Integer> errorMapping;
    private boolean isExternNetClient;
    private String mAuth;
    private Context mContext;
    private JSONObject mEnvParams;
    private String mHost;
    private String mKeyseed;
    private FetcherListener mListener;
    private int mMaxRetryCount;
    private TTVNetClient mNetworkSession;
    private JSONObject mParams;
    private int mPlayVersion;
    private String mProjectTag;
    private ArrayList<String> mTriedHost;
    private String mURLWithoutParams;
    private boolean mUseFallbakApi;
    private String mVID;
    public VideoModel mVideoModel;
    private TreeMap<String, String> queryMap;
    private boolean mCancelled = false;
    private int mRetryIndex = 0;
    private int mType = 0;
    private String mApiString = "";
    private HashMap<String, Resolution> mResolutionMap = null;
    private Future mFuture = null;
    private long mStartFetchT = 0;
    private boolean mUseVideoModelCache = false;
    private boolean mUseVideoModelCacheForce = false;
    private boolean mGetMethodEnable = true;
    private int mErrorCode = -1;
    private String[] EnvParamsStrs = {TTVideoEngineInterface.PLAY_API_KEY_DEVICETYPE, "device_id", "ac", TTVideoEngineInterface.PLAY_API_KEY_APPID, TTVideoEngineInterface.PLAY_API_KEY_DEVICEPLATFORM, TTVideoEngineInterface.PLAY_API_KEY_ABVERSION, TTVideoEngineInterface.PLAY_API_KEY_APPNAME, TTVideoEngineInterface.PLAY_API_KEY_VERSIONCODE, TTVideoEngineInterface.PLAY_API_KEY_OSVERSION, TTVideoEngineInterface.PLAY_API_KEY_MENIFESTVERSIONCODE, TTVideoEngineInterface.PLAY_API_KEY_UPDATEVERSIONCODE, TTVideoEngineInterface.PLAY_API_KEY_USERID, TTVideoEngineInterface.PLAY_API_KEY_WEBID, TTVideoEngineInterface.PLAY_API_KEY_PLAYERVERSION, TTVideoEngineInterface.PLAY_API_KEY_BARRAGEMASK};
    private String[] ParamsStrs = {TTVideoEngineInterface.PLAY_API_KEY_ACTION, "Version", "video_id", TTVideoEngineInterface.PLAY_API_KEY_CODEC, TTVideoEngineInterface.PLAY_API_KEY_BASE64, TTVideoEngineInterface.PLAY_API_KEY_URLTYPE, "format_type", TTVideoEngineInterface.PLAY_API_KEY_PTOKEN, "preload", "cdn_type"};
    private Handler mHandler = new MyHandler(this, TTHelper.getLooper());

    /* loaded from: classes6.dex */
    public interface FetcherListener {
        void onCompletion(VideoModel videoModel, Error error);

        void onLog(String str);

        void onRetry(Error error);

        void onStatusException(int i10, String str);
    }

    /* loaded from: classes6.dex */
    private static class MyHandler extends Handler {
        private final WeakReference<VideoInfoFetcher> mFetcherRef;

        public MyHandler(VideoInfoFetcher videoInfoFetcher, Looper looper) {
            super(looper);
            this.mFetcherRef = new WeakReference<>(videoInfoFetcher);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            FetcherListener fetcherListener;
            VideoInfoFetcher videoInfoFetcher = this.mFetcherRef.get();
            if (videoInfoFetcher == null || (fetcherListener = videoInfoFetcher.mListener) == null) {
                return;
            }
            if (videoInfoFetcher.mCancelled) {
                fetcherListener.onLog("fetcher is cancelled");
                return;
            }
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            fetcherListener.onStatusException(message.arg1, (String) message.obj);
                            return;
                        }
                        return;
                    }
                    VideoModel videoModel = (VideoModel) message.obj;
                    videoInfoFetcher.mVideoModel = videoModel;
                    fetcherListener.onCompletion(videoModel, null);
                    return;
                }
                fetcherListener.onCompletion(null, (Error) message.obj);
                return;
            }
            fetcherListener.onRetry((Error) message.obj);
        }
    }

    public VideoInfoFetcher(Context context, TTVNetClient tTVNetClient, String str) {
        this.mMaxRetryCount = 1;
        this.mContext = context;
        TTVNetClient tTVNetClient2 = (tTVNetClient != null || (tTVNetClient2 = TTVideoEngineConfig.gNetClient) == null) ? tTVNetClient : tTVNetClient2;
        if (tTVNetClient2 == null) {
            this.isExternNetClient = false;
            this.mNetworkSession = new TTHTTPNetwork();
        } else {
            this.isExternNetClient = true;
            this.mNetworkSession = tTVNetClient2;
        }
        this.mProjectTag = str;
        this.mMaxRetryCount = InfoWrapper.getApiRetryCount();
        this.mTriedHost = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _beginToFetch(String str, JSONObject jSONObject) {
        HashMap hashMap;
        TTVideoEngineLog.i(TAG, "_beginToFetch url " + str);
        this.mStartFetchT = SystemClock.elapsedRealtime();
        if (!TextUtils.isEmpty(this.mAuth)) {
            hashMap = new HashMap();
            hashMap.put("Authorization", this.mAuth);
        } else {
            hashMap = null;
        }
        HashMap hashMap2 = hashMap;
        Method[] declaredMethods = this.mNetworkSession.getClass().getDeclaredMethods();
        if (declaredMethods != null && declaredMethods.length > 0) {
            for (Method method : declaredMethods) {
                if (method != null && method.getName() != null && method.getName().equals("startTask") && method.getParameterTypes().length == 5) {
                    this.mNetworkSession.startTask(str, hashMap2, (JSONObject) null, 0, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.fetcher.VideoInfoFetcher.2
                        @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
                        public void onCompletion(JSONObject jSONObject2, Error error) {
                            if (jSONObject2 == null && error != null) {
                                VideoInfoFetcher.this._retryIfNeeded(error);
                                return;
                            }
                            if (error != null) {
                                VideoInfoFetcher.this.mErrorCode = error.internalCode;
                            }
                            VideoInfoFetcher.this._getInfoSuccess(jSONObject2, null);
                        }
                    });
                    return;
                }
            }
        }
        this.mNetworkSession.startTask(str, hashMap2, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.fetcher.VideoInfoFetcher.3
            @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject2, Error error) {
                if (jSONObject2 != null || error == null) {
                    VideoInfoFetcher.this._getInfoSuccess(jSONObject2, null);
                } else {
                    VideoInfoFetcher.this._retryIfNeeded(error);
                }
            }
        });
    }

    private void _fetchInfoInternal() {
        if (this.mUseVideoModelCache && (TextUtils.isEmpty(this.mApiString) || !NetUtils.isNetAvailable(this.mContext) || this.mUseVideoModelCacheForce)) {
            TTVideoEngineLog.i(TAG, "get videomodel from DB");
            EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.fetcher.VideoInfoFetcher.1
                @Override // java.lang.Runnable
                public void run() {
                    VideoModelDBManager.CacheInfo query = VideoModelDBManager.query(VideoInfoFetcher.this.mVID);
                    if (query != null && !TextUtils.isEmpty(query.videoModelStr)) {
                        try {
                            JSONObject jSONObject = new JSONObject(query.videoModelStr);
                            TTVideoEngineLog.i(VideoInfoFetcher.TAG, "using videomodel from DB");
                            VideoInfoFetcher.this._getInfoSuccess(jSONObject, query);
                            return;
                        } catch (Exception e10) {
                            TTVideoEngineLog.e(VideoInfoFetcher.TAG, e10.toString());
                        }
                    }
                    if (TextUtils.isEmpty(VideoInfoFetcher.this.mApiString)) {
                        VideoInfoFetcher.this._notifyError(new Error(Error.FetchingInfo, (int) Error.ParameterNull, "apistring empty and no cache"));
                        return;
                    }
                    VideoInfoFetcher videoInfoFetcher = VideoInfoFetcher.this;
                    videoInfoFetcher._beginToFetch(videoInfoFetcher.mApiString, null);
                }
            });
        } else if (TextUtils.isEmpty(this.mApiString)) {
            _notifyError(new Error(Error.FetchingInfo, (int) Error.ParameterNull, "apistring empty"));
        } else {
            if (!this.mTriedHost.contains(this.mHost)) {
                this.mTriedHost.add(this.mHost);
            }
            _beginToFetch(this.mApiString, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _getInfoSuccess(org.json.JSONObject r6, com.ss.ttvideoengine.database.VideoModelDBManager.CacheInfo r7) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.fetcher.VideoInfoFetcher._getInfoSuccess(org.json.JSONObject, com.ss.ttvideoengine.database.VideoModelDBManager$CacheInfo):void");
    }

    private boolean _isTriedAllHost() {
        List<ChannelSelect.Channel> groupByApiVersionLocked;
        if (this.mTriedHost == null || (groupByApiVersionLocked = ChannelSelect.getInstance().groupByApiVersionLocked(this.mPlayVersion)) == null || groupByApiVersionLocked.size() != this.mTriedHost.size()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _notifyError(Error error) {
        TTVideoEngineLog.i(TAG, "_notifyError " + error);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, error));
    }

    private void _notifyException(int i10, String str) {
        TTVideoEngineLog.i(TAG, "_notifyException " + i10 + ", excMessage " + str);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, i10, 0, str));
    }

    private void _notifyShouldRetry(Error error) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(0, error));
    }

    private void _notifySuccess(VideoModel videoModel) {
        TTVideoEngineLog.i(TAG, "_notifySuccess");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(2, videoModel));
    }

    private String _parseAPIString(String str) {
        if (TextUtils.isEmpty(str)) {
            return "_parseAPIString:apistring is empty";
        }
        try {
            this.mHost = new URL(str).getHost();
            String[] split = str.split("[?]");
            if (split.length < 2) {
                return "_parseAPIString:apistring param is empty";
            }
            String[] split2 = split[1].split(ContainerUtils.FIELD_DELIMITER);
            this.mURLWithoutParams = split[0] + "?";
            this.mEnvParams = new JSONObject();
            this.mParams = new JSONObject();
            this.queryMap = new TreeMap<>();
            for (int i10 = 0; i10 < split2.length; i10++) {
                if (this.mGetMethodEnable) {
                    String[] split3 = split2[i10].split(ContainerUtils.KEY_VALUE_DELIMITER);
                    this.queryMap.put(split3[0], split3[1]);
                } else if (split2[i10].indexOf(TTVideoEngineInterface.PLAY_API_KEY_ACTION) != 0 && split2[i10].indexOf("Version") != 0) {
                    String[] split4 = split2[i10].split(ContainerUtils.KEY_VALUE_DELIMITER);
                    if (split4.length >= 2) {
                        String str2 = split4[0];
                        String str3 = split4[1];
                        for (int i11 = 2; i11 < split4.length; i11++) {
                            str3 = str3 + ContainerUtils.KEY_VALUE_DELIMITER + split4[i11];
                        }
                        int i12 = 0;
                        while (true) {
                            try {
                                String[] strArr = this.EnvParamsStrs;
                                if (i12 >= strArr.length) {
                                    break;
                                }
                                if (strArr[i12].equals(str2)) {
                                    this.mEnvParams.put(str2, str3);
                                }
                                i12++;
                            } catch (JSONException unused) {
                                return "_parseAPIString:put params error";
                            }
                        }
                        int i13 = 0;
                        while (true) {
                            String[] strArr2 = this.ParamsStrs;
                            if (i13 < strArr2.length) {
                                if (strArr2[i13].equals(str2)) {
                                    this.mParams.put(str2, str3);
                                }
                                i13++;
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    this.mURLWithoutParams += split2[i10];
                    this.mURLWithoutParams += ContainerUtils.FIELD_DELIMITER;
                    String[] split5 = split2[i10].split(ContainerUtils.KEY_VALUE_DELIMITER);
                    this.queryMap.put(split5[0], split5[1]);
                }
            }
            String str4 = this.mURLWithoutParams;
            this.mURLWithoutParams = str4.substring(0, str4.length() - 1);
            return null;
        } catch (Throwable unused2) {
            return "_parseAPIString:apistring to URL error";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void _retryIfNeeded(Error error) {
        String str;
        String str2;
        Error error2;
        TTVideoEngineLog.i(TAG, "_retryIfNeeded error " + error);
        synchronized (this) {
            try {
                if (this.mCancelled) {
                    return;
                }
                if (error != null) {
                    if (TextUtils.isEmpty(error.domain) && error.code == -9979) {
                        error2 = new Error(Error.FetchingInfo, Error.HTTPNotOK, error.internalCode, error.description);
                    } else if (TextUtils.isEmpty(error.domain)) {
                        error2 = new Error(Error.FetchingInfo, Error.HTTPNotOK, error.internalCode, error.description);
                    }
                    error = error2;
                } else {
                    error = new Error(Error.FetchingInfo, Error.HTTPNotOK);
                }
                if (error.code == -9969) {
                    int i10 = error.internalCode;
                    if (i10 / 10000 != 10 && i10 != -9970) {
                        error.code = Error.InvalidVideoInfoRequest;
                    }
                    error.description += ("<apiStr:" + this.mApiString + ">");
                    _notifyError(error);
                    return;
                }
                if (error.internalCode == 502 && this.mRetryIndex >= this.mMaxRetryCount && (str = this.mApiString) != null && (str2 = this.mHost) != null) {
                    int indexOf = str.indexOf(str2);
                    String substring = this.mApiString.substring(this.mHost.length() + indexOf);
                    if (!_isTriedAllHost()) {
                        String selectNext = ChannelSelect.getInstance().selectNext(this.mPlayVersion, this.mHost);
                        this.mApiString = this.mApiString.substring(0, indexOf) + selectNext + substring;
                        this.mHost = selectNext;
                        this.mRetryIndex = -1;
                    }
                }
                if (this.mRetryIndex < this.mMaxRetryCount) {
                    _notifyShouldRetry(error);
                    this.mRetryIndex++;
                    _fetchInfoInternal();
                } else {
                    error.description += ("<apiStr:" + this.mApiString + ">");
                    _notifyError(error);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private int parseErrorCode(JSONObject jSONObject) {
        if (jSONObject.has("CodeN")) {
            return jSONObject.optInt("CodeN");
        }
        if (jSONObject.has("Code")) {
            String optString = jSONObject.optString("Code");
            if (TextUtils.isEmpty(optString)) {
                return -1;
            }
            int indexOf = optString.indexOf(".");
            if (indexOf > 0) {
                optString = optString.substring(0, indexOf);
            }
            if (errorMapping == null) {
                HashMap<String, Integer> hashMap = new HashMap<>();
                errorMapping = hashMap;
                hashMap.put("InvalidClientTokenId", Integer.valueOf((int) Error.TOPAUTHInvalidClientTokenId));
                errorMapping.put("SignatureDoesNotMatch", Integer.valueOf((int) Error.TOPAUTHSignatureDoesNotMatch));
                errorMapping.put("MissingSignature", Integer.valueOf((int) Error.TOPAUTHMissingSignature));
                errorMapping.put("InvalidTimestamp", Integer.valueOf((int) Error.TOPAUTHInvalidTimestamp));
                errorMapping.put("LackProjectPolicy", Integer.valueOf((int) Error.TOPAUTHLackPolicy));
                errorMapping.put("AccessDenied", Integer.valueOf((int) Error.TOPAUTHAccessDenied));
                errorMapping.put("InternalServiceError", Integer.valueOf((int) Error.TOPAUTHInternalError));
                errorMapping.put("InternalServiceTimeout", Integer.valueOf((int) Error.TOPAUTHInternalServiceTimeout));
                errorMapping.put("FlowLimitExceeded", Integer.valueOf((int) Error.TOPAUTHFlowLimitExceeded));
                errorMapping.put("ServiceUnavailableTemp", Integer.valueOf((int) Error.TOPAUTHServiceUnavailableTemp));
                errorMapping.put("MethodNotAllowed", Integer.valueOf((int) Error.TOPAUTHMethodNotAllowed));
            }
            if (errorMapping.containsKey(optString)) {
                try {
                    return errorMapping.get(optString).intValue();
                } catch (NullPointerException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return -1;
    }

    public void cancel() {
        synchronized (this) {
            try {
                this.mHandler.removeCallbacksAndMessages(null);
                FetcherListener fetcherListener = this.mListener;
                if (fetcherListener == null) {
                    return;
                }
                fetcherListener.onLog("fetcher cancelled");
                if (this.mCancelled) {
                    return;
                }
                this.mCancelled = true;
                Future future = this.mFuture;
                if (future != null) {
                    future.cancel(true);
                }
                this.mNetworkSession.cancel();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void fetchInfo(String str, String str2, int i10, String str3) {
        TTVideoEngineLog.i(TAG, "fetchInfo apiString " + str + ", auth " + str2 + ", playversion " + i10 + ", keyseed " + str3);
        this.mApiString = str;
        this.mAuth = str2;
        this.mRetryIndex = 0;
        this.mPlayVersion = i10;
        this.mKeyseed = str3;
        try {
            this.mHost = new URL(str).getHost();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        _fetchInfoInternal();
    }

    public void setListener(FetcherListener fetcherListener) {
        this.mListener = fetcherListener;
    }

    public void setPlayType(int i10) {
        this.mType = i10;
    }

    public void setResolutionMap(HashMap<String, Resolution> hashMap) {
        this.mResolutionMap = hashMap;
    }

    public void setUseFallbakApi(Boolean bool) {
        this.mUseFallbakApi = bool.booleanValue();
    }

    public void setUseVideoModelCache(boolean z10) {
        this.mUseVideoModelCache = z10;
        if (z10) {
            VideoModelDBManager.getInstance(this.mContext);
        }
    }

    public void setUseVideoModelCacheForce(boolean z10) {
        this.mUseVideoModelCacheForce = z10;
    }

    public void setVideoID(String str) {
        this.mVID = str;
    }

    public void fetchInfo(String str, String str2, int i10) {
        fetchInfo(str, str2, i10, null);
    }

    public void fetchInfo(String str, String str2) {
        this.mApiString = str;
        this.mAuth = str2;
        this.mRetryIndex = 0;
        _fetchInfoInternal();
    }

    public VideoInfoFetcher(Context context, TTVNetClient tTVNetClient) {
        this.mMaxRetryCount = 1;
        this.mContext = context;
        TTVNetClient tTVNetClient2 = (tTVNetClient != null || (tTVNetClient2 = TTVideoEngineConfig.gNetClient) == null) ? tTVNetClient : tTVNetClient2;
        if (tTVNetClient2 == null) {
            this.isExternNetClient = false;
            this.mNetworkSession = new TTHTTPNetwork();
        } else {
            this.isExternNetClient = true;
            this.mNetworkSession = tTVNetClient2;
        }
        this.mProjectTag = "";
        this.mMaxRetryCount = InfoWrapper.getApiRetryCount();
        this.mTriedHost = new ArrayList<>();
    }
}
