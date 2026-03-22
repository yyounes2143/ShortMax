package com.ss.ttvideoengine.source.strategy;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.ss.ttvideoengine.TTVideoEngineConfig;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.net.TTHTTPNetwork;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.WeakHandler;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class SmartUrlFetcher implements WeakHandler.IHandler {
    public static final int CACHE_TYPE_HINT_CACHE = 1;
    public static final int CACHE_TYPE_NONE = 0;
    private static final int MSG_COMPLETE = 1;
    private static final int MSG_ERROR = 2;
    private static final String TAG = "CodecStrategy_SmartUrlFetcher";
    private final Callback mCallback;
    private volatile boolean mCanceled;
    private final Handler mH;
    private final TTVNetClient mHttpClient;
    private RequestParams mRequestParams;

    /* loaded from: classes6.dex */
    public interface Callback {
        void onComplete(@NonNull RequestParams requestParams, int i10, @NonNull Result result);

        void onError(@NonNull RequestParams requestParams, @NonNull Error error);
    }

    /* loaded from: classes6.dex */
    public static class RequestParams {
        public String cacheKey;
        public String codec;
        public String definition;
        public String playUrl;
        public String videoId;

        public String toString() {
            return "RequestParams{videoId='" + this.videoId + "', playUrl='" + this.playUrl + "', cacheKey='" + this.cacheKey + "', codec='" + this.codec + "', definition='" + this.definition + "'}";
        }
    }

    /* loaded from: classes6.dex */
    public static class SmartUrlCache {
        public static final String TAG = "CodecStrategy_SmartUrlCache";
        private static final Map<String, CacheHolder> sCacheMap = new HashMap();

        /* loaded from: classes6.dex */
        public static class CacheHolder {
            private final long expiredMS;
            private final Result result;

            public CacheHolder(@NonNull Result result, long j10) {
                this.result = result;
                this.expiredMS = j10;
            }
        }

        public static void clear() {
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(TAG, "clear");
            }
            sCacheMap.clear();
        }

        private static Result find(@NonNull String str) {
            CacheHolder cacheHolder = sCacheMap.get(str);
            if (cacheHolder == null) {
                return null;
            }
            if (cacheHolder.expiredMS == -1 || cacheHolder.expiredMS < SystemClock.uptimeMillis()) {
                return cacheHolder.result;
            }
            return null;
        }

        public static Result get(@NonNull String str) {
            Result find = find(str);
            TTVideoEngineLog.d(TAG, "get " + str + " " + find);
            return find;
        }

        @NonNull
        public static String key(@NonNull RequestParams requestParams) {
            if (!TextUtils.isEmpty(requestParams.cacheKey)) {
                return requestParams.cacheKey;
            }
            return requestParams.playUrl;
        }

        public static void put(@NonNull String str, Result result) {
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(TAG, "put " + str + " " + result);
            }
            sCacheMap.put(str, new CacheHolder(result, -1L));
        }

        public static void remove(@NonNull String str) {
            if (TTVideoEngineLog.d()) {
                TTVideoEngineLog.d(TAG, "remove " + str);
            }
            sCacheMap.remove(str);
        }
    }

    public SmartUrlFetcher(Callback callback) {
        Looper myLooper;
        this.mCallback = callback;
        TTVNetClient tTVNetClient = TTVideoEngineConfig.gNetClient;
        if (tTVNetClient != null) {
            this.mHttpClient = tTVNetClient;
        } else {
            this.mHttpClient = new TTHTTPNetwork();
        }
        if (Looper.myLooper() == null) {
            myLooper = Looper.getMainLooper();
        } else {
            myLooper = Looper.myLooper();
        }
        this.mH = new WeakHandler(myLooper, this);
    }

    private static String buildRequestUrl(RequestParams requestParams) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("PlayUrl", requestParams.playUrl);
        linkedHashMap.put("Codec", requestParams.codec);
        linkedHashMap.put("Definition", requestParams.definition);
        StringBuilder sb2 = new StringBuilder();
        String apiHost = CodecStrategy.SmartUrlVod.getApiHost();
        if (apiHost != null && !apiHost.startsWith(ProxyConfig.MATCH_HTTP)) {
            sb2.append("https://");
        }
        sb2.append(apiHost);
        sb2.append("/api/general/getSmartStrategyLitePlayInfo20220101");
        sb2.append("?");
        sb2.append((CharSequence) TTHelper.buildUrlEncodedQuery(linkedHashMap));
        return sb2.toString();
    }

    private void fetch(final String str, final RequestParams requestParams) {
        String buildRequestUrl = buildRequestUrl(requestParams);
        this.mHttpClient.startTask(buildRequestUrl, new TTVNetClient.CompletionListener() { // from class: com.ss.ttvideoengine.source.strategy.SmartUrlFetcher.1
            @Override // com.ss.ttvideoengine.net.TTVNetClient.CompletionListener
            public void onCompletion(JSONObject jSONObject, Error error) {
                if (SmartUrlFetcher.this.mCanceled) {
                    return;
                }
                if (error != null) {
                    SmartUrlFetcher.this.notifyError(requestParams, error);
                } else if (jSONObject == null) {
                    SmartUrlFetcher.this.notifyError(requestParams, new Error(Error.FetchingSmartUrlInfo, Error.ResultEmpty));
                } else {
                    Result parseResult = Result.parseResult(jSONObject);
                    Error error2 = parseResult.error;
                    if (error2 != null) {
                        SmartUrlFetcher.this.notifyError(requestParams, error2);
                        return;
                    }
                    SmartUrlCache.put(str, parseResult);
                    SmartUrlFetcher.this.notifyComplete(requestParams, 0, parseResult);
                }
            }
        });
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, "fetch " + requestParams + ", requestUrl = " + buildRequestUrl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyComplete(RequestParams requestParams, int i10, Result result) {
        if (this.mH.getLooper() == Looper.myLooper()) {
            if (this.mCanceled) {
                if (TTVideoEngineLog.d()) {
                    TTVideoEngineLog.d(TAG, "notifyComplete canceled");
                    return;
                }
                return;
            } else if (this.mCallback == null) {
                return;
            } else {
                if (TTVideoEngineLog.d()) {
                    TTVideoEngineLog.d(TAG, "notifyComplete " + requestParams + " " + i10 + " " + result);
                }
                this.mCallback.onComplete(requestParams, i10, result);
                return;
            }
        }
        this.mH.obtainMessage(1, new Object[]{requestParams, Integer.valueOf(i10), result}).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyError(RequestParams requestParams, Error error) {
        error.domain = Error.FetchingSmartUrlInfo;
        if (this.mH.getLooper() == Looper.myLooper()) {
            if (this.mCanceled) {
                if (TTVideoEngineLog.d()) {
                    TTVideoEngineLog.d(TAG, "notifyError canceled");
                    return;
                }
                return;
            } else if (this.mCallback == null) {
                return;
            } else {
                if (TTVideoEngineLog.d()) {
                    TTVideoEngineLog.d(TAG, "notifyError " + requestParams + " " + error);
                }
                this.mCallback.onError(requestParams, error);
                return;
            }
        }
        this.mH.obtainMessage(2, new Object[]{requestParams, error}).sendToTarget();
    }

    public void cancel() {
        if (this.mCanceled) {
            return;
        }
        this.mCanceled = true;
        this.mHttpClient.cancel();
        this.mH.removeCallbacksAndMessages(null);
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, "cancel " + this.mRequestParams);
        }
    }

    @Override // com.ss.ttvideoengine.utils.WeakHandler.IHandler
    public void handleMessage(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 == 2) {
                Object[] objArr = (Object[]) message.obj;
                notifyError((RequestParams) objArr[0], (Error) objArr[1]);
                return;
            }
            return;
        }
        Object[] objArr2 = (Object[]) message.obj;
        notifyComplete((RequestParams) objArr2[0], ((Integer) objArr2[1]).intValue(), (Result) objArr2[2]);
    }

    public boolean isCanceled() {
        return this.mCanceled;
    }

    public void setRequestParams(RequestParams requestParams) {
        this.mRequestParams = requestParams;
    }

    public void start() {
        if (TTVideoEngineLog.d()) {
            TTVideoEngineLog.d(TAG, "start " + this.mRequestParams);
        }
        RequestParams requestParams = this.mRequestParams;
        String key = SmartUrlCache.key(requestParams);
        Result result = SmartUrlCache.get(key);
        if (result != null) {
            notifyComplete(requestParams, 1, result);
        } else {
            fetch(key, requestParams);
        }
    }

    /* loaded from: classes6.dex */
    public static class Result {
        public static final int DataStoreStatusHasEncodeStream = 3;
        public static final int DataStoreStatusHasOriginalStream = 2;
        public static final int DataStoreStatusNotExist = 1;
        public static final int DataStoreStatusUndefined = 0;
        public static final int StreamTypeFallbackEncodeStream = 3;
        public static final int StreamTypeOriginalStream = 1;
        public static final int StreamTypeStrategyEncodeStream = 2;
        public static final int StreamTypeUndefined = 0;
        public final int dataStoreStatus;
        public final Error error;
        public final JSONObject jsonResult;
        public final String originalPlayUrl;
        public final int streamType;
        public final IVideoModel videoModel;

        public Result(JSONObject jSONObject, Error error) {
            this.dataStoreStatus = -1;
            this.streamType = -1;
            this.originalPlayUrl = null;
            this.videoModel = null;
            this.jsonResult = jSONObject;
            this.error = error;
        }

        private static boolean isStreamTypeValid(int i10) {
            if (i10 != 2 && i10 != 3) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Result parseResult(@NonNull JSONObject jSONObject) {
            JSONObject optJSONObject = jSONObject.optJSONObject("Result");
            if (optJSONObject == null) {
                return new Result(jSONObject, new Error(Error.FetchingSmartUrlInfo, (int) Error.ParseJsonError, "Result is null"));
            }
            int optInt = optJSONObject.optInt("DataStoreStatus");
            int optInt2 = optJSONObject.optInt("StreamType");
            String optString = optJSONObject.optString("OriginalPlayUrl");
            JSONObject optJSONObject2 = optJSONObject.optJSONObject("PlayInfoModel");
            if (optJSONObject2 != null && isStreamTypeValid(optInt2)) {
                try {
                    VideoModel videoModel = new VideoModel();
                    videoModel.extractFields(optJSONObject2);
                    return new Result(optInt, optInt2, optString, videoModel, jSONObject, null);
                } catch (Throwable th2) {
                    return new Result(optInt, optInt2, optString, null, jSONObject, new Error(Error.FetchingSmartUrlInfo, (int) Error.VideoModelExtractError, "video model extract failed: " + th2));
                }
            }
            return new Result(optInt, optInt2, optString, null, jSONObject, null);
        }

        public boolean isEncodeStream() {
            IVideoModel iVideoModel = this.videoModel;
            if (iVideoModel == null || iVideoModel.getVideoRefStr(2) == null) {
                return false;
            }
            VideoInfo videoInfo = this.videoModel.getVideoInfo(CodecStrategy.SmartUrlVod.findTargetResolution(this.videoModel), false);
            if (videoInfo == null) {
                return false;
            }
            String valueStr = videoInfo.getValueStr(0);
            String valueStr2 = videoInfo.getValueStr(17);
            if (TextUtils.isEmpty(valueStr) && TextUtils.isEmpty(valueStr2)) {
                return false;
            }
            return true;
        }

        public String toString() {
            return "Result{dataStoreStatus=" + this.dataStoreStatus + ", streamType=" + this.streamType + ", originalPlayUrl='" + this.originalPlayUrl + "', videoModel=" + this.videoModel + ", jsonResult=" + this.jsonResult + ", error=" + this.error + '}';
        }

        public Result(int i10, int i11, String str, IVideoModel iVideoModel, JSONObject jSONObject, Error error) {
            this.dataStoreStatus = i10;
            this.streamType = i11;
            this.originalPlayUrl = str;
            this.videoModel = iVideoModel;
            this.jsonResult = jSONObject;
            this.error = error;
        }
    }
}
