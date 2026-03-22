package com.ss.ttvideoengine.log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOneError {
    private static final String TAG = "VideoEventOneError";
    public static final String monitorName = "videoplayer_oneerror";
    public VideoEventBase mEventBase;
    public int mErrorCode = Integer.MIN_VALUE;
    public int mErrorType = Integer.MIN_VALUE;
    public String mErrorStage = "";
    public String mCDNUrl = "";
    public String mCDNIP = "";
    public int vsc = Integer.MIN_VALUE;
    public String vscMessage = "";
    public int mDisAbleV3Async = 0;
    public int mRetryCount = 0;
    public boolean mFirstFrameShown = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventOneError rEvent;
        private VideoEventBase rEventBase;
        private Handler rHandler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(Context context, VideoEventOneError videoEventOneError, VideoEventBase videoEventBase) {
            this.rEvent = videoEventOneError;
            this.rEventBase = videoEventBase;
            this.rContext = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            final boolean z10;
            if (this.rEvent == null) {
                return;
            }
            VideoEventBase videoEventBase = this.rEventBase;
            if (videoEventBase != null) {
                videoEventBase.updateMDLInfo();
                this.rEventBase.mNetworkType = VideoEventBase.getNetType();
            }
            VideoEventBase videoEventBase2 = this.rEventBase;
            if (videoEventBase2 != null && videoEventBase2.isUploadLogEnabled) {
                z10 = true;
            } else {
                z10 = false;
            }
            final JSONObject jsonObject = this.rEvent.toJsonObject();
            Handler handler = this.rHandler;
            if (handler != null && handler.getLooper() != null) {
                this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventOneError.AsyncGetLogDataRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventOneError.monitorName);
                    }
                });
            } else {
                VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventOneError.monitorName);
            }
        }
    }

    VideoEventOneError(VideoEventBase videoEventBase) {
        this.mEventBase = videoEventBase;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonObject() {
        HashMap hashMap = new HashMap();
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "player_sessionid", videoEventBase.mSessionID);
            String str = this.mEventBase.mCurURL;
            if (str != null && !str.isEmpty()) {
                LoggerUtils.putToMap(hashMap, "cdn_url", this.mEventBase.mCurURL);
            } else {
                LoggerUtils.putToMap(hashMap, "cdn_url", this.mEventBase.mInitialURL);
            }
            String str2 = this.mEventBase.mCurIP;
            if (str2 != null && !str2.isEmpty()) {
                LoggerUtils.putToMap(hashMap, "cdn_ip", this.mEventBase.mCurIP);
            } else {
                LoggerUtils.putToMap(hashMap, "cdn_ip", this.mEventBase.mInitialIP);
            }
            LoggerUtils.putToMap(hashMap, "resolution", this.mEventBase.mCurrentResolution);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SOURCE_TYPE, this.mEventBase.mSourceTypeStr);
            LoggerUtils.putToMap(hashMap, "v", this.mEventBase.mVid);
            LoggerUtils.putToMap(hashMap, "pv", this.mEventBase.pv);
            LoggerUtils.putToMap(hashMap, "pc", this.mEventBase.f37070pc);
            LoggerUtils.putToMap(hashMap, "sv", this.mEventBase.sv);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_TAG, this.mEventBase.mTag);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SUBTAG, this.mEventBase.mSubTag);
            LoggerUtils.putToMap(hashMap, "sdk_version", this.mEventBase.sdk_version);
            LoggerUtils.putToMap((Map) hashMap, "video_hw", this.mEventBase.mVideoHW);
            LoggerUtils.putToMap(hashMap, "vtype", this.mEventBase.vtype);
            LoggerUtils.putToMap((Map) hashMap, "p2p_cdn_type", this.mEventBase.mP2PCDNType);
            LoggerUtils.putToMap(hashMap, "codec", this.mEventBase.codec_type);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_VIDEO_CODEC_NAME_ID, this.mEventBase.videoCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_AUDIO_CODEC_NAME_ID, this.mEventBase.audioCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, "format_type", this.mEventBase.formatType);
            LoggerUtils.putToMap((Map) hashMap, "drm_type", this.mEventBase.mDrmType);
            LoggerUtils.putToMap(hashMap, "drm_token_url", this.mEventBase.mDrmTokenUrl);
            LoggerUtils.putToMap(hashMap, "cur_req_pos", this.mEventBase.mdlVideoInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "cur_end_pos", this.mEventBase.mdlVideoInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "cur_cache_pos", this.mEventBase.mdlVideoInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "cache_type", this.mEventBase.mdlVideoInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "cur_ip", this.mEventBase.mdlVideoInfo.mdl_cur_ip);
            LoggerUtils.putToMap(hashMap, "cur_host", this.mEventBase.mdlVideoInfo.mdl_cur_host);
            LoggerUtils.putToMap(hashMap, "reply_size", this.mEventBase.mdlVideoInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "down_pos", this.mEventBase.mdlVideoInfo.mdl_down_pos);
            LoggerUtils.putToMap(hashMap, "player_wait_time", this.mEventBase.mdlVideoInfo.mdl_player_wait_time);
            LoggerUtils.putToMap((Map) hashMap, "player_wait_num", this.mEventBase.mdlVideoInfo.mdl_player_wait_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_stage", this.mEventBase.mdlVideoInfo.mdl_stage);
            LoggerUtils.putToMap((Map) hashMap, "mdl_ec", this.mEventBase.mdlVideoInfo.mdl_error_code);
            LoggerUtils.putToMap((Map) hashMap, "mdl_speed", this.mEventBase.mdlVideoInfo.mdl_speed);
            LoggerUtils.putToMap(hashMap, "mdl_file_key", this.mEventBase.mdlVideoInfo.mdl_file_key);
            LoggerUtils.putToMap((Map) hashMap, "mdl_is_socrf", this.mEventBase.mdlVideoInfo.mdl_is_socrf);
            LoggerUtils.putToMap((Map) hashMap, "mdl_req_num", this.mEventBase.mdlVideoInfo.mdl_req_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_url_index", this.mEventBase.mdlVideoInfo.mdl_url_index);
            LoggerUtils.putToMap(hashMap, "mdl_re_url", this.mEventBase.mdlVideoInfo.mdl_re_url);
            LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_NET_TYPE, this.mEventBase.mNetworkType);
            LoggerUtils.putToMap(hashMap, "mdl_fs", this.mEventBase.mdlVideoInfo.mdl_fs);
            LoggerUtils.putToMap(hashMap, "req_t", this.mEventBase.mdlVideoInfo.mdl_req_t);
            LoggerUtils.putToMap(hashMap, "end_t", this.mEventBase.mdlVideoInfo.mdl_end_t);
            LoggerUtils.putToMap(hashMap, "dns_t", this.mEventBase.mdlVideoInfo.mdl_dns_t);
            LoggerUtils.putToMap(hashMap, "tcp_con_start_t", this.mEventBase.mdlVideoInfo.mdl_tcp_start_t);
            LoggerUtils.putToMap(hashMap, "tcp_con_t", this.mEventBase.mdlVideoInfo.mdl_tcp_end_t);
            LoggerUtils.putToMap(hashMap, "tcp_first_pack_t", this.mEventBase.mdlVideoInfo.mdl_ttfp);
            LoggerUtils.putToMap(hashMap, "http_first_body_t", this.mEventBase.mdlVideoInfo.mdl_httpfb);
            LoggerUtils.putToMap(hashMap, "http_open_end_t", this.mEventBase.mdlVideoInfo.mdl_http_open_end_t);
            LoggerUtils.putToMap((Map) hashMap, "http_code", this.mEventBase.mdlVideoInfo.mdl_http_code);
            LoggerUtils.putToMap(hashMap, "mdl_extra_info", this.mEventBase.mdlVideoInfo.mdl_extra_info);
            LoggerUtils.putToMap(hashMap, "mdl_version", this.mEventBase.mMdlVersion);
            LoggerUtils.putToMap(hashMap, "mdl_ip_list", this.mEventBase.mdlVideoInfo.mdl_ip_list);
            LoggerUtils.putToMap(hashMap, "mdl_blocked_ips", this.mEventBase.mdlVideoInfo.mdl_blocked_ips);
        }
        LoggerUtils.putToMap((Map) hashMap, "errt", this.mErrorType);
        LoggerUtils.putToMap((Map) hashMap, "errc", this.mErrorCode);
        LoggerUtils.putToMap(hashMap, "es", this.mErrorStage);
        LoggerUtils.putToMap((Map) hashMap, "vsc", this.vsc);
        LoggerUtils.putToMap(hashMap, "vsc_message", this.vscMessage);
        LoggerUtils.putToMap((Map) hashMap, "retry_count", this.mRetryCount);
        return new JSONObject(hashMap);
    }

    public void errorHappened(Error error) {
        this.mErrorCode = error.code;
        this.mErrorType = error.getType();
        sendErrorEvent();
    }

    public void movieShouldRetry(Error error, int i10, int i11) {
        this.mRetryCount++;
    }

    public void reset() {
        this.mRetryCount = 0;
        this.mFirstFrameShown = false;
    }

    public void sendErrorEvent() {
        if (this.mFirstFrameShown) {
            this.mErrorStage = "playing";
        } else {
            this.mErrorStage = "beforePlay";
        }
        if (this.mDisAbleV3Async == 1) {
            TTVideoEngineLog.i(TAG, "report sync");
            VideoEventManager.instance.addEventV2(this.mEventBase.isUploadLogEnabled, toJsonObject(), monitorName);
            return;
        }
        TTVideoEngineLog.i(TAG, "report async");
        VideoEventBase videoEventBase = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase.mContext, this, videoEventBase));
    }

    public void showedFirstFrame() {
        this.mFirstFrameShown = true;
    }

    public void errorHappened(int i10, String str) {
        this.vsc = i10;
        this.vscMessage = str;
        sendErrorEvent();
    }
}
