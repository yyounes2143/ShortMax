package com.ss.ttvideoengine.log;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.collection.SieveCacheKt;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.log.DeviceMonitorUtils;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOneOutSync {
    public static final String END_TYPE_ERROR = "error";
    public static final String END_TYPE_EXIT = "exit";
    public static final String END_TYPE_FINISH = "finish";
    public static final String END_TYPE_SEEK = "seek";
    public static final String END_TYPE_SWITCH = "switch";
    public static final String END_TYPE_WAIT = "wait";
    public static final String EVENT_TYPE_OUTSYNC = "av_outsync";
    private static final String TAG = "VideoEventOneOutSync";
    public static final int VIDEO_OUTSYNC_KEY_PAUSE_TIME = 1;
    public static final String monitorName = "videoplayer_oneevent";
    public EventContext mContext;
    public VideoEventBase mEventBase;
    public ArrayList<String> mList = new ArrayList<>();
    public int mAVOutSyncCount = 0;
    public int mIndex = 0;
    public long mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mLastEventTime = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mVideoStreamDuration = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mAudioStreamDuration = SieveCacheKt.NodeMetaAndPreviousMask;
    public int mIsAVBadInterlaced = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private Context rContext;
        private VideoEventOneOutSync rEvent;
        private VideoEventBase rEventBase;
        private EventContext rEventContext;
        private Handler rHandler = new Handler(Looper.getMainLooper());

        public AsyncGetLogDataRunnable(Context context, VideoEventOneOutSync videoEventOneOutSync, VideoEventBase videoEventBase, EventContext eventContext) {
            this.rEvent = videoEventOneOutSync;
            this.rEventBase = videoEventBase;
            this.rContext = context;
            this.rEventContext = eventContext;
        }

        @Override // java.lang.Runnable
        public void run() {
            final boolean z10;
            VideoEventOneOutSync videoEventOneOutSync = this.rEvent;
            if (videoEventOneOutSync == null) {
                return;
            }
            VideoEventBase videoEventBase = this.rEventBase;
            if (videoEventBase != null && videoEventBase.isUploadLogEnabled) {
                z10 = true;
            } else {
                z10 = false;
            }
            final JSONObject jsonObject = videoEventOneOutSync.toJsonObject(this.rEventContext, videoEventBase);
            Handler handler = this.rHandler;
            if (handler != null && handler.getLooper() != null) {
                this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventOneOutSync.AsyncGetLogDataRunnable.1
                    @Override // java.lang.Runnable
                    public void run() {
                        VideoEventManager.instance.addEventV2(z10, jsonObject, "videoplayer_oneevent");
                    }
                });
                this.rEvent.mLastEventTime = this.rEventContext.mEndT;
                return;
            }
            VideoEventManager.instance.addEventV2(z10, jsonObject, "videoplayer_oneevent");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public class EventContext {
        private long mAudioBaseLenMs;
        private long mAudioDecoderLenMs;
        private long mAudioFormaterLenMs;
        private int mBeginPos;
        private int mBitrateAfter;
        private int mBitrateBefore;
        public int mBt;
        private long mCostTime;
        public double mCpuRate;
        public double mCpuSpeed;
        public float mCurrent;
        private int mDropCount;
        private int mEndPos;
        private long mEndT;
        private String mEndType;
        public int mHeadset;
        public int mIsABR;
        public int mIsBackground;
        public int mIsCharging;
        public int mIsRadioMode;
        public long mLastAVSwitchInterval;
        public long mLastForebackSwitchInterval;
        public long mLastHeadsetSwitchInterval;
        private long mLastRebufT;
        public long mLastResSwitchInterval;
        private long mLastSeekT;
        public long mMaxAVDiff;
        private ArrayList<Long> mPauseTimeList;
        public int mPower;
        public int mPowerSaveMode;
        private String mPtsList;
        private String mQualityDescAfter;
        private String mQualityDescBefore;
        private String mResolultionAfter;
        private String mResolutionBefore;
        private long mStartT;
        private long mVideoBaseLenMs;
        private String mVideoDecFpsList;
        private long mVideoDecoderLenMs;
        private long mVideoFormaterLenMS;

        private EventContext() {
            this.mStartT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPtsList = null;
            this.mDropCount = Integer.MIN_VALUE;
            this.mAudioFormaterLenMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mVideoFormaterLenMS = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mAudioDecoderLenMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mVideoDecoderLenMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mAudioBaseLenMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mVideoBaseLenMs = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mResolutionBefore = null;
            this.mResolultionAfter = null;
            this.mBitrateBefore = Integer.MIN_VALUE;
            this.mBitrateAfter = Integer.MIN_VALUE;
            this.mVideoDecFpsList = null;
            this.mLastRebufT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastSeekT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mBeginPos = Integer.MIN_VALUE;
            this.mEndPos = Integer.MIN_VALUE;
            this.mCostTime = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mEndType = null;
            this.mIsABR = Integer.MIN_VALUE;
            this.mQualityDescBefore = "";
            this.mQualityDescAfter = "";
            this.mIsRadioMode = Integer.MIN_VALUE;
            this.mLastAVSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mLastResSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mHeadset = Integer.MIN_VALUE;
            this.mBt = Integer.MIN_VALUE;
            this.mLastHeadsetSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPower = Integer.MIN_VALUE;
            this.mIsCharging = Integer.MIN_VALUE;
            this.mMaxAVDiff = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mIsBackground = Integer.MIN_VALUE;
            this.mLastForebackSwitchInterval = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mPauseTimeList = new ArrayList<>();
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

    public VideoEventOneOutSync(VideoEventBase videoEventBase) {
        this.mContext = null;
        this.mEventBase = videoEventBase;
        this.mContext = new EventContext();
    }

    private void _triggerOutSyncEndCb() {
        long j10;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && videoEventBase.mDataSource != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_BEGIN_POS, Integer.valueOf(this.mContext.mBeginPos));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_END_POS, Integer.valueOf(this.mContext.mEndPos));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_RENDER_DROP_COUNT, Integer.valueOf(this.mContext.mDropCount));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_CONTAINER_FPS, Float.valueOf(this.mEventBase.mDataSource.getLogValueFloat(82)));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_VIDEO_OUT_FPS, Float.valueOf(this.mEventBase.mDataSource.getLogValueFloat(83)));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_CLOCK_DIFF, Long.valueOf(this.mEventBase.mDataSource.getLogValueLong(45)));
            int logValueInt = this.mEventBase.mDataSource.getLogValueInt(84);
            if (logValueInt > 0) {
                j10 = 1000 / logValueInt;
            } else {
                j10 = 0;
            }
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_DECODE_TIME, Long.valueOf(j10));
            this.mEventBase.mDataSource.onInfo(4, hashMap);
        }
    }

    private void _triggerOutSyncStartCb() {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null && videoEventBase.mDataSource != null) {
            this.mEventBase.mDataSource.onInfo(3, new HashMap());
        }
    }

    public void AVOutSyncEnd(int i10, String str) {
        if (this.mContext.mStartT <= 0) {
            TTVideoEngineLog.w(TAG, "Invalid start time, return." + this.mContext.mStartT);
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        long j10 = currentTimeMillis - this.mContext.mStartT;
        if (j10 > 200) {
            this.mContext.mEndType = str;
            this.mContext.mEndPos = i10;
            this.mContext.mEndT = currentTimeMillis;
            this.mContext.mCostTime = j10;
            this.mIndex++;
            this.mAVOutSyncCount++;
            VideoEventBase videoEventBase = this.mEventBase;
            if (videoEventBase != null) {
                this.mContext.mResolultionAfter = videoEventBase.mCurrentResolution;
                this.mContext.mBitrateAfter = this.mEventBase.mCurrentConfigBitrate;
                this.mContext.mQualityDescAfter = this.mEventBase.mCurrentQualityDesc;
                EventLoggerSource eventLoggerSource = this.mEventBase.mDataSource;
                if (eventLoggerSource != null) {
                    this.mContext.mDropCount = eventLoggerSource.getLogValueInt(79);
                    this.mContext.mPtsList = this.mEventBase.mDataSource.getLogValueStr(78);
                    this.mContext.mVideoDecFpsList = this.mEventBase.mDataSource.getLogValueStr(80);
                    this.mContext.mMaxAVDiff = this.mEventBase.mDataSource.getLogValueLong(96);
                }
            }
            HashMap hashMap = new HashMap();
            hashMap.put("ps", Integer.valueOf(this.mContext.mBeginPos));
            hashMap.put("pe", Integer.valueOf(this.mContext.mEndPos));
            hashMap.put("st", Long.valueOf(this.mContext.mStartT));
            hashMap.put("c", Long.valueOf(this.mContext.mCostTime));
            this.mList.add(new JSONObject(hashMap).toString());
            sendOutSyncEvent();
            _triggerOutSyncEndCb();
            this.mContext = new EventContext();
            return;
        }
        _triggerOutSyncEndCb();
        this.mContext = new EventContext();
    }

    public void AVOutSyncStart(int i10, long j10, long j11, long j12) {
        int isPowerSaveMode;
        Object obj;
        long currentTimeMillis = System.currentTimeMillis();
        this.mContext.mStartT = currentTimeMillis;
        this.mContext.mBeginPos = i10;
        if (j10 != 0) {
            this.mContext.mLastRebufT = j10;
        } else {
            EventContext eventContext = this.mContext;
            eventContext.mLastRebufT = eventContext.mStartT;
        }
        if (j11 != 0) {
            this.mContext.mLastSeekT = j11;
        } else {
            EventContext eventContext2 = this.mContext;
            eventContext2.mLastSeekT = eventContext2.mStartT;
        }
        if (j12 > 0) {
            this.mContext.mLastHeadsetSwitchInterval = currentTimeMillis - j12;
        }
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            this.mContext.mResolutionBefore = videoEventBase.mCurrentResolution;
            this.mContext.mBitrateBefore = this.mEventBase.mCurrentConfigBitrate;
            this.mContext.mQualityDescBefore = this.mEventBase.mCurrentQualityDesc;
            Map map = this.mEventBase.abrInfo;
            if (map != null && (obj = map.get("abr_used")) != null) {
                this.mContext.mIsABR = ((Integer) obj).intValue();
            }
            EventLoggerSource eventLoggerSource = this.mEventBase.mDataSource;
            if (eventLoggerSource != null) {
                Map<String, Long> parsePlayerBufferString = LoggerUtils.parsePlayerBufferString(eventLoggerSource.getLogValueStr(55));
                if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH) != null) {
                    this.mContext.mVideoFormaterLenMS = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_VIDEO_LENGTH).longValue();
                }
                if (parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH) != null) {
                    this.mContext.mAudioFormaterLenMs = parsePlayerBufferString.get(LoggerUtils.KEY_FORMAT_AUDIO_LENGTH).longValue();
                }
                if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH) != null) {
                    this.mContext.mVideoDecoderLenMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_VIDEO_LENGTH).longValue();
                }
                if (parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH) != null) {
                    this.mContext.mAudioDecoderLenMs = parsePlayerBufferString.get(LoggerUtils.KEY_DECODER_AUDIO_LENGTH).longValue();
                }
                if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH) != null) {
                    this.mContext.mVideoBaseLenMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_VIDEO_LENGTH).longValue();
                }
                if (parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH) != null) {
                    this.mContext.mAudioBaseLenMs = parsePlayerBufferString.get(LoggerUtils.KEY_BASE_AUDIO_LENGTH).longValue();
                }
                this.mContext.mIsRadioMode = this.mEventBase.mDataSource.getLogValueInt(88);
                this.mContext.mHeadset = this.mEventBase.mDataSource.getLogValueInt(89);
                this.mContext.mBt = this.mEventBase.mDataSource.getLogValueInt(90);
                this.mContext.mIsBackground = this.mEventBase.mDataSource.getLogValueInt(94);
                long logValueLong = this.mEventBase.mDataSource.getLogValueLong(91);
                if (logValueLong > 0) {
                    this.mContext.mLastAVSwitchInterval = currentTimeMillis - logValueLong;
                }
                long logValueLong2 = this.mEventBase.mDataSource.getLogValueLong(92);
                if (logValueLong2 > 0) {
                    this.mContext.mLastResSwitchInterval = currentTimeMillis - logValueLong2;
                }
                long logValueLong3 = this.mEventBase.mDataSource.getLogValueLong(95);
                if (logValueLong3 > 0) {
                    this.mContext.mLastForebackSwitchInterval = currentTimeMillis - logValueLong3;
                }
                HashMap<String, Object> chargingState = this.mEventBase.getChargingState();
                if (chargingState != null) {
                    this.mContext.mPower = ((Integer) chargingState.get("power")).intValue();
                    this.mContext.mIsCharging = ((Integer) chargingState.get("isCharging")).intValue();
                }
            }
            VideoEventBase videoEventBase2 = this.mEventBase;
            if (videoEventBase2.mEnablePowerReport) {
                double cPURate = videoEventBase2.getCPURate();
                double cPUSpeed = this.mEventBase.getCPUSpeed();
                if (cPURate > 0.0d && cPUSpeed > 0.0d) {
                    EventContext eventContext3 = this.mContext;
                    eventContext3.mCpuRate = cPURate;
                    eventContext3.mCpuSpeed = cPUSpeed;
                } else {
                    EngineThreadPool.addExecuteTask(new StatisticDataRunnable(this.mContext, this.mEventBase));
                }
                this.mContext.mCurrent = this.mEventBase.getBatteryCurrent();
            }
            if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 2L) && (isPowerSaveMode = DeviceMonitorUtils.isPowerSaveMode(this.mEventBase.mContext)) >= 0) {
                this.mContext.mPowerSaveMode = isPowerSaveMode;
            }
        }
        _triggerOutSyncStartCb();
    }

    public void onAVBadInterlaced() {
        this.mIsAVBadInterlaced = 1;
    }

    public void reset() {
        this.mList = new ArrayList<>();
        this.mAVOutSyncCount = 0;
        this.mIndex = 0;
        this.mFirstFrameTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mLastEventTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mIsAVBadInterlaced = 0;
    }

    public void sendOutSyncEvent() {
        TTVideoEngineLog.i(TAG, "report oussync event");
        this.mEventBase.updateVideoInfo(null);
        VideoEventBase videoEventBase = this.mEventBase;
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(videoEventBase.mContext, this, videoEventBase, this.mContext));
    }

    public void setLongValue(int i10, long j10) {
        if (i10 == 1) {
            this.mContext.mPauseTimeList.add(Long.valueOf(j10));
        }
    }

    public void showedFirstFrame() {
        this.mFirstFrameTime = System.currentTimeMillis();
    }

    public JSONObject toJsonObject(EventContext eventContext, VideoEventBase videoEventBase) {
        long j10;
        HashMap hashMap = new HashMap();
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "player_sessionid", this.mEventBase.mSessionID);
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
            LoggerUtils.putToMap((Map) hashMap, "play_speed", videoEventBase.mPlaySpeed);
            LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_NET_TYPE, videoEventBase.mNetworkType);
            LoggerUtils.putToMap(hashMap, "mdl_version", videoEventBase.mMdlVersion);
            LoggerUtils.putToMap((Map) hashMap, "enable_mdl", videoEventBase.mEnableMDL);
            LoggerUtils.putToMap((Map) hashMap, "video_hw", videoEventBase.mVideoHW);
            LoggerUtils.putToMap((Map) hashMap, "user_hw", videoEventBase.mVideoHWUser);
        }
        LoggerUtils.putToMap(hashMap, ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE, EVENT_TYPE_OUTSYNC);
        LoggerUtils.putToMap(hashMap, "st", eventContext.mStartT);
        LoggerUtils.putToMap(hashMap, "et", eventContext.mEndT);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_COST_TIME, eventContext.mCostTime);
        LoggerUtils.putToMap(hashMap, "end_type", eventContext.mEndType);
        LoggerUtils.putToMap(hashMap, "audio_len_before", eventContext.mAudioFormaterLenMs);
        LoggerUtils.putToMap(hashMap, "video_len_before", eventContext.mVideoFormaterLenMS);
        LoggerUtils.putToMap(hashMap, "alen_dec_before", eventContext.mAudioDecoderLenMs);
        LoggerUtils.putToMap(hashMap, "vlen_dec_before", eventContext.mVideoDecoderLenMs);
        LoggerUtils.putToMap(hashMap, "alen_base_before", eventContext.mAudioBaseLenMs);
        LoggerUtils.putToMap(hashMap, "vlen_base_before", eventContext.mVideoBaseLenMs);
        LoggerUtils.putToMap(hashMap, "resolution_before", eventContext.mResolutionBefore);
        LoggerUtils.putToMap(hashMap, "resolution_after", eventContext.mResolultionAfter);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_before", eventContext.mBitrateBefore);
        LoggerUtils.putToMap((Map) hashMap, "bitrate_after", eventContext.mBitrateAfter);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_INDEX, this.mIndex);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_RADIO_MODE, eventContext.mIsRadioMode);
        LoggerUtils.putToMap(hashMap, "last_av_switch_interval", eventContext.mLastAVSwitchInterval);
        LoggerUtils.putToMap(hashMap, "last_res_switch_interval", eventContext.mLastResSwitchInterval);
        LoggerUtils.putToMap((Map) hashMap, "headset", eventContext.mHeadset);
        LoggerUtils.putToMap((Map) hashMap, "bt", eventContext.mBt);
        LoggerUtils.putToMap(hashMap, "last_headset_switch_interval", eventContext.mLastHeadsetSwitchInterval);
        LoggerUtils.putToMap((Map) hashMap, "power", eventContext.mPower);
        LoggerUtils.putToMap((Map) hashMap, "is_charging", eventContext.mIsCharging);
        LoggerUtils.putToMap(hashMap, "max_av_diff", eventContext.mMaxAVDiff);
        LoggerUtils.putToMap((Map) hashMap, "is_background", eventContext.mIsBackground);
        LoggerUtils.putToMap(hashMap, "last_foreback_switch_interval", eventContext.mLastForebackSwitchInterval);
        long j11 = -1;
        if (this.mFirstFrameTime > 0) {
            j10 = eventContext.mStartT - this.mFirstFrameTime;
        } else {
            j10 = -1;
        }
        LoggerUtils.putToMap(hashMap, "first_frame_interval", j10);
        if (this.mLastEventTime > 0) {
            j11 = eventContext.mStartT - this.mLastEventTime;
        }
        LoggerUtils.putToMap(hashMap, "last_event_interval", j11);
        LoggerUtils.putToMap(hashMap, "pts_list", eventContext.mPtsList);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_BEGIN_POS, eventContext.mBeginPos);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_END_POS, eventContext.mEndPos);
        LoggerUtils.putToMap((Map) hashMap, "drop_cnt", eventContext.mDropCount);
        LoggerUtils.putToMap(hashMap, "v_dec_fps_list", eventContext.mVideoDecFpsList);
        if (eventContext.mLastRebufT > 0) {
            LoggerUtils.putToMap(hashMap, "last_rebuf_interval", eventContext.mStartT - eventContext.mLastRebufT);
        }
        if (eventContext.mLastSeekT > 0) {
            LoggerUtils.putToMap(hashMap, "last_seek_interval", eventContext.mStartT - eventContext.mLastSeekT);
        }
        LoggerUtils.putToMap((Map) hashMap, "is_abr", eventContext.mIsABR);
        LoggerUtils.putToMap(hashMap, "quality_desc_before", eventContext.mQualityDescBefore);
        LoggerUtils.putToMap(hashMap, "quality_desc_after", eventContext.mQualityDescAfter);
        LoggerUtils.putToMap(hashMap, "pause_time_list", eventContext.mPauseTimeList);
        LoggerUtils.putToMap((Map) hashMap, "bad_interlaced", this.mIsAVBadInterlaced);
        LoggerUtils.putToMap(hashMap, "v_duration", this.mVideoStreamDuration);
        LoggerUtils.putToMap(hashMap, "a_duration", this.mAudioStreamDuration);
        LoggerUtils.putToMap((Map) hashMap, "cpu_rate", (float) eventContext.mCpuRate);
        LoggerUtils.putToMap((Map) hashMap, "cpu_speed", (float) eventContext.mCpuSpeed);
        LoggerUtils.putToMap((Map) hashMap, "power_save_mode", eventContext.mPowerSaveMode);
        LoggerUtils.putToMap((Map) hashMap, "battery_current", eventContext.mCurrent);
        return new JSONObject(hashMap);
    }
}
