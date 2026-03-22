package com.ss.ttvideoengine.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.SieveCacheKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResultCollection;
import com.huawei.hms.framework.common.ContainerUtils;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.framework.common.hianalytics.WiseOpenHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttvideoengine.BaseAppInfo;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.EngineGlobalConfig;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.VideoInfoCollector;
import com.ss.ttvideoengine.log.DeviceMonitorUtils;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.log.VideoEventLoggerV2;
import com.ss.ttvideoengine.metrics.IMediaMetrics;
import com.ss.ttvideoengine.metrics.MetricsFactory;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.model.VideoStyle;
import com.ss.ttvideoengine.net.DNSServerIP;
import com.ss.ttvideoengine.portrait.LabelUsage;
import com.ss.ttvideoengine.portrait.NetworkPortraitData;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.ScreenUtils;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import com.ss.ttvideoengine.utils.TimeService;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TimerTask;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventLoggerV2 implements IVideoEventLogger {
    private static final int LOGGER_STATE_ERROR = 5;
    private static final int LOGGER_STATE_IDLE = 0;
    private static final int LOGGER_STATE_LOADING = 3;
    private static final int LOGGER_STATE_PLAYING = 2;
    private static final int LOGGER_STATE_SEEKING = 4;
    private static final int LOGGER_STATE_STARTING = 1;
    public static final String SETTINGS_CALCULATE_INTERVAL = "calculate_interval";
    public static final String SETTINGS_LINK_FUNCTION_OFFSET = "link_function_offset";
    public static final String SETTINGS_NET_QUALITY = "net_quality";
    private static final String TAG = "VideoEventLoggerV2";
    public static int sIsColdStart = 1;
    private String mAudioInitURL;
    private String mAuth;
    private PortraitNetworkScore.BitrateCalculationTask mBitrateCalculationTask;
    private BrightnessMonitor mBrightMonitor;
    private Context mContext;
    private String mCustomStr;
    @NonNull
    private final EventLoggerSource mDataSource;
    private ArrayList mErrorInfo;
    @NonNull
    private final VideoEventAbrEvent mEventAbrSwitch;
    @NonNull
    private VideoEventBase mEventBase;
    @NonNull
    private final VideoEventOneEvent mEventOneEvent;
    @NonNull
    private final VideoEventOneNoRender mEventOneNoRender;
    @NonNull
    private final VideoEventOneOpera mEventOneOpera;
    @NonNull
    private final VideoEventOneOutSync mEventOneOutSync;
    private VideoEventSampleRecord mEventSample;
    private EventSaver mEventSaver;
    private FeatureConfigs mFeatureConfigs;
    private boolean mFetchComplete;
    private VideoFilterMonitor mFilterMonitor;
    private ArrayList mFirstDNSErrorInfo;
    private Error mFirstError;
    private final HeadsetStateHistory mHeadsetStateHistory;
    private final HeadsetStateMonitor mHeadsetStateMonitor;
    private String mInitialHost;
    private String mInitialIP;
    private String mInitialURL;
    private LabelUsage mLabelUsage;
    private boolean mLeave;
    private ArrayList<String> mMDLRetryInfo;
    private Map mMainError;
    private boolean mNetSpeedForAudio;
    private PortraitNetworkScore.NetworkQualityAlgorithm mNetworkQualityAlgorithm;
    private ArrayList mRetryFetchErrorInfo;
    private ArrayList<String> mSetSurfaceTimeList;
    private SuperResolutionMonitor mSrMonitor;
    private boolean mUploadLogEnabled;
    private VRTracker mVRTracker;
    private ArrayList mVUArray;
    private VegaCollector mVegaCollector;
    private IVideoModel mVideoModel;
    private ViewSizeMonitor mViewSizeMonitor;
    private static Map sFeatures = new HashMap();
    public static boolean sEnableContentDataReport = false;
    private boolean mIsLocal = false;
    private int mAsyncInit = Integer.MIN_VALUE;
    private int mUseCodecPool = Integer.MIN_VALUE;
    private String mInitialResolution = "";
    private String mInitialQuality = "";
    private int mInitialQualityType = Integer.MIN_VALUE;
    private String mProxyUrl = "";
    private String mMessage = "";
    private int mIsStartPlayAutomatically = Integer.MIN_VALUE;
    private int mBufferDataSeconds = Integer.MIN_VALUE;
    private int mLoopCount = 0;
    private boolean mLooping = false;
    private Map mPlaybackParams = null;
    private int mCustomP2PCDNType = Integer.MIN_VALUE;
    private String mP2PUrl = "";
    private String mP2PSDKVersion = "";
    private int mDuration = Integer.MIN_VALUE;
    private int mStartTime = Integer.MIN_VALUE;
    private int mWidth = Integer.MIN_VALUE;
    private int mHeight = Integer.MIN_VALUE;
    private int mDisableAccurateStart = Integer.MIN_VALUE;
    private long mSurfaceSetTime = SieveCacheKt.NodeMetaAndPreviousMask;
    private String mSurfaceCode = null;
    private int mNetWorkTryCount = Integer.MIN_VALUE;
    private long mDecodeBufferingStartT = 0;
    private int mAsyncCodecId = Integer.MIN_VALUE;
    private int mEnableBash = Integer.MIN_VALUE;
    private int mPlayCount = 0;
    public int mCurDecoderBufferCount = 0;
    public long mCurDecoderBufferAccuT = 0;
    public int mCurBufferCount = 0;
    public int mNetBufferIndex = 0;
    public int mBreakCount = 0;
    private int mApiVer = Integer.MIN_VALUE;
    private int mSwitchResolutionCount = 0;
    private int mSeekCount = 0;
    private long mBlockBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
    private long mSeekBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
    private long mAccumVPS = 0;
    private long mAccumVDS = 0;
    private int mState = 0;
    private String mExtraInfo = "";
    private int mLeaveReason = -1002;
    private long mBitrate = SieveCacheKt.NodeMetaAndPreviousMask;
    private long mAudioBitrate = SieveCacheKt.NodeMetaAndPreviousMask;
    private int mFirstRangeSize = Integer.MIN_VALUE;
    private int mNetSpeedLevel = Integer.MIN_VALUE;
    private int mModelVersion = Integer.MIN_VALUE;
    public int mMediaCodecRender = Integer.MIN_VALUE;
    public int mBufferTimeout = Integer.MIN_VALUE;
    public int mNetworkTimeout = Integer.MIN_VALUE;
    private long prepare_before_play_t = SieveCacheKt.NodeMetaAndPreviousMask;
    private long setds_t = SieveCacheKt.NodeMetaAndPreviousMask;
    private long ps_t = SieveCacheKt.NodeMetaAndPreviousMask;
    private int mRadioMode = Integer.MIN_VALUE;
    private boolean mVideoStreamDisabled = false;
    private boolean mAudioStreamDisabled = false;
    private int mIsReplay = Integer.MIN_VALUE;
    private int mEnableNNSR = Integer.MIN_VALUE;
    private int mReadCacheMode = Integer.MIN_VALUE;
    private int mPreRangeOff = Integer.MIN_VALUE;
    private boolean mIsEngineReuse = false;
    private boolean mEnableSpeedReport = false;
    private float mNetworkSpeedPredictSamplingRate = Float.MIN_VALUE;
    private String mPlayerSurfaceCode = null;
    private TimerTask mTimerTask = null;
    private int mNetLevelIntervalMs = 0;
    private int mNetLevelMaxCount = 100;
    private int mNetSpeedUpdateInterval = 0;
    private long mMDLDownloadSize = 0;
    private long mMDLDownloadTime = 0;
    private String mNetworkQualityVar = null;
    private int mReportLevel = 12;
    private Map mFeatures = new HashMap();
    private int mHardwareConfType = Integer.MIN_VALUE;
    private int mSubLanSwitchCount = 0;
    private int mSubIdsCount = Integer.MIN_VALUE;
    private int mEnableSub = Integer.MIN_VALUE;
    private int mEnableOptSubLoad = Integer.MIN_VALUE;
    private int mEnableSubThread = Integer.MIN_VALUE;
    private int mEnableMask = Integer.MIN_VALUE;
    private int mEnableMaskThread = Integer.MIN_VALUE;
    private String mSubReqURL = "";
    private String mMaskURL = "";
    private String mSubError = "";
    private int mMaskErrc = Integer.MIN_VALUE;
    private int mMaskRangeOpt = Integer.MIN_VALUE;
    private int mMaskEnableDataloader = Integer.MIN_VALUE;
    private int mMaskDelayLoading = Integer.MIN_VALUE;
    private String mMaskFileHash = "";
    private long mMaskFileSize = SieveCacheKt.NodeMetaAndPreviousMask;
    private ArrayList<String> mPlayList = new ArrayList<>();
    private ArrayList<String> mPauseList = new ArrayList<>();
    private ArrayList<String> mResolutionList = new ArrayList<>();
    private ArrayList<String> mPlaySpeedList = new ArrayList<>();
    private ArrayList<String> mRadiomodeList = new ArrayList<>();
    private ArrayList<String> mLoopList = new ArrayList<>();
    private ArrayList<String> mErrorList = new ArrayList<>();
    private ArrayList<Integer> mPowerList = new ArrayList<>();
    private ArrayList<Integer> mChargingList = new ArrayList<>();
    private ArrayList<String> mAVBadInterlacedList = new ArrayList<>();
    private boolean mAVOutSyncing = false;
    private Error mCurError = null;
    private int mRetryStrategy = -1;
    private long mRetryStartT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mCustomClickT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mCustomGetVideoModelT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mCustomInitEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long mCustomPlayEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
    public int mEngineHash = Integer.MIN_VALUE;
    private long mSetSurfaceBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
    private String mSetSurfaceType = null;
    private String mFromEnginePool = DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
    private int mCorePoolSizeUpperLimit = Integer.MIN_VALUE;
    private int mCorepoolSizeBeforeGetEngine = Integer.MIN_VALUE;
    private int mCountOfEngineInUse = Integer.MIN_VALUE;
    private ArrayList<String> mVrDistanceList = new ArrayList<>();
    private float mVrFrameRate = Float.MIN_VALUE;
    private int mVrScreenRefreshRate = Integer.MIN_VALUE;
    private long mVrHeadMovementDelay = SieveCacheKt.NodeMetaAndPreviousMask;
    private HashMap<String, Object> mCastObject = null;
    private int mOttPluginVersion = Integer.MIN_VALUE;
    private String mCompanyID = "";
    private ArrayList<String> mTrEffectList = new ArrayList<>();
    private String mTrPerEffectAverageTime = "";
    private String mTrEffectErrorCode = "";
    private ContentDataReporter mContentDataReporter = null;
    private boolean mUrlMatchCondition = false;
    @NonNull
    private VideoEventOnePlay mEvent = new VideoEventOnePlay();

    /* renamed from: com.ss.ttvideoengine.log.VideoEventLoggerV2$2  reason: invalid class name */
    /* loaded from: classes6.dex */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo;

        static {
            int[] iArr = new int[IVideoEventLogger.VideoEventCustomInfo.values().length];
            $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo = iArr;
            try {
                iArr[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_FFTIME_CLICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_FFTIME_VIDEOMODEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_FFTIME_CUSTOMPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_FFTIME_INITENGINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_FFTIME_PLAYENGINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_CAST_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_OTT_PLUGIN_VERSION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_COMPANY_ID.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[IVideoEventLogger.VideoEventCustomInfo.VIDEOEVENT_CUSTOM_INFO_CUSTOM_PLAY_SESSION_ID.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class AsyncGetLogDataRunnable implements Runnable {
        private final Context rContext;
        private final VideoEventOnePlay rEvent;
        VideoEventBase rEventBase;
        EventSaver rEventSaver;
        private final Handler rHandler = new Handler(Looper.getMainLooper());
        VideoEventLoggerV2 rLogger;
        PortraitNetworkScore.NetworkQualityAlgorithm rQualityAlg;

        public AsyncGetLogDataRunnable(Context context, VideoEventOnePlay videoEventOnePlay, VideoEventLoggerV2 videoEventLoggerV2, VideoEventBase videoEventBase, PortraitNetworkScore.NetworkQualityAlgorithm networkQualityAlgorithm, EventSaver eventSaver) {
            this.rEvent = videoEventOnePlay;
            this.rContext = context;
            this.rLogger = videoEventLoggerV2;
            this.rEventBase = videoEventBase;
            this.rQualityAlg = networkQualityAlgorithm;
            this.rEventSaver = eventSaver;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$run$0(boolean z10, JSONObject jSONObject) {
            VideoEventManager.instance.addEvent(z10, jSONObject);
        }

        @Override // java.lang.Runnable
        public void run() {
            TTVideoEngineLog.i(VideoEventLoggerV2.TAG, "AyncGetLogDataRunnable enter");
            VideoEventOnePlay videoEventOnePlay = this.rEvent;
            if (videoEventOnePlay != null) {
                VideoEventLoggerV2.updateTimeConsumingEventData(this.rContext, videoEventOnePlay, this.rEventBase, this.rQualityAlg);
                final JSONObject jsonObject = this.rEvent.toJsonObject(this.rEventBase);
                final boolean z10 = this.rEventBase.isUploadLogEnabled;
                this.rEventSaver.remove(this.rEvent.mSessionID);
                this.rEventSaver.uploadIfExits(this.rEventBase.isUploadLogEnabled);
                this.rHandler.post(new Runnable() { // from class: com.ss.ttvideoengine.log.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoEventLoggerV2.AsyncGetLogDataRunnable.lambda$run$0(z10, jsonObject);
                    }
                });
                return;
            }
            TTVideoEngineLog.e(VideoEventLoggerV2.TAG, "rEvent is null, return.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes6.dex */
    public class FeatureConfigs {
        private int mEnableBufferDirectly = 0;
        private int mFirstBufEndMs = 0;
        private int mEnableVolumeBalance = 0;
        private int mAEType = -1;
        private int mEnableEngineLooper = 0;
        private int mEnableAutoRange = 0;
        private int mEnableHwDropNonRef = 0;
        private int mEnableHttps = 0;
        private int mEnableFallbackApi = 0;
        private int mEnableAsyncPosition = 0;
        private int mEnableLoadControl = 0;
        private int mRenderType = Integer.MIN_VALUE;
        private int mImageScaleType = 0;
        private int mAudioRenderType = Integer.MIN_VALUE;
        private int mSkipFindStreamInfo = 0;
        private int mEnableAsyncPrepare = 0;
        private int mCodecFrcLevel = 0;
        private int mEnableLazySeek = 0;
        private int mKeepFormatThreadAlive = 0;
        private int mHDRType = 0;
        private int mEnableABRStartup = 0;
        private int mEnableThreadPriority = 0;
        private int mEnableSmoothClock = 0;
        private int mDisableSplitVoice = 0;
        private int mEnableNativeYV12 = 0;
        private int mEnableStrategyCenter = 0;
        private int mEnableOutletDropLimit = -1;
        private int mEnableGearStrategy = 0;
        private int mEnableSRStrategy = 0;

        FeatureConfigs() {
        }
    }

    /* loaded from: classes6.dex */
    private class MyTimerTask extends TimerTask {
        private MyTimerTask() {
        }

        private <T> void addIfChanged(@NonNull LinkedHashMap<String, T> linkedHashMap, int i10, @NonNull T t10) {
            int size = linkedHashMap.size();
            if (size > 0) {
                if (!t10.equals(linkedHashMap.get((String) linkedHashMap.keySet().toArray()[size - 1]))) {
                    linkedHashMap.put(Integer.toString(i10), t10);
                    return;
                }
                return;
            }
            linkedHashMap.put(Integer.toString(i10), t10);
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            float f10;
            VideoEventBase videoEventBase = VideoEventLoggerV2.this.mEventBase;
            VideoEventOnePlay videoEventOnePlay = VideoEventLoggerV2.this.mEvent;
            NetworkPortraitData portraitData = PortraitNetworkScore.getInstance().getPortraitData();
            int networkRTTLevel = PortraitNetworkScore.getInstance().getNetworkRTTLevel();
            int networkRTTMS = PortraitNetworkScore.getInstance().getNetworkRTTMS();
            int i10 = videoEventBase.mCurrentConfigBitrate;
            int size = videoEventOnePlay.mCatowerRttList.size();
            String netType = VideoEventBase.getNetType();
            String signalStrength = VideoEventBase.getSignalStrength();
            String str = videoEventBase.mCurQuality;
            if (i10 < 0) {
                i10 = (int) VideoEventLoggerV2.this.mDataSource.getLogValueLong(75);
            }
            if (videoEventOnePlay.mCatowerRttList.isEmpty()) {
                videoEventOnePlay.mCatowerRttList.addAll(portraitData.getRttHistoryData(0));
            }
            if (videoEventOnePlay.mCatowerRttMsList.isEmpty()) {
                videoEventOnePlay.mCatowerRttMsList.addAll(portraitData.getRttMsHistoryData(0));
            }
            if (videoEventOnePlay.mMdlMultiSpeedList.isEmpty()) {
                videoEventOnePlay.mMdlMultiSpeedList.addAll(portraitData.getNetSpeedHistoryData(0));
            }
            if (size >= VideoEventLoggerV2.this.mNetLevelMaxCount && size > 0) {
                videoEventOnePlay.mCatowerRttList.remove(0);
            }
            videoEventOnePlay.mCatowerRttList.add(Integer.valueOf(networkRTTLevel));
            int size2 = videoEventOnePlay.mCatowerRttMsList.size();
            if (size2 >= VideoEventLoggerV2.this.mNetLevelMaxCount && size2 > 0) {
                videoEventOnePlay.mCatowerRttMsList.remove(0);
            }
            videoEventOnePlay.mCatowerRttMsList.add(Integer.valueOf(networkRTTMS));
            synchronized (VideoEventLoggerV2.TAG) {
                try {
                    if (VideoEventLoggerV2.this.mMDLDownloadTime > 0) {
                        f10 = (((float) (VideoEventLoggerV2.this.mMDLDownloadSize * 8)) * 1000.0f) / ((float) VideoEventLoggerV2.this.mMDLDownloadTime);
                    } else {
                        f10 = -1.0f;
                    }
                    VideoEventLoggerV2.this.mMDLDownloadTime = 0L;
                    VideoEventLoggerV2.this.mMDLDownloadSize = 0L;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (f10 > 0.0f || !VideoEventLoggerV2.this.mNetSpeedForAudio) {
                int size3 = videoEventOnePlay.mMdlMultiSpeedList.size();
                if (size3 >= VideoEventLoggerV2.this.mNetLevelMaxCount && size3 > 0) {
                    videoEventOnePlay.mMdlMultiSpeedList.remove(0);
                }
                videoEventOnePlay.mMdlMultiSpeedList.add(Float.valueOf(f10));
            }
            portraitData.setNetSpeed(f10);
            if (i10 > 0) {
                addIfChanged(videoEventOnePlay.mBitrateList, videoEventOnePlay.mNetQualityIndex, Integer.valueOf(i10));
            }
            if (!TextUtils.isEmpty(str)) {
                addIfChanged(videoEventOnePlay.mQualityList, videoEventOnePlay.mNetQualityIndex, str);
            }
            if (!TextUtils.isEmpty(netType)) {
                addIfChanged(videoEventOnePlay.mNetworkTypeList, videoEventOnePlay.mNetQualityIndex, netType);
            }
            if (!TextUtils.isEmpty(signalStrength)) {
                addIfChanged(videoEventOnePlay.mSignalStrengthList, videoEventOnePlay.mNetQualityIndex, signalStrength);
            }
            int size4 = videoEventOnePlay.mCurrentList.size();
            if (size4 >= VideoEventLoggerV2.this.mNetLevelMaxCount && size4 > 0) {
                videoEventOnePlay.mCurrentList.remove(0);
            }
            float batteryCurrent = VideoEventLoggerV2.this.mEventBase.getBatteryCurrent();
            if (batteryCurrent != -1.0f) {
                videoEventOnePlay.mCurrentList.add(Float.valueOf(batteryCurrent));
            }
            videoEventOnePlay.mNetQualityIndex++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class StatisticDataRunnable implements Runnable {
        private final WeakReference<VideoEventOnePlay> rEvent;
        private final WeakReference<VideoEventBase> rEventBase;

        public StatisticDataRunnable(VideoEventOnePlay videoEventOnePlay, VideoEventBase videoEventBase) {
            this.rEvent = new WeakReference<>(videoEventOnePlay);
            this.rEventBase = new WeakReference<>(videoEventBase);
        }

        @Override // java.lang.Runnable
        public void run() {
            DeviceMonitorUtils.CPUInfo currentCPUInfo;
            VideoEventOnePlay videoEventOnePlay = this.rEvent.get();
            VideoEventBase videoEventBase = this.rEventBase.get();
            if (videoEventOnePlay != null && videoEventBase != null && (currentCPUInfo = videoEventBase.getCurrentCPUInfo()) != null) {
                double d10 = currentCPUInfo.cpuAppRate;
                double d11 = 1.401298464324817E-45d;
                if (d10 <= 0.0d) {
                    d10 = 1.401298464324817E-45d;
                }
                videoEventOnePlay.mCpuRateBegin = d10;
                double d12 = currentCPUInfo.cpuAppSpeed;
                if (d12 > 0.0d) {
                    d11 = d12;
                }
                videoEventOnePlay.mCpuSpeedBegin = d11;
            }
        }
    }

    public VideoEventLoggerV2(Context context, EventLoggerSource eventLoggerSource, HeadsetStateMonitor headsetStateMonitor) {
        this.mFetchComplete = false;
        this.mSetSurfaceTimeList = null;
        this.mDataSource = eventLoggerSource;
        this.mEventBase = new VideoEventBase(eventLoggerSource, this.mUploadLogEnabled, context);
        VideoEventOneOpera videoEventOneOpera = new VideoEventOneOpera(this.mEventBase);
        this.mEventOneOpera = videoEventOneOpera;
        this.mEventOneEvent = new VideoEventOneEvent(this.mEventBase, videoEventOneOpera);
        this.mEventSample = new VideoEventSampleRecord(this.mEventBase);
        this.mEventOneOutSync = new VideoEventOneOutSync(this.mEventBase);
        this.mEventOneNoRender = new VideoEventOneNoRender(this.mEventBase);
        this.mEventAbrSwitch = new VideoEventAbrEvent(this.mEventBase);
        this.mEventSaver = EventSaver.getInstance(context);
        this.mFeatureConfigs = new FeatureConfigs();
        this.mRetryFetchErrorInfo = new ArrayList();
        this.mMDLRetryInfo = new ArrayList<>();
        this.mFirstDNSErrorInfo = new ArrayList();
        this.mErrorInfo = new ArrayList();
        this.mVUArray = new ArrayList();
        this.mLeave = true;
        this.mFetchComplete = false;
        this.mContext = context;
        this.mHeadsetStateMonitor = headsetStateMonitor;
        this.mHeadsetStateHistory = new HeadsetStateHistory(headsetStateMonitor);
        this.mSrMonitor = new SuperResolutionMonitor();
        this.mFilterMonitor = new VideoFilterMonitor();
        this.mBrightMonitor = new BrightnessMonitor(this.mContext);
        this.mViewSizeMonitor = new ViewSizeMonitor();
        this.mSetSurfaceTimeList = new ArrayList<>();
        this.mLabelUsage = new LabelUsage();
        this.mVegaCollector = new VegaCollector();
        this.mVRTracker = new VRTracker();
    }

    private void _accumulateVPS() {
        Map<String, Long> bytesInfo;
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null && (bytesInfo = eventLoggerSource.bytesInfo()) != null) {
            long safelyUnbox = TTHelper.safelyUnbox(bytesInfo.get("vps"));
            long safelyUnbox2 = TTHelper.safelyUnbox(bytesInfo.get("vds"));
            this.mAccumVPS += safelyUnbox;
            this.mAccumVDS += safelyUnbox2;
            TTVideoEngineLog.i(TAG, "_accumulateVPS accumVPS:" + this.mAccumVPS + ", accumVDS:" + this.mAccumVDS + ", vps:" + safelyUnbox + ", vds:" + safelyUnbox2);
        }
    }

    private void _checkFirstFrameTimes() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.dnsT <= 0) {
            videoEventOnePlay.dnsModule = 1;
            videoEventOnePlay.dnsT = this.mDataSource.getLogValueLong(7);
        }
        if (this.mEvent.tranConnectT <= 0) {
            long logValueLong = this.mDataSource.getLogValueLong(10);
            if (logValueLong > this.ps_t) {
                this.mEvent.tranConnectT = logValueLong;
            }
        }
        if (this.mEvent.tranFirstPacketT <= 0) {
            long logValueLong2 = this.mDataSource.getLogValueLong(11);
            if (logValueLong2 > this.ps_t) {
                this.mEvent.tranFirstPacketT = logValueLong2;
            }
        }
        VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
        if (videoEventOnePlay2.audioDnsT <= 0) {
            videoEventOnePlay2.audioDnsT = this.mDataSource.getLogValueLong(51);
        }
        if (this.mEvent.audioTranConnectT <= 0) {
            long logValueLong3 = this.mDataSource.getLogValueLong(52);
            if (logValueLong3 > this.ps_t) {
                this.mEvent.audioTranConnectT = logValueLong3;
            }
        }
        if (this.mEvent.audioTranFirstPacketT <= 0) {
            long logValueLong4 = this.mDataSource.getLogValueLong(53);
            if (logValueLong4 > this.ps_t) {
                this.mEvent.audioTranFirstPacketT = logValueLong4;
            }
        }
        VideoEventOnePlay videoEventOnePlay3 = this.mEvent;
        if (videoEventOnePlay3.receiveFirstVideoFrameT <= 0) {
            videoEventOnePlay3.receiveFirstVideoFrameT = this.mDataSource.getLogValueLong(12);
        }
        VideoEventOnePlay videoEventOnePlay4 = this.mEvent;
        if (videoEventOnePlay4.receiveFirstAudioFrameT <= 0) {
            videoEventOnePlay4.receiveFirstAudioFrameT = this.mDataSource.getLogValueLong(13);
        }
        VideoEventOnePlay videoEventOnePlay5 = this.mEvent;
        if (videoEventOnePlay5.decodeFirstVideoFrameT <= 0) {
            videoEventOnePlay5.decodeFirstVideoFrameT = this.mDataSource.getLogValueLong(14);
        }
        VideoEventOnePlay videoEventOnePlay6 = this.mEvent;
        if (videoEventOnePlay6.decodeFirstAudioFrameT <= 0) {
            videoEventOnePlay6.decodeFirstAudioFrameT = this.mDataSource.getLogValueLong(15);
        }
        VideoEventOnePlay videoEventOnePlay7 = this.mEvent;
        if (videoEventOnePlay7.videoDeviceStartTime <= 0) {
            videoEventOnePlay7.videoDeviceStartTime = this.mDataSource.getLogValueLong(17);
        }
        VideoEventOnePlay videoEventOnePlay8 = this.mEvent;
        if (videoEventOnePlay8.audioDeviceStartTime <= 0) {
            videoEventOnePlay8.audioDeviceStartTime = this.mDataSource.getLogValueLong(16);
        }
        VideoEventOnePlay videoEventOnePlay9 = this.mEvent;
        if (videoEventOnePlay9.videoDeviceOpenedTime <= 0) {
            videoEventOnePlay9.videoDeviceOpenedTime = this.mDataSource.getLogValueLong(19);
        }
        VideoEventOnePlay videoEventOnePlay10 = this.mEvent;
        if (videoEventOnePlay10.audioDeviceOpenedTime <= 0) {
            videoEventOnePlay10.audioDeviceOpenedTime = this.mDataSource.getLogValueLong(18);
        }
        VideoEventOnePlay videoEventOnePlay11 = this.mEvent;
        if (videoEventOnePlay11.playPreparedT <= 0) {
            videoEventOnePlay11.playPreparedT = this.mDataSource.getLogValueLong(38);
        }
        VideoEventOnePlay videoEventOnePlay12 = this.mEvent;
        if (videoEventOnePlay12.playStartedT <= 0) {
            videoEventOnePlay12.playStartedT = this.mDataSource.getLogValueLong(39);
        }
        VideoEventOnePlay videoEventOnePlay13 = this.mEvent;
        if (videoEventOnePlay13.v_http_open_t <= 0) {
            videoEventOnePlay13.v_http_open_t = this.mDataSource.getLogValueLong(115);
        }
        VideoEventOnePlay videoEventOnePlay14 = this.mEvent;
        if (videoEventOnePlay14.a_http_open_t <= 0) {
            videoEventOnePlay14.a_http_open_t = this.mDataSource.getLogValueLong(116);
        }
        VideoEventOnePlay videoEventOnePlay15 = this.mEvent;
        if (videoEventOnePlay15.v_tran_open_t <= 0) {
            videoEventOnePlay15.v_tran_open_t = this.mDataSource.getLogValueLong(117);
        }
        VideoEventOnePlay videoEventOnePlay16 = this.mEvent;
        if (videoEventOnePlay16.a_tran_open_t <= 0) {
            videoEventOnePlay16.a_tran_open_t = this.mDataSource.getLogValueLong(118);
        }
        VideoEventOnePlay videoEventOnePlay17 = this.mEvent;
        if (videoEventOnePlay17.v_sock_create_t <= 0) {
            videoEventOnePlay17.v_sock_create_t = this.mDataSource.getLogValueLong(119);
        }
        VideoEventOnePlay videoEventOnePlay18 = this.mEvent;
        if (videoEventOnePlay18.a_sock_create_t <= 0) {
            videoEventOnePlay18.a_sock_create_t = this.mDataSource.getLogValueLong(120);
        }
    }

    private void _clear() {
        this.mRetryFetchErrorInfo = new ArrayList();
        this.mMDLRetryInfo = new ArrayList<>();
        this.mFirstDNSErrorInfo = new ArrayList();
        this.mErrorInfo = new ArrayList();
        this.mEventOneNoRender.reset();
        this.mState = 0;
        this.mBlockBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mAccumVPS = 0L;
        this.mAccumVDS = 0L;
        this.mBitrate = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mAudioBitrate = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mLeave = true;
        this.mCurBufferCount = 0;
        this.mNetBufferIndex = 0;
        this.mCurDecoderBufferCount = 0;
        this.mBreakCount = 0;
        this.mCurDecoderBufferAccuT = 0L;
        this.mLoopCount = 0;
        this.mLooping = false;
        this.mSwitchResolutionCount = 0;
        this.mSeekCount = 0;
        this.mSeekBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.prepare_before_play_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.ps_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.setds_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mRadioMode = Integer.MIN_VALUE;
        this.mAudioStreamDisabled = false;
        this.mVideoStreamDisabled = false;
        this.mIsReplay = Integer.MIN_VALUE;
        this.mSurfaceCode = null;
        this.mSurfaceSetTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mPlayList = new ArrayList<>();
        this.mPauseList = new ArrayList<>();
        this.mResolutionList = new ArrayList<>();
        this.mPlaySpeedList = new ArrayList<>();
        this.mRadiomodeList = new ArrayList<>();
        this.mLoopList = new ArrayList<>();
        this.mErrorList = new ArrayList<>();
        this.mPowerList = new ArrayList<>();
        this.mChargingList = new ArrayList<>();
        this.mAVBadInterlacedList = new ArrayList<>();
        this.mCurError = null;
        this.mRetryStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mRetryStrategy = -1;
        this.mCustomClickT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomGetVideoModelT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomInitEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomPlayEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mAVOutSyncing = false;
        this.mEnableSub = Integer.MIN_VALUE;
        this.mEnableOptSubLoad = Integer.MIN_VALUE;
        this.mEnableSubThread = Integer.MIN_VALUE;
        this.mEnableMask = Integer.MIN_VALUE;
        this.mEnableMaskThread = Integer.MIN_VALUE;
        this.mMaskURL = null;
        this.mSubReqURL = null;
        this.mSubError = null;
        this.mSubIdsCount = Integer.MIN_VALUE;
        this.mSubLanSwitchCount = 0;
        this.mMaskErrc = Integer.MIN_VALUE;
        this.mFeatureConfigs.mHDRType = 0;
        this.mFeatureConfigs.mEnableABRStartup = 0;
        this.mFeatureConfigs.mEnableThreadPriority = 0;
        this.mSrMonitor = new SuperResolutionMonitor();
        this.mFilterMonitor = new VideoFilterMonitor();
        this.mBrightMonitor.stop();
        this.mBrightMonitor = new BrightnessMonitor(this.mContext);
        this.mViewSizeMonitor.reset();
        this.mFeatures.clear();
        this.mHeadsetStateHistory.reset();
        this.mFeatureConfigs.mEnableGearStrategy = 0;
        this.mFeatureConfigs.mEnableSRStrategy = 0;
        this.mFromEnginePool = "after clear V2";
        this.mCorePoolSizeUpperLimit = Integer.MIN_VALUE;
        this.mCorepoolSizeBeforeGetEngine = Integer.MIN_VALUE;
        this.mCountOfEngineInUse = Integer.MIN_VALUE;
        this.mVrDistanceList = new ArrayList<>();
        this.mVrFrameRate = Float.MIN_VALUE;
        this.mVrScreenRefreshRate = Integer.MIN_VALUE;
        this.mVrHeadMovementDelay = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mSetSurfaceBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mSetSurfaceType = null;
        this.mSetSurfaceTimeList = new ArrayList<>();
        this.mPlayerSurfaceCode = null;
        this.mMaskFileSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mMaskDelayLoading = Integer.MIN_VALUE;
        this.mMaskFileHash = "";
        this.mMaskRangeOpt = Integer.MIN_VALUE;
        this.mMaskEnableDataloader = Integer.MIN_VALUE;
        this.mTrEffectList = new ArrayList<>();
        this.mTrPerEffectAverageTime = "";
        this.mTrEffectErrorCode = "";
        this.mOttPluginVersion = Integer.MIN_VALUE;
        this.mCompanyID = "";
        this.mVRTracker = new VRTracker();
    }

    private void _getCastInfo() {
        HashMap<String, Object> hashMap = this.mCastObject;
        if (hashMap != null) {
            if (hashMap.containsKey(IVideoEventLogger.CAST_INFO_IS_CAST_LIVE)) {
                this.mEvent.mCastinfoIsCastLive = ((Integer) this.mCastObject.get(IVideoEventLogger.CAST_INFO_IS_CAST_LIVE)).intValue();
            }
            if (this.mCastObject.containsKey(IVideoEventLogger.CAST_INFO_SOURCE_APP_ID)) {
                this.mEvent.mCastinfoSourceAppId = ((Integer) this.mCastObject.get(IVideoEventLogger.CAST_INFO_SOURCE_APP_ID)).intValue();
            }
            if (this.mCastObject.containsKey(IVideoEventLogger.CAST_INFO_SCENE_ID)) {
                this.mEvent.mCastinfoSceneId = ((Integer) this.mCastObject.get(IVideoEventLogger.CAST_INFO_SCENE_ID)).intValue();
            }
            if (this.mCastObject.containsKey(IVideoEventLogger.CAST_INFO_PROTOCAL)) {
                this.mEvent.mCastinfoProtocal = (String) this.mCastObject.get(IVideoEventLogger.CAST_INFO_PROTOCAL);
            }
            TTVideoEngineLog.d(TAG, "get CastInfo, castLive:" + this.mEvent.mCastinfoIsCastLive + ", sourceAppId:" + this.mEvent.mCastinfoSourceAppId + ", sceneId:" + this.mEvent.mCastinfoSceneId + ", protocal:" + this.mEvent.mCastinfoProtocal);
        }
    }

    private Map _getFirstFrameSplitInfo() {
        HashMap hashMap = new HashMap(7);
        hashMap.put("format_open_input", Long.valueOf(this.mEvent.demuxer_create_t));
        hashMap.put("tran_connect", Long.valueOf(this.mEvent.tranConnectT));
        hashMap.put("http_response", Long.valueOf(this.mEvent.httpResponseT));
        hashMap.put("receive_first_video_frame", Long.valueOf(this.mEvent.receiveFirstVideoFrameT));
        hashMap.put("decode_first_video_frame", Long.valueOf(this.mEvent.decodeFirstVideoFrameT));
        hashMap.put("render_first_video_frame", Long.valueOf(this.mEvent.v_render_f_t));
        hashMap.put("prepared", Long.valueOf(this.mEvent.player_prepared_time));
        return hashMap;
    }

    private void _getMaskEvents() {
        if (TTVideoEngine.sBuryDataOptimize && this.mEnableMask > 0) {
            HashMap hashMap = new HashMap(9);
            LoggerUtils.putToMap((Map) hashMap, "mask_enable", this.mEnableMask);
            LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.FEATURE_KEY_MASK_THREAD, this.mEnableMaskThread);
            LoggerUtils.putToMap((Map) hashMap, "mask_range_opt", this.mMaskRangeOpt);
            LoggerUtils.putToMap((Map) hashMap, "mask_enable_mdl", this.mMaskEnableDataloader);
            LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.FEATURE_KEY_MASK_DELAY_LOADING, this.mMaskDelayLoading);
            LoggerUtils.putToMap(hashMap, "mask_file_size", this.mMaskFileSize);
            int i10 = this.mMaskErrc;
            if (i10 < 0) {
                LoggerUtils.putToMap((Map) hashMap, "mask_errc", i10);
                LoggerUtils.putToMap(hashMap, "mask_url", this.mMaskURL);
                LoggerUtils.putToMap(hashMap, "mask_file_hash", this.mMaskFileHash);
            }
            this.mEvent.maskEvents = hashMap;
            return;
        }
        HashMap hashMap2 = new HashMap(11);
        LoggerUtils.putToMap(hashMap2, "mask_open_ts", this.mEvent.mask_open_t);
        LoggerUtils.putToMap(hashMap2, "mask_opened_ts", this.mEvent.mask_opened_t);
        LoggerUtils.putToMap((Map) hashMap2, "mask_errc", this.mMaskErrc);
        LoggerUtils.putToMap((Map) hashMap2, "mask_enable", this.mEnableMask);
        LoggerUtils.putToMap((Map) hashMap2, IVideoEventLogger.FEATURE_KEY_MASK_THREAD, this.mEnableMaskThread);
        LoggerUtils.putToMap(hashMap2, "mask_url", this.mMaskURL);
        LoggerUtils.putToMap((Map) hashMap2, "mask_range_opt", this.mMaskRangeOpt);
        LoggerUtils.putToMap((Map) hashMap2, "mask_enable_mdl", this.mMaskEnableDataloader);
        LoggerUtils.putToMap((Map) hashMap2, IVideoEventLogger.FEATURE_KEY_MASK_DELAY_LOADING, this.mMaskDelayLoading);
        LoggerUtils.putToMap(hashMap2, "mask_file_hash", this.mMaskFileHash);
        LoggerUtils.putToMap(hashMap2, "mask_file_size", this.mMaskFileSize);
        this.mEvent.maskEvents = hashMap2;
    }

    private void _getSubEvents() {
        if (TTVideoEngine.sBuryDataOptimize && this.mEnableSub > 0) {
            HashMap hashMap = new HashMap(5);
            LoggerUtils.putToMap((Map) hashMap, "sub_enable", this.mEnableSub);
            LoggerUtils.putToMap((Map) hashMap, "sub_enable_opt_load", this.mEnableOptSubLoad);
            LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.FEATURE_KEY_SUB_THREAD, this.mEnableSubThread);
            if (!TextUtils.isEmpty(this.mSubError)) {
                LoggerUtils.putToMap(hashMap, "sub_error", this.mSubError);
                LoggerUtils.putToMap(hashMap, "sub_req_url", this.mSubReqURL);
            }
            this.mEvent.subEvents = hashMap;
            return;
        }
        HashMap hashMap2 = new HashMap(9);
        LoggerUtils.putToMap((Map) hashMap2, "sub_langs_c", this.mSubIdsCount);
        LoggerUtils.putToMap(hashMap2, "sub_req_fin_ts", this.mEvent.sub_req_finish_t);
        LoggerUtils.putToMap(hashMap2, "sub_load_fin_ts", this.mEvent.sub_load_finish_t);
        LoggerUtils.putToMap((Map) hashMap2, "sub_switch_c", this.mSubLanSwitchCount);
        LoggerUtils.putToMap(hashMap2, "sub_error", this.mSubError);
        LoggerUtils.putToMap(hashMap2, "sub_req_url", this.mSubReqURL);
        LoggerUtils.putToMap((Map) hashMap2, "sub_enable", this.mEnableSub);
        LoggerUtils.putToMap((Map) hashMap2, "sub_enable_opt_load", this.mEnableOptSubLoad);
        LoggerUtils.putToMap((Map) hashMap2, IVideoEventLogger.FEATURE_KEY_SUB_THREAD, this.mEnableSubThread);
        this.mEvent.subEvents = hashMap2;
    }

    private void _parseUrlLogID() {
        String str;
        String substring;
        if (!TextUtils.isEmpty(this.mInitialURL)) {
            str = this.mInitialURL;
        } else if (!TextUtils.isEmpty(this.mProxyUrl)) {
            str = this.mProxyUrl;
        } else if (!TextUtils.isEmpty(this.mAudioInitURL)) {
            str = this.mAudioInitURL;
        } else {
            return;
        }
        try {
            str = URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e10) {
            TTVideoEngineLog.e(TAG, "exception:" + e10.toString());
        } catch (IllegalArgumentException e11) {
            TTVideoEngineLog.e(TAG, "exception:" + e11.toString());
        }
        int indexOf = str.indexOf("&l=");
        if (indexOf > 0) {
            int indexOf2 = str.indexOf(ContainerUtils.FIELD_DELIMITER, indexOf + 1);
            if (indexOf2 > 0) {
                substring = str.substring(indexOf + 3, indexOf2);
            } else {
                substring = str.substring(indexOf + 3);
            }
            this.mEvent.log_id = substring;
        }
    }

    private void _sendEvent() {
        if (this.mEvent == null) {
            return;
        }
        TTVideoEngineLog.i(TAG, "sendEvent pt_new:" + this.mEvent.pt_new + ", mEvent:" + this.mEvent + ", eventBase:" + this.mEventBase);
        if (this.mEvent.pt_new <= 0 && this.ps_t <= 0) {
            return;
        }
        updateEventData();
        EngineThreadPool.addExecuteTask(new AsyncGetLogDataRunnable(this.mContext, this.mEvent, this, this.mEventBase, this.mNetworkQualityAlgorithm, this.mEventSaver));
        contentReporterStartTaskIfNeeded();
        _clear();
    }

    private void _setDefaultExitReason(int i10) {
        if (i10 != 6 && i10 != 0) {
            if (i10 != 1 && i10 != 4 && i10 != 2 && i10 != 3 && i10 != 7) {
                if (i10 == 5) {
                    this.mLeaveReason = -1002;
                    return;
                }
                return;
            }
            this.mLeaveReason = -1004;
            return;
        }
        this.mLeaveReason = VideoEventOnePlay.EXIT_CODE_BEFORE_DNS_PARSED;
    }

    private void _updateFeatures() {
        TreeMap treeMap = new TreeMap();
        treeMap.putAll(sFeatures);
        treeMap.putAll(this.mFeatures);
        int i10 = this.mEventBase.mVideoHW;
        if (i10 != 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_VIDEO_HW, Integer.valueOf(i10));
        }
        int i11 = this.mEventBase.mAudioHwUser;
        if (i11 != 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_AUDIO_HW, Integer.valueOf(i11));
        }
        int i12 = this.mAsyncInit;
        if (i12 > 0) {
            treeMap.put("async_init", Integer.valueOf(i12));
        }
        int i13 = this.mUseCodecPool;
        if (i13 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_CODEC_POOL, Integer.valueOf(i13));
        }
        if (this.mEventBase.codec_type.equals("h265")) {
            treeMap.put("h265", 1);
        } else if (this.mEventBase.codec_type.equals("h266")) {
            treeMap.put("h266", 1);
        }
        int i14 = this.mNetworkTimeout;
        if (i14 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT, Integer.valueOf(i14));
        }
        int i15 = this.mBufferTimeout;
        if (i15 > 0) {
            treeMap.put("buffer_timeout", Integer.valueOf(i15));
        }
        if (this.mFeatureConfigs.mEnableBufferDirectly > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_BUFFER_DIRECTLY, Integer.valueOf(this.mFeatureConfigs.mEnableBufferDirectly));
        }
        if (this.mFeatureConfigs.mFirstBufEndMs > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_FIRST_BUFFER_END_MS, Integer.valueOf(this.mFeatureConfigs.mFirstBufEndMs));
        }
        int i16 = this.mEvent.textureRender;
        if (i16 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_OES_TEXTURE, Integer.valueOf(i16));
        }
        int i17 = this.mEnableNNSR;
        if (i17 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SR, Integer.valueOf(i17));
        }
        if (this.mFeatureConfigs.mEnableVolumeBalance > 0) {
            if (this.mFeatureConfigs.mAEType != 0) {
                if (this.mFeatureConfigs.mAEType != 1) {
                    if (this.mFeatureConfigs.mAEType == 4) {
                        treeMap.put(IVideoEventLogger.FEATURE_KEY_VOLUME_BALANCE_TOB, 1);
                    }
                } else {
                    treeMap.put(IVideoEventLogger.FEATURE_KEY_VOLUME_BALANCEV2, 1);
                }
            } else {
                treeMap.put("volume_balance", 1);
            }
        }
        int i18 = this.mEnableBash;
        if (i18 > 0) {
            treeMap.put("bash", Integer.valueOf(i18));
        }
        int i19 = this.mEventBase.is_enable_abr;
        if (i19 > 0) {
            treeMap.put("abr", Integer.valueOf(i19));
        }
        if (this.mFeatureConfigs.mEnableEngineLooper > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ENGINE_LOOPER, Integer.valueOf(this.mFeatureConfigs.mEnableEngineLooper));
        }
        if (this.mFeatureConfigs.mEnableAutoRange > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_AUTO_RANGE, Integer.valueOf(this.mFeatureConfigs.mEnableAutoRange));
        }
        if (this.mFeatureConfigs.mEnableHwDropNonRef > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HW_DROP, Integer.valueOf(this.mFeatureConfigs.mEnableHwDropNonRef));
        }
        if (this.mFeatureConfigs.mEnableHttps > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HTTPS, Integer.valueOf(this.mFeatureConfigs.mEnableHttps));
        }
        int i20 = this.mEvent.checkHijack;
        if (i20 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HIJACK, Integer.valueOf(i20));
        }
        int i21 = this.mEvent.hijackRetry;
        if (i21 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HIJACK_RETRY, Integer.valueOf(i21));
        }
        if (this.mFeatureConfigs.mEnableFallbackApi > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_FALLBACK_API, Integer.valueOf(this.mFeatureConfigs.mEnableFallbackApi));
        }
        if (this.mFeatureConfigs.mEnableAsyncPosition > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ASYNC_POSITION, Integer.valueOf(this.mFeatureConfigs.mEnableAsyncPosition));
        }
        int i22 = this.mEventBase.mReuseSocket;
        if (i22 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SOCKET_REUSE, Integer.valueOf(i22));
        }
        int i23 = this.mEventBase.mEnableMDL;
        if (i23 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_TYPE, Integer.valueOf(i23));
        }
        if (this.mFeatureConfigs.mEnableLoadControl > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ENABLE_LOAD_CONTROL, Integer.valueOf(this.mFeatureConfigs.mEnableLoadControl));
        }
        if (this.mFeatureConfigs.mRenderType != 5) {
            if (this.mFeatureConfigs.mRenderType >= 0) {
                treeMap.put("render_type", Integer.valueOf(this.mFeatureConfigs.mRenderType));
            }
        } else if (this.mEventBase.mVideoHW == 0) {
            treeMap.put("render_type", 5);
        } else {
            treeMap.put("render_type", 3);
        }
        treeMap.put(IVideoEventLogger.FEATURE_KEY_IMAGE_SCALE, Integer.valueOf(this.mFeatureConfigs.mImageScaleType));
        int i24 = this.mMediaCodecRender;
        if (i24 >= 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MC_RENDER, Integer.valueOf(i24));
        }
        if (this.mFeatureConfigs.mAudioRenderType >= 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_AUDIO_RENDER_TYPE, Integer.valueOf(this.mFeatureConfigs.mAudioRenderType));
        }
        if (this.mFeatureConfigs.mSkipFindStreamInfo > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SKIP_FIND_STREAM_INFO, Integer.valueOf(this.mFeatureConfigs.mSkipFindStreamInfo));
        }
        if (this.mFeatureConfigs.mEnableAsyncPrepare > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ENABLE_ASYNC_PREPARE, Integer.valueOf(this.mFeatureConfigs.mEnableAsyncPrepare));
        }
        if (this.mFeatureConfigs.mCodecFrcLevel > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_CODEC_FRC_LEVEL, Integer.valueOf(this.mFeatureConfigs.mCodecFrcLevel));
        }
        if (this.mFeatureConfigs.mEnableLazySeek > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_LAZY_SEEK, Integer.valueOf(this.mFeatureConfigs.mEnableLazySeek));
        }
        if (this.mFeatureConfigs.mKeepFormatThreadAlive > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_KEEP_FORMAT_THREAD_ALIVE, Integer.valueOf(this.mFeatureConfigs.mKeepFormatThreadAlive));
        }
        int i25 = this.mEvent.isDisableShortSeek;
        if (i25 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_DISABLE_SHORT_SEEK, Integer.valueOf(i25));
        }
        int i26 = this.mEvent.isPreferNearestSample;
        if (i26 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MOV_PREFER_NEAR_SAMPLE, Integer.valueOf(i26));
        }
        int i27 = this.mEnableSubThread;
        if (i27 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SUB_THREAD, Integer.valueOf(i27));
        }
        int i28 = this.mEnableMaskThread;
        if (i28 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MASK_THREAD, Integer.valueOf(i28));
        }
        if ((this.mFeatureConfigs.mHDRType & 1) == 1) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HDR_PQ, 1);
        }
        if ((this.mFeatureConfigs.mHDRType & 2) == 2) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HDR_HLG, 1);
        }
        if (this.mFeatureConfigs.mEnableABRStartup > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ABR_STARTUP, 1);
        }
        if (this.mFeatureConfigs.mEnableGearStrategy > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_GEAR_STRATEGY, Integer.valueOf(this.mFeatureConfigs.mEnableGearStrategy));
        }
        if (this.mFeatureConfigs.mEnableSRStrategy > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SR_STRATEGY, Integer.valueOf(this.mFeatureConfigs.mEnableSRStrategy));
        }
        if (this.mFeatureConfigs.mEnableThreadPriority > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_THREAD_PRIORITY, 1);
        }
        if (this.mFeatureConfigs.mEnableSmoothClock > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_SMOOTH_CLOCK, 1);
        }
        if (this.mFeatureConfigs.mDisableSplitVoice > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_DISABLE_SPLIT_VOICE, 1);
        }
        if (this.mEventBase.mVideoHW == 0 && this.mFeatureConfigs.mEnableNativeYV12 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_NATIVE_YV12_RENDER, 1);
        }
        if (this.mEvent.mAudioCodecProfile == 28) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_HEAACV2, 1);
        }
        if (this.mFeatureConfigs.mEnableStrategyCenter > 0) {
            treeMap.put("strategy_center", 1);
        } else {
            treeMap.put("strategy_center", 0);
        }
        if (this.mFeatureConfigs.mEnableOutletDropLimit >= 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_ENABLE_OUTLET_DROP_LIMIT, Integer.valueOf(this.mFeatureConfigs.mEnableOutletDropLimit));
        }
        int intValue = DataLoaderHelper.getDataLoader().getIntValue(8);
        if (intValue > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_SOCKET_REUSE, Integer.valueOf(intValue));
        }
        int intValue2 = DataLoaderHelper.getDataLoader().getIntValue(1001);
        if (intValue2 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_PRE_CONNECT, Integer.valueOf(intValue2));
        }
        if (DataLoaderHelper.getDataLoader().getIntValue(7) > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_ENABLE_EXTERN_DNS, 1);
            if (TextUtils.equals(this.mEventBase.mDNSType, IVideoEventLogger.LOGGER_DNS_TYPE_HTTP_OWN) || TextUtils.equals(this.mEventBase.mDNSType, IVideoEventLogger.LOGGER_DNS_TYPE_HTTP_GOOGLE) || TextUtils.equals(this.mEventBase.mDNSType, IVideoEventLogger.LOGGER_DNS_TYPE_CUSTOM_INNER_BYTEDANCE_HTTPDNS)) {
                treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_HTTPDNS, 1);
            }
        }
        int intValue3 = DataLoaderHelper.getDataLoader().getIntValue(114);
        if (intValue3 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_PREPARSE_DNS, Integer.valueOf(intValue3));
        }
        int intValue4 = DataLoaderHelper.getDataLoader().getIntValue(105);
        if (intValue4 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_DNS_REFRESH, Integer.valueOf(intValue4));
        }
        int intValue5 = DataLoaderHelper.getDataLoader().getIntValue(103);
        if (intValue5 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_DNS_PARALLEL_PARSE, Integer.valueOf(intValue5));
        }
        int intValue6 = DataLoaderHelper.getDataLoader().getIntValue(115);
        if (intValue6 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_BACKUP_IP, Integer.valueOf(intValue6));
        }
        int intValue7 = DataLoaderHelper.getDataLoader().getIntValue(101);
        if (intValue7 > 0) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_SESSION_REUSE, Integer.valueOf(intValue7));
        }
        int intValue8 = DataLoaderHelper.getDataLoader().getIntValue(100);
        if (intValue8 == 3) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_TLS_VERSION, Integer.valueOf(intValue8));
        }
        long longValue = DataLoaderHelper.getDataLoader().getLongValue(1152);
        String stringValue = DataLoaderHelper.getDataLoader().getStringValue(DataLoaderHelper.DATALOADER_KEY_STRING_IS_SOCKET_TRAIN_CENTER_CONFIG);
        if (longValue > 0 && !TextUtils.isEmpty(stringValue)) {
            treeMap.put(IVideoEventLogger.FEATURE_KEY_MDL_SOCKET_MONITOR, 1);
        }
        this.mEvent.mFeatures = treeMap;
    }

    private void _upload(int i10) {
        this.mEvent.leave_method = i10;
        TimerTask timerTask = this.mTimerTask;
        if (timerTask != null) {
            timerTask.cancel();
            this.mTimerTask = null;
        }
        PortraitNetworkScore.BitrateCalculationTask bitrateCalculationTask = this.mBitrateCalculationTask;
        if (bitrateCalculationTask != null) {
            bitrateCalculationTask.cancel();
            this.mBitrateCalculationTask = null;
        }
        if (this.mEnableSpeedReport) {
            this.mEventSample.stopRecord();
        }
        _sendEvent();
        this.mEvent = new VideoEventOnePlay();
        this.mEventSample.mEventBase = this.mEventBase;
        this.mEventOneEvent.reset();
        this.mEventOneOpera.reset();
        this.mEventOneOutSync.reset();
        this.mEventAbrSwitch.reset();
    }

    public static void addFeatureGlobal(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            sFeatures.put(str, obj);
            TTVideoEngineLog.d(TAG, "addFeatureGlobal, key:" + str + ", value:" + obj);
        }
    }

    private void callbackNoRenderEnd(int i10) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("type", Integer.valueOf(i10));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null) {
            eventLoggerSource.onInfo(6, hashMap);
        }
    }

    private void collectPowerStatistics() {
        int isPowerSaveMode;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase.mEnablePowerReport) {
            double cPURate = videoEventBase.getCPURate();
            double cPUSpeed = this.mEventBase.getCPUSpeed();
            if (cPURate > 0.0d && cPUSpeed > 0.0d) {
                VideoEventOnePlay videoEventOnePlay = this.mEvent;
                videoEventOnePlay.mCpuRateBegin = cPURate;
                videoEventOnePlay.mCpuSpeedBegin = cPUSpeed;
            } else {
                EngineThreadPool.addExecuteTask(new StatisticDataRunnable(this.mEvent, this.mEventBase));
            }
            HashMap<String, Object> chargingState = this.mEventBase.getChargingState();
            if (chargingState != null) {
                this.mPowerList.add((Integer) chargingState.get("power"));
                this.mChargingList.add((Integer) chargingState.get("isCharging"));
            }
        }
        if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 2L) && (isPowerSaveMode = DeviceMonitorUtils.isPowerSaveMode(this.mContext)) >= 0) {
            this.mEvent.mPowerSaveModeBegin = isPowerSaveMode;
        }
    }

    private void contentReporterStartTaskIfNeeded() {
        if (sEnableContentDataReport && this.mUrlMatchCondition) {
            this.mUrlMatchCondition = false;
            this.mContentDataReporter.startTask(this.mEvent, this.mEventBase);
        }
    }

    private boolean enableReport(int i10) {
        if ((i10 & this.mReportLevel) != 0) {
            return true;
        }
        return false;
    }

    private static int getAppBits() {
        return 64;
    }

    private static int getHostabiBits() {
        int appBits = getAppBits();
        int osBits = getOsBits();
        if (appBits != osBits) {
            TTVideoEngineLog.i(TAG, "appBits:" + appBits + " != osBits:" + osBits);
            return -1;
        }
        return appBits;
    }

    private static int getOsBits() {
        String property = System.getProperty("os.arch");
        if (property != null && property.contains("64")) {
            return 64;
        }
        return 32;
    }

    private int getScreenHeight() {
        if (BaseAppInfo.mScreenHeight <= 0) {
            BaseAppInfo.mScreenHeight = ScreenUtils.getRealScreenSize(this.mContext).y;
        }
        return BaseAppInfo.mScreenHeight;
    }

    private int getScreenWidth() {
        if (BaseAppInfo.mScreenWidth <= 0) {
            BaseAppInfo.mScreenWidth = ScreenUtils.getRealScreenSize(this.mContext).x;
        }
        return BaseAppInfo.mScreenWidth;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$saveEvent$0() {
        updateTimeConsumingEventData(this.mContext, this.mEvent, this.mEventBase, this.mNetworkQualityAlgorithm);
        this.mEventSaver.save(this.mEvent, this.mEventBase);
    }

    private void updateEventData() {
        String str;
        String str2;
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null) {
            Map<String, Long> bytesInfo = eventLoggerSource.bytesInfo();
            if (bytesInfo != null) {
                long longValue = bytesInfo.get("vps").longValue();
                long longValue2 = bytesInfo.get("vds").longValue();
                long longValue3 = bytesInfo.get("single_vds").longValue();
                long longValue4 = bytesInfo.get("accu_vds").longValue();
                VideoEventOnePlay videoEventOnePlay = this.mEvent;
                str = "";
                videoEventOnePlay.vps = this.mAccumVPS + longValue;
                if (this.mLooping) {
                    videoEventOnePlay.vds = this.mAccumVDS + longValue3;
                } else {
                    videoEventOnePlay.vds = this.mAccumVDS + longValue2;
                }
                videoEventOnePlay.accu_vds = this.mAccumVDS + longValue4;
                TTVideoEngineLog.i(TAG, "_sendEvent accumVDS:" + this.mAccumVDS + ", vds:" + longValue2 + ", single_vds:" + longValue3 + ", mEvent.vds:" + this.mEvent.vds + ", accu_vds:" + longValue4);
                EngineThreadPool.addExecuteTask(new VideoInfoCollector.myVideoCollectorAddConsumeSize(this.mEvent.vps));
            } else {
                str = "";
            }
            this.mEvent.render_type = this.mDataSource.getLogValueStr(1);
            logMessage(this.mDataSource.getLogValueStr(2));
            this.mEvent.apiString = this.mDataSource.getLogValueStr(3);
            this.mEvent.netClient = this.mDataSource.getLogValueStr(4);
            this.mEvent.engineState = this.mDataSource.getLogValueInt(23);
            this.mEvent.isPreferNearestSample = this.mDataSource.getLogValueInt(34);
            this.mEvent.networkTimeout = this.mDataSource.getLogValueInt(35);
            this.mEvent.isDisableShortSeek = this.mDataSource.getLogValueInt(36);
            if (this.mEvent.internalIP == null) {
                String logValueStr = this.mDataSource.getLogValueStr(5);
                if (logValueStr == null) {
                    logValueStr = str;
                }
                this.mEvent.internalIP = logValueStr;
            }
            String logValueStr2 = this.mDataSource.getLogValueStr(33);
            if (!TextUtils.isEmpty(logValueStr2)) {
                this.mEvent.loaderType = logValueStr2;
            }
            _checkFirstFrameTimes();
            this.mEvent.core_volume = this.mDataSource.getLogValueInt(61);
            this.mEvent.mute = this.mDataSource.getLogValueInt(27);
            this.mEvent.apiverFinal = this.mDataSource.getLogValueInt(30);
            this.mEvent.chipBoardName = this.mDataSource.getLogValueStr(31);
            this.mEvent.chipHardwareName = this.mDataSource.getLogValueStr(32);
            this.mEvent.chipHardwareNameNew = this.mDataSource.getLogValueStr(111);
            if (this.mFeatureConfigs.mEnableVolumeBalance > 0) {
                if (this.mFeatureConfigs.mAEType != 0) {
                    if (this.mFeatureConfigs.mAEType == 1) {
                        this.mEvent.ae_type = 1;
                    }
                } else {
                    this.mEvent.ae_type = 0;
                }
            }
            if (!TTVideoEngine.sColdStartOptimize || sIsColdStart == 0) {
                this.mEvent.videoAudioGap = this.mDataSource.getLogValueLong(54);
                this.mEvent.moovPos = this.mDataSource.getLogValueLong(57);
                this.mEvent.mdatPos = this.mDataSource.getLogValueLong(58);
            }
            int logValueInt = this.mDataSource.getLogValueInt(100);
            if (logValueInt != 0) {
                this.mEvent.textureRenderErrorCode = logValueInt;
            }
            if (!TTVideoEngine.sBuryDataOptimize) {
                this.mEvent.minAudioFrameSize = this.mDataSource.getLogValueLong(140);
                this.mEvent.minVideoFrameSize = this.mDataSource.getLogValueLong(141);
                this.mEvent.feedInBeforeDecoded = this.mDataSource.getLogValueInt(142);
                this.mEvent.mPreloadGear = this.mDataSource.getLogValueStr(143);
                int logValueInt2 = this.mDataSource.getLogValueInt(145);
                float logValueFloat = this.mDataSource.getLogValueFloat(82);
                if (logValueInt2 > 0 && logValueFloat > 0.0f) {
                    this.mEvent.netblockBufferthreshold = (int) ((logValueInt2 / logValueFloat) * 1000.0d);
                }
            }
            VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
            if (videoEventOnePlay2.mVideoCodecProfile == Integer.MIN_VALUE) {
                videoEventOnePlay2.mVideoCodecProfile = this.mDataSource.getLogValueInt(63);
            }
            VideoEventOnePlay videoEventOnePlay3 = this.mEvent;
            if (videoEventOnePlay3.mAudioCodecProfile == Integer.MIN_VALUE) {
                videoEventOnePlay3.mAudioCodecProfile = this.mDataSource.getLogValueInt(64);
            }
            this.mEvent.mVideoHWErrReason = this.mDataSource.getLogValueInt(77);
            this.mEvent.mMaxFramesInMediaCodec = this.mDataSource.getLogValueInt(147);
            this.mEvent.mIsViewHidden = this.mDataSource.getLogValueInt(87);
            this.mEvent.mVideoRenderStallCount = this.mDataSource.getLogValueInt(156);
            this.mEvent.mVideoRenderStallList = this.mDataSource.getLogValueStr(157);
            HashMap<String, Object> chargingState = this.mEventBase.getChargingState();
            if (chargingState != null) {
                this.mPowerList.add((Integer) chargingState.get("power"));
                this.mChargingList.add((Integer) chargingState.get("isCharging"));
            }
            ArrayList forebackSwitchList = this.mDataSource.forebackSwitchList();
            if (forebackSwitchList != null) {
                this.mEvent.mForebackSwitchList = forebackSwitchList;
            }
            EventLoggerSource eventLoggerSource2 = this.mDataSource;
            if (eventLoggerSource2 != null) {
                this.mEvent.mMapAppLog = eventLoggerSource2.getLogValueMap(155);
            }
            this.mEvent.mNetworkConnectCount = this.mDataSource.getLogValueInt(114);
            long logValueLong = this.mDataSource.getLogValueLong(137);
            if (logValueLong > 0) {
                this.mEvent.mMaskDownloadSize = logValueLong;
            }
            long logValueLong2 = this.mDataSource.getLogValueLong(138);
            if (logValueLong2 > 0) {
                this.mEvent.mSubtitleDownloadSize = logValueLong2;
            }
            this.mEvent.mInBackgroundWhenStop = this.mDataSource.getLogValueInt(94);
        } else {
            str = "";
        }
        int i10 = this.mDuration;
        if (i10 > 0) {
            this.mEventBase.f37071vd = i10;
        }
        Context context = this.mContext;
        if (context != null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("VideoEventLogger", 0);
            str2 = str;
            this.mEvent.mLastSessionID = sharedPreferences.getString("playersessionid", str2);
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("playersessionid", this.mEventBase.mSessionID);
            edit.apply();
        } else {
            str2 = str;
        }
        VideoEventOnePlay videoEventOnePlay4 = this.mEvent;
        VideoEventBase videoEventBase = this.mEventBase;
        videoEventOnePlay4.mSessionID = videoEventBase.mSessionID;
        videoEventOnePlay4.leave_reason = this.mLeaveReason;
        videoEventOnePlay4.apiver = this.mApiVer;
        videoEventOnePlay4.f37074auth = this.mAuth;
        videoEventOnePlay4.startTime = this.mStartTime;
        videoEventOnePlay4.disableAccurateStart = this.mDisableAccurateStart;
        videoEventOnePlay4.f37083vu = this.mVUArray;
        videoEventOnePlay4.f37079lf = videoEventBase.mLastResolution;
        videoEventOnePlay4.f37077df = videoEventBase.mCurrentResolution;
        videoEventOnePlay4.isStartPlayAutomatically = this.mIsStartPlayAutomatically;
        videoEventOnePlay4.bufferSeconds = this.mBufferDataSeconds;
        videoEventOnePlay4.loopcount = this.mLoopCount;
        videoEventOnePlay4.width = this.mWidth;
        videoEventOnePlay4.height = this.mHeight;
        videoEventOnePlay4.p2pUrl = this.mP2PUrl;
        videoEventOnePlay4.customP2PCDNType = this.mCustomP2PCDNType;
        videoEventOnePlay4.asyncInit = this.mAsyncInit;
        videoEventOnePlay4.asyncCodecId = this.mAsyncCodecId;
        videoEventOnePlay4.dns_server_ip = DNSServerIP.getDNSServerIP();
        VideoEventOnePlay videoEventOnePlay5 = this.mEvent;
        videoEventOnePlay5.f37075bc = this.mCurBufferCount;
        videoEventOnePlay5.f37076br = this.mBreakCount;
        videoEventOnePlay5.bitrate = this.mBitrate;
        videoEventOnePlay5.audioBitrate = this.mAudioBitrate;
        videoEventOnePlay5.firstRangeSize = this.mFirstRangeSize;
        videoEventOnePlay5.netSpeedLevel = this.mNetSpeedLevel;
        videoEventOnePlay5.modelVersion = this.mModelVersion;
        videoEventOnePlay5.mRadioMode = this.mRadioMode;
        videoEventOnePlay5.mAudioStreamDisabled = this.mAudioStreamDisabled;
        videoEventOnePlay5.mVideoStreamDisabled = this.mVideoStreamDisabled;
        videoEventOnePlay5.isReplay = this.mIsReplay;
        videoEventOnePlay5.mediaCodecRender = this.mMediaCodecRender;
        videoEventOnePlay5.codecPool = this.mUseCodecPool;
        long j10 = this.mSurfaceSetTime;
        if (j10 > 0) {
            videoEventOnePlay5.surfaceSetTime = j10;
        }
        videoEventOnePlay5.surfaceCode = this.mSurfaceCode;
        videoEventOnePlay5.playerSurfaceCode = this.mPlayerSurfaceCode;
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            videoEventOnePlay5.bufferAccuT = videoEventOneEvent.mAccuCostTime;
        }
        videoEventOnePlay5.decoderBufferAccuT = this.mCurDecoderBufferAccuT;
        videoEventOnePlay5.seekCount = this.mSeekCount;
        videoEventOnePlay5.switchResolutionCount = this.mSwitchResolutionCount;
        videoEventOnePlay5.mEnableNNSR = this.mEnableNNSR;
        videoEventOnePlay5.mReadCacheMode = this.mReadCacheMode;
        videoEventOnePlay5.mPreRangeOff = this.mPreRangeOff;
        videoEventOnePlay5.mBufferTimeout = this.mBufferTimeout;
        videoEventOnePlay5.mCustomPlayEngineT = this.mCustomPlayEngineT;
        videoEventOnePlay5.mCustomInitEngineT = this.mCustomInitEngineT;
        VideoEventOnePlay videoEventOnePlay6 = this.mEvent;
        videoEventOnePlay6.mCustomGetVideoModelT = this.mCustomGetVideoModelT;
        videoEventOnePlay6.mCustomClickT = this.mCustomClickT;
        videoEventOnePlay6.mHardwareConfType = this.mHardwareConfType;
        videoEventOnePlay6.mScreenWidth = getScreenWidth();
        this.mEvent.mScreenHeight = getScreenHeight();
        this.mEvent.mPixelDensity = ScreenUtils.getScreenPixelDensity();
        this.mEvent.xdpi = ScreenUtils.getScreenXdpi();
        this.mEvent.ydpi = ScreenUtils.getScreenYdpi();
        if (this.mSrMonitor.getWidthFactor() > 0.0f) {
            this.mEvent.mSrWidthFactor = this.mSrMonitor.getWidthFactor();
        }
        if (this.mSrMonitor.getHeightFactor() > 0.0f) {
            this.mEvent.mSrHeightFactor = this.mSrMonitor.getHeightFactor();
        }
        this.mEvent.mSrProccessSuccessRate = this.mSrMonitor.getProccessSuccessRate();
        this.mEvent.mSrProcessorCostTime = this.mSrMonitor.getProcessorAverageCostTime();
        this.mEvent.mSrAlgorithm = this.mSrMonitor.getSrAlgorithm();
        this.mEvent.mSrEnableBmf = this.mSrMonitor.getEnableBmf();
        this.mEvent.mVideoFilterList = this.mFilterMonitor.getList();
        this.mEvent.mBrightList = this.mBrightMonitor.getList();
        this.mEvent.mViewSizeList = this.mViewSizeMonitor.getHistory();
        VideoEventOnePlay videoEventOnePlay7 = this.mEvent;
        videoEventOnePlay7.mLabelUsage = this.mLabelUsage;
        videoEventOnePlay7.mEngineHash = this.mEngineHash;
        videoEventOnePlay7.mFromEnginePool = this.mFromEnginePool;
        videoEventOnePlay7.mCorePoolSizeUpperLimit = this.mCorePoolSizeUpperLimit;
        videoEventOnePlay7.mCorepoolSizeBeforeGetEngine = this.mCorepoolSizeBeforeGetEngine;
        videoEventOnePlay7.mCountOfEngineInUse = this.mCountOfEngineInUse;
        HashMap hashMap = new HashMap();
        for (int i11 = 0; i11 < this.mRetryFetchErrorInfo.size() && i11 < 3; i11++) {
            try {
                hashMap.put(String.format("fetchretry%d", Integer.valueOf(i11)), this.mRetryFetchErrorInfo.get(i11));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        for (int i12 = 0; i12 < this.mFirstDNSErrorInfo.size() && i12 < 3; i12++) {
            hashMap.put(String.format("ldns%d", Integer.valueOf(i12)), ((Error) this.mFirstDNSErrorInfo.get(i12)).toMap());
        }
        for (int i13 = 0; i13 < this.mErrorInfo.size(); i13++) {
            if (i13 < 2 || i13 == this.mErrorInfo.size() - 1) {
                hashMap.put(String.format("error%d", Integer.valueOf(i13)), this.mErrorInfo.get(i13));
            }
        }
        if (!TextUtils.isEmpty(this.mMessage)) {
            hashMap.put("log", this.mMessage);
        }
        if (!TextUtils.isEmpty(this.mEvent.textureRenderErrorMsg)) {
            hashMap.put("tr_err_msg", this.mEvent.textureRenderErrorMsg);
        }
        this.mMessage = str2;
        this.mEvent.ex = hashMap;
        this.mExtraInfo = hashMap.toString();
        String str3 = this.mCustomStr;
        if (str3 != null) {
            this.mEvent.mCustomStr = str3;
        }
        String str4 = this.mInitialURL;
        if (str4 != null) {
            this.mEvent.mInitialURL = str4;
        }
        String str5 = this.mAudioInitURL;
        if (str5 != null) {
            this.mEvent.mAudioInitUrl = str5;
        }
        String str6 = this.mInitialHost;
        if (str6 != null) {
            this.mEvent.mInitialHost = str6;
        }
        String str7 = this.mInitialIP;
        if (str7 != null) {
            this.mEvent.mInitialIP = str7;
        }
        String str8 = this.mInitialResolution;
        if (str8 != null) {
            this.mEvent.mInitialResolution = str8;
        }
        String str9 = this.mInitialQuality;
        if (str9 != null) {
            this.mEvent.mInitialQuality = str9;
        }
        VideoEventOnePlay videoEventOnePlay8 = this.mEvent;
        videoEventOnePlay8.mInitialQualityType = this.mInitialQualityType;
        Map map = this.mPlaybackParams;
        if (map != null) {
            videoEventOnePlay8.playbackparams = map;
        }
        String str10 = this.mSubReqURL;
        if (str10 != null) {
            videoEventOnePlay8.mSubReqURL = str10;
        }
        String str11 = this.mMaskURL;
        if (str11 != null) {
            videoEventOnePlay8.mMaskURL = str11;
        }
        String str12 = this.mSubError;
        if (str12 != null) {
            videoEventOnePlay8.mSubError = str12;
        }
        if (videoEventOnePlay8.mask_opened_t <= 0) {
            videoEventOnePlay8.mask_opened_t = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        if (videoEventOnePlay8.mask_open_t <= 0) {
            videoEventOnePlay8.mask_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        if (videoEventOnePlay8.sub_req_finish_t <= 0) {
            videoEventOnePlay8.sub_req_finish_t = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        if (videoEventOnePlay8.sub_load_finish_t <= 0) {
            videoEventOnePlay8.sub_load_finish_t = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        videoEventOnePlay8.enableSub = this.mEnableSub;
        videoEventOnePlay8.enableSubThread = this.mEnableSubThread;
        videoEventOnePlay8.enableMask = this.mEnableMask;
        videoEventOnePlay8.enableMaskThread = this.mEnableMaskThread;
        videoEventOnePlay8.maskErrc = this.mMaskErrc;
        videoEventOnePlay8.subLanSwichCount = this.mSubLanSwitchCount;
        videoEventOnePlay8.subIdsCount = this.mSubIdsCount;
        videoEventOnePlay8.enableBash = this.mEnableBash;
        videoEventOnePlay8.enableMDL = this.mEventBase.mEnableMDL;
        videoEventOnePlay8.netWorkTryCount = this.mNetWorkTryCount;
        videoEventOnePlay8.isColdStart = sIsColdStart;
        sIsColdStart = 0;
        if (videoEventOnePlay8.lastSeekEndT < videoEventOnePlay8.lastSeekStartT) {
            videoEventOnePlay8.lastSeekEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        if (videoEventOnePlay8.lastResolutionEndT < videoEventOnePlay8.lastResolutionStartT) {
            videoEventOnePlay8.lastResolutionEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        videoEventOnePlay8.prepare_before_play_t = this.prepare_before_play_t;
        videoEventOnePlay8.setds_t = this.setds_t;
        videoEventOnePlay8.f37081pt = videoEventOnePlay8.pt_new;
        videoEventOnePlay8.ps_t = this.ps_t;
        if (videoEventOnePlay8.f37078et <= 0 && videoEventOnePlay8.f37082vt > 0) {
            videoEventOnePlay8.f37078et = System.currentTimeMillis();
        }
        VideoEventOnePlay videoEventOnePlay9 = this.mEvent;
        videoEventOnePlay9.mPlayList = this.mPlayList;
        videoEventOnePlay9.mPauseList = this.mPauseList;
        videoEventOnePlay9.mResolutionList = this.mResolutionList;
        videoEventOnePlay9.mPlaySpeedList = this.mPlaySpeedList;
        videoEventOnePlay9.mRadiomodeList = this.mRadiomodeList;
        videoEventOnePlay9.mLoopList = this.mLoopList;
        videoEventOnePlay9.mErrorList = this.mErrorList;
        videoEventOnePlay9.mRebufList = this.mEventOneEvent.mRebufList;
        videoEventOnePlay9.mSeekList = this.mEventOneOpera.mSeekList;
        videoEventOnePlay9.mHeadsetStateList = this.mHeadsetStateHistory.get();
        VideoEventOnePlay videoEventOnePlay10 = this.mEvent;
        VideoEventOneOutSync videoEventOneOutSync = this.mEventOneOutSync;
        videoEventOnePlay10.mAVOutsyncList = videoEventOneOutSync.mList;
        videoEventOnePlay10.mAVOutsyncCount = videoEventOneOutSync.mAVOutSyncCount;
        videoEventOnePlay10.mMDLRetryList = this.mMDLRetryInfo;
        videoEventOnePlay10.mPowerList = this.mPowerList;
        videoEventOnePlay10.mChargingList = this.mChargingList;
        videoEventOnePlay10.mAVBadInterlacedList = this.mAVBadInterlacedList;
        videoEventOnePlay10.mVrDistanceList = this.mVrDistanceList;
        videoEventOnePlay10.mVrFrameRate = this.mVrFrameRate;
        videoEventOnePlay10.mVrScreenRefreshRate = this.mVrScreenRefreshRate;
        videoEventOnePlay10.mVrHeadMovementDelay = this.mVrHeadMovementDelay;
        videoEventOnePlay10.mSetSurfaceTimeList = this.mSetSurfaceTimeList;
        if (this.mEventOneNoRender.isStarted()) {
            this.mEventOneNoRender.end(0, "exit");
            callbackNoRenderEnd(this.mEventOneNoRender.getType());
        }
        this.mEvent.mNoVideoRenderList = this.mEventOneNoRender.getVideoHistory();
        this.mEvent.mNoAudioRenderList = this.mEventOneNoRender.getAudioHistory();
        VideoEventOnePlay videoEventOnePlay11 = this.mEvent;
        videoEventOnePlay11.mTrEffectList = this.mTrEffectList;
        videoEventOnePlay11.mTrPerEffectAverageTime = this.mTrPerEffectAverageTime;
        videoEventOnePlay11.mTrEffectErrorCode = this.mTrEffectErrorCode;
        videoEventOnePlay11.mOttPluginVersion = this.mOttPluginVersion;
        videoEventOnePlay11.mCompanyID = this.mCompanyID;
        _getMaskEvents();
        _getSubEvents();
        if (TextUtils.isEmpty(this.mEvent.log_id)) {
            _parseUrlLogID();
        }
        if (this.mBlockBeginT > 0) {
            this.mEvent.leave_block_t = (int) (SystemClock.elapsedRealtime() - this.mBlockBeginT);
        }
        VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
        if (videoEventOneOpera != null) {
            this.mEvent.seek_accu_t = videoEventOneOpera.mAccuCostTime;
        }
        if (TimeService.isUpdated()) {
            this.mEvent.server_local_diff = TimeService.currentTimeMillis() - System.currentTimeMillis();
        }
        _updateFeatures();
        _getCastInfo();
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            VideoStyle videoStyle = iVideoModel.getVideoStyle();
            if (videoStyle != null && videoStyle.getValueInt(0) == 1) {
                VideoEventOnePlay videoEventOnePlay12 = this.mEvent;
                videoEventOnePlay12.mVideoStyle = 1;
                videoEventOnePlay12.mDimension = videoStyle.getValueInt(1);
                this.mEvent.mProjectionModel = videoStyle.getValueInt(2);
                this.mEvent.mViewSize = videoStyle.getValueInt(3);
            }
        } else {
            VRTracker vRTracker = this.mVRTracker;
            if (vRTracker != null) {
                this.mEvent.mVideoStyle = vRTracker.getVideoStyle();
                this.mEvent.mDimension = this.mVRTracker.getDimension();
                this.mEvent.mProjectionModel = this.mVRTracker.getProjectStyle();
                this.mEvent.mViewSize = this.mVRTracker.getViewSize();
            }
        }
        this.mVegaCollector.retrieveEventParam(this.mEventBase, this.mEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateTimeConsumingEventData(Context context, VideoEventOnePlay videoEventOnePlay, VideoEventBase videoEventBase, PortraitNetworkScore.NetworkQualityAlgorithm networkQualityAlgorithm) {
        int isPowerSaveMode;
        Iterator<Float> it;
        IVideoModel iVideoModel;
        String str;
        if (videoEventOnePlay == null) {
            TTVideoEngineLog.e(TAG, "event is null, return.");
            return;
        }
        videoEventOnePlay.volume = (int) TTHelper.getVolume(context);
        if (videoEventBase != null) {
            videoEventBase.updateMDLInfo();
            ArrayList<String> arrayList = new ArrayList<>();
            if ((videoEventBase.mSourceTypeStr.equals("vid") || videoEventBase.mSourceTypeStr.equals("feed")) && (iVideoModel = videoEventBase.mVideoModel) != null) {
                for (VideoInfo videoInfo : iVideoModel.getVideoInfoList()) {
                    String valueStr = videoInfo.getValueStr(48);
                    String valueStr2 = videoInfo.getValueStr(18);
                    String valueStr3 = videoInfo.getValueStr(8);
                    valueStr3.hashCode();
                    char c10 = 65535;
                    switch (valueStr3.hashCode()) {
                        case 3148040:
                            if (valueStr3.equals("h264")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 3148041:
                            if (valueStr3.equals("h265")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 3148042:
                            if (valueStr3.equals("h266")) {
                                c10 = 2;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
                            break;
                        case 1:
                            str = "1";
                            break;
                        case 2:
                            str = "2";
                            break;
                        default:
                            str = "-1";
                            break;
                    }
                    arrayList.add(valueStr2 + '_' + valueStr + '_' + str);
                }
                videoEventBase.mGearinfoList = arrayList;
            }
            videoEventBase.mNetworkType = VideoEventBase.getNetType();
            if (videoEventBase.mdlVideoInfo.mdl_cache_type == 2) {
                videoEventOnePlay.mFeatures.put("preload", 1);
            }
            Map map = videoEventBase.mdlFeatures;
            if (map != null && !map.isEmpty()) {
                videoEventOnePlay.mFeatures.putAll(videoEventBase.mdlFeatures);
                int i10 = videoEventBase.mdlP2pLoader;
                if (i10 >= 0) {
                    videoEventOnePlay.loaderType = String.valueOf(i10);
                }
            }
        }
        videoEventOnePlay.mSensitiveMode = TTVideoEngineUtils.getSensitiveScene();
        if (videoEventBase.mEnablePowerReport) {
            double cPURate = videoEventBase.getCPURate();
            double cPUSpeed = videoEventBase.getCPUSpeed();
            double d10 = 0.0d;
            if (cPURate > 0.0d && cPUSpeed > 0.0d) {
                videoEventOnePlay.mCpuRateEnd = cPURate;
                videoEventOnePlay.mCpuSpeedEnd = cPUSpeed;
            } else {
                DeviceMonitorUtils.CPUInfo currentCPUInfo = videoEventBase.getCurrentCPUInfo();
                if (currentCPUInfo != null) {
                    double d11 = currentCPUInfo.cpuAppRate;
                    double d12 = 1.401298464324817E-45d;
                    if (d11 <= 0.0d) {
                        d11 = 1.401298464324817E-45d;
                    }
                    videoEventOnePlay.mCpuRateEnd = d11;
                    double d13 = currentCPUInfo.cpuAppSpeed;
                    if (d13 > 0.0d) {
                        d12 = d13;
                    }
                    videoEventOnePlay.mCpuSpeedEnd = d12;
                }
            }
            if (!videoEventOnePlay.mCurrentList.isEmpty()) {
                while (videoEventOnePlay.mCurrentList.iterator().hasNext()) {
                    d10 += it.next().floatValue();
                }
                videoEventOnePlay.mAvgCurrent = (float) (d10 / videoEventOnePlay.mCurrentList.size());
            }
        }
        if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 2L) && (isPowerSaveMode = DeviceMonitorUtils.isPowerSaveMode(context)) >= 0) {
            videoEventOnePlay.mPowerSaveModeEnd = isPowerSaveMode;
        }
        videoEventOnePlay.mNetworkScore = PortraitNetworkScore.getInstance().getPortraitResult();
        if (networkQualityAlgorithm != null) {
            videoEventOnePlay.mNetworkQualityBitrate = networkQualityAlgorithm.calculateTargetBitrate(new ArrayList(videoEventOnePlay.mCatowerRttMsList), new ArrayList(videoEventOnePlay.mMdlMultiSpeedList));
        }
        videoEventOnePlay.mHostAbiBits = getHostabiBits();
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void AVNoRenderEnd(int i10) {
        TTVideoEngineLog.d(TAG, "AVNoRenderEnd, type: " + i10);
        if (!this.mEventOneNoRender.isStarted()) {
            TTVideoEngineLog.i(TAG, "AVNoRenderEnd, not started before, abort");
        } else if (!this.mEventOneNoRender.isType(i10)) {
            TTVideoEngineLog.i(TAG, "AVNoRenderEnd, type does not match, abort");
        } else {
            this.mEventOneNoRender.end(0, "wait");
            callbackNoRenderEnd(i10);
            if (i10 == 0) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_NO_VIDEO_RENDER, false);
            } else if (i10 == 1) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_NO_AUDIO_RENDER, false);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void AVNoRenderStart(int i10, int i11) {
        long j10;
        long j11;
        TTVideoEngineLog.d(TAG, "AVNoRenderStart, type: " + i10 + ", reason: " + i11);
        if (this.mEventOneNoRender.isStarted()) {
            this.mEventOneNoRender.updateReason(i11);
            TTVideoEngineLog.d(TAG, "AVNoRenderStart event is already started, abort");
            return;
        }
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        long j12 = -1;
        if (videoEventOneEvent != null) {
            j10 = videoEventOneEvent.getLastRebufTime();
        } else {
            j10 = -1;
        }
        VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
        if (videoEventOneOpera != null) {
            j11 = videoEventOneOpera.getLastSeekTime();
        } else {
            j11 = -1;
        }
        this.mEventOneNoRender.start(i10, i11, 0, j10, j11, this.mHeadsetStateHistory.getLastSwitchTime());
        String renderStageError = this.mEventOneNoRender.getRenderStageError();
        if (!TextUtils.isEmpty(renderStageError)) {
            this.mEvent.mRenderStageError = renderStageError;
        }
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        long j13 = videoEventOnePlay.f37082vt;
        if (j13 > 0) {
            j12 = j13 - videoEventOnePlay.pt_new;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(i10));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        hashMap.put("codec", this.mEventBase.getCodecType());
        hashMap.put("resolution", this.mEventBase.getCurResolution());
        hashMap.put(IVideoEventLogger.LOG_CALLBCK_QUALITY_DESC, this.mEventBase.mCurrentQualityDesc);
        hashMap.put("hw", Integer.valueOf(this.mEventBase.mVideoHW));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_PLAY_START_TIME, Long.valueOf(this.ps_t));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_FIRST_FRAME_COST, Long.valueOf(j12));
        long j14 = this.mEvent.lastSeekStartT;
        if (j14 != SieveCacheKt.NodeMetaAndPreviousMask) {
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_LAST_SEEK_TIME, Long.valueOf(j14));
        }
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null) {
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_ENABLE_NNSR, Integer.valueOf(eventLoggerSource.getLogValueInt(101)));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TEXTURE_RENDER_ERROR, Integer.valueOf(this.mDataSource.getLogValueInt(100)));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_LAST_SWITCH_RESOLUTION_TIME, Long.valueOf(this.mDataSource.getLogValueLong(92)));
            this.mDataSource.onInfo(5, hashMap);
        }
        if (i10 == 0) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_NO_VIDEO_RENDER, true);
        } else if (i10 == 1) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_NO_AUDIO_RENDER, true);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void AVOutSyncEnd(int i10) {
        this.mEventOneOutSync.AVOutSyncEnd(i10, "wait");
        this.mAVOutSyncing = false;
        if (this.mState == 2) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_AVOUTSYNC, false);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void AVOutSyncStart(int i10) {
        long j10;
        this.mAVOutSyncing = true;
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        long j11 = -1;
        if (videoEventOneEvent != null) {
            j10 = videoEventOneEvent.getLastRebufTime();
        } else {
            j10 = -1;
        }
        VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
        if (videoEventOneOpera != null) {
            j11 = videoEventOneOpera.getLastSeekTime();
        }
        this.mEventOneOutSync.AVOutSyncStart(i10, j10, j11, this.mHeadsetStateHistory.getLastSwitchTime());
        if (this.mState == 2) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_AVOUTSYNC, true);
        }
    }

    public void _recordExitReason(int i10, boolean z10) {
        if (this.mEvent == null) {
            return;
        }
        if (z10) {
            this.mLeaveReason = i10;
            if (i10 != -1002 && i10 != -1003 && i10 != -1004 && i10 != -1005) {
                if (i10 != -2003 && i10 != -2002) {
                    this.mBlockBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
                    return;
                } else {
                    this.mBlockBeginT = SystemClock.elapsedRealtime();
                    return;
                }
            } else if (this.mBlockBeginT <= 0) {
                this.mBlockBeginT = SystemClock.elapsedRealtime();
                return;
            } else {
                return;
            }
        }
        this.mLeaveReason = VideoEventOnePlay.EXIT_CODE_AFTER_PLAYING;
        this.mBlockBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void abrEventEnd(long j10) {
        this.mEventAbrSwitch.abrSwitchEnd(j10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void abrEventStart(long j10, long j11) {
        this.mEventAbrSwitch.abrSwitchStart(j10, j11);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void accumulateSize() {
        _accumulateVPS();
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void addFeature(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.mFeatures.put(str, obj);
            TTVideoEngineLog.d(TAG, "addFeature, key:" + str + ", value:" + obj);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void addLabelUsage(@NonNull Map<String, Object> map) {
        this.mLabelUsage.addUsage(map);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void addSubtitleSwitchTime() {
        this.mSubLanSwitchCount++;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void addWatchedDuration(int i10) {
        this.mEvent.watchduration = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void beginToPlay(String str, long j10, String str2) {
        int optInt;
        this.mState = 1;
        this.mEventBase.beginToPlay(str, str2);
        if (!TTVideoEngine.sColdStartOptimize || sIsColdStart == 0) {
            this.mEventBase.registerNetwork();
        }
        if (this.mIsReplay == 1) {
            this.setds_t = j10;
        }
        if (this.ps_t <= 0) {
            this.ps_t = j10;
            collectPowerStatistics();
        }
        this.mLeave = true;
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        videoEventOnePlay.traceID = this.mEventBase.mSessionID;
        if (this.mIsReplay == 1) {
            videoEventOnePlay.prepare_start_time = j10;
        } else {
            videoEventOnePlay.prepare_start_time = SieveCacheKt.NodeMetaAndPreviousMask;
        }
        videoEventOnePlay.prepare_end_time = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.dnsT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.tranConnectT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.tranFirstPacketT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.audioDnsT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.audioTranConnectT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.audioTranFirstPacketT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.receiveFirstVideoFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.receiveFirstAudioFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.decodeFirstVideoFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.decodeFirstAudioFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.videoDeviceStartTime = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.audioDeviceStartTime = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.videoDeviceOpenedTime = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.audioDeviceOpenedTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mPlayCount++;
        videoEventOnePlay.lastSeekStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastSeekEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastResolutionStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastResolutionEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        videoEventOnePlay.lastSeekPosition = Integer.MIN_VALUE;
        videoEventOnePlay.mIsEngineReuse = this.mIsEngineReuse;
        this.mVegaCollector.reset();
        if (!this.mIsEngineReuse) {
            this.mIsEngineReuse = true;
        }
        if (this.mEventBase.mSourceTypeStr.equals("vid")) {
            _recordExitReason(-1002, true);
        } else if (this.mEventBase.mSourceTypeStr.equals("local_url")) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_BEFORE_DNS_PARSED, true);
        } else {
            int i10 = this.mEvent.dnsModule;
            if (i10 == 0) {
                _recordExitReason(-1003, true);
            } else if (i10 == 1) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_BEFORE_DNS_PARSED, true);
            }
        }
        if (this.mEnableSpeedReport) {
            this.mEventSample.startRecord();
        }
        TTVideoEngineLog.i(TAG, "netlevel interval:" + this.mNetLevelIntervalMs + ", max count:" + this.mNetLevelMaxCount);
        if (this.mNetLevelIntervalMs > 0 && this.mTimerTask == null) {
            NetworkPortraitData portraitData = PortraitNetworkScore.getInstance().getPortraitData();
            portraitData.setSampleInterval(this.mNetLevelIntervalMs);
            portraitData.setMaxCount(this.mNetLevelMaxCount);
            this.mTimerTask = new MyTimerTask();
            portraitData.start();
            portraitData.schedule(this.mTimerTask, this.mNetLevelIntervalMs);
            VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
            int i11 = this.mNetLevelIntervalMs;
            videoEventOnePlay2.mNetQualityInterval = i11;
            int i12 = i11 / 3;
            this.mNetSpeedUpdateInterval = i12;
            this.mNetSpeedUpdateInterval = Math.max(i12, 200);
            synchronized (TAG) {
                this.mMDLDownloadTime = 0L;
                this.mMDLDownloadSize = 0L;
            }
            this.mNetworkQualityAlgorithm = PortraitNetworkScore.getInstance().genNetworkQualityAlg();
            String str3 = this.mNetworkQualityVar;
            if (str3 != null && !str3.isEmpty()) {
                this.mNetworkQualityAlgorithm.setStringOption(4, this.mNetworkQualityVar);
                this.mNetworkQualityVar = null;
            }
            JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject(SETTINGS_NET_QUALITY);
            if (vodJsonObject == null) {
                optInt = 0;
            } else {
                optInt = vodJsonObject.optInt(SETTINGS_CALCULATE_INTERVAL);
            }
            if (this.mBitrateCalculationTask == null && optInt > 0) {
                PortraitNetworkScore.BitrateCalculationTask bitrateCalculationTask = new PortraitNetworkScore.BitrateCalculationTask(portraitData, this.mNetworkQualityAlgorithm);
                this.mBitrateCalculationTask = bitrateCalculationTask;
                portraitData.schedule(bitrateCalculationTask, optInt);
                TTVideoEngineLog.d(TAG, "bitrate calculate interval: " + optInt);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void bufferDataSeconds(int i10) {
        this.mBufferDataSeconds = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public IMediaMetrics buildMetrics(int i10) {
        return MetricsFactory.createMetrics(i10, this.mEvent);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void clockDiff(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.clockDiff = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void codecName(int i10, int i11) {
        if (this.mEvent == null) {
            return;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                this.mEventBase.audioCodecNameId = i11;
                return;
            }
            return;
        }
        this.mEventBase.videoCodecNameId = i11;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void configResolution(String str, String str2) {
        this.mEventBase.configResolution(str, str2);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void containerFps(float f10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.containerFps = f10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void crosstalkHappen(int i10, ArrayList arrayList) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        videoEventOnePlay.mCrosstalkCount = i10;
        videoEventOnePlay.mCrosstalkInfoList = arrayList;
        _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_CROSS_TALKING, true);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curAudioDecodeError(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && i10 > 0) {
            videoEventOnePlay.curAudioDecodeError = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curPlayBackTime(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.curPlayBackTime = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curVideoDecodeError(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && i10 > 0) {
            videoEventOnePlay.curVideoDecodeError = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curVideoDecoderFps(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.curVideoDecoderFps = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curVideoOutputFps(float f10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.curVideoOutputFps = f10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void curVideoRenderError(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && i10 >= 0) {
            videoEventOnePlay.curVideoRenderError = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void deviceStartTime(int i10, long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                videoEventOnePlay.audioDeviceStartTime = j10;
                return;
            }
            return;
        }
        videoEventOnePlay.videoDeviceStartTime = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void devicedOpenedTime(int i10, long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                videoEventOnePlay.audioDeviceOpenedTime = j10;
                return;
            }
            return;
        }
        videoEventOnePlay.videoDeviceOpenedTime = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void dropCount(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.dropCount = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void enableSharp(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.enableSharp = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void enableStartPlayAutomatically(boolean z10) {
        if (z10) {
            this.mIsStartPlayAutomatically = 1;
        } else {
            this.mIsStartPlayAutomatically = 0;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void engineState(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.engineState = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void fetchInfoComplete(VideoModel videoModel, Error error) {
        fetchInfoComplete((IVideoModel) videoModel, error);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void fetchedAndLeaveByUser(int i10) {
        this.mEvent.fetchedAndLeaveByUser = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void firstDNSFailed(Error error) {
        this.mFirstDNSErrorInfo.add(error);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public int getAsyncInit() {
        return this.mAsyncInit;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public Map<String, Object> getCoreEventParam() {
        return this.mVegaCollector.get();
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public long getCurDecoderBufferAccuT() {
        return this.mCurDecoderBufferAccuT;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public int getCurDecoderBufferCount() {
        return this.mCurDecoderBufferCount;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public String getEncryptKey() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            return videoEventOnePlay.encryptKey;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public String getExtraInfo() {
        return this.mExtraInfo;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public Error getFirstError() {
        return this.mFirstError;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public int getIntOption(int i10) {
        VideoEventBase videoEventBase;
        if (i10 == 49 && (videoEventBase = this.mEventBase) != null) {
            return videoEventBase.formatType;
        }
        return -1;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public long getLeaveWaitTime() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            long j10 = videoEventOnePlay.pt_new;
            if (j10 > 0) {
                long j11 = videoEventOnePlay.f37080lt;
                if (j11 > 0) {
                    return j11 - j10;
                }
            }
        }
        return 0L;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public int getMovieStalledType() {
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            return videoEventOneEvent.getMovieStalledType();
        }
        return -1;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public long getStalledAudioBufferTime() {
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            return videoEventOneEvent.getStatlledAudioBufferTime();
        }
        return -1L;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public long getStalledVideoBufferTime() {
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            return videoEventOneEvent.getStalledVideoBufferTime();
        }
        return -1L;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public String getStringOption(int i10) {
        String str = "";
        try {
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
        }
        if (i10 != 47) {
            if (i10 == 86) {
                str = this.mEventBase.mSessionID;
            }
            return str;
        }
        str = this.mEventBase.mSourceTypeStr;
        return str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public String getTraceID() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            return videoEventOnePlay.traceID;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void hwCodecException(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.hwCodecException = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void hwCodecName(String str) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.hwCodecName = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void initContentReporterIfNeeded(String str) {
        if (!TextUtils.isEmpty(str) && sEnableContentDataReport && str.contains("trans_vdata_to_content=1")) {
            if (this.mContentDataReporter == null) {
                this.mContentDataReporter = new ContentDataReporter(this.mContext);
            }
            this.mUrlMatchCondition = true;
            this.mContentDataReporter.setInitialUrl(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public boolean isUploadLogEnabled() {
        return this.mUploadLogEnabled;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void logFirstError(Error error) {
        this.mFirstError = error;
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && videoEventOnePlay.first_errc == Integer.MIN_VALUE && videoEventOnePlay.first_errt == Integer.MIN_VALUE && videoEventOnePlay.first_errc_internal == Integer.MIN_VALUE) {
            videoEventOnePlay.first_errt = error.getType();
            VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
            videoEventOnePlay2.first_errc = error.code;
            videoEventOnePlay2.first_errc_internal = error.internalCode;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void logMessage(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mMessage += str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void logPluginException(String str) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.pluginException = 1;
            if (!TextUtils.isEmpty(str)) {
                this.mEvent.ownPlayerCreateException = str;
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void loopAgain() {
        this.mLoopCount++;
        TTVideoEngineUtils.addToList(this.mLoopList, String.valueOf(System.currentTimeMillis()));
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void mdlRetryResult(int i10, String str, Error error) {
        HashMap hashMap = new HashMap();
        if (error != null) {
            hashMap = error.toMap();
        }
        hashMap.put("result", Integer.valueOf(i10));
        if (str != null) {
            hashMap.put("filehash", str);
        }
        TTVideoEngineUtils.addToList(this.mMDLRetryInfo, new JSONObject(hashMap).toString(), 2);
        if (i10 != 0) {
            this.mEvent.mExpirePlayCode = 3;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void movieBufferDidReachEnd() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.bft <= 0) {
            videoEventOnePlay.bft = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fa  */
    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void movieFinish(com.ss.ttvideoengine.utils.Error r17, int r18) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.VideoEventLoggerV2.movieFinish(com.ss.ttvideoengine.utils.Error, int):void");
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void moviePreStalled(int i10) {
        TTVideoEngineLog.i(TAG, "movie may stall");
        this.mEventOneEvent.moviePreStalled(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e6  */
    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void movieShouldRetry(com.ss.ttvideoengine.utils.Error r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.VideoEventLoggerV2.movieShouldRetry(com.ss.ttvideoengine.utils.Error, int, int):void");
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void movieStallEnd(int i10) {
        if (i10 == 0 && this.mState == 3) {
            this.mState = 2;
            this.mEventOneEvent.movieStallEnd("wait");
        }
        if (this.mEvent == null) {
            return;
        }
        if (i10 == 0) {
            if (this.mState != 4) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_LOADING_NET, false);
            }
        } else if (i10 == 1) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_DECODE, false);
        }
        long currentTimeMillis = System.currentTimeMillis();
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.firstBufferEndT <= 0) {
            videoEventOnePlay.firstBufferEndT = currentTimeMillis;
        }
        if (i10 == 1) {
            long j10 = this.mDecodeBufferingStartT;
            if (j10 > 0 && currentTimeMillis >= j10) {
                this.mCurDecoderBufferAccuT += currentTimeMillis - j10;
                this.mDecodeBufferingStartT = 0L;
            }
        }
        videoEventOnePlay.lastBufferEndT = currentTimeMillis;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void movieStalled(int i10, int i11) {
        TTVideoEngineLog.i(TAG, "movieStalled, type: " + i10);
        if (i10 == 0) {
            int i12 = this.mState;
            if (i12 != 3 && i12 != 4) {
                this.mState = 3;
                int i13 = this.mNetBufferIndex + 1;
                this.mNetBufferIndex = i13;
                this.mEventOneEvent.movieStalled(i11, i13);
            }
            this.mCurBufferCount++;
            if (this.mState != 4) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_LOADING_NET, true);
            }
        } else if (i10 == 1) {
            this.mCurDecoderBufferCount++;
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_DECODE, true);
        }
        if (this.mEvent == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.firstBufferStartT <= 0) {
            videoEventOnePlay.firstBufferStartT = currentTimeMillis;
        }
        if (i10 == 1) {
            this.mDecodeBufferingStartT = currentTimeMillis;
        }
        videoEventOnePlay.lastBufferStartT = currentTimeMillis;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void needRetryToFetch(Error error, int i10) {
        HashMap map = error.toMap();
        map.put("apiver", Integer.valueOf(i10));
        this.mRetryFetchErrorInfo.add(map);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void onAVBadInterlaced(long j10) {
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            videoEventOneEvent.onAVBadInterlaced();
        }
        VideoEventOneOutSync videoEventOneOutSync = this.mEventOneOutSync;
        if (videoEventOneOutSync != null) {
            videoEventOneOutSync.onAVBadInterlaced();
        }
        VideoEventOneNoRender videoEventOneNoRender = this.mEventOneNoRender;
        if (videoEventOneNoRender != null) {
            videoEventOneNoRender.onAVBadInterlaced();
        }
        HashMap hashMap = new HashMap(3);
        hashMap.put("pts", "-1");
        hashMap.put("type", "non");
        hashMap.put("diff", Long.toString(j10));
        TTVideoEngineUtils.addToList(this.mAVBadInterlacedList, new JSONObject(hashMap).toString());
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void onVideoInfoIdChanged(int i10) {
        VideoInfo videoInfoByInfoId;
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null && (videoInfoByInfoId = iVideoModel.getVideoInfoByInfoId(i10)) != null) {
            int mediatype = videoInfoByInfoId.getMediatype();
            String valueStr = videoInfoByInfoId.getValueStr(6);
            if (mediatype == VideoRef.TYPE_AUDIO) {
                if ("dash".equals(valueStr) || "bash".equals(valueStr)) {
                    this.mEventBase.mCurDashAudioInfoId = i10;
                }
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void pause() {
        int i10;
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null) {
            i10 = eventLoggerSource.getLogValueInt(67);
        } else {
            i10 = -1;
        }
        HashMap hashMap = new HashMap(2);
        long currentTimeMillis = System.currentTimeMillis();
        hashMap.put(TtmlNode.TAG_P, Integer.valueOf(i10));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(currentTimeMillis));
        TTVideoEngineUtils.addToList(this.mPauseList, new JSONObject(hashMap).toString());
        this.mBrightMonitor.setPlaying(false);
        if (this.mAVOutSyncing) {
            this.mEventOneOutSync.setLongValue(1, currentTimeMillis);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void play(boolean z10) {
        int i10;
        EventLoggerSource eventLoggerSource = this.mDataSource;
        if (eventLoggerSource != null) {
            i10 = eventLoggerSource.getLogValueInt(67);
        } else {
            i10 = -1;
        }
        HashMap hashMap = new HashMap(2);
        hashMap.put(TtmlNode.TAG_P, Integer.valueOf(i10));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        TTVideoEngineUtils.addToList(this.mPlayList, new JSONObject(hashMap).toString());
        if (z10 && enableReport(4)) {
            this.mBrightMonitor.setPlaying(true);
            this.mBrightMonitor.start();
        }
        this.mViewSizeMonitor.tryAddLastSizeToHistory();
        if (enableReport(8)) {
            this.mHeadsetStateMonitor.start();
            this.mHeadsetStateHistory.start();
        }
        if (z10) {
            VideoEventOnePlay videoEventOnePlay = this.mEvent;
            if (videoEventOnePlay.mInBackgroundWhenPlay == Integer.MIN_VALUE) {
                videoEventOnePlay.mInBackgroundWhenPlay = this.mDataSource.getLogValueInt(94);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void playbackBufferEnd() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.playbackBufferEndT <= 0) {
            videoEventOnePlay.playbackBufferEndT = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void playbackBufferStart() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.playbackBufferStartT <= 0) {
            videoEventOnePlay.playbackBufferStartT = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void prepareEnd() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.f37082vt <= 0) {
            videoEventOnePlay.prepare_end_time = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void prepareStart() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.f37082vt <= 0) {
            videoEventOnePlay.prepare_start_time = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void recordBlockReason(int i10, boolean z10) {
        if (this.mEvent == null) {
            return;
        }
        if (z10) {
            this.mLeaveReason = i10;
            this.mBlockBeginT = SystemClock.elapsedRealtime();
            return;
        }
        this.mLeaveReason = Integer.MIN_VALUE;
        this.mBlockBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void renderSeekCompleted(int i10) {
        _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_LOADING_SEEK, false);
        this.mState = 2;
        this.mEventOneOpera.endSeek("wait", i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void reportBufferingMetrics() {
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        if (videoEventOneEvent != null) {
            videoEventOneEvent.triggerBufferStartCb();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void reset() {
        this.mIsLocal = false;
        this.mLeave = true;
        this.mRetryFetchErrorInfo = new ArrayList();
        this.mMDLRetryInfo = new ArrayList<>();
        this.mFirstDNSErrorInfo = new ArrayList();
        this.mErrorInfo = new ArrayList();
        this.mVUArray = new ArrayList();
        this.mCustomStr = null;
        this.mInitialURL = null;
        this.mAudioInitURL = null;
        this.mInitialHost = null;
        this.mInitialIP = null;
        this.mInitialResolution = null;
        this.mInitialQuality = null;
        this.mInitialQualityType = Integer.MIN_VALUE;
        this.mMessage = "";
        this.mBufferDataSeconds = Integer.MIN_VALUE;
        this.mPlaybackParams = null;
        this.mDuration = Integer.MIN_VALUE;
        this.mStartTime = Integer.MIN_VALUE;
        this.mCurBufferCount = 0;
        this.mNetBufferIndex = 0;
        this.mCurDecoderBufferCount = 0;
        this.mBreakCount = 0;
        this.mCurDecoderBufferAccuT = 0L;
        this.mSeekCount = 0;
        this.mSwitchResolutionCount = 0;
        this.mAccumVPS = 0L;
        this.mAccumVDS = 0L;
        this.mRadioMode = Integer.MIN_VALUE;
        this.mEnableNNSR = Integer.MIN_VALUE;
        this.mReadCacheMode = Integer.MIN_VALUE;
        this.mPreRangeOff = Integer.MIN_VALUE;
        this.mAudioStreamDisabled = false;
        this.mVideoStreamDisabled = false;
        this.mMediaCodecRender = Integer.MIN_VALUE;
        this.mWidth = Integer.MIN_VALUE;
        this.mHeight = Integer.MIN_VALUE;
        this.mProxyUrl = null;
        this.mFetchComplete = false;
        this.mEnableBash = Integer.MIN_VALUE;
        VideoEventBase videoEventBase = this.mEventBase;
        int i10 = videoEventBase.mEnableMDL;
        boolean z10 = videoEventBase.mEnablePowerReport;
        videoEventBase.unregisterNetwork();
        VideoEventBase videoEventBase2 = new VideoEventBase(this.mDataSource, this.mUploadLogEnabled, this.mContext);
        this.mEventBase = videoEventBase2;
        videoEventBase2.mEnableMDL = i10;
        videoEventBase2.mEnablePowerReport = z10;
        VideoEventSampleRecord videoEventSampleRecord = new VideoEventSampleRecord(videoEventBase2);
        this.mEventSample = videoEventSampleRecord;
        videoEventSampleRecord.mSampingRate = this.mNetworkSpeedPredictSamplingRate;
        VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
        VideoEventBase videoEventBase3 = this.mEventBase;
        videoEventOneEvent.mEventBase = videoEventBase3;
        this.mEventOneOpera.mEventBase = videoEventBase3;
        this.mEventOneOutSync.mEventBase = videoEventBase3;
        this.mEventAbrSwitch.mEventBase = videoEventBase3;
        this.mEventOneNoRender.updateEventBase(videoEventBase3);
        this.mFeatureConfigs = new FeatureConfigs();
        this.mViewSizeMonitor = new ViewSizeMonitor();
        this.mLabelUsage = new LabelUsage();
        this.mFirstError = null;
        this.mUrlMatchCondition = false;
        this.mVegaCollector.reset();
        this.mVRTracker = new VRTracker();
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void retryFinish() {
        int i10;
        if (this.mCurError != null && this.mRetryStartT > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long j10 = currentTimeMillis - this.mRetryStartT;
            HashMap hashMap = new HashMap(5);
            EventLoggerSource eventLoggerSource = this.mDataSource;
            if (eventLoggerSource != null) {
                i10 = eventLoggerSource.getLogValueInt(67);
            } else {
                i10 = -1;
            }
            hashMap.put("ec", Integer.valueOf(this.mCurError.code));
            hashMap.put(TtmlNode.TAG_P, Integer.valueOf(i10));
            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(currentTimeMillis));
            hashMap.put("c", Long.valueOf(j10));
            hashMap.put("st", Integer.valueOf(this.mRetryStrategy));
            TTVideoEngineUtils.addToList(this.mErrorList, new JSONObject(hashMap).toString(), 3);
        }
        this.mCurError = null;
        this.mRetryStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mRetryStrategy = -1;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void saveEvent() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        long j10 = videoEventOnePlay.pt_new;
        if (j10 <= 0 && this.ps_t <= 0) {
            return;
        }
        if (this.mLeave && j10 > 0 && videoEventOnePlay.f37082vt <= 0) {
            if (videoEventOnePlay.f37080lt <= 0) {
                videoEventOnePlay.f37080lt = System.currentTimeMillis();
            }
        } else {
            videoEventOnePlay.f37078et = System.currentTimeMillis();
        }
        this.mEventBase.updateVideoInfo(null);
        updateEventData();
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.c
            @Override // java.lang.Runnable
            public final void run() {
                VideoEventLoggerV2.this.lambda$saveEvent$0();
            }
        });
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void seekCompleted() {
        if (this.mSeekBeginT > 0) {
            this.mSeekBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
            VideoEventOnePlay videoEventOnePlay = this.mEvent;
            if (videoEventOnePlay != null) {
                videoEventOnePlay.lastSeekEndT = System.currentTimeMillis();
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void seekTo(int i10, int i11, boolean z10) {
        if (!this.mLeave) {
            if (!z10) {
                long currentTimeMillis = System.currentTimeMillis();
                if (this.mState == 3) {
                    this.mEventOneEvent.movieStallEnd("seek");
                    this.mEvent.lastBufferEndT = currentTimeMillis;
                }
                if (this.mState == 4) {
                    this.mEventOneOpera.endSeek("seek", 0);
                }
                int i12 = this.mSeekCount + 1;
                this.mSeekCount = i12;
                this.mState = 4;
                this.mEventOneOpera.beginSeek(i10, i11, i12);
                VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
                VideoEventOnePlay videoEventOnePlay = this.mEvent;
                videoEventOneOpera.mLastBufferStartT = videoEventOnePlay.lastBufferStartT;
                videoEventOneOpera.mLastBufferEndT = videoEventOnePlay.lastBufferEndT;
                this.mSeekBeginT = currentTimeMillis;
                if (videoEventOnePlay != null) {
                    videoEventOnePlay.lastSeekStartT = currentTimeMillis;
                    videoEventOnePlay.lastSeekPosition = i11;
                }
                this.mSeekBeginT = SystemClock.elapsedRealtime();
                if (this.mAVOutSyncing) {
                    this.mEventOneOutSync.AVOutSyncEnd(i10, "seek");
                    this.mAVOutSyncing = false;
                }
            }
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_LOADING_SEEK, true);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAbrGeneralInfo(Map<String, Object> map) {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.abrGeneralInfo = map;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAbrInfo(Map<String, Object> map) {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.abrInfo = map;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAudioBufferLength(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.audioBufferLength = (int) j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAudioDNSParseTime(long j10, int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.audioDnsT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAudioTranConnectTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.audioTranConnectT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setAudioTranFirstPacketTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.audioTranFirstPacketT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCheckHijack(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.checkHijack = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurHost(String str) {
        if (this.mEventBase != null && str != null && !str.isEmpty()) {
            this.mEventBase.setCurHost(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurIP(String str) {
        if (this.mEventBase != null && str != null && !str.isEmpty()) {
            this.mEventBase.setCurIP(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurQuality(String str) {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.setCurQuality(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurResolution(String str) {
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.setCurResolution(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurURL(String str) {
        if (this.mEventBase != null && str != null && !str.isEmpty()) {
            this.mEventBase.setCurURL(str);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCurrentQualityDesc(String str) {
        this.mEventBase.setCurrentQualityDesc(str);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCustomInfo(IVideoEventLogger.VideoEventCustomInfo videoEventCustomInfo, Object obj) {
        TTVideoEngineLog.d(TAG, "brian setCustomInfo key:" + videoEventCustomInfo + ", value:" + obj);
        if (this.mEvent != null) {
            try {
                switch (AnonymousClass2.$SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo[videoEventCustomInfo.ordinal()]) {
                    case 1:
                        this.mCustomClickT = ((Long) obj).longValue();
                        break;
                    case 2:
                        this.mCustomGetVideoModelT = ((Long) obj).longValue();
                        break;
                    case 3:
                        break;
                    case 4:
                        this.mCustomInitEngineT = ((Long) obj).longValue();
                        break;
                    case 5:
                        this.mCustomPlayEngineT = ((Long) obj).longValue();
                        break;
                    case 6:
                        if (obj instanceof HashMap) {
                            this.mCastObject = (HashMap) obj;
                            break;
                        }
                        break;
                    case 7:
                        this.mOttPluginVersion = ((Integer) obj).intValue();
                        break;
                    case 8:
                        this.mCompanyID = (String) obj;
                        break;
                    case 9:
                        this.mEvent.mCustomPlaySessionId = (String) obj;
                        break;
                    default:
                        TTVideoEngineLog.e(TAG, "setCustomInfo invalid key:" + videoEventCustomInfo + ", value:" + obj);
                        break;
                }
            } catch (Exception e10) {
                TTVideoEngineLog.e(TAG, "setCustomInfo fail:" + e10.toString());
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCustomP2PCDNType(int i10) {
        this.mCustomP2PCDNType = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setCustomStr(String str) {
        this.mCustomStr = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDNSEndTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.dns_end_t = j10;
            if (this.mLeave && videoEventOnePlay.dnsModule == 0) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_BEFORE_DNS_PARSED, true);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDNSParseTime(long j10, int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && videoEventOnePlay.dnsT <= 0) {
            videoEventOnePlay.dnsT = j10;
            videoEventOnePlay.dnsModule = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDNSStartTime(long j10, int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.dns_start_t = j10;
            videoEventOnePlay.dnsModule = i10;
            if (this.mLeave && i10 == 0) {
                _recordExitReason(-1004, true);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDashAudioCacheSize(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.d_apls = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDashVideoCacheSize(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.d_vpls = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDecodeFirstAudioFrameTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.decodeFirstAudioFrameT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDecodeFirstVideoFrameTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.decodeFirstVideoFrameT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDisableAccurateStart(int i10) {
        this.mDisableAccurateStart = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDnsMode(int i10) {
        int i11;
        if (i10 != 1 && ((i10 == 0 || !this.mEventBase.mSourceTypeStr.equals("dir_url")) && (i11 = this.mEventBase.mEnableMDL) != 1 && i11 != 2)) {
            this.mEvent.dnsModule = 0;
        } else {
            this.mEvent.dnsModule = 1;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDrmTokenUrl(String str) {
        this.mEventBase.mDrmTokenUrl = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDrmType(int i10) {
        this.mEventBase.mDrmType = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setDuration(int i10) {
        this.mDuration = i10;
        this.mEventBase.f37071vd = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setEffect(Bundle bundle) {
        this.mFilterMonitor.setEffect(bundle);
        long currentTimeMillis = System.currentTimeMillis();
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putLong(CrashHianalyticsData.TIME, currentTimeMillis);
        this.mTrEffectList.add(bundle2.toString());
        if (bundle != null && bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) == 8) {
            int i10 = bundle.getInt(TextureRenderKeys.KEY_IS_VR_MODEL);
            int i11 = bundle.getInt(TextureRenderKeys.KEY_IS_VIEW_SIZE);
            int i12 = bundle.getInt(TextureRenderKeys.KEY_IS_VIDEO_STYLE);
            this.mVRTracker.setVideoStyle(1);
            this.mVRTracker.setViewSize(i11);
            this.mVRTracker.setDimension(i12);
            this.mVRTracker.setProjectStyle(i10);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setEnableBash(int i10) {
        this.mEnableBash = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setEnableBmfSr(int i10) {
        this.mSrMonitor.setEnableBmf(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setEnableMDL(int i10) {
        this.mEventBase.mEnableMDL = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setEncryptKey(String str) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.encryptKey = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setFeed(IVideoModel iVideoModel) {
        if (iVideoModel == null) {
            return;
        }
        updateVideoInfo(iVideoModel);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setFirstPlayerFirstFrameTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && videoEventOnePlay.playerFirstFrameT <= 0) {
            videoEventOnePlay.playerFirstFrameT = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setFloatOption(int i10, float f10) {
        if (i10 != 20) {
            if (i10 != 162) {
                if (i10 != 164) {
                    if (i10 != 166) {
                        if (i10 == 167) {
                            this.mSrMonitor.setProccessSuccessRate(f10);
                            return;
                        }
                        return;
                    }
                    this.mSrMonitor.setProcessorAverageCostTime(f10);
                    return;
                }
                this.mEvent.mTrEffectChainAverageTime = Float.valueOf(f10);
                return;
            }
            this.mEvent.mTrFPS = Float.valueOf(f10);
            return;
        }
        this.mNetworkSpeedPredictSamplingRate = f10;
        this.mEventSample.setSamplingRate(f10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setFramesDropNum(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.mFramesSetDropNum = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setGearStrategyEvent(Map<String, Object> map) {
        this.mEvent.mGearStrategyInfo.putAll(map);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setHijackCode(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && i10 != -1) {
            if (videoEventOnePlay.firstHijackCode == Integer.MIN_VALUE) {
                videoEventOnePlay.firstHijackCode = i10;
            } else {
                videoEventOnePlay.lastHijackCode = i10;
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setHijackRetry(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.hijackRetry = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialHost(String str) {
        this.mInitialHost = str;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.mInitialHost = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialIP(String str) {
        this.mInitialIP = str;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.mInitialIP = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialQuality(String str) {
        this.mInitialQuality = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialQualityType(int i10) {
        this.mInitialQualityType = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialResolution(String str) {
        this.mInitialResolution = str;
        HashMap hashMap = new HashMap(5);
        hashMap.put(TypedValues.TransitionType.S_TO, str);
        hashMap.put(TtmlNode.TAG_P, -1);
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
        hashMap.put("c", 0);
        hashMap.put("seam", Boolean.FALSE);
        TTVideoEngineUtils.addToList(this.mResolutionList, new JSONObject(hashMap).toString());
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setInitialURL(String str, String str2) {
        this.mInitialURL = str;
        VideoEventBase videoEventBase = this.mEventBase;
        if (videoEventBase != null) {
            videoEventBase.mInitialURL = str;
        }
        this.mAudioInitURL = str2;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setIntOption(int i10, int i11) {
        int i12;
        if (i10 == 54) {
            this.mFeatureConfigs.mAEType = i11;
        } else if (i10 == 55) {
            this.mFeatureConfigs.mEnableNativeYV12 = i11;
        } else if (i10 != 59) {
            if (i10 != 60) {
                if (i10 != 111) {
                    boolean z10 = false;
                    if (i10 != 112) {
                        if (i10 != 126) {
                            if (i10 == 127) {
                                this.mFeatureConfigs.mEnableGearStrategy = i11;
                                return;
                            }
                            switch (i10) {
                                case 11:
                                    this.mRadioMode = i11;
                                    return;
                                case 12:
                                    if (i11 == 1) {
                                        z10 = true;
                                    }
                                    this.mVideoStreamDisabled = z10;
                                    return;
                                case 13:
                                    if (i11 == 1) {
                                        z10 = true;
                                    }
                                    this.mAudioStreamDisabled = z10;
                                    return;
                                case 14:
                                    this.mIsReplay = i11;
                                    return;
                                default:
                                    switch (i10) {
                                        case 16:
                                            this.mEventBase.mAudioHwUser = i11;
                                            return;
                                        case 17:
                                            this.mEventSample.setInterval(i11);
                                            return;
                                        case 18:
                                            if (i11 != 0) {
                                                this.mEnableSpeedReport = true;
                                                this.mEventSample.startRecord();
                                                return;
                                            }
                                            this.mEnableSpeedReport = false;
                                            this.mEventSample.stopRecord();
                                            return;
                                        case 19:
                                            this.mEventSample.setMaxWindowSize(i11);
                                            return;
                                        default:
                                            switch (i10) {
                                                case 22:
                                                    this.mNetLevelIntervalMs = i11;
                                                    return;
                                                case 23:
                                                    this.mNetLevelMaxCount = i11;
                                                    return;
                                                case 24:
                                                    this.mBufferTimeout = i11;
                                                    return;
                                                case 25:
                                                    this.mNetworkTimeout = i11;
                                                    return;
                                                case 26:
                                                    this.mFeatureConfigs.mEnableBufferDirectly = i11;
                                                    return;
                                                case 27:
                                                    this.mFeatureConfigs.mFirstBufEndMs = i11;
                                                    return;
                                                default:
                                                    switch (i10) {
                                                        case 29:
                                                            this.mFeatureConfigs.mEnableVolumeBalance = i11;
                                                            return;
                                                        case 30:
                                                            this.mFeatureConfigs.mEnableEngineLooper = i11;
                                                            return;
                                                        case 31:
                                                            this.mFeatureConfigs.mEnableAutoRange = i11;
                                                            return;
                                                        case 32:
                                                            this.mFeatureConfigs.mEnableHwDropNonRef = i11;
                                                            return;
                                                        case 33:
                                                            this.mFeatureConfigs.mEnableHttps = i11;
                                                            return;
                                                        case 34:
                                                            this.mFeatureConfigs.mEnableFallbackApi = i11;
                                                            return;
                                                        case 35:
                                                            this.mFeatureConfigs.mEnableAsyncPosition = i11;
                                                            return;
                                                        case 36:
                                                            this.mFeatureConfigs.mEnableLoadControl = i11;
                                                            return;
                                                        case 37:
                                                            this.mFeatureConfigs.mRenderType = i11;
                                                            return;
                                                        case 38:
                                                            this.mFeatureConfigs.mImageScaleType = i11;
                                                            return;
                                                        case 39:
                                                            this.mFeatureConfigs.mAudioRenderType = i11;
                                                            return;
                                                        case 40:
                                                            this.mFeatureConfigs.mSkipFindStreamInfo = i11;
                                                            return;
                                                        case 41:
                                                            this.mFeatureConfigs.mEnableAsyncPrepare = i11;
                                                            return;
                                                        case 42:
                                                            this.mFeatureConfigs.mCodecFrcLevel = i11;
                                                            return;
                                                        case 43:
                                                            this.mFeatureConfigs.mEnableLazySeek = i11;
                                                            return;
                                                        case 44:
                                                            this.mFeatureConfigs.mKeepFormatThreadAlive = i11;
                                                            return;
                                                        case 45:
                                                            HashMap hashMap = new HashMap(3);
                                                            EventLoggerSource eventLoggerSource = this.mDataSource;
                                                            if (eventLoggerSource != null) {
                                                                i12 = eventLoggerSource.getLogValueInt(67);
                                                            } else {
                                                                i12 = -1;
                                                            }
                                                            hashMap.put("s", Integer.valueOf(i11));
                                                            hashMap.put(TtmlNode.TAG_P, Integer.valueOf(i12));
                                                            hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
                                                            TTVideoEngineUtils.addToList(this.mRadiomodeList, new JSONObject(hashMap).toString());
                                                            return;
                                                        case 46:
                                                            this.mEnableMaskThread = i11;
                                                            return;
                                                        case 47:
                                                            this.mEnableSubThread = i11;
                                                            return;
                                                        case 48:
                                                            this.mEnableMask = i11;
                                                            return;
                                                        case 49:
                                                            this.mEnableSub = i11;
                                                            return;
                                                        case 50:
                                                            this.mEnableOptSubLoad = i11;
                                                            return;
                                                        case 62:
                                                            this.mModelVersion = i11;
                                                            return;
                                                        case 100:
                                                            this.mReportLevel = i11;
                                                            this.mEventOneOpera.mReportSeek = enableReport(1);
                                                            return;
                                                        case 102:
                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_REASON, Integer.valueOf(i11));
                                                            return;
                                                        case 104:
                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_ERROR, Integer.valueOf(i11));
                                                            return;
                                                        case 129:
                                                            this.mCorePoolSizeUpperLimit = i11;
                                                            return;
                                                        case 130:
                                                            this.mCorepoolSizeBeforeGetEngine = i11;
                                                            return;
                                                        case 131:
                                                            this.mCountOfEngineInUse = i11;
                                                            return;
                                                        case 132:
                                                            this.mEngineHash = i11;
                                                            return;
                                                        case 133:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_ENABLE_SR_STRATEGY, Integer.valueOf(i11));
                                                            this.mFeatureConfigs.mEnableSRStrategy = i11;
                                                            return;
                                                        case 134:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_ENABLE_ABR_SR, Integer.valueOf(i11));
                                                            return;
                                                        case 138:
                                                            this.mEvent.mSRStrategyInfo.put("ss", Integer.valueOf(i11));
                                                            return;
                                                        case 139:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_FAIL_REASON, Integer.valueOf(i11));
                                                            return;
                                                        case 140:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_STRATEGY_MODE, Integer.valueOf(i11));
                                                            return;
                                                        case 142:
                                                            this.mEvent.mExpirePlayCode = i11;
                                                            return;
                                                        case 143:
                                                            this.mMaskRangeOpt = i11;
                                                            return;
                                                        case 144:
                                                            this.mMaskEnableDataloader = i11;
                                                            return;
                                                        case 145:
                                                            this.mMaskDelayLoading = i11;
                                                            return;
                                                        case 148:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_SATISFIED, Integer.valueOf(i11));
                                                            return;
                                                        case 149:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_USE_TEXTURE, Integer.valueOf(i11));
                                                            return;
                                                        case 150:
                                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_OPEN, Integer.valueOf(i11));
                                                            return;
                                                        case 155:
                                                            VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
                                                            if (videoEventOneOpera != null) {
                                                                videoEventOneOpera.setLoadTypeWhenSeek(i11);
                                                                return;
                                                            }
                                                            return;
                                                        case 172:
                                                            VideoEventOnePlay videoEventOnePlay = this.mEvent;
                                                            if (i11 == 1) {
                                                                z10 = true;
                                                            }
                                                            videoEventOnePlay.mVModelHasFallbackApi = z10;
                                                            return;
                                                        case 173:
                                                            this.mEvent.enableMDLOnFirstPlay = i11;
                                                            return;
                                                        case 174:
                                                            this.mEvent.mMdlInvalidCode = i11;
                                                            return;
                                                        case 175:
                                                            this.mEvent.mMdlInitializeState = i11;
                                                            return;
                                                        case 177:
                                                            if (i11 > 0) {
                                                                z10 = true;
                                                            }
                                                            this.mNetSpeedForAudio = z10;
                                                            return;
                                                        case 178:
                                                            this.mEvent.mVideoAbnormalCode = i11;
                                                            return;
                                                        case 179:
                                                            this.mEvent.mVideoAbnormalInterval = i11;
                                                            return;
                                                        case 180:
                                                            this.mEvent.mVideoAbnormalStrategy = i11;
                                                            return;
                                                        case 181:
                                                            this.mEvent.miss_reason = i11;
                                                            return;
                                                        case 182:
                                                            this.mEvent.miss_reason_dv = i11;
                                                            return;
                                                        case 183:
                                                            this.mEvent.miss_reason_da = i11;
                                                            return;
                                                        case 184:
                                                            this.mVRTracker.setVideoStyle(i11);
                                                            return;
                                                        case 185:
                                                            this.mVRTracker.setDimension(i11);
                                                            return;
                                                        case 186:
                                                            this.mVRTracker.setProjectStyle(i11);
                                                            return;
                                                        case 187:
                                                            this.mVRTracker.setViewSize(i11);
                                                            return;
                                                        default:
                                                            switch (i10) {
                                                                case 79:
                                                                    this.mEnableNNSR = i11;
                                                                    return;
                                                                case 80:
                                                                    this.mReadCacheMode = i11;
                                                                    return;
                                                                case 81:
                                                                    this.mPreRangeOff = i11;
                                                                    return;
                                                                default:
                                                                    switch (i10) {
                                                                        case 89:
                                                                            this.mEvent.color_trc = i11;
                                                                            return;
                                                                        case 90:
                                                                            if (i11 > 0) {
                                                                                FeatureConfigs featureConfigs = this.mFeatureConfigs;
                                                                                featureConfigs.mHDRType = i11 | featureConfigs.mHDRType;
                                                                                return;
                                                                            }
                                                                            return;
                                                                        case 91:
                                                                            this.mFeatureConfigs.mEnableABRStartup = i11;
                                                                            return;
                                                                        case 92:
                                                                            if (i11 > 0) {
                                                                                this.mFeatureConfigs.mEnableThreadPriority = i11;
                                                                                return;
                                                                            }
                                                                            return;
                                                                        case 93:
                                                                            this.mFeatureConfigs.mEnableSmoothClock = i11;
                                                                            return;
                                                                        case 94:
                                                                            this.mFeatureConfigs.mDisableSplitVoice = i11;
                                                                            return;
                                                                        case 95:
                                                                            this.mHardwareConfType = i11;
                                                                            return;
                                                                        case 96:
                                                                            this.mFeatureConfigs.mEnableStrategyCenter = i11;
                                                                            return;
                                                                        case 97:
                                                                            this.mFeatureConfigs.mEnableOutletDropLimit = i11;
                                                                            return;
                                                                        default:
                                                                            return;
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                            }
                        }
                        VideoEventBase videoEventBase = this.mEventBase;
                        if (i11 == 1) {
                            z10 = true;
                        }
                        videoEventBase.mEnablePowerReport = z10;
                        return;
                    }
                    VideoEventBase videoEventBase2 = this.mEventBase;
                    if (i11 == 1) {
                        z10 = true;
                    }
                    videoEventBase2.mEnableTmpLog = z10;
                    return;
                }
                this.mEvent.mHasNoSurfaceWhenAudioRenderStart = i11;
                return;
            }
            this.mNetSpeedLevel = i11;
        } else {
            this.mFirstRangeSize = i11;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setIsEnableABR(int i10) {
        this.mEventBase.is_enable_abr = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setIsMultiDimensionsInput(int i10) {
        this.mEventBase.is_multi_dimensionsInput = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setIsMultiDimensionsOut(int i10) {
        this.mEventBase.is_multi_dimensions = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setIsVideoModelCache(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.useVideoModelCache = i10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setLoggerTimes(int i10) {
        long currentTimeMillis = System.currentTimeMillis();
        switch (i10) {
            case 63:
                if (this.setds_t <= 0) {
                    this.setds_t = currentTimeMillis;
                    return;
                }
                return;
            case 64:
                VideoEventOnePlay videoEventOnePlay = this.mEvent;
                if (videoEventOnePlay.pt_new <= 0) {
                    videoEventOnePlay.pt_new = currentTimeMillis;
                    return;
                }
                return;
            case 65:
                if (this.prepare_before_play_t <= 0) {
                    this.prepare_before_play_t = currentTimeMillis;
                    return;
                }
                return;
            default:
                switch (i10) {
                    case 169:
                        VideoEventOneOpera videoEventOneOpera = this.mEventOneOpera;
                        if (videoEventOneOpera != null) {
                            videoEventOneOpera.setSeekCompleteTime(currentTimeMillis);
                            return;
                        }
                        return;
                    case 170:
                        VideoEventOneOpera videoEventOneOpera2 = this.mEventOneOpera;
                        if (videoEventOneOpera2 != null) {
                            videoEventOneOpera2.setSeekLoadingBeginTime(currentTimeMillis);
                            return;
                        }
                        return;
                    case 171:
                        VideoEventOneOpera videoEventOneOpera3 = this.mEventOneOpera;
                        if (videoEventOneOpera3 != null) {
                            videoEventOneOpera3.setSeekLoadingEndTime(currentTimeMillis);
                            return;
                        }
                        return;
                    default:
                        return;
                }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setLongOption(int i10, long j10) {
        if (i10 != 21) {
            if (i10 != 56) {
                if (i10 != 101) {
                    if (i10 != 103) {
                        if (i10 != 147) {
                            if (i10 != 87) {
                                if (i10 != 88) {
                                    if (i10 != 98) {
                                        if (i10 != 99) {
                                            if (i10 != 136) {
                                                if (i10 != 137) {
                                                    switch (i10) {
                                                        case 66:
                                                            this.mEvent.a_dns_start_t = j10;
                                                            return;
                                                        case 67:
                                                            this.mEvent.formater_create_t = j10;
                                                            return;
                                                        case 68:
                                                            this.mEvent.avformat_open_t = j10;
                                                            return;
                                                        case 69:
                                                            this.mEvent.demuxer_create_t = j10;
                                                            return;
                                                        case 70:
                                                            this.mEvent.dec_create_t = j10;
                                                            return;
                                                        case 71:
                                                            this.mEvent.outlet_create_t = j10;
                                                            return;
                                                        case 72:
                                                            this.mEvent.v_dec_start_t = j10;
                                                            return;
                                                        case 73:
                                                            this.mEvent.a_dec_start_t = j10;
                                                            return;
                                                        case 74:
                                                            this.mEvent.v_dec_opened_t = j10;
                                                            return;
                                                        case 75:
                                                            this.mEvent.a_dec_opened_t = j10;
                                                            return;
                                                        case 76:
                                                            this.mEvent.v_render_f_t = j10;
                                                            return;
                                                        case 77:
                                                            this.mEvent.a_render_f_t = j10;
                                                            return;
                                                        case 78:
                                                            this.mEvent.demuxer_begin_t = j10;
                                                            return;
                                                        default:
                                                            switch (i10) {
                                                                case 82:
                                                                    this.mEvent.sub_load_finish_t = j10;
                                                                    return;
                                                                case 83:
                                                                    this.mEvent.sub_req_finish_t = j10;
                                                                    return;
                                                                case 84:
                                                                    this.mEvent.mask_open_t = j10;
                                                                    return;
                                                                case 85:
                                                                    this.mEvent.mask_opened_t = j10;
                                                                    return;
                                                                default:
                                                                    switch (i10) {
                                                                        case 105:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_SELECT_BEGIN, Long.valueOf(j10));
                                                                            return;
                                                                        case 106:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_SELECT_END, Long.valueOf(j10));
                                                                            return;
                                                                        case 107:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_ON_BEFORE_BEGIN, Long.valueOf(j10));
                                                                            return;
                                                                        case 108:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_ON_BEFORE_END, Long.valueOf(j10));
                                                                            return;
                                                                        case 109:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_ON_AFTER_BEGIN, Long.valueOf(j10));
                                                                            return;
                                                                        case 110:
                                                                            this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_ON_AFTER_END, Long.valueOf(j10));
                                                                            return;
                                                                        default:
                                                                            switch (i10) {
                                                                                case 120:
                                                                                    this.mEvent.v_http_open_t = j10;
                                                                                    return;
                                                                                case 121:
                                                                                    this.mEvent.a_http_open_t = j10;
                                                                                    return;
                                                                                case 122:
                                                                                    this.mEvent.v_tran_open_t = j10;
                                                                                    return;
                                                                                case 123:
                                                                                    this.mEvent.a_tran_open_t = j10;
                                                                                    return;
                                                                                case 124:
                                                                                    this.mEvent.v_sock_create_t = j10;
                                                                                    return;
                                                                                case 125:
                                                                                    this.mEvent.a_sock_create_t = j10;
                                                                                    return;
                                                                                default:
                                                                                    return;
                                                                            }
                                                                    }
                                                            }
                                                    }
                                                }
                                                this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_BITRATE_AFTER_DOWNGRADE, Long.valueOf(j10));
                                                return;
                                            }
                                            this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_BITRATE_BEFORE_DOWNGRADE, Long.valueOf(j10));
                                            return;
                                        }
                                        this.mEvent.mAudioStreamDuration = j10;
                                        this.mEventOneOutSync.mAudioStreamDuration = j10;
                                        return;
                                    }
                                    this.mEvent.mVideoStreamDuration = j10;
                                    this.mEventOneOutSync.mVideoStreamDuration = j10;
                                    return;
                                }
                                this.mEvent.player_prepared_time = j10;
                                return;
                            }
                            this.mEvent.httpResponseT = j10;
                            return;
                        }
                        this.mMaskFileSize = j10;
                        return;
                    }
                    this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_SPEED, Long.valueOf(j10));
                    return;
                }
                this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_BITRATE, Long.valueOf(j10));
                return;
            }
            this.mAudioBitrate = j10;
            return;
        }
        this.mBitrate = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setLooping(boolean z10) {
        this.mLooping = z10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setMaskErrorCode(int i10) {
        this.mMaskErrc = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setMaskUrl(String str) {
        this.mMaskURL = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setMediaCodecRender(int i10) {
        this.mMediaCodecRender = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setNetWorkTryCount(int i10) {
        this.mNetWorkTryCount = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setNetworkSpeedFrom(double d10, int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        if (i10 != 0) {
            if (i10 == 1) {
                videoEventOnePlay.playEndSpeed = d10;
                return;
            }
            return;
        }
        videoEventOnePlay.firstFrameSpeed = d10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setP2PCDNType(int i10) {
        this.mEventBase.setP2PCDNType(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setP2PSDKVersion(String str) {
        if (str != null) {
            this.mP2PSDKVersion = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setP2PUrl(String str) {
        if (str != null) {
            this.mP2PUrl = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayAPIVersion(int i10, String str) {
        this.mApiVer = i10;
        this.mAuth = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayType(int i10) {
        this.mEventBase.mPlayType = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlaybackParams(PlaybackParams playbackParams) {
        int i10;
        if (this.mEvent == null) {
            return;
        }
        float speed = playbackParams.getSpeed();
        HashMap hashMap = new HashMap(3);
        hashMap.put("AFMode", Integer.valueOf(playbackParams.getAudioFallbackMode()));
        hashMap.put(TextureRenderKeys.KEY_IS_PITCH, Float.valueOf(playbackParams.getPitch()));
        hashMap.put("speed", Float.valueOf(speed));
        this.mPlaybackParams = hashMap;
        if (this.mEventBase.mPlaySpeed != speed || this.mPlaySpeedList.isEmpty()) {
            this.mEventBase.mPlaySpeed = speed;
            HashMap hashMap2 = new HashMap(3);
            EventLoggerSource eventLoggerSource = this.mDataSource;
            if (eventLoggerSource != null) {
                i10 = eventLoggerSource.getLogValueInt(67);
            } else {
                i10 = -1;
            }
            hashMap2.put(TypedValues.TransitionType.S_TO, Float.valueOf(this.mEventBase.mPlaySpeed));
            hashMap2.put(TtmlNode.TAG_P, Integer.valueOf(i10));
            hashMap2.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
            TTVideoEngineUtils.addToList(this.mPlaySpeedList, new JSONObject(hashMap2).toString());
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayerCreatedT(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null && videoEventOnePlay.player_created_t <= 0) {
            videoEventOnePlay.player_created_t = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayerHostAddr(String str) {
        if (this.mEvent != null && !TextUtils.isEmpty(str)) {
            this.mEvent.internalIP = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayerSurface(String str) {
        if (TextUtils.isEmpty(this.mPlayerSurfaceCode)) {
            this.mPlayerSurfaceCode = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setPlayerViewSize(int i10, int i11) {
        this.mViewSizeMonitor.setSize(i10, i11);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setProxyUrl(String str) {
        this.mProxyUrl = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setReceiveFirstAudioFrameTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.receiveFirstAudioFrameT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setReceiveFirstVideoFrameTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.receiveFirstVideoFrameT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSRPreloadInfo(Map<String, Object> map) {
        this.mEvent.mSRPreloadInfo = map;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSRStrategyInfo(SRStrategy sRStrategy) {
        this.mEvent.mSRStrategyInfo.putAll(sRStrategy.getStrategyInfo());
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSourceRefreshLog(JSONObject jSONObject) {
        this.mEvent.mSourceRefreshLog = jSONObject;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSourceType(int i10, String str) {
        if (i10 == 0) {
            this.mIsLocal = true;
        }
        this.mEventBase.setSourceType(i10, str);
        this.mPlayCount = 0;
        _setDefaultExitReason(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSpeedPredictorAlgoType(int i10) {
        this.mEventBase.speed_predict_type = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSrAlgorithm(int i10) {
        this.mSrMonitor.setAlgorithm(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSrScaleType(int i10) {
        this.mSrMonitor.setSrScaleType(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setStartPlayHeight(int i10) {
        this.mHeight = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setStartPlayWidth(int i10) {
        this.mWidth = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setStartTime(int i10) {
        this.mStartTime = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setStringOption(int i10, String str) {
        switch (i10) {
            case 15:
                this.mEvent.log_id = str;
                return;
            case 53:
                this.mEventBase.mOriginVid = str;
                return;
            case 86:
                this.mEventBase.mDNSType = str;
                return;
            case 113:
                PortraitNetworkScore.NetworkQualityAlgorithm networkQualityAlgorithm = this.mNetworkQualityAlgorithm;
                if (networkQualityAlgorithm != null) {
                    networkQualityAlgorithm.setStringOption(4, str);
                    return;
                } else {
                    this.mNetworkQualityVar = str;
                    return;
                }
            case 128:
                this.mFromEnginePool = str;
                return;
            case 135:
                try {
                    this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_STRATEGY_CONFIG, new JSONObject(str));
                    return;
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            case 141:
                this.mEvent.mGearStrategyInfo.put(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS, str);
                return;
            case 146:
                this.mMaskFileHash = str;
                return;
            case 151:
                try {
                    this.mEvent.mSRStrategyInfo.put(SRStrategy.KEY_SR_MEDIA_INFO, new JSONArray(str));
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            case 152:
                this.mEvent.mVideoFileHash = str;
                return;
            case 153:
                this.mEvent.mAudioFileHash = str;
                return;
            case 154:
                this.mEventBase.mMediaID = str;
                return;
            case 156:
                this.mEvent.mMDLGroupId = str;
                return;
            case 161:
                this.mEvent.mTrVersion = str;
                return;
            case 163:
                this.mTrPerEffectAverageTime = str;
                return;
            case 165:
                this.mTrEffectErrorCode = str;
                return;
            case 176:
                this.mEvent.mMdlInitializeError = str;
                return;
            default:
                return;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSubTag(String str) {
        if (this.mEventBase != null && str != null && !str.isEmpty()) {
            this.mEventBase.mSubTag = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSubtitleError(String str) {
        this.mSubError = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSubtitleIdsCount(int i10) {
        this.mSubIdsCount = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSubtitleRequestUrl(String str) {
        this.mSubReqURL = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSurface(String str) {
        if (TextUtils.isEmpty(this.mSurfaceCode)) {
            this.mSurfaceCode = str;
        }
        if (this.mSurfaceSetTime <= 0) {
            this.mSurfaceSetTime = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSurfaceBegin() {
        if (!TTVideoEngine.sBuryDataOptimize && this.mSetSurfaceTimeList.size() <= 20 && this.mSetSurfaceBeginT <= 0) {
            this.mSetSurfaceBeginT = System.currentTimeMillis();
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSurfaceEnd() {
        if (!TTVideoEngine.sBuryDataOptimize && this.mSetSurfaceBeginT > 0 && !TextUtils.isEmpty(this.mSetSurfaceType)) {
            long currentTimeMillis = System.currentTimeMillis() - this.mSetSurfaceBeginT;
            HashMap hashMap = new HashMap(1);
            hashMap.put(this.mSetSurfaceType, Long.valueOf(currentTimeMillis));
            this.mSetSurfaceTimeList.add(hashMap.toString());
            this.mSetSurfaceBeginT = SieveCacheKt.NodeMetaAndPreviousMask;
            this.mSetSurfaceType = null;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setSurfaceSourceType(String str) {
        if (!TextUtils.isEmpty(str) && this.mSetSurfaceType == null) {
            this.mSetSurfaceType = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setTag(String str) {
        if (this.mEventBase != null && str != null && !str.isEmpty()) {
            this.mEventBase.mTag = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setTextureRenderError(String str) {
        if (this.mEvent != null && !TextUtils.isEmpty(str)) {
            this.mEvent.textureRenderErrorMsg = str;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setTraceID(String str) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.traceID = str;
        }
        this.mEventBase.mTraceID = str;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setTranConnectTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.tranConnectT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setTranFirstPacketTime(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.tranFirstPacketT = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setUploadLogEnabled(boolean z10) {
        this.mUploadLogEnabled = z10;
        this.mEventBase.isUploadLogEnabled = z10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVUArray(ArrayList arrayList) {
        this.mVUArray = arrayList;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVideoBufferLength(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.videoBufferLength = (int) j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVideoCacheSize(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.vpls = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVrDisplayDistance(float f10) {
        HashMap hashMap = new HashMap(2);
        long currentTimeMillis = System.currentTimeMillis();
        hashMap.put("distc", Float.valueOf(f10));
        hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(currentTimeMillis));
        this.mVrDistanceList.add(new JSONObject(hashMap).toString());
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVrDisplayFrameRate(float f10) {
        this.mVrFrameRate = f10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVrHeadMovementDelay(long j10) {
        this.mVrHeadMovementDelay = j10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setVrScreenRefreshRate(int i10) {
        this.mVrScreenRefreshRate = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void showedFirstAVSyncVideoFrame(long j10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay.f37082vt > 0 && videoEventOnePlay.v_first_sync_t <= 0) {
            videoEventOnePlay.v_first_sync_t = j10;
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void showedFirstFrame() {
        if (this.mDataSource != null) {
            this.mDataSource.onInfo(2, _getFirstFrameSplitInfo());
            VideoEventOnePlay videoEventOnePlay = this.mEvent;
            if (videoEventOnePlay != null) {
                videoEventOnePlay.mStSpeed = TTVideoEngine.getNetworkSpeedFromPredictor();
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void showedOneFrame() {
        if (this.mState != 4 || this.mLeave) {
            this.mState = 2;
            this.mLeave = false;
            if (this.mIsReplay == 1) {
                VideoEventOnePlay videoEventOnePlay = this.mEvent;
                if (videoEventOnePlay.prepare_end_time <= 0) {
                    videoEventOnePlay.prepare_end_time = System.currentTimeMillis();
                }
            }
            VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
            if (videoEventOnePlay2.f37082vt <= 0) {
                videoEventOnePlay2.f37082vt = System.currentTimeMillis();
                VideoEventOneEvent videoEventOneEvent = this.mEventOneEvent;
                if (videoEventOneEvent != null) {
                    videoEventOneEvent.showedFirstFrame();
                }
                VideoEventOneOutSync videoEventOneOutSync = this.mEventOneOutSync;
                if (videoEventOneOutSync != null) {
                    videoEventOneOutSync.showedFirstFrame();
                }
                VideoEventOneNoRender videoEventOneNoRender = this.mEventOneNoRender;
                if (videoEventOneNoRender != null) {
                    videoEventOneNoRender.showedFirstFrame();
                }
                this.mEventBase.showedOneFrame();
                EventLoggerSource eventLoggerSource = this.mDataSource;
                if (eventLoggerSource != null) {
                    this.mEvent.mVideoCodecProfile = eventLoggerSource.getLogValueInt(63);
                    this.mEvent.mAudioCodecProfile = this.mDataSource.getLogValueInt(64);
                }
                if (this.mAsyncInit == 1 && this.mDataSource.getLogValueInt(97) == 0) {
                    this.mAsyncInit = -1;
                }
            }
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_PLAYING, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007e  */
    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void stop(int r11) {
        /*
            r10 = this;
            com.ss.ttvideoengine.log.BrightnessMonitor r0 = r10.mBrightMonitor
            r0.stop()
            com.ss.ttvideoengine.log.HeadsetStateHistory r0 = r10.mHeadsetStateHistory
            r0.stop()
            int r0 = r10.mState
            if (r0 != 0) goto Lf
            return
        Lf:
            long r0 = java.lang.System.currentTimeMillis()
            int r2 = r10.mState
            r3 = 4
            java.lang.String r4 = "exit"
            r5 = 0
            if (r2 != r3) goto L22
            com.ss.ttvideoengine.log.VideoEventOneOpera r2 = r10.mEventOneOpera
            r2.endSeek(r4, r5)
            r2 = r5
            goto L23
        L22:
            r2 = 1
        L23:
            int r3 = r10.mState
            r6 = 3
            if (r3 != r6) goto L32
            com.ss.ttvideoengine.log.VideoEventOneEvent r2 = r10.mEventOneEvent
            r2.movieStallEnd(r4)
            com.ss.ttvideoengine.log.VideoEventOnePlay r2 = r10.mEvent
            r2.lastBufferEndT = r0
            r2 = r5
        L32:
            r10.mState = r5
            boolean r3 = r10.mLeave
            r6 = 0
            if (r3 == 0) goto L51
            com.ss.ttvideoengine.log.VideoEventOnePlay r3 = r10.mEvent
            long r8 = r3.pt_new
            int r8 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r8 <= 0) goto L51
            long r8 = r3.f37082vt
            int r8 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r8 > 0) goto L51
            long r8 = r3.f37080lt
            int r8 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r8 > 0) goto L55
            r3.f37080lt = r0
            goto L55
        L51:
            com.ss.ttvideoengine.log.VideoEventOnePlay r3 = r10.mEvent
            r3.f37078et = r0
        L55:
            if (r2 == 0) goto L5c
            com.ss.ttvideoengine.log.VideoEventBase r0 = r10.mEventBase
            r0.movieFinish()
        L5c:
            boolean r0 = r10.mAVOutSyncing
            if (r0 == 0) goto L76
            com.ss.ttvideoengine.log.EventLoggerSource r0 = r10.mDataSource
            if (r0 == 0) goto L6c
            r1 = 67
            int r0 = r0.getLogValueInt(r1)
            long r0 = (long) r0
            goto L6e
        L6c:
            r0 = -1
        L6e:
            com.ss.ttvideoengine.log.VideoEventOneOutSync r2 = r10.mEventOneOutSync
            int r0 = (int) r0
            r2.AVOutSyncEnd(r0, r4)
            r10.mAVOutSyncing = r5
        L76:
            com.ss.ttvideoengine.log.VideoEventOnePlay r0 = r10.mEvent
            long r0 = r0.playerFirstFrameT
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 > 0) goto L88
            java.util.Map r0 = r10._getFirstFrameSplitInfo()
            com.ss.ttvideoengine.log.EventLoggerSource r1 = r10.mDataSource
            r2 = 2
            r1.onInfo(r2, r0)
        L88:
            r10._upload(r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.log.VideoEventLoggerV2.stop(int):void");
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void switchResolution(String str, String str2, boolean z10) {
        EventLoggerSource eventLoggerSource;
        if (z10) {
            if (this.mState == 4) {
                this.mEventOneOpera.endSeek("switch", 0);
            }
            if (this.mState == 3) {
                this.mEventOneEvent.movieStallEnd("switch");
                this.mEvent.lastBufferEndT = System.currentTimeMillis();
            }
        }
        if (this.mAVOutSyncing) {
            this.mEventOneOutSync.AVOutSyncEnd((int) (this.mDataSource != null ? eventLoggerSource.getLogValueInt(67) : -1L), "switch");
            this.mAVOutSyncing = false;
        }
        this.mEvent.f37078et = System.currentTimeMillis();
        if (!str.equals(str2)) {
            this.mSwitchResolutionCount++;
        }
        this.mEventBase.configResolution(str, str2);
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.lastResolutionStartT = System.currentTimeMillis();
        }
        if (z10) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_SWITCH, true);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void switchResolutionEnd(boolean z10) {
        int i10;
        if (z10) {
            if (this.mState == 4) {
                this.mEventOneOpera.endSeek("wait", 0);
            }
            if (this.mState == 3) {
                this.mState = 2;
            }
        }
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.lastResolutionEndT = System.currentTimeMillis();
            VideoEventOnePlay videoEventOnePlay2 = this.mEvent;
            long j10 = videoEventOnePlay2.lastResolutionStartT;
            if (j10 > 0) {
                long j11 = videoEventOnePlay2.lastResolutionEndT - j10;
                EventLoggerSource eventLoggerSource = this.mDataSource;
                if (eventLoggerSource != null) {
                    i10 = eventLoggerSource.getLogValueInt(67);
                } else {
                    i10 = -1;
                }
                HashMap hashMap = new HashMap(5);
                hashMap.put(TypedValues.TransitionType.S_TO, this.mEventBase.mCurrentResolution);
                hashMap.put(TtmlNode.TAG_P, Integer.valueOf(i10));
                hashMap.put(IVideoEventLogger.LOG_CALLBACK_TIME, Long.valueOf(System.currentTimeMillis()));
                hashMap.put("c", Long.valueOf(j11));
                hashMap.put("seam", Boolean.valueOf(z10));
                TTVideoEngineUtils.addToList(this.mResolutionList, new JSONObject(hashMap).toString());
            }
        }
        if (z10) {
            _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_SWITCH, false);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateGlobalNetworkSpeed(long j10, long j11, int i10) {
        if (i10 == this.mNetSpeedUpdateInterval || i10 == -1) {
            synchronized (TAG) {
                TTVideoEngineLog.d(TAG, "global speed size:" + j10 + ", time:" + j11 + ", totalsize:" + this.mMDLDownloadSize + ", totaltime:" + this.mMDLDownloadTime);
                this.mMDLDownloadSize = this.mMDLDownloadSize + j10;
                this.mMDLDownloadTime = this.mMDLDownloadTime + j11;
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateMultiNetworkSpeed(final String str) {
        EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.log.VideoEventLoggerV2.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (VideoEventLoggerV2.TAG) {
                    try {
                        try {
                            JSONArray optJSONArray = new JSONObject(str).optJSONArray("data");
                            long j10 = 0;
                            for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                                JSONArray optJSONArray2 = optJSONArray.getJSONObject(i10).optJSONArray("downinfo");
                                if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                                    for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
                                        JSONObject jSONObject = optJSONArray2.getJSONObject(i11);
                                        long optLong = jSONObject.optLong("size");
                                        long optLong2 = jSONObject.optLong(WiseOpenHianalyticsData.UNION_COSTTIME);
                                        if (optLong != 0 || optLong2 != -1) {
                                            VideoEventLoggerV2.this.mMDLDownloadSize += optLong;
                                            j10 = Math.max(j10, optLong2);
                                        }
                                    }
                                }
                            }
                            VideoEventLoggerV2.this.mMDLDownloadTime = j10;
                            TTVideoEngineLog.d(VideoEventLoggerV2.TAG, "update multi speed size:" + VideoEventLoggerV2.this.mMDLDownloadSize + ", time:" + VideoEventLoggerV2.this.mMDLDownloadTime);
                        } catch (Exception e10) {
                            TTVideoEngineLog.e(VideoEventLoggerV2.TAG, "update networkspeed error " + e10.toString());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        });
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateNetworkSpeedPredictorSampleMutiValue(SpeedPredictorResultCollection speedPredictorResultCollection, SpeedPredictorResultCollection speedPredictorResultCollection2, long j10) {
        VideoEventSampleRecord videoEventSampleRecord;
        if (speedPredictorResultCollection != null && speedPredictorResultCollection2 != null && (videoEventSampleRecord = this.mEventSample) != null) {
            videoEventSampleRecord.updateNetworkMutiSpeed(speedPredictorResultCollection, speedPredictorResultCollection2, j10);
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateNetworkSpeedPredictorSampleValue(String str, String str2, float f10, float f11, float f12, float f13, long j10, Map<String, String> map, Map<String, String> map2) {
        VideoEventSampleRecord videoEventSampleRecord = this.mEventSample;
        if (videoEventSampleRecord == null) {
            return;
        }
        videoEventSampleRecord.updateNetworkSpeed(str, str2, f10, f11, f12, f13, j10, map, map2);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateVideoInfo(VideoModel videoModel) {
        updateVideoInfo((IVideoModel) videoModel);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void useAsyncInit(int i10, int i11) {
        this.mAsyncInit = i10;
        this.mAsyncCodecId = i11;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void useCodecPool(int i10) {
        this.mUseCodecPool = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void useHardwareDecode(int i10) {
        this.mEventBase.useVideoHW(i10);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void useTextureRender(int i10) {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.textureRender = i10;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void validateVideoMetaInfoFail(Error error) {
        this.mEvent.hijack = 1;
        this.mErrorInfo.add(error);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void watchFinish() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay == null) {
            return;
        }
        videoEventOnePlay.finish = 1;
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void fetchInfoComplete(IVideoModel iVideoModel, Error error) {
        if (iVideoModel != null) {
            updateVideoInfo(iVideoModel);
            VideoEventOnePlay videoEventOnePlay = this.mEvent;
            if (videoEventOnePlay.f37082vt <= 0) {
                videoEventOnePlay.f37073at = System.currentTimeMillis();
            }
            this.mFetchComplete = true;
            int i10 = this.mEvent.dnsModule;
            if (i10 == 1) {
                _recordExitReason(VideoEventOnePlay.EXIT_CODE_BEFORE_DNS_PARSED, true);
            } else if (i10 == 0) {
                _recordExitReason(-1004, true);
            }
        }
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void setFeed(VideoModel videoModel) {
        setFeed((IVideoModel) videoModel);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void updateVideoInfo(IVideoModel iVideoModel) {
        if (iVideoModel == null) {
            return;
        }
        this.mEventBase.setVideoInfo(iVideoModel);
        this.mVideoModel = iVideoModel;
        this.mLabelUsage.updateByVideoModel(iVideoModel);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    @Deprecated
    public void switchResolution() {
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        if (videoEventOnePlay != null) {
            videoEventOnePlay.lastResolutionStartT = System.currentTimeMillis();
        }
        _recordExitReason(VideoEventOnePlay.EXIT_CODE_AFTER_SWITCH, true);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void accuBuffingTime(long j10) {
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void didSentEvent(int i10) {
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void movieFinish(int i10, String str) {
        boolean z10;
        boolean z11 = false;
        if (this.mState == 4) {
            this.mEventOneOpera.endSeek("error", 0);
            z10 = false;
        } else {
            z10 = true;
        }
        if (this.mState == 3) {
            this.mEventOneEvent.movieStallEnd("error");
            this.mEvent.lastBufferEndT = System.currentTimeMillis();
        } else {
            z11 = z10;
        }
        this.mState = 5;
        if (z11) {
            this.mEventBase.movieFinish();
        }
        VideoEventOnePlay videoEventOnePlay = this.mEvent;
        videoEventOnePlay.vsc = i10;
        videoEventOnePlay.vscMessage = str;
        movieFinish(5);
    }

    @Override // com.ss.ttvideoengine.log.IVideoEventLogger
    public void movieFinish(int i10) {
        EventLoggerSource eventLoggerSource;
        boolean z10;
        long currentTimeMillis = System.currentTimeMillis();
        if (i10 != 5) {
            if (this.mState == 4) {
                this.mEventOneOpera.endSeek("wait", 0);
                z10 = false;
            } else {
                z10 = true;
            }
            if (this.mState == 3) {
                this.mEventOneEvent.movieStallEnd("wait");
                this.mEvent.lastBufferEndT = currentTimeMillis;
                z10 = false;
            }
            if (z10) {
                this.mEventBase.movieFinish();
            }
        }
        if (this.mAVOutSyncing) {
            this.mEventOneOutSync.AVOutSyncEnd((int) (this.mDataSource != null ? eventLoggerSource.getLogValueInt(67) : -1L), VideoEventOneOutSync.END_TYPE_FINISH);
            this.mAVOutSyncing = false;
        }
        if (this.mLeave) {
            VideoEventOnePlay videoEventOnePlay = this.mEvent;
            if (videoEventOnePlay.f37082vt <= 0) {
                videoEventOnePlay.f37080lt = currentTimeMillis;
                _upload(i10);
            }
        }
        this.mEvent.f37078et = currentTimeMillis;
        _upload(i10);
    }
}
