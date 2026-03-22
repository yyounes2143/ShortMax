package com.ss.ttvideoengine.log;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.SieveCacheKt;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.log.DeviceMonitorUtils;
import com.ss.ttvideoengine.log.VideoEventOneNoRender;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOneNoRender {
    public static final String END_TYPE_EXIT = "exit";
    public static final String END_TYPE_WAIT = "wait";
    public static final String EVENT_TYPE = "av_norender";
    public static final int NO_RENDER_DURATION_UPLOAD_THRESHOLD = 1000;
    public static final int REASON_PLAYER = 0;
    public static final int REASON_TEXTURE_RENDER_NO_CALLBACK = 1;
    public static final int REASON_TEXTURE_RENDER_NO_DRAW = 2;
    private static final String TAG = "VideoEventOneNoRender";
    public static final int TYPE_AUDIO = 1;
    public static final int TYPE_VIDEO = 0;
    public static final String monitorName = "videoplayer_oneevent";
    private int index;
    private boolean isStarted;
    private ArrayList<String> mAudioHistoryList;
    private VideoEventBase mEventBase;
    private ArrayList<String> mVideoHistoryList;
    public long mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
    public int mIsAVBadInterlaced = 0;
    private EventContext mEventContext = new EventContext();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private final VideoEventOneNoRender event;
        private final VideoEventBase eventBase;
        private final EventContext eventContext;
        private final Handler handler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(VideoEventOneNoRender videoEventOneNoRender, VideoEventBase videoEventBase, EventContext eventContext) {
            this.event = videoEventOneNoRender;
            this.eventBase = videoEventBase;
            this.eventContext = eventContext;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(boolean z10, JSONObject jSONObject) {
            VideoEventManager.instance.addEventV2(z10, jSONObject, "videoplayer_oneevent");
        }

        @Override // java.lang.Runnable
        public void run() {
            final boolean z10;
            VideoEventOneNoRender videoEventOneNoRender = this.event;
            if (videoEventOneNoRender == null) {
                return;
            }
            VideoEventBase videoEventBase = this.eventBase;
            if (videoEventBase != null && videoEventBase.isUploadLogEnabled) {
                z10 = true;
            } else {
                z10 = false;
            }
            final JSONObject jsonObject = videoEventOneNoRender.toJsonObject(videoEventBase, this.eventContext);
            this.handler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.i
                @Override // java.lang.Runnable
                public final void run() {
                    VideoEventOneNoRender.AsyncGetLogDataRunnable.lambda$run$0(z10, jsonObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class EventContext {
        long audioBaseLengthMs;
        long audioDecoderLengthMs;
        long audioFormatLengthMs;
        long costTime;
        int mBeginPos;
        int mBt;
        double mCpuRate;
        double mCpuSpeed;
        float mCurrent;
        long mDequeueOutputBufferCountInEnd;
        long mDequeueOutputBufferCountInStart;
        int mEnableGloablMuteFeature;
        int mEndPos;
        long mEndT;
        String mEndType;
        int mGlobalMute;
        int mHeadset;
        int mIsABR;
        int mIsBackground;
        int mIsRadioMode;
        long mLastAVSwitchInterval;
        long mLastForebackSwitchInterval;
        long mLastHeadsetSwitchInterval;
        long mLastRebufT;
        long mLastResSwitchInterval;
        long mLastSeekT;
        long mLastSetSurfaceNullInterval;
        int mMcMonitorQueueSizeInEnd;
        int mMcMonitorQueueSizeInStart;
        int mPowerSaveMode;
        String mQualityDescBefore;
        long mQueueInputBufferCountInEnd;
        long mQueueInputBufferCountInStart;
        String mResolutionBefore;
        int mSetValidSurfaceTimeout;
        int noRenderType;
        int reason;
        String stageError;
        long startTime;
        long videoBaseLengthMs;
        long videoDecoderLengthMs;
        long videoFormatLengthMs;

        private EventContext() {
            this.noRenderType = Integer.MIN_VALUE;
            this.reason = Integer.MIN_VALUE;
            this.videoFormatLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.audioFormatLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.videoDecoderLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.audioDecoderLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.videoBaseLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.audioBaseLengthMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.startTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.costTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mResolutionBefore = null;
            this.mLastRebufT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastSeekT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mBeginPos = Integer.MIN_VALUE;
            this.mEndPos = Integer.MIN_VALUE;
            this.mEndType = null;
            this.mIsABR = Integer.MIN_VALUE;
            this.mQualityDescBefore = "";
            this.mIsRadioMode = Integer.MIN_VALUE;
            this.mLastAVSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastResSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mHeadset = Integer.MIN_VALUE;
            this.mBt = Integer.MIN_VALUE;
            this.mLastHeadsetSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mIsBackground = Integer.MIN_VALUE;
            this.mLastForebackSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastSetSurfaceNullInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSetValidSurfaceTimeout = Integer.MIN_VALUE;
            this.mEnableGloablMuteFeature = 0;
            this.mGlobalMute = 0;
            this.mCpuRate = 1.401298464324817E-45d;
            this.mCpuSpeed = 1.401298464324817E-45d;
            this.mPowerSaveMode = Integer.MIN_VALUE;
            this.mCurrent = Float.MIN_VALUE;
            this.mQueueInputBufferCountInStart = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mDequeueOutputBufferCountInStart = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mMcMonitorQueueSizeInStart = Integer.MIN_VALUE;
            this.mQueueInputBufferCountInEnd = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mDequeueOutputBufferCountInEnd = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mMcMonitorQueueSizeInEnd = Integer.MIN_VALUE;
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

    public VideoEventOneNoRender(VideoEventBase videoEventBase) {
        this.mEventBase = videoEventBase;
    }

    private void addToHistory() {
        String generateHistory = generateHistory(this.mEventContext);
        if (TextUtils.isEmpty(generateHistory)) {
            return;
        }
        int i10 = this.mEventContext.noRenderType;
        if (i10 == 0) {
            if (this.mVideoHistoryList == null) {
                this.mVideoHistoryList = new ArrayList<>();
            }
            this.mVideoHistoryList.add(generateHistory);
        } else if (i10 == 1) {
            if (this.mAudioHistoryList == null) {
                this.mAudioHistoryList = new ArrayList<>();
            }
            this.mAudioHistoryList.add(generateHistory);
        }
    }

    private static String generateHistory(@NonNull EventContext eventContext) {
        HashMap hashMap = new HashMap();
        hashMap.put("st", Long.valueOf(eventContext.startTime));
        hashMap.put("c", Long.valueOf(eventContext.costTime));
        hashMap.put("reason", Integer.valueOf(eventContext.reason));
        try {
            return new JSONObject(hashMap).toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void maybeSendEvent() {
        if (this.mEventContext.costTime < 1000) {
            TTVideoEngineLog.d(TAG, "duration less than threshold, abort event");
            return;
        }
        this.index++;
        this.mEventBase.updateVideoInfo(null);
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(this, this.mEventBase, this.mEventContext));
    }

    static String parseNoRenderError(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap hashMap = new HashMap();
        String[] split = str.split(";|=");
        if (split == null || split.length == 0) {
            return null;
        }
        for (int i10 = 0; i10 < split.length - 1; i10 += 2) {
            try {
                hashMap.put(split[i10], Integer.valueOf(Integer.parseInt(split[i10 + 1])));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return new JSONObject(hashMap).toString();
    }

    public static int unifyReason(int i10) {
        if (i10 != 0) {
            return 2;
        }
        return 1;
    }

    public void end(int i10, String str) {
        EventLoggerSource eventLoggerSource;
        if (!isStarted()) {
            return;
        }
        this.isStarted = false;
        long currentTimeMillis = System.currentTimeMillis();
        EventContext eventContext = this.mEventContext;
        long j10 = eventContext.startTime;
        if (j10 > 0) {
            eventContext.costTime = currentTimeMillis - j10;
        }
        eventContext.mEndType = str;
        eventContext.mEndPos = i10;
        eventContext.mEndT = currentTimeMillis;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && (eventLoggerSource = videoEventBase.mDataSource) != null) {
            eventContext.mSetValidSurfaceTimeout = eventLoggerSource.getLogValueInt(113);
            EventContext eventContext2 = this.mEventContext;
            if (eventContext2.noRenderType == 0) {
                eventContext2.mQueueInputBufferCountInEnd = this.mEventBase.mDataSource.getLogValueLong(152);
                this.mEventContext.mDequeueOutputBufferCountInEnd = this.mEventBase.mDataSource.getLogValueLong(153);
                this.mEventContext.mMcMonitorQueueSizeInEnd = this.mEventBase.mDataSource.getLogValueInt(154);
            }
        }
        addToHistory();
        maybeSendEvent();
        this.mEventContext = new EventContext();
    }

    public ArrayList<String> getAudioHistory() {
        return this.mAudioHistoryList;
    }

    public String getRenderStageError() {
        return this.mEventContext.stageError;
    }

    public int getType() {
        return this.mEventContext.noRenderType;
    }

    public ArrayList<String> getVideoHistory() {
        return this.mVideoHistoryList;
    }

    public boolean isStarted() {
        return this.isStarted;
    }

    public boolean isType(int i10) {
        if (this.mEventContext.noRenderType == i10) {
            return true;
        }
        return false;
    }

    public void onAVBadInterlaced() {
        this.mIsAVBadInterlaced = 1;
    }

    public void reset() {
        this.mEventContext = new EventContext();
        this.mVideoHistoryList = null;
        this.mAudioHistoryList = null;
        this.isStarted = false;
        this.index = 0;
        this.mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mIsAVBadInterlaced = 0;
    }

    public void showedFirstFrame() {
        this.mFirstFrameTime = System.currentTimeMillis();
    }

    public void start(int i10, int i11, int i12, long j10, long j11, long j12) {
        int isPowerSaveMode;
        Object obj;
        EventLoggerSource eventLoggerSource;
        this.isStarted = true;
        long currentTimeMillis = System.currentTimeMillis();
        EventContext eventContext = this.mEventContext;
        eventContext.startTime = currentTimeMillis;
        eventContext.noRenderType = i10;
        eventContext.reason = i11;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && (eventLoggerSource = videoEventBase.mDataSource) != null) {
            Map<String, Long> parsePlayerBufferString = LoggerUtils.parsePlayerBufferString(eventLoggerSource.getLogValueStr(55));
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH) != null) {
                this.mEventContext.videoFormatLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH) != null) {
                this.mEventContext.audioFormatLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH) != null) {
                this.mEventContext.videoDecoderLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH) != null) {
                this.mEventContext.audioDecoderLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH) != null) {
                this.mEventContext.videoBaseLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH).longValue();
            }
            if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH) != null) {
                this.mEventContext.audioBaseLengthMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH).longValue();
            }
            String parseNoRenderError = parseNoRenderError(this.mEventBase.mDataSource.getLogValueStr(110));
            if (!TextUtils.isEmpty(parseNoRenderError)) {
                this.mEventContext.stageError = parseNoRenderError;
                TTVideoEngineLog.d(TAG, "stage error: " + this.mEventContext.stageError);
            }
        }
        EventContext eventContext2 = this.mEventContext;
        eventContext2.mBeginPos = i12;
        if (j10 == 0) {
            eventContext2.mLastRebufT = eventContext2.startTime;
        } else {
            eventContext2.mLastRebufT = j10;
        }
        if (j11 == 0) {
            eventContext2.mLastSeekT = eventContext2.startTime;
        } else {
            eventContext2.mLastSeekT = j11;
        }
        if (j12 > 0) {
            eventContext2.mLastHeadsetSwitchInterval = currentTimeMillis - j12;
        }
        VideoEventBase videoEventBase2 = this.mEventBase;
        if (videoEventBase2 != null) {
            eventContext2.mResolutionBefore = videoEventBase2.mCurrentResolution;
            eventContext2.mQualityDescBefore = videoEventBase2.mCurrentQualityDesc;
            Map map = videoEventBase2.abrInfo;
            if (map != null && (obj = map.get("abr_used")) != null) {
                this.mEventContext.mIsABR = ((Integer) obj).intValue();
            }
            EventLoggerSource eventLoggerSource2 = this.mEventBase.mDataSource;
            if (eventLoggerSource2 != null) {
                this.mEventContext.mIsRadioMode = eventLoggerSource2.getLogValueInt(88);
                this.mEventContext.mHeadset = this.mEventBase.mDataSource.getLogValueInt(89);
                this.mEventContext.mBt = this.mEventBase.mDataSource.getLogValueInt(90);
                this.mEventContext.mIsBackground = this.mEventBase.mDataSource.getLogValueInt(94);
                EventContext eventContext3 = this.mEventContext;
                if (eventContext3.noRenderType == 0) {
                    eventContext3.mQueueInputBufferCountInStart = this.mEventBase.mDataSource.getLogValueLong(152);
                    this.mEventContext.mDequeueOutputBufferCountInStart = this.mEventBase.mDataSource.getLogValueLong(153);
                    this.mEventContext.mMcMonitorQueueSizeInStart = this.mEventBase.mDataSource.getLogValueInt(154);
                }
                long logValueLong = this.mEventBase.mDataSource.getLogValueLong(91);
                if (logValueLong > 0) {
                    this.mEventContext.mLastAVSwitchInterval = currentTimeMillis - logValueLong;
                }
                long logValueLong2 = this.mEventBase.mDataSource.getLogValueLong(92);
                if (logValueLong2 > 0) {
                    this.mEventContext.mLastResSwitchInterval = currentTimeMillis - logValueLong2;
                }
                long logValueLong3 = this.mEventBase.mDataSource.getLogValueLong(95);
                if (logValueLong3 > 0) {
                    this.mEventContext.mLastForebackSwitchInterval = currentTimeMillis - logValueLong3;
                }
                long logValueLong4 = this.mEventBase.mDataSource.getLogValueLong(112);
                if (logValueLong4 > 0) {
                    this.mEventContext.mLastSetSurfaceNullInterval = currentTimeMillis - logValueLong4;
                }
                this.mEventContext.mEnableGloablMuteFeature = this.mEventBase.mDataSource.getLogValueInt(121);
                this.mEventContext.mGlobalMute = this.mEventBase.mDataSource.getLogValueInt(122);
            }
            VideoEventBase videoEventBase3 = this.mEventBase;
            if (videoEventBase3.mEnablePowerReport) {
                double cPURate = videoEventBase3.getCPURate();
                double cPUSpeed = this.mEventBase.getCPUSpeed();
                if (cPURate > 0.0d && cPUSpeed > 0.0d) {
                    EventContext eventContext4 = this.mEventContext;
                    eventContext4.mCpuRate = cPURate;
                    eventContext4.mCpuSpeed = cPUSpeed;
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

    public JSONObject toJsonObject(VideoEventBase videoEventBase, EventContext eventContext) {
        long j10;
        HashMap hashMap = new HashMap();
        LoggerUtils.putToMap(hashMap, ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, EVENT_TYPE);
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "player_sessionid", videoEventBase.mSessionID);
            LoggerUtils.putToMap(hashMap, "sdk_version", videoEventBase.sdk_version);
        }
        LoggerUtils.putToMap(hashMap, "r_stage_errcs", eventContext.stageError);
        LoggerUtils.putToMap(hashMap, "video_len_before", eventContext.videoFormatLengthMs);
        LoggerUtils.putToMap(hashMap, "audio_len_before", eventContext.audioFormatLengthMs);
        LoggerUtils.putToMap(hashMap, "vlen_dec_before", eventContext.videoDecoderLengthMs);
        LoggerUtils.putToMap(hashMap, "alen_dec_before", eventContext.audioDecoderLengthMs);
        LoggerUtils.putToMap(hashMap, "vlen_base_before", eventContext.videoBaseLengthMs);
        LoggerUtils.putToMap(hashMap, "alen_base_before", eventContext.audioBaseLengthMs);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_COST_TIME, eventContext.costTime);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_INDEX, this.index);
        LoggerUtils.putToMap((Map) hashMap, "norender_type", eventContext.noRenderType);
        LoggerUtils.putToMap((Map) hashMap, "reason", eventContext.reason);
        if (videoEventBase != null) {
            String str = videoEventBase.mCurURL;
            if (str != null && !str.isEmpty()) {
                LoggerUtils.putToMap(hashMap, "cdn_url", videoEventBase.mCurURL);
            } else {
                LoggerUtils.putToMap(hashMap, "cdn_url", videoEventBase.mInitialURL);
            }
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SOURCE_TYPE, videoEventBase.mSourceTypeStr);
            LoggerUtils.putToMap(hashMap, "v", videoEventBase.mVid);
            LoggerUtils.putToMap(hashMap, "vtype", videoEventBase.vtype);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_TAG, videoEventBase.mTag);
            LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SUBTAG, videoEventBase.mSubTag);
            LoggerUtils.putToMap(hashMap, "codec", videoEventBase.codec_type);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_VIDEO_CODEC_NAME_ID, videoEventBase.videoCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_AUDIO_CODEC_NAME_ID, videoEventBase.audioCodecNameId);
            LoggerUtils.putToMap((Map) hashMap, "format_type", videoEventBase.formatType);
            LoggerUtils.putToMap((Map) hashMap, "drm_type", videoEventBase.mDrmType);
            LoggerUtils.putToMap((Map) hashMap, "play_speed", videoEventBase.mPlaySpeed);
            LoggerUtils.putToMap((Map) hashMap, "enable_mdl", videoEventBase.mEnableMDL);
            LoggerUtils.putToMap((Map) hashMap, "video_hw", videoEventBase.mVideoHW);
            LoggerUtils.putToMap((Map) hashMap, "user_hw", videoEventBase.mVideoHWUser);
        }
        LoggerUtils.putToMap(hashMap, "st", eventContext.startTime);
        LoggerUtils.putToMap(hashMap, "et", eventContext.mEndT);
        LoggerUtils.putToMap(hashMap, "end_type", eventContext.mEndType);
        LoggerUtils.putToMap(hashMap, "resolution_before", eventContext.mResolutionBefore);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_RADIO_MODE, eventContext.mIsRadioMode);
        LoggerUtils.putToMap((Map) hashMap, "setvalidsurface_timeout", eventContext.mSetValidSurfaceTimeout);
        LoggerUtils.putToMap(hashMap, "last_av_switch_interval", eventContext.mLastAVSwitchInterval);
        LoggerUtils.putToMap(hashMap, "last_res_switch_interval", eventContext.mLastResSwitchInterval);
        LoggerUtils.putToMap((Map) hashMap, "headset", eventContext.mHeadset);
        LoggerUtils.putToMap((Map) hashMap, "bt", eventContext.mBt);
        LoggerUtils.putToMap(hashMap, "last_headset_switch_interval", eventContext.mLastHeadsetSwitchInterval);
        LoggerUtils.putToMap((Map) hashMap, "is_background", eventContext.mIsBackground);
        LoggerUtils.putToMap(hashMap, "last_foreback_switch_interval", eventContext.mLastForebackSwitchInterval);
        LoggerUtils.putToMap(hashMap, "last_setsurfacenull_interval", eventContext.mLastSetSurfaceNullInterval);
        long j11 = this.mFirstFrameTime;
        if (j11 > 0) {
            j10 = eventContext.startTime - j11;
        } else {
            j10 = -1;
        }
        LoggerUtils.putToMap(hashMap, "first_frame_interval", j10);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_BEGIN_POS, eventContext.mBeginPos);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_END_POS, eventContext.mEndPos);
        long j12 = eventContext.mLastRebufT;
        if (j12 > 0) {
            LoggerUtils.putToMap(hashMap, "last_rebuf_interval", eventContext.startTime - j12);
        }
        long j13 = eventContext.mLastSeekT;
        if (j13 > 0) {
            LoggerUtils.putToMap(hashMap, "last_seek_interval", eventContext.startTime - j13);
        }
        LoggerUtils.putToMap((Map) hashMap, "is_abr", eventContext.mIsABR);
        LoggerUtils.putToMap(hashMap, "quality_desc_before", eventContext.mQualityDescBefore);
        LoggerUtils.putToMap((Map) hashMap, "bad_interlaced", this.mIsAVBadInterlaced);
        LoggerUtils.putToMap((Map) hashMap, "enable_global_mute_feature", eventContext.mEnableGloablMuteFeature);
        LoggerUtils.putToMap((Map) hashMap, "global_mute", eventContext.mGlobalMute);
        LoggerUtils.putToMap((Map) hashMap, "cpu_rate", (float) eventContext.mCpuRate);
        LoggerUtils.putToMap((Map) hashMap, "cpu_speed", (float) eventContext.mCpuSpeed);
        LoggerUtils.putToMap((Map) hashMap, "power_save_mode", eventContext.mPowerSaveMode);
        LoggerUtils.putToMap((Map) hashMap, "battery_current", eventContext.mCurrent);
        LoggerUtils.putToMap(hashMap, "queue_input_buffer_in_start", eventContext.mQueueInputBufferCountInStart);
        LoggerUtils.putToMap(hashMap, "queue_input_buffer_in_end", eventContext.mQueueInputBufferCountInEnd);
        LoggerUtils.putToMap(hashMap, "dequeue_output_buffer_in_start", eventContext.mDequeueOutputBufferCountInStart);
        LoggerUtils.putToMap(hashMap, "dequeue_output_buffer_in_end", eventContext.mDequeueOutputBufferCountInEnd);
        LoggerUtils.putToMap((Map) hashMap, "mc_monitor_queue_in_start", eventContext.mMcMonitorQueueSizeInStart);
        LoggerUtils.putToMap((Map) hashMap, "mc_monitor_queue_in_end", eventContext.mMcMonitorQueueSizeInEnd);
        return new JSONObject(hashMap);
    }

    public void updateEventBase(VideoEventBase videoEventBase) {
        this.mEventBase = videoEventBase;
    }

    public void updateReason(int i10) {
        EventContext eventContext = this.mEventContext;
        if (eventContext.reason != 0 && i10 == 0) {
            eventContext.reason = 0;
        }
    }
}
