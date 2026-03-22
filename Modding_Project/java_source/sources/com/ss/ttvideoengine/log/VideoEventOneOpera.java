package com.ss.ttvideoengine.log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.SieveCacheKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOneOpera {
    public static final String END_TYPE_EPISODE = "episode";
    public static final String END_TYPE_ERROR = "error";
    public static final String END_TYPE_EXIT = "exit";
    public static final String END_TYPE_SEEK = "seek";
    public static final String END_TYPE_SPEED = "speed";
    public static final String END_TYPE_SWITCH = "switch";
    public static final String END_TYPE_TIMEOUT = "timeout";
    public static final String END_TYPE_WAIT = "wait";
    public static final String OPERA_TYPE_SEEK = "seek";
    public static final String OPERA_TYPE_SWITCH = "switch";
    private static final String TAG = "VideoEventOneOpera";
    public static final String monitorName = "videoplayer_oneopera";
    public VideoEventBase mEventBase;
    private HashMap mLastOperaTimeMap;
    public boolean mReportSeek;
    public long mLastBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mLastBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
    public int mAccuCostTime = 0;
    public ArrayList<String> mSeekList = new ArrayList<>();
    public OperaContext mOperaContext = new OperaContext();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventOneOpera rEvent;
        private VideoEventBase rEventBase;
        private Handler rHandler = new Handler(Looper.getMainLooper());
        private OperaContext rOperaContext;

        public AsyncGetLogDataRunnable(Context context, VideoEventOneOpera videoEventOneOpera, VideoEventBase videoEventBase, OperaContext operaContext) {
            this.rEvent = videoEventOneOpera;
            this.rEventBase = videoEventBase;
            this.rContext = context;
            this.rOperaContext = operaContext;
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
            final JSONObject jsonObject = this.rEvent.toJsonObject(this.rOperaContext, videoEventBase2);
            Handler handler = this.rHandler;
            if (handler == null) {
                VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventOneOpera.monitorName);
            } else {
                handler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventOneOpera.AsyncGetLogDataRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoEventManager.instance.addEventV2(z10, jsonObject, VideoEventOneOpera.monitorName);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class OperaContext {
        public long mAudioLenAfterMS;
        public long mAudioLenBeforeMS;
        public int mConfigBitrateAfter;
        public int mConfigBitrateBefore;
        public long mCostTime;
        public long mEndT;
        public String mEndType;
        private int mIndex;
        private int mIsSeekInCached;
        public long mLastInterval;
        public int mLoadTypeWhenSeek;
        public String mOperaType;
        public String mResolutionAfter;
        public String mResolutionBefore;
        private int mRetryCount;
        public long mSeekAVFormatSeekTime;
        public long mSeekCompleteTime;
        public long mSeekCoreCompleteTime;
        public long mSeekDecoderFirstAudioFrameTime;
        public long mSeekDecoderFirstAudioPacketTime;
        public long mSeekExeBeginTime;
        public long mSeekLoadingBeginTime;
        public long mSeekLoadingEndTime;
        public long mSeekLooperTime;
        public long mSeekOperateTime;
        public long mSeekReceiveFirstPacketTime;
        public long mSeekRenderFirstFrameTime;
        private long mStartT;
        public String mStateAfter;
        public String mStateBefore;
        public long mVideoLenAfterMS;
        public long mVideoLenBeforeMS;

        private OperaContext() {
            this.mOperaType = "";
            this.mStateBefore = "";
            this.mStateAfter = "";
            this.mCostTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndType = "";
            this.mStartT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mRetryCount = 0;
            this.mIsSeekInCached = 0;
            this.mVideoLenAfterMS = 0L;
            this.mAudioLenAfterMS = 0L;
            this.mVideoLenBeforeMS = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mAudioLenBeforeMS = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mIndex = 0;
            this.mResolutionBefore = "";
            this.mResolutionAfter = "";
            this.mConfigBitrateBefore = Integer.MIN_VALUE;
            this.mConfigBitrateAfter = Integer.MIN_VALUE;
            this.mLastInterval = -1L;
            this.mLoadTypeWhenSeek = Integer.MIN_VALUE;
            this.mSeekCompleteTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekLoadingBeginTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekLoadingEndTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekLooperTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekOperateTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekExeBeginTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekAVFormatSeekTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekCoreCompleteTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekReceiveFirstPacketTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekDecoderFirstAudioPacketTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekDecoderFirstAudioFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSeekRenderFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
        }

        static /* synthetic */ int access$108(OperaContext operaContext) {
            int i10 = operaContext.mRetryCount;
            operaContext.mRetryCount = i10 + 1;
            return i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEventOneOpera(VideoEventBase videoEventBase) {
        this.mLastOperaTimeMap = null;
        this.mEventBase = videoEventBase;
        this.mLastOperaTimeMap = new HashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonObject(OperaContext operaContext, VideoEventBase videoEventBase) {
        HashMap hashMap = new HashMap();
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "player_sessionid", videoEventBase.mSessionID);
            String str = videoEventBase.mCurURL;
            if (str != null && !str.isEmpty()) {
                LoggerUtils.putToMap(hashMap, "cdn_url", videoEventBase.mCurURL);
            } else {
                LoggerUtils.putToMap(hashMap, "cdn_url", videoEventBase.mInitialURL);
            }
            String str2 = videoEventBase.mCurIP;
            if (str2 != null && !str2.isEmpty()) {
                LoggerUtils.putToMap(hashMap, "cdn_ip", videoEventBase.mCurIP);
            } else {
                LoggerUtils.putToMap(hashMap, "cdn_ip", videoEventBase.mInitialIP);
            }
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SOURCE_TYPE, videoEventBase.mSourceTypeStr);
            LoggerUtils.putToMap(hashMap, "v", videoEventBase.mVid);
            LoggerUtils.putToMap(hashMap, "pv", videoEventBase.pv);
            LoggerUtils.putToMap(hashMap, "pc", videoEventBase.f37070pc);
            LoggerUtils.putToMap(hashMap, "sv", videoEventBase.sv);
            LoggerUtils.putToMap(hashMap, "sdk_version", videoEventBase.sdk_version);
            LoggerUtils.putToMap(hashMap, "vtype", videoEventBase.vtype);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_TAG, videoEventBase.mTag);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SUBTAG, videoEventBase.mSubTag);
            LoggerUtils.putToMap((Map) hashMap, "p2p_cdn_type", videoEventBase.mP2PCDNType);
            LoggerUtils.putToMap(hashMap, "codec", videoEventBase.codec_type);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_VIDEO_CODEC_NAME_ID, videoEventBase.videoCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_AUDIO_CODEC_NAME_ID, videoEventBase.audioCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, "format_type", videoEventBase.formatType);
            LoggerUtils.putToMap((Map) hashMap, "drm_type", videoEventBase.mDrmType);
            LoggerUtils.putToMap((Map) hashMap, "mdl_speed", videoEventBase.mdlVideoInfo.mdl_speed);
            LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_NET_TYPE, videoEventBase.mNetworkType);
            LoggerUtils.putToMap((Map) hashMap, "reuse_socket", videoEventBase.mReuseSocket);
            LoggerUtils.putToMap(hashMap, "mdl_version", videoEventBase.mMdlVersion);
            LoggerUtils.putToMap((Map) hashMap, "enable_mdl", videoEventBase.mEnableMDL);
            LoggerUtils.putToMap(hashMap, "mdl_req_t", videoEventBase.mdlVideoInfo.mdl_req_t);
            LoggerUtils.putToMap(hashMap, "mdl_end_t", videoEventBase.mdlVideoInfo.mdl_end_t);
            LoggerUtils.putToMap(hashMap, "mdl_dns_t", videoEventBase.mdlVideoInfo.mdl_dns_t);
            LoggerUtils.putToMap(hashMap, "mdl_tcp_start_t", videoEventBase.mdlVideoInfo.mdl_tcp_start_t);
            LoggerUtils.putToMap(hashMap, "mdl_tcp_end_t", videoEventBase.mdlVideoInfo.mdl_tcp_end_t);
            LoggerUtils.putToMap(hashMap, "mdl_ttfp", videoEventBase.mdlVideoInfo.mdl_ttfp);
            LoggerUtils.putToMap(hashMap, "mdl_httpfb", videoEventBase.mdlVideoInfo.mdl_httpfb);
            LoggerUtils.putToMap(hashMap, "mdl_cur_ip", videoEventBase.mdlVideoInfo.mdl_cur_ip);
            LoggerUtils.putToMap(hashMap, "mdl_cur_req_pos", videoEventBase.mdlVideoInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "mdl_cur_end_pos", videoEventBase.mdlVideoInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "mdl_cur_cache_pos", videoEventBase.mdlVideoInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "mdl_cache_type", videoEventBase.mdlVideoInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "mdl_reply_size", videoEventBase.mdlVideoInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "mdl_down_pos", videoEventBase.mdlVideoInfo.mdl_down_pos);
            LoggerUtils.putToMap((Map) hashMap, "mdl_error_code", videoEventBase.mdlVideoInfo.mdl_error_code);
            LoggerUtils.putToMap((Map) hashMap, "mdl_http_code", videoEventBase.mdlVideoInfo.mdl_http_code);
            LoggerUtils.putToMap(hashMap, "mdl_ip_list", videoEventBase.mdlVideoInfo.mdl_ip_list);
            LoggerUtils.putToMap(hashMap, "mdl_blocked_ips", videoEventBase.mdlVideoInfo.mdl_blocked_ips);
            LoggerUtils.putToMap(hashMap, "a_mdl_req_t", videoEventBase.mdlAudioInfo.mdl_req_t);
            LoggerUtils.putToMap(hashMap, "a_mdl_end_t", videoEventBase.mdlAudioInfo.mdl_end_t);
            LoggerUtils.putToMap(hashMap, "a_mdl_dns_t", videoEventBase.mdlAudioInfo.mdl_dns_t);
            LoggerUtils.putToMap(hashMap, "a_mdl_tcp_start_t", videoEventBase.mdlAudioInfo.mdl_tcp_start_t);
            LoggerUtils.putToMap(hashMap, "a_mdl_tcp_end_t", videoEventBase.mdlAudioInfo.mdl_tcp_end_t);
            LoggerUtils.putToMap(hashMap, "a_mdl_ttfp", videoEventBase.mdlAudioInfo.mdl_ttfp);
            LoggerUtils.putToMap(hashMap, "a_mdl_httpfb", videoEventBase.mdlAudioInfo.mdl_httpfb);
            LoggerUtils.putToMap(hashMap, "a_mdl_cur_ip", videoEventBase.mdlAudioInfo.mdl_cur_ip);
            LoggerUtils.putToMap(hashMap, "a_mdl_cur_req_pos", videoEventBase.mdlAudioInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "a_mdl_cur_end_pos", videoEventBase.mdlAudioInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "a_mdl_cur_cache_pos", videoEventBase.mdlAudioInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_cache_type", videoEventBase.mdlAudioInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "a_mdl_reply_size", videoEventBase.mdlAudioInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "a_mdl_down_pos", videoEventBase.mdlAudioInfo.mdl_down_pos);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_error_code", videoEventBase.mdlAudioInfo.mdl_error_code);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_http_code", videoEventBase.mdlAudioInfo.mdl_http_code);
            LoggerUtils.putToMap(hashMap, "a_mdl_ip_list", videoEventBase.mdlAudioInfo.mdl_ip_list);
            LoggerUtils.putToMap(hashMap, "a_mdl_blocked_ips", videoEventBase.mdlAudioInfo.mdl_blocked_ips);
        }
        LoggerUtils.putToMap(hashMap, "opera_type", operaContext.mOperaType);
        LoggerUtils.putToMap(hashMap, "state_before", operaContext.mStateBefore);
        LoggerUtils.putToMap(hashMap, "state_after", operaContext.mStateAfter);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_COST_TIME, operaContext.mCostTime);
        LoggerUtils.putToMap(hashMap, "end_type", operaContext.mEndType);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_INDEX, operaContext.mIndex);
        LoggerUtils.putToMap(hashMap, "last_interval", operaContext.mLastInterval);
        LoggerUtils.putToMap((Map) hashMap, "retry_count", operaContext.mRetryCount);
        LoggerUtils.putToMap((Map) hashMap, "is_seek_in_buffer", operaContext.mIsSeekInCached);
        LoggerUtils.putToMap(hashMap, "video_len_after", operaContext.mVideoLenAfterMS);
        LoggerUtils.putToMap(hashMap, "audio_len_after", operaContext.mAudioLenAfterMS);
        LoggerUtils.putToMap(hashMap, "video_len_before", operaContext.mVideoLenBeforeMS);
        LoggerUtils.putToMap(hashMap, "audio_len_before", operaContext.mAudioLenBeforeMS);
        LoggerUtils.putToMap((Map) hashMap, "loadtype_when_seek", operaContext.mLoadTypeWhenSeek);
        LoggerUtils.putToMap(hashMap, "st", operaContext.mStartT);
        LoggerUtils.putToMap(hashMap, "et", operaContext.mEndT);
        LoggerUtils.putToMap(hashMap, "resolution_before", operaContext.mResolutionBefore);
        LoggerUtils.putToMap(hashMap, "resolution_after", operaContext.mResolutionAfter);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_before", operaContext.mConfigBitrateBefore);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_after", operaContext.mConfigBitrateAfter);
        LoggerUtils.putToMap(hashMap, "s_looper_t", operaContext.mSeekLooperTime);
        LoggerUtils.putToMap(hashMap, "s_operate_t", operaContext.mSeekOperateTime);
        LoggerUtils.putToMap(hashMap, "s_exe_begin_t", operaContext.mSeekExeBeginTime);
        LoggerUtils.putToMap(hashMap, "s_avformat_seek_t", operaContext.mSeekAVFormatSeekTime);
        LoggerUtils.putToMap(hashMap, "s_c_complete_t", operaContext.mSeekCoreCompleteTime);
        LoggerUtils.putToMap(hashMap, "s_complete_t", operaContext.mSeekCompleteTime);
        LoggerUtils.putToMap(hashMap, "s_re_f_packet_t", operaContext.mSeekReceiveFirstPacketTime);
        LoggerUtils.putToMap(hashMap, "s_de_f_audiopacket_t", operaContext.mSeekDecoderFirstAudioPacketTime);
        LoggerUtils.putToMap(hashMap, "s_de_f_audioframe_t", operaContext.mSeekDecoderFirstAudioFrameTime);
        LoggerUtils.putToMap(hashMap, "s_loading_begin_t", operaContext.mSeekLoadingBeginTime);
        LoggerUtils.putToMap(hashMap, "s_loading_end_t", operaContext.mSeekLoadingEndTime);
        LoggerUtils.putToMap(hashMap, "s_render_f_t", operaContext.mSeekRenderFirstFrameTime);
        LoggerUtils.putToMap(hashMap, "last_buf_start_t", this.mLastBufferStartT);
        LoggerUtils.putToMap(hashMap, "last_buf_end_t", this.mLastBufferEndT);
        return new JSONObject(hashMap);
    }

    public void beginSeek(int i10, int i11, int i12) {
        TTVideoEngineLog.d(TAG, "brian beginSeek from " + i10 + " to " + i11);
        this.mOperaContext.mStartT = System.currentTimeMillis();
        OperaContext operaContext = this.mOperaContext;
        operaContext.mOperaType = "seek";
        operaContext.mStateBefore = Integer.toString(i10);
        this.mOperaContext.mStateAfter = Integer.toString(i11);
        OperaContext operaContext2 = this.mOperaContext;
        operaContext2.mCostTime = 0L;
        operaContext2.mIndex = i12;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            OperaContext operaContext3 = this.mOperaContext;
            operaContext3.mResolutionBefore = videoEventBase.mCurrentResolution;
            operaContext3.mConfigBitrateBefore = videoEventBase.mCurrentConfigBitrate;
            EventLoggerSource eventLoggerSource = videoEventBase.mDataSource;
            if (eventLoggerSource != null) {
                operaContext3.mVideoLenBeforeMS = eventLoggerSource.getLogValueLong(105);
                this.mOperaContext.mAudioLenBeforeMS = this.mEventBase.mDataSource.getLogValueLong(104);
            }
        }
    }

    public void endSeek(String str, int i10) {
        EventLoggerSource eventLoggerSource;
        if (this.mOperaContext.mStartT > 0 && !this.mOperaContext.mOperaType.isEmpty()) {
            TTVideoEngineLog.d(TAG, "endSeek, from " + this.mOperaContext.mStateBefore + " to " + this.mOperaContext.mStateAfter);
            long currentTimeMillis = System.currentTimeMillis();
            OperaContext operaContext = this.mOperaContext;
            operaContext.mEndT = currentTimeMillis;
            operaContext.mCostTime = currentTimeMillis - operaContext.mStartT;
            OperaContext operaContext2 = this.mOperaContext;
            long j10 = operaContext2.mCostTime;
            if (j10 > 0) {
                this.mAccuCostTime = (int) (this.mAccuCostTime + j10);
            }
            operaContext2.mEndType = str;
            operaContext2.mIsSeekInCached = i10;
            VideoEventBase videoEventBase = this.mEventBase;
            if (videoEventBase != null && (eventLoggerSource = videoEventBase.mDataSource) != null) {
                Map<String, Long> parsePlayerStringToMap = LoggerUtils.parsePlayerStringToMap(eventLoggerSource.getLogValueStr(151), ";|=");
                if (parsePlayerStringToMap.get("s_looper_t") != null) {
                    this.mOperaContext.mSeekLooperTime = parsePlayerStringToMap.get("s_looper_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_operate_t") != null) {
                    this.mOperaContext.mSeekOperateTime = parsePlayerStringToMap.get("s_operate_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_exe_begin_t") != null) {
                    this.mOperaContext.mSeekExeBeginTime = parsePlayerStringToMap.get("s_exe_begin_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_avformat_seek_t") != null) {
                    this.mOperaContext.mSeekAVFormatSeekTime = parsePlayerStringToMap.get("s_avformat_seek_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_c_complete_t") != null) {
                    this.mOperaContext.mSeekCoreCompleteTime = parsePlayerStringToMap.get("s_c_complete_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_re_f_packet_t") != null) {
                    this.mOperaContext.mSeekReceiveFirstPacketTime = parsePlayerStringToMap.get("s_re_f_packet_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_de_f_audiopacket_t") != null) {
                    this.mOperaContext.mSeekDecoderFirstAudioPacketTime = parsePlayerStringToMap.get("s_de_f_audiopacket_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_de_f_audioframe_t") != null) {
                    this.mOperaContext.mSeekDecoderFirstAudioFrameTime = parsePlayerStringToMap.get("s_de_f_audioframe_t").longValue();
                }
                if (parsePlayerStringToMap.get("s_render_f_t") != null) {
                    this.mOperaContext.mSeekRenderFirstFrameTime = parsePlayerStringToMap.get("s_render_f_t").longValue();
                }
                OperaContext operaContext3 = this.mOperaContext;
                VideoEventBase videoEventBase2 = this.mEventBase;
                operaContext3.mResolutionAfter = videoEventBase2.mCurrentResolution;
                operaContext3.mConfigBitrateAfter = videoEventBase2.mCurrentConfigBitrate;
                Map<String, Long> bytesInfo = videoEventBase2.mDataSource.bytesInfo();
                if (bytesInfo != null) {
                    this.mOperaContext.mVideoLenAfterMS = ((Long) TTHelper.nonNullElse(bytesInfo.get("vlen"), Long.valueOf(this.mOperaContext.mVideoLenAfterMS))).longValue();
                    this.mOperaContext.mAudioLenAfterMS = ((Long) TTHelper.nonNullElse(bytesInfo.get("alen"), Long.valueOf(this.mOperaContext.mAudioLenAfterMS))).longValue();
                }
            }
            HashMap hashMap = new HashMap();
            hashMap.put("fr", this.mOperaContext.mStateBefore);
            hashMap.put(TypedValues.TransitionType.S_TO, this.mOperaContext.mStateAfter);
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(this.mOperaContext.mEndT));
            hashMap.put("c", Long.valueOf(this.mOperaContext.mCostTime));
            this.mSeekList.add(new JSONObject(hashMap).toString());
            sendOperaEvent();
            this.mOperaContext = new OperaContext();
            return;
        }
        TTVideoEngineLog.d(TAG, "endSeek without beginSeek, return.");
    }

    public long getLastSeekTime() {
        if (this.mOperaContext.mStartT > 0) {
            return 0L;
        }
        synchronized (this.mLastOperaTimeMap) {
            try {
                if (this.mLastOperaTimeMap.containsKey("seek")) {
                    return ((Long) this.mLastOperaTimeMap.get("seek")).longValue();
                }
                return -1L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void movieShouldRetry() {
        OperaContext.access$108(this.mOperaContext);
    }

    public void reset() {
        synchronized (this.mLastOperaTimeMap) {
            this.mLastOperaTimeMap = new HashMap();
        }
        this.mAccuCostTime = 0;
        this.mSeekList = new ArrayList<>();
    }

    public void sendOperaEvent() {
        this.mEventBase.updateVideoInfo(null);
        synchronized (this.mLastOperaTimeMap) {
            try {
                if (this.mLastOperaTimeMap.containsKey(this.mOperaContext.mOperaType)) {
                    long longValue = ((Long) this.mLastOperaTimeMap.get(this.mOperaContext.mOperaType)).longValue();
                    if (longValue > 0) {
                        OperaContext operaContext = this.mOperaContext;
                        operaContext.mLastInterval = operaContext.mStartT - longValue;
                    }
                }
                this.mLastOperaTimeMap.remove(this.mOperaContext.mOperaType);
                HashMap hashMap = this.mLastOperaTimeMap;
                OperaContext operaContext2 = this.mOperaContext;
                hashMap.put(operaContext2.mOperaType, Long.valueOf(operaContext2.mEndT));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mLastBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mLastBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        if (!this.mReportSeek) {
            return;
        }
        TTVideoEngineLog.i(TAG, "report async");
        VideoEventBase videoEventBase = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase.mContext, this, videoEventBase, this.mOperaContext));
    }

    public void setLoadTypeWhenSeek(int i10) {
        OperaContext operaContext = this.mOperaContext;
        if (operaContext != null) {
            operaContext.mLoadTypeWhenSeek = i10;
        }
    }

    public void setSeekCompleteTime(long j10) {
        OperaContext operaContext = this.mOperaContext;
        if (operaContext != null) {
            operaContext.mSeekCompleteTime = j10;
        }
    }

    public void setSeekLoadingBeginTime(long j10) {
        OperaContext operaContext = this.mOperaContext;
        if (operaContext != null) {
            operaContext.mSeekLoadingBeginTime = j10;
        }
    }

    public void setSeekLoadingEndTime(long j10) {
        OperaContext operaContext = this.mOperaContext;
        if (operaContext != null) {
            operaContext.mSeekLoadingEndTime = j10;
        }
    }
}
