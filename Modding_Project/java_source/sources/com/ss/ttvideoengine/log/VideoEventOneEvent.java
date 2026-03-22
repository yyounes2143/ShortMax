package com.ss.ttvideoengine.log;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.SieveCacheKt;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.log.DeviceMonitorUtils;
import com.ss.ttvideoengine.log.VideoEventBase;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOneEvent {
    public static final int BUFFERING_TYPE_AUDIO = 1;
    public static final int BUFFERING_TYPE_BOTHS = 3;
    public static final int BUFFERING_TYPE_VIDEO = 2;
    public static final String END_TYPE_EPISODE = "episode";
    public static final String END_TYPE_ERROR = "error";
    public static final String END_TYPE_EXIT = "exit";
    public static final String END_TYPE_SEEK = "seek";
    public static final String END_TYPE_SPEED = "speed";
    public static final String END_TYPE_SWITCH = "switch";
    public static final String END_TYPE_TIMEOUT = "timeout";
    public static final String END_TYPE_WAIT = "wait";
    public static final String EVENT_TYPE_DECODE = "block_decode";
    public static final String EVENT_TYPE_NET = "block_net";
    private static final String TAG = "VideoEventOneEvent";
    public static final String monitorName = "videoplayer_oneevent";
    public VideoEventBase mEventBase;
    public EventContext mEventContext;
    private VideoEventOneOpera mEventOpera;
    private HashMap mLastEventTimeMap;
    public long mAccuCostTime = 0;
    public ArrayList<String> mRebufList = new ArrayList<>();
    public long mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
    public int mIsAVBadInterlaced = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventOneEvent rEvent;
        private VideoEventBase rEventBase;
        private EventContext rEventContext;
        private Handler rHandler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(Context context, VideoEventOneEvent videoEventOneEvent, VideoEventBase videoEventBase, EventContext eventContext) {
            this.rEvent = videoEventOneEvent;
            this.rEventBase = videoEventBase;
            this.rContext = context;
            this.rEventContext = eventContext;
        }

        @Override // java.lang.Runnable
        public void run() {
            final boolean z10;
            VideoEventOneEvent videoEventOneEvent = this.rEvent;
            if (videoEventOneEvent == null) {
                return;
            }
            VideoEventBase videoEventBase = this.rEventBase;
            if (videoEventBase != null && videoEventBase.isUploadLogEnabled) {
                z10 = true;
            } else {
                z10 = false;
            }
            final JSONObject jsonObject = videoEventOneEvent.toJsonObject(this.rEventContext, videoEventBase);
            Handler handler = this.rHandler;
            if (handler != null && handler.getLooper() != null) {
                this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventOneEvent.AsyncGetLogDataRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoEventManager.instance.addEventV2(z10, jsonObject, "videoplayer_oneevent");
                    }
                });
                synchronized (this.rEvent.mLastEventTimeMap) {
                    this.rEvent.mLastEventTimeMap.remove(this.rEventContext.mEventType);
                    HashMap hashMap = this.rEvent.mLastEventTimeMap;
                    EventContext eventContext = this.rEventContext;
                    hashMap.put(eventContext.mEventType, Long.valueOf(eventContext.mEndT));
                }
                return;
            }
            VideoEventManager.instance.addEventV2(z10, jsonObject, "videoplayer_oneevent");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class EventContext {
        public long mAudioLenAfterMS;
        public long mAudioLenBaseAfterMs;
        public long mAudioLenBaseBeforeMs;
        public long mAudioLenBeforeMS;
        public long mAudioLenDecAfterMs;
        public long mAudioLenDecBeforeMs;
        public long mAudioLenOnlyBefore;
        public int mBufferingType;
        public long mBytesFromMDL;
        public int mConfigBitrateAfter;
        public int mConfigBitrateBefore;
        public long mCostTime;
        public double mCpuRate;
        public double mCpuSpeed;
        public float mCurrent;
        public long mEndT;
        public String mEndType;
        public String mEventType;
        public int mIndex;
        public int mIsABR;
        public long mLastSeekTime;
        public long mPlayerAudioReqOffset;
        public long mPlayerReadState;
        public long mPlayerReqOffset;
        public int mPowerSaveMode;
        public long mPreStartT;
        public String mQualityDescAfter;
        public String mQualityDescBefore;
        public String mResolutionAfter;
        public String mResolutionBefore;
        public int mRetryCount;
        public long mStartT;
        public long mVideoAudioGap;
        public long mVideoLenAfterMS;
        public long mVideoLenBaseAfterMs;
        public long mVideoLenBaseBeforeMs;
        public long mVideoLenBeforeMS;
        public long mVideoLenDecAfterMs;
        public long mVideoLenDecBeforeMs;
        public long mVideoLenOnlyBefore;
        public int mVideoPos;

        private EventContext() {
            this.mEventType = "";
            this.mCostTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndType = "";
            this.mPreStartT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mBufferingType = -1;
            this.mStartT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastSeekTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mVideoPos = Integer.MIN_VALUE;
            this.mRetryCount = 0;
            this.mVideoLenBeforeMS = -1L;
            this.mAudioLenBeforeMS = -1L;
            this.mVideoLenAfterMS = 0L;
            this.mAudioLenAfterMS = 0L;
            this.mBytesFromMDL = 0L;
            this.mIndex = 0;
            this.mVideoLenDecBeforeMs = 0L;
            this.mVideoLenDecAfterMs = 0L;
            this.mAudioLenDecBeforeMs = 0L;
            this.mAudioLenDecAfterMs = 0L;
            this.mVideoLenBaseBeforeMs = 0L;
            this.mVideoLenBaseAfterMs = 0L;
            this.mAudioLenBaseBeforeMs = 0L;
            this.mAudioLenBaseAfterMs = 0L;
            this.mVideoLenOnlyBefore = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mAudioLenOnlyBefore = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPlayerReqOffset = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPlayerAudioReqOffset = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPlayerReadState = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mVideoAudioGap = 0L;
            this.mResolutionBefore = "";
            this.mResolutionAfter = "";
            this.mConfigBitrateBefore = Integer.MIN_VALUE;
            this.mConfigBitrateAfter = Integer.MIN_VALUE;
            this.mIsABR = Integer.MIN_VALUE;
            this.mQualityDescBefore = "";
            this.mQualityDescAfter = "";
            this.mCpuRate = 1.401298464324817E-45d;
            this.mCpuSpeed = 1.401298464324817E-45d;
            this.mPowerSaveMode = Integer.MIN_VALUE;
            this.mCurrent = Float.MIN_VALUE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class StatisticDataRunnable implements Runnable {
        private final WeakReference<EventContext> rEvent;
        private final WeakReference<VideoEventBase> rEventBase;

        public StatisticDataRunnable(EventContext eventContext, VideoEventBase videoEventBase) {
            this.rEvent = new WeakReference<>(eventContext);
            this.rEventBase = new WeakReference<>(videoEventBase);
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceMonitorUtils.CPUInfo currentCPUInfo;
            EventContext eventContext = this.rEvent.get();
            VideoEventBase videoEventBase = this.rEventBase.get();
            if (eventContext != null && videoEventBase != null && (currentCPUInfo = videoEventBase.getCurrentCPUInfo()) != null) {
                double d10 = currentCPUInfo.cpuAppRate;
                double d11 = 1.401298464324817E-45d;
                if (d10 <= 0.0d) {
                    d10 = 1.401298464324817E-45d;
                }
                eventContext.mCpuRate = d10;
                double d12 = currentCPUInfo.cpuAppSpeed;
                if (d12 > 0.0d) {
                    d11 = d12;
                }
                eventContext.mCpuSpeed = d11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEventOneEvent(VideoEventBase videoEventBase, VideoEventOneOpera videoEventOneOpera) {
        this.mLastEventTimeMap = null;
        this.mEventContext = null;
        this.mEventBase = videoEventBase;
        this.mEventOpera = videoEventOneOpera;
        this.mLastEventTimeMap = new HashMap();
        this.mEventContext = new EventContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject toJsonObject(EventContext eventContext, VideoEventBase videoEventBase) {
        long j10;
        long j11;
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
            LoggerUtils.putToMap(hashMap, "resolution", videoEventBase.mCurrentResolution);
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
            LoggerUtils.putToMap((Map) hashMap, "play_speed", videoEventBase.mPlaySpeed);
            LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_NET_TYPE, videoEventBase.mNetworkType);
            LoggerUtils.putToMap(hashMap, "mdl_version", videoEventBase.mMdlVersion);
            LoggerUtils.putToMap((Map) hashMap, "enable_mdl", videoEventBase.mEnableMDL);
            LoggerUtils.putToMap((Map) hashMap, "video_hw", videoEventBase.mVideoHW);
            LoggerUtils.putToMap((Map) hashMap, "user_hw", videoEventBase.mVideoHWUser);
            LoggerUtils.putToMap((Map) hashMap, "reuse_socket", videoEventBase.mReuseSocket);
            LoggerUtils.putToMap((Map) hashMap, "cur_task_num", videoEventBase.mdl_cur_task_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_conc_count", videoEventBase.mdl_conc_count);
            LoggerUtils.putToMap(hashMap, "mdl_dns_t", videoEventBase.mdlVideoInfo.mdl_dns_t);
            LoggerUtils.putToMap((Map) hashMap, "mdl_downloading", videoEventBase.mdlVideoInfo.mdl_downloading);
            LoggerUtils.putToMap(hashMap, "mdl_last_read_time", videoEventBase.mdlVideoInfo.mdl_last_read_time);
            LoggerUtils.putToMap((Map) hashMap, "mdl_cdn_type", videoEventBase.mdlVideoInfo.mdl_cdn_type);
            LoggerUtils.putToMap((Map) hashMap, "mdl_mem_buffer_len", videoEventBase.mdlVideoInfo.mdl_mem_buffer_len);
            LoggerUtils.putToMap(hashMap, "mdl_disk_buffer_len", videoEventBase.mdlVideoInfo.mdl_disk_buffer_len);
            LoggerUtils.putToMap(hashMap, "mdl_send_offset", videoEventBase.mdlVideoInfo.mdl_send_offset);
            LoggerUtils.putToMap(hashMap, "mdl_last_req_offset", videoEventBase.mdlVideoInfo.mdl_last_req_offset);
            LoggerUtils.putToMap(hashMap, "mdl_last_ip_list", videoEventBase.mdlVideoInfo.mdl_last_ip_list);
            LoggerUtils.putToMap(hashMap, "cur_req_pos", videoEventBase.mdlVideoInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "cur_end_pos", videoEventBase.mdlVideoInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "cur_cache_pos", videoEventBase.mdlVideoInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "cache_type", videoEventBase.mdlVideoInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "cur_ip", videoEventBase.mdlVideoInfo.mdl_cur_ip);
            LoggerUtils.putToMap(hashMap, "cur_host", videoEventBase.mdlVideoInfo.mdl_cur_host);
            LoggerUtils.putToMap(hashMap, "reply_size", videoEventBase.mdlVideoInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "down_pos", videoEventBase.mdlVideoInfo.mdl_down_pos);
            LoggerUtils.putToMap(hashMap, "player_wait_time", videoEventBase.mdlVideoInfo.mdl_player_wait_time);
            LoggerUtils.putToMap((Map) hashMap, "player_wait_num", videoEventBase.mdlVideoInfo.mdl_player_wait_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_stage", videoEventBase.mdlVideoInfo.mdl_stage);
            LoggerUtils.putToMap((Map) hashMap, "mdl_ec", videoEventBase.mdlVideoInfo.mdl_error_code);
            LoggerUtils.putToMap((Map) hashMap, "mdl_speed", videoEventBase.mdlVideoInfo.mdl_speed);
            LoggerUtils.putToMap(hashMap, "mdl_file_key", videoEventBase.mdlVideoInfo.mdl_file_key);
            LoggerUtils.putToMap((Map) hashMap, "mdl_is_socrf", videoEventBase.mdlVideoInfo.mdl_is_socrf);
            LoggerUtils.putToMap((Map) hashMap, "mdl_req_num", videoEventBase.mdlVideoInfo.mdl_req_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_url_index", videoEventBase.mdlVideoInfo.mdl_url_index);
            LoggerUtils.putToMap(hashMap, "mdl_re_url", videoEventBase.mdlVideoInfo.mdl_re_url);
            LoggerUtils.putToMap((Map) hashMap, "mdl_cur_source", videoEventBase.mdlVideoInfo.mdl_cur_soure);
            LoggerUtils.putToMap(hashMap, "mdl_extra_info", videoEventBase.mdlVideoInfo.mdl_extra_info);
            LoggerUtils.putToMap(hashMap, "mdl_fs", videoEventBase.mdlVideoInfo.mdl_fs);
            LoggerUtils.putToMap((Map) hashMap, "mdl_p2p_sp", videoEventBase.mdlVideoInfo.mdl_pcdn_full_speed);
            LoggerUtils.putToMap(hashMap, "mdl_tbs", videoEventBase.mdlVideoInfo.mdl_tbs);
            LoggerUtils.putToMap(hashMap, "mdl_lbs", videoEventBase.mdlVideoInfo.mdl_lbs);
            LoggerUtils.putToMap(hashMap, "mdl_response_cache", videoEventBase.mdlVideoInfo.mdl_cdn_cache);
            LoggerUtils.putToMap(hashMap, "mdl_response_cinfo", videoEventBase.mdlVideoInfo.mdl_client_info);
            LoggerUtils.putToMap(hashMap, "a_cur_req_pos", videoEventBase.mdlAudioInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "a_cur_end_pos", videoEventBase.mdlAudioInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "a_cur_cache_pos", videoEventBase.mdlAudioInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "a_cache_type", videoEventBase.mdlAudioInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "a_cur_ip", videoEventBase.mdlAudioInfo.mdl_cur_ip);
            LoggerUtils.putToMap(hashMap, "a_cur_host", videoEventBase.mdlAudioInfo.mdl_cur_host);
            LoggerUtils.putToMap(hashMap, "a_reply_size", videoEventBase.mdlAudioInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "a_down_pos", videoEventBase.mdlAudioInfo.mdl_down_pos);
            LoggerUtils.putToMap(hashMap, "a_player_wait_time", videoEventBase.mdlAudioInfo.mdl_player_wait_time);
            LoggerUtils.putToMap((Map) hashMap, "a_player_wait_num", videoEventBase.mdlAudioInfo.mdl_player_wait_num);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_stage", videoEventBase.mdlAudioInfo.mdl_stage);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_ec", videoEventBase.mdlAudioInfo.mdl_error_code);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_speed", videoEventBase.mdlAudioInfo.mdl_speed);
            LoggerUtils.putToMap(hashMap, "a_mdl_file_key", videoEventBase.mdlAudioInfo.mdl_file_key);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_is_socrf", videoEventBase.mdlAudioInfo.mdl_is_socrf);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_req_num", videoEventBase.mdlAudioInfo.mdl_req_num);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_url_index", videoEventBase.mdlAudioInfo.mdl_url_index);
            LoggerUtils.putToMap(hashMap, "a_mdl_re_url", videoEventBase.mdlAudioInfo.mdl_re_url);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_cur_source", videoEventBase.mdlAudioInfo.mdl_cur_soure);
            LoggerUtils.putToMap(hashMap, "a_mdl_extra_info", videoEventBase.mdlAudioInfo.mdl_extra_info);
            LoggerUtils.putToMap(hashMap, "a_mdl_fs", videoEventBase.mdlAudioInfo.mdl_fs);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_p2p_sp", videoEventBase.mdlAudioInfo.mdl_pcdn_full_speed);
            LoggerUtils.putToMap(hashMap, "a_mdl_tbs", videoEventBase.mdlAudioInfo.mdl_tbs);
            LoggerUtils.putToMap(hashMap, "a_mdl_lbs", videoEventBase.mdlAudioInfo.mdl_lbs);
            LoggerUtils.putToMap(hashMap, "a_mdl_response_cache", videoEventBase.mdlAudioInfo.mdl_cdn_cache);
            LoggerUtils.putToMap(hashMap, "a_mdl_response_cinfo", videoEventBase.mdlAudioInfo.mdl_client_info);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_mem_buffer_len", videoEventBase.mdlAudioInfo.mdl_mem_buffer_len);
            LoggerUtils.putToMap(hashMap, "a_mdl_disk_buffer_len", videoEventBase.mdlAudioInfo.mdl_disk_buffer_len);
            LoggerUtils.putToMap(hashMap, "a_mdl_send_offset", videoEventBase.mdlAudioInfo.mdl_send_offset);
            LoggerUtils.putToMap(hashMap, "a_mdl_last_req_offset", videoEventBase.mdlAudioInfo.mdl_last_req_offset);
            LoggerUtils.putToMap(hashMap, "a_mdl_last_ip_list", videoEventBase.mdlAudioInfo.mdl_last_ip_list);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_cdn_type", videoEventBase.mdlAudioInfo.mdl_cdn_type);
            LoggerUtils.putToMap(hashMap, "a_mdl_last_read_time", videoEventBase.mdlAudioInfo.mdl_last_read_time);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_downloading", videoEventBase.mdlAudioInfo.mdl_downloading);
            LoggerUtils.putToMap(hashMap, "a_mdl_dns_t", videoEventBase.mdlAudioInfo.mdl_dns_t);
        }
        LoggerUtils.putToMap(hashMap, ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, eventContext.mEventType);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_COST_TIME, eventContext.mCostTime);
        LoggerUtils.putToMap(hashMap, "end_type", eventContext.mEndType);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_INDEX, eventContext.mIndex);
        long j12 = this.mFirstFrameTime;
        long j13 = -1;
        if (j12 > 0) {
            j10 = eventContext.mStartT - j12;
        } else {
            j10 = -1;
        }
        LoggerUtils.putToMap(hashMap, "first_frame_interval", j10);
        long j14 = eventContext.mLastSeekTime;
        if (j14 > 0) {
            j11 = eventContext.mStartT - j14;
        } else {
            j11 = -1;
        }
        LoggerUtils.putToMap(hashMap, "last_seek_interval", j11);
        if (this.mLastEventTimeMap.containsKey(eventContext.mEventType)) {
            long longValue = ((Long) this.mLastEventTimeMap.get(eventContext.mEventType)).longValue();
            if (longValue > 0) {
                j13 = eventContext.mStartT - longValue;
            }
        }
        LoggerUtils.putToMap(hashMap, "last_event_interval", j13);
        LoggerUtils.putToMap((Map) hashMap, "last_switch_interval", -1);
        LoggerUtils.putToMap((Map) hashMap, "video_pos", eventContext.mVideoPos);
        LoggerUtils.putToMap((Map) hashMap, "retry_count", eventContext.mRetryCount);
        LoggerUtils.putToMap(hashMap, "read_count_mdl", eventContext.mBytesFromMDL);
        LoggerUtils.putToMap(hashMap, "audio_len_before", eventContext.mAudioLenBeforeMS);
        LoggerUtils.putToMap(hashMap, "video_len_before", eventContext.mVideoLenBeforeMS);
        LoggerUtils.putToMap(hashMap, "audio_len_after", eventContext.mAudioLenAfterMS);
        LoggerUtils.putToMap(hashMap, "video_len_after", eventContext.mVideoLenAfterMS);
        LoggerUtils.putToMap(hashMap, "vlen_dec_before", eventContext.mVideoLenDecBeforeMs);
        LoggerUtils.putToMap(hashMap, "vlen_base_before", eventContext.mVideoLenBaseBeforeMs);
        LoggerUtils.putToMap(hashMap, "alen_dec_before", eventContext.mAudioLenDecBeforeMs);
        LoggerUtils.putToMap(hashMap, "alen_base_before", eventContext.mAudioLenBaseBeforeMs);
        LoggerUtils.putToMap(hashMap, "vlen_dec_after", eventContext.mVideoLenDecAfterMs);
        LoggerUtils.putToMap(hashMap, "vlen_base_after", eventContext.mVideoLenBaseAfterMs);
        LoggerUtils.putToMap(hashMap, "alen_dec_after", eventContext.mAudioLenDecAfterMs);
        LoggerUtils.putToMap(hashMap, "alen_base_after", eventContext.mAudioLenBaseAfterMs);
        LoggerUtils.putToMap(hashMap, "vlen_only_before", eventContext.mVideoLenOnlyBefore);
        LoggerUtils.putToMap(hashMap, "alen_only_before", eventContext.mAudioLenOnlyBefore);
        LoggerUtils.putToMap(hashMap, "player_req_offset", eventContext.mPlayerReqOffset);
        LoggerUtils.putToMap(hashMap, "a_player_req_offset", eventContext.mPlayerAudioReqOffset);
        LoggerUtils.putToMap(hashMap, "player_read_state", eventContext.mPlayerReadState);
        LoggerUtils.putToMap(hashMap, "av_gap", eventContext.mVideoAudioGap);
        LoggerUtils.putToMap((Map) hashMap, "buffer_reason", eventContext.mBufferingType);
        LoggerUtils.putToMap(hashMap, "pst", eventContext.mPreStartT);
        LoggerUtils.putToMap(hashMap, "st", eventContext.mStartT);
        LoggerUtils.putToMap(hashMap, "et", eventContext.mEndT);
        LoggerUtils.putToMap(hashMap, "resolution_before", eventContext.mResolutionBefore);
        LoggerUtils.putToMap(hashMap, "resolution_after", eventContext.mResolutionAfter);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_before", eventContext.mConfigBitrateBefore);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_after", eventContext.mConfigBitrateAfter);
        LoggerUtils.putToMap((Map) hashMap, "is_abr", eventContext.mIsABR);
        LoggerUtils.putToMap(hashMap, "quality_desc_before", eventContext.mQualityDescBefore);
        LoggerUtils.putToMap(hashMap, "quality_desc_after", eventContext.mQualityDescAfter);
        LoggerUtils.putToMap((Map) hashMap, "bad_interlaced", this.mIsAVBadInterlaced);
        LoggerUtils.putToMap((Map) hashMap, "cpu_rate", (float) eventContext.mCpuRate);
        LoggerUtils.putToMap((Map) hashMap, "cpu_speed", (float) eventContext.mCpuSpeed);
        LoggerUtils.putToMap((Map) hashMap, "power_save_mode", eventContext.mPowerSaveMode);
        LoggerUtils.putToMap((Map) hashMap, "battery_current", eventContext.mCurrent);
        LoggerUtils.putToMap((Map) hashMap, TTVideoEngineInterface.PLAY_API_KEY_NETWORKCORE, PortraitNetworkScore.getInstance().getLastPortraitResult());
        LoggerUtils.putToMap((Map) hashMap, "target_bitrate", (float) PortraitNetworkScore.getInstance().getLastTargetBitrate());
        Map<String, Object> popOneEventLog = StrategyHelper.helper().popOneEventLog(videoEventBase.mTraceID);
        if (popOneEventLog != null && !popOneEventLog.isEmpty()) {
            hashMap.putAll(popOneEventLog);
        }
        TTVideoEngineLog.d(TAG, "OneEvent:" + hashMap);
        return new JSONObject(hashMap);
    }

    public void _triggerBufferEndCb() {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && videoEventBase.mDataSource != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(HiAnalyticsConstant.BI_KEY_COST_TIME, Long.valueOf(this.mEventContext.mCostTime));
            hashMap.put("exit_type", this.mEventContext.mEndType);
            JSONObject mDLInfo = this.mEventBase.getMDLInfo();
            if (mDLInfo != null) {
                if (!mDLInfo.isNull("video")) {
                    try {
                        VideoEventBase.MDLTrackInfo mdlTrackInfo = this.mEventBase.getMdlTrackInfo(mDLInfo.getJSONObject("video"));
                        hashMap.put("cur_url", mdlTrackInfo.mdl_cur_url);
                        hashMap.put("cur_ip", mdlTrackInfo.mdl_cur_ip);
                        hashMap.put("cur_host", Uri.parse(mdlTrackInfo.mdl_cur_url).getHost());
                    } catch (Exception e10) {
                        TTVideoEngineLog.d(e10);
                    }
                }
            } else {
                hashMap.put("cur_url", this.mEventBase.mCurURL);
                hashMap.put("cur_ip", this.mEventBase.mCurIP);
                try {
                    hashMap.put("cur_host", Uri.parse(this.mEventBase.mCurURL).getHost());
                } catch (Exception e11) {
                    TTVideoEngineLog.i(TAG, "_triggerBufferEndCb:" + e11.toString());
                }
            }
            this.mEventBase.mDataSource.onInfo(1, hashMap);
        }
    }

    public long getLastRebufTime() {
        if (this.mEventContext.mStartT > 0) {
            return 0L;
        }
        synchronized (this.mLastEventTimeMap) {
            try {
                if (this.mLastEventTimeMap.containsKey(EVENT_TYPE_NET)) {
                    return ((Long) this.mLastEventTimeMap.get(EVENT_TYPE_NET)).longValue();
                }
                return -1L;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int getMovieStalledType() {
        return this.mEventContext.mBufferingType;
    }

    public long getStalledVideoBufferTime() {
        return this.mEventContext.mVideoLenBeforeMS;
    }

    public long getStatlledAudioBufferTime() {
        return this.mEventContext.mAudioLenBeforeMS;
    }

    public void moviePreStalled(int i10) {
        EventLoggerSource eventLoggerSource;
        this.mEventContext.mPreStartT = System.currentTimeMillis();
        this.mEventContext.mBufferingType = i10;
        TTVideoEngineLog.d(TAG, "movie stall type:" + i10);
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.updateMDLInfo();
        }
        VideoEventBase videoEventBase2 = this.mEventBase;
        if (videoEventBase2 != null && (eventLoggerSource = videoEventBase2.mDataSource) != null) {
            this.mEventContext.mPlayerReqOffset = eventLoggerSource.getLogValueLong(144);
            this.mEventContext.mPlayerAudioReqOffset = this.mEventBase.mDataSource.getLogValueLong(149);
            this.mEventContext.mPlayerReadState = this.mEventBase.mDataSource.getLogValueLong(150);
        }
    }

    public void movieShouldRetry() {
        this.mEventContext.mRetryCount++;
    }

    public void movieStallEnd(String str) {
        EventLoggerSource eventLoggerSource;
        EventContext eventContext = this.mEventContext;
        if (eventContext.mStartT > 0 && !eventContext.mEventType.isEmpty()) {
            this.mEventContext.mEndT = System.currentTimeMillis();
            TTVideoEngineLog.d(TAG, "movieStallEnd");
            EventContext eventContext2 = this.mEventContext;
            long j10 = eventContext2.mEndT - eventContext2.mStartT;
            eventContext2.mCostTime = j10;
            if (j10 > 0) {
                this.mAccuCostTime += j10;
            }
            eventContext2.mEndType = str;
            eventContext2.mLastSeekTime = this.mEventOpera.getLastSeekTime();
            EventContext eventContext3 = this.mEventContext;
            if (eventContext3.mLastSeekTime == 0) {
                eventContext3.mLastSeekTime = eventContext3.mStartT;
            }
            VideoEventBase videoEventBase = this.mEventBase;
            if (videoEventBase != null && (eventLoggerSource = videoEventBase.mDataSource) != null) {
                eventContext3.mResolutionAfter = videoEventBase.mCurrentResolution;
                eventContext3.mConfigBitrateAfter = videoEventBase.mCurrentConfigBitrate;
                eventContext3.mQualityDescAfter = videoEventBase.mCurrentQualityDesc;
                Map<String, Long> bytesInfo = eventLoggerSource.bytesInfo();
                if (bytesInfo != null) {
                    this.mEventContext.mVideoLenAfterMS = TTHelper.safelyUnbox(bytesInfo.get("vlen"));
                    this.mEventContext.mAudioLenAfterMS = TTHelper.safelyUnbox(bytesInfo.get("alen"));
                    this.mEventContext.mVideoLenDecAfterMs = TTHelper.safelyUnbox(bytesInfo.get("vDecLen"));
                    this.mEventContext.mVideoLenBaseAfterMs = TTHelper.safelyUnbox(bytesInfo.get("vBaseLen"));
                    this.mEventContext.mAudioLenDecAfterMs = TTHelper.safelyUnbox(bytesInfo.get("aDecLen"));
                    this.mEventContext.mAudioLenBaseAfterMs = TTHelper.safelyUnbox(bytesInfo.get("aBaseLen"));
                    this.mEventContext.mVideoAudioGap = TTHelper.safelyUnbox(bytesInfo.get("avGap"));
                }
            }
            HashMap hashMap = new HashMap();
            hashMap.put(TtmlNode.TAG_P, Integer.valueOf(this.mEventContext.mVideoPos));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(this.mEventContext.mEndT));
            hashMap.put("c", Long.valueOf(this.mEventContext.mCostTime));
            this.mRebufList.add(new JSONObject(hashMap).toString());
            sendOneEvent();
            _triggerBufferEndCb();
            this.mEventContext = new EventContext();
            return;
        }
        TTVideoEngineLog.d(TAG, "movieStallEnd without movieStalled, return.");
        EventContext eventContext4 = this.mEventContext;
        eventContext4.mPreStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        eventContext4.mBufferingType = -1;
    }

    public void movieStalled(int i10, int i11) {
        int isPowerSaveMode;
        Object obj;
        TTVideoEngineLog.d(TAG, "movieStalled");
        this.mEventContext.mStartT = System.currentTimeMillis();
        EventContext eventContext = this.mEventContext;
        eventContext.mVideoPos = i10;
        eventContext.mIndex = i11;
        eventContext.mEventType = EVENT_TYPE_NET;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && videoEventBase.mDataSource != null) {
            eventContext.mResolutionBefore = videoEventBase.mCurrentResolution;
            eventContext.mConfigBitrateBefore = videoEventBase.mCurrentConfigBitrate;
            eventContext.mQualityDescBefore = videoEventBase.mCurrentQualityDesc;
            Map map = videoEventBase.abrInfo;
            if (map != null && (obj = map.get("abr_used")) != null) {
                this.mEventContext.mIsABR = ((Integer) obj).intValue();
            }
            this.mEventContext.mBytesFromMDL = this.mEventBase.mDataSource.getLogValueLong(56);
            Map<String, Long> parsePlayerBufferString = LoggerUtils.parsePlayerBufferString(this.mEventBase.mDataSource.getLogValueStr(55));
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH) != null) {
                this.mEventContext.mVideoLenBeforeMS = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH) != null) {
                this.mEventContext.mAudioLenBeforeMS = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH) != null) {
                this.mEventContext.mVideoLenDecBeforeMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH) != null) {
                this.mEventContext.mAudioLenDecBeforeMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH) != null) {
                this.mEventContext.mVideoLenBaseBeforeMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH) != null) {
                this.mEventContext.mAudioLenBaseBeforeMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_ONLY_LENGTH) != null) {
                this.mEventContext.mVideoLenOnlyBefore = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_ONLY_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_ONLY_LENGTH) != null) {
                this.mEventContext.mAudioLenOnlyBefore = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_ONLY_LENGTH).longValue();
            }
            this.mEventBase.mNetworkType = VideoEventBase.getNetType();
            VideoEventBase videoEventBase2 = this.mEventBase;
            if (videoEventBase2.mEnablePowerReport) {
                double cPURate = videoEventBase2.getCPURate();
                double cPUSpeed = this.mEventBase.getCPUSpeed();
                if (cPURate > 0.0d && cPUSpeed > 0.0d) {
                    EventContext eventContext2 = this.mEventContext;
                    eventContext2.mCpuRate = cPURate;
                    eventContext2.mCpuSpeed = cPUSpeed;
                } else {
                    EngineThreadPool.addExecuteTask(new StatisticDataRunnable(this.mEventContext, this.mEventBase));
                }
                this.mEventContext.mCurrent = this.mEventBase.getBatteryCurrent();
            }
            if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 2L) && (isPowerSaveMode = DeviceMonitorUtils.isPowerSaveMode(this.mEventBase.mContext)) >= 0) {
                this.mEventContext.mPowerSaveMode = isPowerSaveMode;
            }
        }
    }

    public void onAVBadInterlaced() {
        this.mIsAVBadInterlaced = 1;
    }

    public void reset() {
        synchronized (this.mLastEventTimeMap) {
            this.mLastEventTimeMap = new HashMap();
        }
        this.mAccuCostTime = 0L;
        this.mRebufList = new ArrayList<>();
        this.mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mIsAVBadInterlaced = 0;
    }

    public void sendOneEvent() {
        this.mEventBase.updateVideoInfo(null);
        TTVideoEngineLog.i(TAG, "report async");
        VideoEventBase videoEventBase = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase.mContext, this, videoEventBase, this.mEventContext));
    }

    public void showedFirstFrame() {
        this.mFirstFrameTime = System.currentTimeMillis();
    }

    public void triggerBufferStartCb() {
        String str;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && videoEventBase.mDataSource != null) {
            HashMap hashMap = new HashMap();
            VideoEventBase videoEventBase2 = this.mEventBase;
            if (videoEventBase2.mEnableMDL > 0) {
                hashMap.put("cur_url", videoEventBase2.mdlVideoInfo.mdl_cur_url);
                hashMap.put("cur_ip", this.mEventBase.mdlVideoInfo.mdl_cur_ip);
                str = this.mEventBase.mdlVideoInfo.mdl_cur_url;
            } else {
                hashMap.put("cur_url", videoEventBase2.mCurURL);
                hashMap.put("cur_ip", this.mEventBase.mCurIP);
                str = this.mEventBase.mCurURL;
            }
            try {
                hashMap.put("cur_host", Uri.parse(str).getHost());
            } catch (Exception e10) {
                TTVideoEngineLog.i(TAG, "triggerBufferStartCb:" + e10.toString());
            }
            this.mEventBase.mDataSource.onInfo(0, hashMap);
        }
    }
}
