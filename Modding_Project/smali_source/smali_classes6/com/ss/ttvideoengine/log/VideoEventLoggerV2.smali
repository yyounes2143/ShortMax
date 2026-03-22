.class public Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;
.super Ljava/lang/Object;
.source "VideoEventLoggerV2.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/IVideoEventLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;,
        Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;,
        Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;
    }
.end annotation


# static fields
.field private static final LOGGER_STATE_ERROR:I = 0x5

.field private static final LOGGER_STATE_IDLE:I = 0x0

.field private static final LOGGER_STATE_LOADING:I = 0x3

.field private static final LOGGER_STATE_PLAYING:I = 0x2

.field private static final LOGGER_STATE_SEEKING:I = 0x4

.field private static final LOGGER_STATE_STARTING:I = 0x1

.field public static final SETTINGS_CALCULATE_INTERVAL:Ljava/lang/String; = "calculate_interval"

.field public static final SETTINGS_LINK_FUNCTION_OFFSET:Ljava/lang/String; = "link_function_offset"

.field public static final SETTINGS_NET_QUALITY:Ljava/lang/String; = "net_quality"

.field private static final TAG:Ljava/lang/String; = "VideoEventLoggerV2"

.field public static sEnableContentDataReport:Z = false

.field private static sFeatures:Ljava/util/Map; = null

.field public static sIsColdStart:I = 0x1


# instance fields
.field private mAVBadInterlacedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAVOutSyncing:Z

.field private mAccumVDS:J

.field private mAccumVPS:J

.field private mApiVer:I

.field private mAsyncCodecId:I

.field private mAsyncInit:I

.field private mAudioBitrate:J

.field private mAudioInitURL:Ljava/lang/String;

.field private mAudioStreamDisabled:Z

.field private mAuth:Ljava/lang/String;

.field private mBitrate:J

.field private mBitrateCalculationTask:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

.field private mBlockBeginT:J

.field public mBreakCount:I

.field private mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

.field private mBufferDataSeconds:I

.field public mBufferTimeout:I

.field private mCastObject:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompanyID:Ljava/lang/String;

.field private mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

.field private mContext:Landroid/content/Context;

.field private mCorePoolSizeUpperLimit:I

.field private mCorepoolSizeBeforeGetEngine:I

.field private mCountOfEngineInUse:I

.field public mCurBufferCount:I

.field public mCurDecoderBufferAccuT:J

.field public mCurDecoderBufferCount:I

.field private mCurError:Lcom/ss/ttvideoengine/utils/Error;

.field public mCustomClickT:J

.field public mCustomGetVideoModelT:J

.field public mCustomInitEngineT:J

.field private mCustomP2PCDNType:I

.field public mCustomPlayEngineT:J

.field private mCustomStr:Ljava/lang/String;

.field private final mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mDecodeBufferingStartT:J

.field private mDisableAccurateStart:I

.field private mDuration:I

.field private mEnableBash:I

.field private mEnableMask:I

.field private mEnableMaskThread:I

.field private mEnableNNSR:I

.field private mEnableOptSubLoad:I

.field private mEnableSpeedReport:Z

.field private mEnableSub:I

.field private mEnableSubThread:I

.field public mEngineHash:I

.field private mErrorInfo:Ljava/util/ArrayList;

.field private mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

.field private mEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

.field private mExtraInfo:Ljava/lang/String;

.field private mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

.field private mFeatures:Ljava/util/Map;

.field private mFetchComplete:Z

.field private mFilterMonitor:Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

.field private mFirstDNSErrorInfo:Ljava/util/ArrayList;

.field private mFirstError:Lcom/ss/ttvideoengine/utils/Error;

.field private mFirstRangeSize:I

.field private mFromEnginePool:Ljava/lang/String;

.field private mHardwareConfType:I

.field private final mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

.field private final mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

.field private mHeight:I

.field private mInitialHost:Ljava/lang/String;

.field private mInitialIP:Ljava/lang/String;

.field private mInitialQuality:Ljava/lang/String;

.field private mInitialQualityType:I

.field private mInitialResolution:Ljava/lang/String;

.field private mInitialURL:Ljava/lang/String;

.field private mIsEngineReuse:Z

.field private mIsLocal:Z

.field private mIsReplay:I

.field private mIsStartPlayAutomatically:I

.field private mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

.field private mLeave:Z

.field private mLeaveReason:I

.field private mLoopCount:I

.field private mLoopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLooping:Z

.field private mMDLDownloadSize:J

.field private mMDLDownloadTime:J

.field private mMDLRetryInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMainError:Ljava/util/Map;

.field private mMaskDelayLoading:I

.field private mMaskEnableDataloader:I

.field private mMaskErrc:I

.field private mMaskFileHash:Ljava/lang/String;

.field private mMaskFileSize:J

.field private mMaskRangeOpt:I

.field private mMaskURL:Ljava/lang/String;

.field public mMediaCodecRender:I

.field private mMessage:Ljava/lang/String;

.field private mModelVersion:I

.field public mNetBufferIndex:I

.field private mNetLevelIntervalMs:I

.field private mNetLevelMaxCount:I

.field private mNetSpeedForAudio:Z

.field private mNetSpeedLevel:I

.field private mNetSpeedUpdateInterval:I

.field private mNetWorkTryCount:I

.field private mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

.field private mNetworkQualityVar:Ljava/lang/String;

.field private mNetworkSpeedPredictSamplingRate:F

.field public mNetworkTimeout:I

.field private mOttPluginVersion:I

.field private mP2PSDKVersion:Ljava/lang/String;

.field private mP2PUrl:Ljava/lang/String;

.field private mPauseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayCount:I

.field private mPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaySpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaybackParams:Ljava/util/Map;

.field private mPlayerSurfaceCode:Ljava/lang/String;

.field private mPowerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreRangeOff:I

.field private mProxyUrl:Ljava/lang/String;

.field private mRadioMode:I

.field private mRadiomodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReadCacheMode:I

.field private mReportLevel:I

.field private mResolutionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryFetchErrorInfo:Ljava/util/ArrayList;

.field private mRetryStartT:J

.field private mRetryStrategy:I

.field private mSeekBeginT:J

.field private mSeekCount:I

.field private mSetSurfaceBeginT:J

.field private mSetSurfaceTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetSurfaceType:Ljava/lang/String;

.field private mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

.field private mStartTime:I

.field private mState:I

.field private mSubError:Ljava/lang/String;

.field private mSubIdsCount:I

.field private mSubLanSwitchCount:I

.field private mSubReqURL:Ljava/lang/String;

.field private mSurfaceCode:Ljava/lang/String;

.field private mSurfaceSetTime:J

.field private mSwitchResolutionCount:I

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTrEffectErrorCode:Ljava/lang/String;

.field private mTrEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrPerEffectAverageTime:Ljava/lang/String;

.field private mUploadLogEnabled:Z

.field private mUrlMatchCondition:Z

.field private mUseCodecPool:I

.field private mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

.field private mVUArray:Ljava/util/ArrayList;

.field private mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

.field private mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

.field private mVideoStreamDisabled:Z

.field private mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

.field private mVrDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVrFrameRate:F

.field private mVrHeadMovementDelay:J

.field private mVrScreenRefreshRate:I

.field private mWidth:I

.field private prepare_before_play_t:J

.field private ps_t:J

.field private setds_t:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sFeatures:Ljava/util/Map;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sEnableContentDataReport:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/EventLoggerSource;Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsLocal:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFetchComplete:Z

    .line 8
    .line 9
    const/high16 v1, -0x80000000

    .line 10
    .line 11
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    .line 12
    .line 13
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUseCodecPool:I

    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialResolution:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQuality:Ljava/lang/String;

    .line 20
    .line 21
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQualityType:I

    .line 22
    .line 23
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mProxyUrl:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    .line 26
    .line 27
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsStartPlayAutomatically:I

    .line 28
    .line 29
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferDataSeconds:I

    .line 30
    .line 31
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopCount:I

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLooping:Z

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaybackParams:Ljava/util/Map;

    .line 37
    .line 38
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomP2PCDNType:I

    .line 39
    .line 40
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mP2PUrl:Ljava/lang/String;

    .line 41
    .line 42
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mP2PSDKVersion:Ljava/lang/String;

    .line 43
    .line 44
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDuration:I

    .line 45
    .line 46
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mStartTime:I

    .line 47
    .line 48
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mWidth:I

    .line 49
    .line 50
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeight:I

    .line 51
    .line 52
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDisableAccurateStart:I

    .line 53
    .line 54
    const-wide/32 v4, -0x80000000

    .line 55
    .line 56
    .line 57
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceSetTime:J

    .line 58
    .line 59
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceCode:Ljava/lang/String;

    .line 60
    .line 61
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetWorkTryCount:I

    .line 62
    .line 63
    const-wide/16 v6, 0x0

    .line 64
    .line 65
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDecodeBufferingStartT:J

    .line 66
    .line 67
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncCodecId:I

    .line 68
    .line 69
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableBash:I

    .line 70
    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayCount:I

    .line 72
    .line 73
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 74
    .line 75
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 76
    .line 77
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    .line 78
    .line 79
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetBufferIndex:I

    .line 80
    .line 81
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 82
    .line 83
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mApiVer:I

    .line 84
    .line 85
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    .line 86
    .line 87
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    .line 88
    .line 89
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 90
    .line 91
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 92
    .line 93
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 94
    .line 95
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 96
    .line 97
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 98
    .line 99
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mExtraInfo:Ljava/lang/String;

    .line 100
    .line 101
    const/16 v8, -0x3ea

    .line 102
    .line 103
    iput v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 104
    .line 105
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrate:J

    .line 106
    .line 107
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioBitrate:J

    .line 108
    .line 109
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstRangeSize:I

    .line 110
    .line 111
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedLevel:I

    .line 112
    .line 113
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mModelVersion:I

    .line 114
    .line 115
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMediaCodecRender:I

    .line 116
    .line 117
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferTimeout:I

    .line 118
    .line 119
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkTimeout:I

    .line 120
    .line 121
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->prepare_before_play_t:J

    .line 122
    .line 123
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    .line 124
    .line 125
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 126
    .line 127
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadioMode:I

    .line 128
    .line 129
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoStreamDisabled:Z

    .line 130
    .line 131
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioStreamDisabled:Z

    .line 132
    .line 133
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 134
    .line 135
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableNNSR:I

    .line 136
    .line 137
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReadCacheMode:I

    .line 138
    .line 139
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPreRangeOff:I

    .line 140
    .line 141
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsEngineReuse:Z

    .line 142
    .line 143
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSpeedReport:Z

    .line 144
    .line 145
    const/4 v8, 0x1

    .line 146
    iput v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkSpeedPredictSamplingRate:F

    .line 147
    .line 148
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayerSurfaceCode:Ljava/lang/String;

    .line 149
    .line 150
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 151
    .line 152
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 153
    .line 154
    const/16 v9, 0x64

    .line 155
    .line 156
    iput v9, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelMaxCount:I

    .line 157
    .line 158
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedUpdateInterval:I

    .line 159
    .line 160
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 161
    .line 162
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 163
    .line 164
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityVar:Ljava/lang/String;

    .line 165
    .line 166
    const/16 v6, 0xc

    .line 167
    .line 168
    iput v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReportLevel:I

    .line 169
    .line 170
    new-instance v6, Ljava/util/HashMap;

    .line 171
    .line 172
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatures:Ljava/util/Map;

    .line 176
    .line 177
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHardwareConfType:I

    .line 178
    .line 179
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    .line 180
    .line 181
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubIdsCount:I

    .line 182
    .line 183
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 184
    .line 185
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableOptSubLoad:I

    .line 186
    .line 187
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    .line 188
    .line 189
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 190
    .line 191
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    .line 192
    .line 193
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 198
    .line 199
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    .line 200
    .line 201
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskRangeOpt:I

    .line 202
    .line 203
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskEnableDataloader:I

    .line 204
    .line 205
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskDelayLoading:I

    .line 206
    .line 207
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileHash:Ljava/lang/String;

    .line 208
    .line 209
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileSize:J

    .line 210
    .line 211
    new-instance v6, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayList:Ljava/util/ArrayList;

    .line 217
    .line 218
    new-instance v6, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPauseList:Ljava/util/ArrayList;

    .line 224
    .line 225
    new-instance v6, Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .line 229
    .line 230
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mResolutionList:Ljava/util/ArrayList;

    .line 231
    .line 232
    new-instance v6, Ljava/util/ArrayList;

    .line 233
    .line 234
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .line 236
    .line 237
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 238
    .line 239
    new-instance v6, Ljava/util/ArrayList;

    .line 240
    .line 241
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .line 243
    .line 244
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadiomodeList:Ljava/util/ArrayList;

    .line 245
    .line 246
    new-instance v6, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopList:Ljava/util/ArrayList;

    .line 252
    .line 253
    new-instance v6, Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .line 257
    .line 258
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    .line 259
    .line 260
    new-instance v6, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPowerList:Ljava/util/ArrayList;

    .line 266
    .line 267
    new-instance v6, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .line 271
    .line 272
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mChargingList:Ljava/util/ArrayList;

    .line 273
    .line 274
    new-instance v6, Ljava/util/ArrayList;

    .line 275
    .line 276
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .line 278
    .line 279
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVBadInterlacedList:Ljava/util/ArrayList;

    .line 280
    .line 281
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 282
    .line 283
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 284
    .line 285
    const/4 v6, -0x1

    .line 286
    iput v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 287
    .line 288
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 289
    .line 290
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomClickT:J

    .line 291
    .line 292
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomGetVideoModelT:J

    .line 293
    .line 294
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomInitEngineT:J

    .line 295
    .line 296
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomPlayEngineT:J

    .line 297
    .line 298
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEngineHash:I

    .line 299
    .line 300
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 301
    .line 302
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 303
    .line 304
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 305
    .line 306
    const-string v6, "default"

    .line 307
    .line 308
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFromEnginePool:Ljava/lang/String;

    .line 309
    .line 310
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorePoolSizeUpperLimit:I

    .line 311
    .line 312
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorepoolSizeBeforeGetEngine:I

    .line 313
    .line 314
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCountOfEngineInUse:I

    .line 315
    .line 316
    new-instance v6, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrDistanceList:Ljava/util/ArrayList;

    .line 322
    .line 323
    iput v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrFrameRate:F

    .line 324
    .line 325
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrScreenRefreshRate:I

    .line 326
    .line 327
    iput-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrHeadMovementDelay:J

    .line 328
    .line 329
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 330
    .line 331
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mOttPluginVersion:I

    .line 332
    .line 333
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCompanyID:Ljava/lang/String;

    .line 334
    .line 335
    new-instance v1, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .line 339
    .line 340
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectList:Ljava/util/ArrayList;

    .line 341
    .line 342
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrPerEffectAverageTime:Ljava/lang/String;

    .line 343
    .line 344
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectErrorCode:Ljava/lang/String;

    .line 345
    .line 346
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 347
    .line 348
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUrlMatchCondition:Z

    .line 349
    .line 350
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 351
    .line 352
    new-instance v1, Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 353
    .line 354
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUploadLogEnabled:Z

    .line 355
    .line 356
    invoke-direct {v1, p2, v2, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;-><init>(Lcom/ss/ttvideoengine/log/EventLoggerSource;ZLandroid/content/Context;)V

    .line 357
    .line 358
    .line 359
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 360
    .line 361
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 362
    .line 363
    invoke-direct {p2}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;-><init>()V

    .line 364
    .line 365
    .line 366
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 367
    .line 368
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 369
    .line 370
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 371
    .line 372
    invoke-direct {p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 373
    .line 374
    .line 375
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 376
    .line 377
    new-instance v1, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 378
    .line 379
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 380
    .line 381
    invoke-direct {v1, v2, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOneOpera;)V

    .line 382
    .line 383
    .line 384
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 385
    .line 386
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 387
    .line 388
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 389
    .line 390
    invoke-direct {p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 391
    .line 392
    .line 393
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 394
    .line 395
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 396
    .line 397
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 398
    .line 399
    invoke-direct {p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 400
    .line 401
    .line 402
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 403
    .line 404
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 405
    .line 406
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 407
    .line 408
    invoke-direct {p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 409
    .line 410
    .line 411
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 412
    .line 413
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 414
    .line 415
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 416
    .line 417
    invoke-direct {p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 418
    .line 419
    .line 420
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 421
    .line 422
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/EventSaver;->getInstance(Landroid/content/Context;)Lcom/ss/ttvideoengine/log/EventSaver;

    .line 423
    .line 424
    .line 425
    move-result-object p2

    .line 426
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 427
    .line 428
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 429
    .line 430
    invoke-direct {p2, p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V

    .line 431
    .line 432
    .line 433
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 434
    .line 435
    new-instance p2, Ljava/util/ArrayList;

    .line 436
    .line 437
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .line 439
    .line 440
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    .line 441
    .line 442
    new-instance p2, Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .line 446
    .line 447
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLRetryInfo:Ljava/util/ArrayList;

    .line 448
    .line 449
    new-instance p2, Ljava/util/ArrayList;

    .line 450
    .line 451
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .line 453
    .line 454
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    .line 455
    .line 456
    new-instance p2, Ljava/util/ArrayList;

    .line 457
    .line 458
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    .line 462
    .line 463
    new-instance p2, Ljava/util/ArrayList;

    .line 464
    .line 465
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 466
    .line 467
    .line 468
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    .line 469
    .line 470
    const/4 p2, 0x1

    .line 471
    iput-boolean p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 472
    .line 473
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFetchComplete:Z

    .line 474
    .line 475
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 476
    .line 477
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 478
    .line 479
    new-instance p1, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 480
    .line 481
    invoke-direct {p1, p3}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;-><init>(Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;)V

    .line 482
    .line 483
    .line 484
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 485
    .line 486
    new-instance p1, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 487
    .line 488
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;-><init>()V

    .line 489
    .line 490
    .line 491
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 492
    .line 493
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    .line 494
    .line 495
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;-><init>()V

    .line 496
    .line 497
    .line 498
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFilterMonitor:Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    .line 499
    .line 500
    new-instance p1, Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 501
    .line 502
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 503
    .line 504
    invoke-direct {p1, p2}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;-><init>(Landroid/content/Context;)V

    .line 505
    .line 506
    .line 507
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 508
    .line 509
    new-instance p1, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 510
    .line 511
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;-><init>()V

    .line 512
    .line 513
    .line 514
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 515
    .line 516
    new-instance p1, Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .line 520
    .line 521
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 522
    .line 523
    new-instance p1, Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 524
    .line 525
    invoke-direct {p1}, Lcom/ss/ttvideoengine/portrait/LabelUsage;-><init>()V

    .line 526
    .line 527
    .line 528
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 529
    .line 530
    new-instance p1, Lcom/ss/ttvideoengine/log/VegaCollector;

    .line 531
    .line 532
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/VegaCollector;-><init>()V

    .line 533
    .line 534
    .line 535
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

    .line 536
    .line 537
    new-instance p1, Lcom/ss/ttvideoengine/log/VRTracker;

    .line 538
    .line 539
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/VRTracker;-><init>()V

    .line 540
    .line 541
    .line 542
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 543
    .line 544
    return-void
.end method

.method private _accumulateVPS()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->bytesInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "vps"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    const-string/jumbo v3, "vds"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Long;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTHelper;->safelyUnbox(Ljava/lang/Long;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 38
    .line 39
    add-long/2addr v5, v1

    .line 40
    iput-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 41
    .line 42
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 43
    .line 44
    add-long/2addr v5, v3

    .line 45
    iput-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "_accumulateVPS accumVPS:"

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 58
    .line 59
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, ", accumVDS:"

    .line 63
    .line 64
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 68
    .line 69
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, ", vps:"

    .line 73
    .line 74
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", vds:"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "VideoEventLoggerV2"

    .line 93
    .line 94
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_0
    return-void
.end method

.method private _checkFirstFrameTimes()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 15
    .line 16
    const/4 v2, 0x7

    .line 17
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 24
    .line 25
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 26
    .line 27
    cmp-long v0, v0, v3

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 40
    .line 41
    cmp-long v2, v0, v5

    .line 42
    .line 43
    if-lez v2, :cond_1

    .line 44
    .line 45
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 46
    .line 47
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 50
    .line 51
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 52
    .line 53
    cmp-long v0, v0, v3

    .line 54
    .line 55
    if-gtz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 58
    .line 59
    const/16 v1, 0xb

    .line 60
    .line 61
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 66
    .line 67
    cmp-long v2, v0, v5

    .line 68
    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 72
    .line 73
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 76
    .line 77
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 78
    .line 79
    cmp-long v1, v1, v3

    .line 80
    .line 81
    if-gtz v1, :cond_3

    .line 82
    .line 83
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 84
    .line 85
    const/16 v2, 0x33

    .line 86
    .line 87
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v1

    .line 91
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 94
    .line 95
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 96
    .line 97
    cmp-long v0, v0, v3

    .line 98
    .line 99
    if-gtz v0, :cond_4

    .line 100
    .line 101
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 102
    .line 103
    const/16 v1, 0x34

    .line 104
    .line 105
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 110
    .line 111
    cmp-long v2, v0, v5

    .line 112
    .line 113
    if-lez v2, :cond_4

    .line 114
    .line 115
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 116
    .line 117
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 118
    .line 119
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 120
    .line 121
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 122
    .line 123
    cmp-long v0, v0, v3

    .line 124
    .line 125
    if-gtz v0, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 128
    .line 129
    const/16 v1, 0x35

    .line 130
    .line 131
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 136
    .line 137
    cmp-long v2, v0, v5

    .line 138
    .line 139
    if-lez v2, :cond_5

    .line 140
    .line 141
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 142
    .line 143
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 144
    .line 145
    :cond_5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 146
    .line 147
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 148
    .line 149
    cmp-long v1, v1, v3

    .line 150
    .line 151
    if-gtz v1, :cond_6

    .line 152
    .line 153
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 154
    .line 155
    const/16 v2, 0xc

    .line 156
    .line 157
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 158
    .line 159
    .line 160
    move-result-wide v1

    .line 161
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 162
    .line 163
    :cond_6
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 164
    .line 165
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 166
    .line 167
    cmp-long v1, v1, v3

    .line 168
    .line 169
    if-gtz v1, :cond_7

    .line 170
    .line 171
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 172
    .line 173
    const/16 v2, 0xd

    .line 174
    .line 175
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 180
    .line 181
    :cond_7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 182
    .line 183
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 184
    .line 185
    cmp-long v1, v1, v3

    .line 186
    .line 187
    if-gtz v1, :cond_8

    .line 188
    .line 189
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 190
    .line 191
    const/16 v2, 0xe

    .line 192
    .line 193
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 198
    .line 199
    :cond_8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 200
    .line 201
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 202
    .line 203
    cmp-long v1, v1, v3

    .line 204
    .line 205
    if-gtz v1, :cond_9

    .line 206
    .line 207
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 208
    .line 209
    const/16 v2, 0xf

    .line 210
    .line 211
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 216
    .line 217
    :cond_9
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 218
    .line 219
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 220
    .line 221
    cmp-long v1, v1, v3

    .line 222
    .line 223
    if-gtz v1, :cond_a

    .line 224
    .line 225
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 226
    .line 227
    const/16 v2, 0x11

    .line 228
    .line 229
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 230
    .line 231
    .line 232
    move-result-wide v1

    .line 233
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 234
    .line 235
    :cond_a
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 236
    .line 237
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 238
    .line 239
    cmp-long v1, v1, v3

    .line 240
    .line 241
    if-gtz v1, :cond_b

    .line 242
    .line 243
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 244
    .line 245
    const/16 v2, 0x10

    .line 246
    .line 247
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 248
    .line 249
    .line 250
    move-result-wide v1

    .line 251
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 252
    .line 253
    :cond_b
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 254
    .line 255
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 256
    .line 257
    cmp-long v1, v1, v3

    .line 258
    .line 259
    if-gtz v1, :cond_c

    .line 260
    .line 261
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 262
    .line 263
    const/16 v2, 0x13

    .line 264
    .line 265
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 266
    .line 267
    .line 268
    move-result-wide v1

    .line 269
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 270
    .line 271
    :cond_c
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 272
    .line 273
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 274
    .line 275
    cmp-long v1, v1, v3

    .line 276
    .line 277
    if-gtz v1, :cond_d

    .line 278
    .line 279
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 280
    .line 281
    const/16 v2, 0x12

    .line 282
    .line 283
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 288
    .line 289
    :cond_d
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 290
    .line 291
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playPreparedT:J

    .line 292
    .line 293
    cmp-long v1, v1, v3

    .line 294
    .line 295
    if-gtz v1, :cond_e

    .line 296
    .line 297
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 298
    .line 299
    const/16 v2, 0x26

    .line 300
    .line 301
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 302
    .line 303
    .line 304
    move-result-wide v1

    .line 305
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playPreparedT:J

    .line 306
    .line 307
    :cond_e
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 308
    .line 309
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playStartedT:J

    .line 310
    .line 311
    cmp-long v1, v1, v3

    .line 312
    .line 313
    if-gtz v1, :cond_f

    .line 314
    .line 315
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 316
    .line 317
    const/16 v2, 0x27

    .line 318
    .line 319
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 320
    .line 321
    .line 322
    move-result-wide v1

    .line 323
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playStartedT:J

    .line 324
    .line 325
    :cond_f
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 326
    .line 327
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_http_open_t:J

    .line 328
    .line 329
    cmp-long v1, v1, v3

    .line 330
    .line 331
    if-gtz v1, :cond_10

    .line 332
    .line 333
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 334
    .line 335
    const/16 v2, 0x73

    .line 336
    .line 337
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 338
    .line 339
    .line 340
    move-result-wide v1

    .line 341
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_http_open_t:J

    .line 342
    .line 343
    :cond_10
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 344
    .line 345
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_http_open_t:J

    .line 346
    .line 347
    cmp-long v1, v1, v3

    .line 348
    .line 349
    if-gtz v1, :cond_11

    .line 350
    .line 351
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 352
    .line 353
    const/16 v2, 0x74

    .line 354
    .line 355
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 356
    .line 357
    .line 358
    move-result-wide v1

    .line 359
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_http_open_t:J

    .line 360
    .line 361
    :cond_11
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 362
    .line 363
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_tran_open_t:J

    .line 364
    .line 365
    cmp-long v1, v1, v3

    .line 366
    .line 367
    if-gtz v1, :cond_12

    .line 368
    .line 369
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 370
    .line 371
    const/16 v2, 0x75

    .line 372
    .line 373
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 374
    .line 375
    .line 376
    move-result-wide v1

    .line 377
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_tran_open_t:J

    .line 378
    .line 379
    :cond_12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 380
    .line 381
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_tran_open_t:J

    .line 382
    .line 383
    cmp-long v1, v1, v3

    .line 384
    .line 385
    if-gtz v1, :cond_13

    .line 386
    .line 387
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 388
    .line 389
    const/16 v2, 0x76

    .line 390
    .line 391
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 392
    .line 393
    .line 394
    move-result-wide v1

    .line 395
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_tran_open_t:J

    .line 396
    .line 397
    :cond_13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 398
    .line 399
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_sock_create_t:J

    .line 400
    .line 401
    cmp-long v1, v1, v3

    .line 402
    .line 403
    if-gtz v1, :cond_14

    .line 404
    .line 405
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 406
    .line 407
    const/16 v2, 0x77

    .line 408
    .line 409
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 410
    .line 411
    .line 412
    move-result-wide v1

    .line 413
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_sock_create_t:J

    .line 414
    .line 415
    :cond_14
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 416
    .line 417
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_sock_create_t:J

    .line 418
    .line 419
    cmp-long v1, v1, v3

    .line 420
    .line 421
    if-gtz v1, :cond_15

    .line 422
    .line 423
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 424
    .line 425
    const/16 v2, 0x78

    .line 426
    .line 427
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 428
    .line 429
    .line 430
    move-result-wide v1

    .line 431
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_sock_create_t:J

    .line 432
    .line 433
    :cond_15
    return-void
.end method

.method private _clear()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLRetryInfo:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->reset()V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 36
    .line 37
    const-wide/32 v1, -0x80000000

    .line 38
    .line 39
    .line 40
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 45
    .line 46
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 47
    .line 48
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrate:J

    .line 49
    .line 50
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioBitrate:J

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    iput-boolean v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 54
    .line 55
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    .line 56
    .line 57
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetBufferIndex:I

    .line 58
    .line 59
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 60
    .line 61
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 62
    .line 63
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 64
    .line 65
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopCount:I

    .line 66
    .line 67
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLooping:Z

    .line 68
    .line 69
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    .line 70
    .line 71
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    .line 72
    .line 73
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 74
    .line 75
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->prepare_before_play_t:J

    .line 76
    .line 77
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 78
    .line 79
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    .line 80
    .line 81
    const/high16 v3, -0x80000000

    .line 82
    .line 83
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadioMode:I

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioStreamDisabled:Z

    .line 86
    .line 87
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoStreamDisabled:Z

    .line 88
    .line 89
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 90
    .line 91
    const/4 v4, 0x0

    .line 92
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceCode:Ljava/lang/String;

    .line 93
    .line 94
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceSetTime:J

    .line 95
    .line 96
    new-instance v5, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayList:Ljava/util/ArrayList;

    .line 102
    .line 103
    new-instance v5, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPauseList:Ljava/util/ArrayList;

    .line 109
    .line 110
    new-instance v5, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mResolutionList:Ljava/util/ArrayList;

    .line 116
    .line 117
    new-instance v5, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 123
    .line 124
    new-instance v5, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadiomodeList:Ljava/util/ArrayList;

    .line 130
    .line 131
    new-instance v5, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopList:Ljava/util/ArrayList;

    .line 137
    .line 138
    new-instance v5, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    .line 144
    .line 145
    new-instance v5, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPowerList:Ljava/util/ArrayList;

    .line 151
    .line 152
    new-instance v5, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mChargingList:Ljava/util/ArrayList;

    .line 158
    .line 159
    new-instance v5, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .line 163
    .line 164
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVBadInterlacedList:Ljava/util/ArrayList;

    .line 165
    .line 166
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 167
    .line 168
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 169
    .line 170
    const/4 v5, -0x1

    .line 171
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 172
    .line 173
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomClickT:J

    .line 174
    .line 175
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomGetVideoModelT:J

    .line 176
    .line 177
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomInitEngineT:J

    .line 178
    .line 179
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomPlayEngineT:J

    .line 180
    .line 181
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 182
    .line 183
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 184
    .line 185
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableOptSubLoad:I

    .line 186
    .line 187
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    .line 188
    .line 189
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 190
    .line 191
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    .line 192
    .line 193
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    .line 194
    .line 195
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 198
    .line 199
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubIdsCount:I

    .line 200
    .line 201
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    .line 202
    .line 203
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    .line 204
    .line 205
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 206
    .line 207
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2202(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 208
    .line 209
    .line 210
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 211
    .line 212
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 213
    .line 214
    .line 215
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 216
    .line 217
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 218
    .line 219
    .line 220
    new-instance v5, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 221
    .line 222
    invoke-direct {v5}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 226
    .line 227
    new-instance v5, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    .line 228
    .line 229
    invoke-direct {v5}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;-><init>()V

    .line 230
    .line 231
    .line 232
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFilterMonitor:Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    .line 233
    .line 234
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 235
    .line 236
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->stop()V

    .line 237
    .line 238
    .line 239
    new-instance v5, Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 240
    .line 241
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 242
    .line 243
    invoke-direct {v5, v6}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;-><init>(Landroid/content/Context;)V

    .line 244
    .line 245
    .line 246
    iput-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 247
    .line 248
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->reset()V

    .line 251
    .line 252
    .line 253
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatures:Ljava/util/Map;

    .line 254
    .line 255
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 256
    .line 257
    .line 258
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 259
    .line 260
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->reset()V

    .line 261
    .line 262
    .line 263
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 264
    .line 265
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 266
    .line 267
    .line 268
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 269
    .line 270
    invoke-static {v5, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 271
    .line 272
    .line 273
    const-string v0, "after clear V2"

    .line 274
    .line 275
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFromEnginePool:Ljava/lang/String;

    .line 276
    .line 277
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorePoolSizeUpperLimit:I

    .line 278
    .line 279
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorepoolSizeBeforeGetEngine:I

    .line 280
    .line 281
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCountOfEngineInUse:I

    .line 282
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    .line 284
    .line 285
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .line 287
    .line 288
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrDistanceList:Ljava/util/ArrayList;

    .line 289
    .line 290
    const/4 v0, 0x1

    .line 291
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrFrameRate:F

    .line 292
    .line 293
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrScreenRefreshRate:I

    .line 294
    .line 295
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrHeadMovementDelay:J

    .line 296
    .line 297
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 298
    .line 299
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 300
    .line 301
    new-instance v0, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 307
    .line 308
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayerSurfaceCode:Ljava/lang/String;

    .line 309
    .line 310
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileSize:J

    .line 311
    .line 312
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskDelayLoading:I

    .line 313
    .line 314
    const-string v0, ""

    .line 315
    .line 316
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileHash:Ljava/lang/String;

    .line 317
    .line 318
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskRangeOpt:I

    .line 319
    .line 320
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskEnableDataloader:I

    .line 321
    .line 322
    new-instance v1, Ljava/util/ArrayList;

    .line 323
    .line 324
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .line 326
    .line 327
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectList:Ljava/util/ArrayList;

    .line 328
    .line 329
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrPerEffectAverageTime:Ljava/lang/String;

    .line 330
    .line 331
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectErrorCode:Ljava/lang/String;

    .line 332
    .line 333
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mOttPluginVersion:I

    .line 334
    .line 335
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCompanyID:Ljava/lang/String;

    .line 336
    .line 337
    new-instance v0, Lcom/ss/ttvideoengine/log/VRTracker;

    .line 338
    .line 339
    invoke-direct {v0}, Lcom/ss/ttvideoengine/log/VRTracker;-><init>()V

    .line 340
    .line 341
    .line 342
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 343
    .line 344
    return-void
.end method

.method private _getCastInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const-string v1, "is_cast_live"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoIsCastLive:I

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 30
    .line 31
    const-string v1, "cast_source_app_id"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSourceAppId:I

    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 56
    .line 57
    const-string v1, "cast_scene_id"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSceneId:I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 82
    .line 83
    const-string v1, "cast_protocal"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 92
    .line 93
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/String;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoProtocal:Ljava/lang/String;

    .line 102
    .line 103
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v1, "get CastInfo, castLive:"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 114
    .line 115
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoIsCastLive:I

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v1, ", sourceAppId:"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 126
    .line 127
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSourceAppId:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", sceneId:"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 138
    .line 139
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSceneId:I

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ", protocal:"

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoProtocal:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "VideoEventLoggerV2"

    .line 161
    .line 162
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_4
    return-void
.end method

.method private _getFirstFrameSplitInfo()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 8
    .line 9
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "format_open_input"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 21
    .line 22
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 23
    .line 24
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string/jumbo v2, "tran_connect"

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 35
    .line 36
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->httpResponseT:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "http_response"

    .line 43
    .line 44
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 48
    .line 49
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 50
    .line 51
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "receive_first_video_frame"

    .line 56
    .line 57
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 61
    .line 62
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 63
    .line 64
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "decode_first_video_frame"

    .line 69
    .line 70
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 74
    .line 75
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 76
    .line 77
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "render_first_video_frame"

    .line 82
    .line 83
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 87
    .line 88
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_prepared_time:J

    .line 89
    .line 90
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "prepared"

    .line 95
    .line 96
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    return-object v0
.end method

.method private _getMaskEvents()V
    .locals 13

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 2
    .line 3
    const-string v1, "mask_file_hash"

    .line 4
    .line 5
    const-string v2, "mask_url"

    .line 6
    .line 7
    const-string v3, "mask_errc"

    .line 8
    .line 9
    const-string v4, "mask_file_size"

    .line 10
    .line 11
    const-string v5, "mask_delay_loading"

    .line 12
    .line 13
    const-string v6, "mask_enable_mdl"

    .line 14
    .line 15
    const-string v7, "mask_range_opt"

    .line 16
    .line 17
    const-string v8, "mask_thread_enable"

    .line 18
    .line 19
    const-string v9, "mask_enable"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    const/16 v10, 0x9

    .line 30
    .line 31
    invoke-direct {v0, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iget v10, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 35
    .line 36
    invoke-static {v0, v9, v10}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    iget v9, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    .line 40
    .line 41
    invoke-static {v0, v8, v9}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    iget v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskRangeOpt:I

    .line 45
    .line 46
    invoke-static {v0, v7, v8}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskEnableDataloader:I

    .line 50
    .line 51
    invoke-static {v0, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    iget v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskDelayLoading:I

    .line 55
    .line 56
    invoke-static {v0, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileSize:J

    .line 60
    .line 61
    invoke-static {v0, v4, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    iget v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    .line 65
    .line 66
    if-gez v4, :cond_0

    .line 67
    .line 68
    invoke-static {v0, v3, v4}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v0, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileHash:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 82
    .line 83
    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->maskEvents:Ljava/util/Map;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 87
    .line 88
    const/16 v10, 0xb

    .line 89
    .line 90
    invoke-direct {v0, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iget-object v10, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 94
    .line 95
    iget-wide v10, v10, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    .line 96
    .line 97
    const-string v12, "mask_open_ts"

    .line 98
    .line 99
    invoke-static {v0, v12, v10, v11}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 100
    .line 101
    .line 102
    iget-object v10, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 103
    .line 104
    iget-wide v10, v10, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    .line 105
    .line 106
    const-string v12, "mask_opened_ts"

    .line 107
    .line 108
    invoke-static {v0, v12, v10, v11}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 109
    .line 110
    .line 111
    iget v10, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    .line 112
    .line 113
    invoke-static {v0, v3, v10}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 114
    .line 115
    .line 116
    iget v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 117
    .line 118
    invoke-static {v0, v9, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 119
    .line 120
    .line 121
    iget v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    .line 122
    .line 123
    invoke-static {v0, v8, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v0, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskRangeOpt:I

    .line 132
    .line 133
    invoke-static {v0, v7, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskEnableDataloader:I

    .line 137
    .line 138
    invoke-static {v0, v6, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 139
    .line 140
    .line 141
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskDelayLoading:I

    .line 142
    .line 143
    invoke-static {v0, v5, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileHash:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileSize:J

    .line 152
    .line 153
    invoke-static {v0, v4, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 154
    .line 155
    .line 156
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 157
    .line 158
    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->maskEvents:Ljava/util/Map;

    .line 159
    .line 160
    :goto_0
    return-void
.end method

.method private _getSubEvents()V
    .locals 9

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 2
    .line 3
    const-string/jumbo v1, "sub_req_url"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "sub_error"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "sub_thread_enable"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "sub_enable_opt_load"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v5, "sub_enable"

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 21
    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    const/4 v6, 0x5

    .line 27
    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iget v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 31
    .line 32
    invoke-static {v0, v5, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    iget v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableOptSubLoad:I

    .line 36
    .line 37
    invoke-static {v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iget v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    .line 41
    .line 42
    invoke-static {v0, v3, v4}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_0

    .line 52
    .line 53
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 64
    .line 65
    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subEvents:Ljava/util/Map;

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    .line 69
    .line 70
    const/16 v6, 0x9

    .line 71
    .line 72
    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 73
    .line 74
    .line 75
    const-string/jumbo v6, "sub_langs_c"

    .line 76
    .line 77
    .line 78
    iget v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubIdsCount:I

    .line 79
    .line 80
    invoke-static {v0, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 84
    .line 85
    iget-wide v6, v6, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    .line 86
    .line 87
    const-string/jumbo v8, "sub_req_fin_ts"

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v8, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 94
    .line 95
    iget-wide v6, v6, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    .line 96
    .line 97
    const-string/jumbo v8, "sub_load_fin_ts"

    .line 98
    .line 99
    .line 100
    invoke-static {v0, v8, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v6, "sub_switch_c"

    .line 104
    .line 105
    .line 106
    iget v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    .line 107
    .line 108
    invoke-static {v0, v6, v7}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v0, v2, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 122
    .line 123
    invoke-static {v0, v5, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableOptSubLoad:I

    .line 127
    .line 128
    invoke-static {v0, v4, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    .line 132
    .line 133
    invoke-static {v0, v3, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 137
    .line 138
    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subEvents:Ljava/util/Map;

    .line 139
    .line 140
    :goto_0
    return-void
.end method

.method private _parseUrlLogID()V
    .locals 5

    .line 1
    const-string v0, "exception:"

    .line 2
    .line 3
    const-string v1, "VideoEventLoggerV2"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialURL:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialURL:Ljava/lang/String;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mProxyUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mProxyUrl:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioInitURL:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioInitURL:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    :try_start_0
    const-string v3, "UTF-8"

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception v3

    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v3

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_3
    const-string v0, "&l="

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-lez v0, :cond_3

    .line 100
    .line 101
    add-int/lit8 v1, v0, 0x1

    .line 102
    .line 103
    const-string v3, "&"

    .line 104
    .line 105
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-lez v1, :cond_2

    .line 110
    .line 111
    add-int/lit8 v0, v0, 0x3

    .line 112
    .line 113
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_4

    .line 118
    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 119
    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    :goto_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 125
    .line 126
    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->log_id:Ljava/lang/String;

    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method private _sendEvent()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "sendEvent pt_new:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 17
    .line 18
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mEvent:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", eventBase:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "VideoEventLoggerV2"

    .line 48
    .line 49
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 53
    .line 54
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 55
    .line 56
    const-wide/16 v2, 0x0

    .line 57
    .line 58
    cmp-long v0, v0, v2

    .line 59
    .line 60
    if-gtz v0, :cond_1

    .line 61
    .line 62
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 63
    .line 64
    cmp-long v0, v0, v2

    .line 65
    .line 66
    if-gtz v0, :cond_1

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateEventData()V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 79
    .line 80
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 81
    .line 82
    iget-object v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    move-object v4, p0

    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$AsyncGetLogDataRunnable;-><init>(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;Lcom/ss/ttvideoengine/log/EventSaver;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->contentReporterStartTaskIfNeeded()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_clear()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private _setDefaultExitReason(I)V
    .locals 1

    .line 1
    const/4 v0, 0x6

    .line 2
    if-eq p1, v0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/4 v0, 0x7

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v0, 0x5

    .line 24
    if-ne p1, v0, :cond_4

    .line 25
    .line 26
    const/16 p1, -0x3ea

    .line 27
    .line 28
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    :goto_0
    const/16 p1, -0x3ec

    .line 32
    .line 33
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    :goto_1
    const/16 p1, -0x3ed

    .line 37
    .line 38
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 39
    .line 40
    :cond_4
    :goto_2
    return-void
.end method

.method private _updateFeatures()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2
    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sFeatures:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "v_hw"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mAudioHwUser:I

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "a_hw"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    if-lez v1, :cond_2

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "async_init"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_2
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUseCodecPool:I

    if-lez v1, :cond_3

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "codec_pool"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    const-string v2, "h265"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    const-string v2, "h266"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_5
    :goto_0
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkTimeout:I

    if-lez v1, :cond_6

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "network_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_6
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferTimeout:I

    if-lez v1, :cond_7

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "buffer_timeout"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_7
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_8

    .line 21
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "buffer_directly"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_8
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_9

    .line 23
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "first_buf_end_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRender:I

    if-lez v1, :cond_a

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "oes_texture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_a
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableNNSR:I

    if-lez v1, :cond_b

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "sr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_b
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_e

    .line 29
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-nez v1, :cond_c

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "volume_balance"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_c
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-ne v1, v3, :cond_d

    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "volume_balancev2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 33
    :cond_d
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "volume_balance_tob"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_e
    :goto_1
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableBash:I

    if-lez v1, :cond_f

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_f
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_enable_abr:I

    if-lez v1, :cond_10

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "abr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_10
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_11

    .line 40
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "engine_looper"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_11
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_12

    .line 42
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "auto_range"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_12
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_13

    .line 44
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hw_drop"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_13
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_14

    .line 46
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enable_https"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->checkHijack:I

    if-lez v1, :cond_15

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enable_hijack"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_15
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijackRetry:I

    if-lez v1, :cond_16

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hijack_retry"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_16
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_17

    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "fallback_api"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_17
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_18

    .line 54
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "async_pos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_18
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mReuseSocket:I

    if-lez v1, :cond_19

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "socket_reuse"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_19
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    if-lez v1, :cond_1a

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdl_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1a
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_1b

    .line 60
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "enable_loadcontrol"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1b
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x5

    const-string v5, "render_type"

    if-ne v1, v4, :cond_1d

    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    if-nez v1, :cond_1c

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 64
    :cond_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 65
    :cond_1d
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 66
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1e
    :goto_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "image_scale"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMediaCodecRender:I

    if-ltz v1, :cond_1f

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mc_render"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_1f
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-ltz v1, :cond_20

    .line 71
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "audio_render_type"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_20
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_21

    .line 73
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "skip_find_stream"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_21
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_22

    .line 75
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "async_prepare"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_22
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_23

    .line 77
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "frc_level"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_23
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_24

    .line 79
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "lazy_seek"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_24
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_25

    .line 81
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "keep_formater_alive"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_25
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isDisableShortSeek:I

    if-lez v1, :cond_26

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "dis_short_seek"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_26
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isPreferNearestSample:I

    if-lez v1, :cond_27

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "pref_near_sample"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_27
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    if-lez v1, :cond_28

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "sub_thread_enable"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_28
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    if-lez v1, :cond_29

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mask_thread_enable"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_29
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2a

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "hdr_pq"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2a
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2b

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "hdr_hlg"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2b
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_2c

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "abr_startup"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2c
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_2d

    .line 97
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "gear_strategy"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_2d
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_2e

    .line 99
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "sr_strategy"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2e
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_2f

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "thread_priority"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2f
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_30

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "smooth_clock"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_30
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_31

    .line 105
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "disable_split_voice"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_31
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2900(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-lez v1, :cond_32

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v4, "yv12"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_32
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    const/16 v4, 0x1c

    if-ne v1, v4, :cond_33

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "heaacv2"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_33
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2800(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    const-string/jumbo v4, "strategy_center"

    if-lez v1, :cond_34

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_34
    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    if-ltz v1, :cond_35

    .line 114
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "drop_limit"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_35
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_36

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_socket_reuse"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_36
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x3e9

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_37

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_preconn"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_37
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_39

    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_externdns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    const-string v4, "httpDNS_own"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    const-string v4, "httpDNS_google"

    .line 122
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    const-string v4, "customDNSInnerByteDanceHTTPDNS"

    .line 123
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 124
    :cond_38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_httpdns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_39
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_3a

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_predns"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_3a
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x69

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_3b

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_dns_refresh"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_3b
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x67

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_3c

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_dns_parallel"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_3c
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x73

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_3d

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_backip"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3d
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x65

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-lez v1, :cond_3e

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "mdl_session_reuse"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_3e
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v4, 0x64

    invoke-virtual {v1, v4}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getIntValue(I)I

    move-result v1

    if-ne v1, v2, :cond_3f

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdl_tls_ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_3f
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v1

    const/16 v2, 0x480

    invoke-virtual {v1, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getLongValue(I)J

    move-result-wide v1

    .line 138
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    move-result-object v4

    const/16 v5, 0x2332

    invoke-virtual {v4, v5}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getStringValue(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_40

    .line 139
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 140
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mdl_socket_monitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_40
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    return-void
.end method

.method private _upload(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_method:I

    .line 4
    .line 5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrateCalculationTask:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrateCalculationTask:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

    .line 23
    .line 24
    :cond_1
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSpeedReport:Z

    .line 25
    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->stopRecord()V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_sendEvent()V

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 46
    .line 47
    iput-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->reset()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->reset()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->reset()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->reset()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static synthetic a(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->lambda$saveEvent$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$3200(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateTimeConsumingEventData(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3300(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/VideoEventBase;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3400(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/VideoEventOnePlay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Lcom/ss/ttvideoengine/log/EventLoggerSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelMaxCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3700(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedForAudio:Z

    .line 2
    .line 3
    return p0
.end method

.method public static addFeatureGlobal(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sFeatures:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "addFeatureGlobal, key:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, ", value:"

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "VideoEventLoggerV2"

    .line 41
    .line 42
    invoke-static {p1, p0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private callbackNoRenderEnd(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "type"

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string/jumbo v1, "t"

    .line 26
    .line 27
    .line 28
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-interface {p1, v1, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private collectPowerStatistics()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPURate()D

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPUSpeed()D

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmpl-double v6, v0, v4

    .line 20
    .line 21
    if-lez v6, :cond_0

    .line 22
    .line 23
    cmpl-double v4, v2, v4

    .line 24
    .line 25
    if-lez v4, :cond_0

    .line 26
    .line 27
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 28
    .line 29
    iput-wide v0, v4, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateBegin:D

    .line 30
    .line 31
    iput-wide v2, v4, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedBegin:D

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 39
    .line 40
    invoke-direct {v0, v1, v2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$StatisticDataRunnable;-><init>(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getChargingState()Ljava/util/HashMap;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPowerList:Ljava/util/ArrayList;

    .line 55
    .line 56
    const-string v2, "power"

    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mChargingList:Ljava/util/ArrayList;

    .line 68
    .line 69
    const-string v2, "isCharging"

    .line 70
    .line 71
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    const-wide/16 v2, 0x2

    .line 89
    .line 90
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->isPowerSaveMode(Landroid/content/Context;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ltz v0, :cond_2

    .line 103
    .line 104
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 105
    .line 106
    iput v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeBegin:I

    .line 107
    .line 108
    :cond_2
    return-void
.end method

.method private contentReporterStartTaskIfNeeded()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sEnableContentDataReport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUrlMatchCondition:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUrlMatchCondition:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/log/ContentDataReporter;->startTask(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private enableReport(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReportLevel:I

    .line 2
    .line 3
    and-int/2addr p1, v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method private static getAppBits()I
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    return v0
.end method

.method private static getHostabiBits()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->getAppBits()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->getOsBits()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "appBits:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, " != osBits:"

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "VideoEventLoggerV2"

    .line 37
    .line 38
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, -0x1

    .line 42
    :cond_0
    return v0
.end method

.method private static getOsBits()I
    .locals 2

    .line 1
    const-string v0, "os.arch"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "64"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x40

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    const/16 v0, 0x20

    .line 21
    .line 22
    return v0
.end method

.method private getScreenHeight()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenHeight:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    sput v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenHeight:I

    .line 14
    .line 15
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenHeight:I

    .line 16
    .line 17
    return v0
.end method

.method private getScreenWidth()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenWidth:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 12
    .line 13
    sput v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenWidth:I

    .line 14
    .line 15
    :cond_0
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenWidth:I

    .line 16
    .line 17
    return v0
.end method

.method private synthetic lambda$saveEvent$0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateTimeConsumingEventData(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSaver:Lcom/ss/ttvideoengine/log/EventSaver;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/log/EventSaver;->save(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private updateEventData()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const-string v3, ""

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->bytesInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    const-string/jumbo v10, "vps"

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    .line 4
    const-string/jumbo v12, "vds"

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    .line 5
    const-string/jumbo v14, "single_vds"

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    .line 6
    const-string v7, "accu_vds"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 7
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    move-object/from16 v16, v3

    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vps:J

    .line 8
    iget-boolean v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLooping:Z

    if-eqz v2, :cond_0

    .line 9
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    add-long/2addr v2, v14

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    goto :goto_0

    .line 10
    :cond_0
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    add-long/2addr v2, v12

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    .line 11
    :goto_0
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    add-long/2addr v2, v7

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->accu_vds:J

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_sendEvent accumVDS:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", vds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", single_vds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mEvent.vds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", accu_vds:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoEventLoggerV2"

    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vps:J

    invoke-direct {v0, v2, v3}, Lcom/ss/ttvideoengine/VideoInfoCollector$myVideoCollectorAddConsumeSize;-><init>(J)V

    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    .line 14
    :goto_1
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    invoke-interface {v2, v9}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->render_type:Ljava/lang/String;

    .line 15
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    invoke-interface {v0, v4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->logMessage(Ljava/lang/String;)V

    .line 16
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    invoke-interface {v2, v5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiString:Ljava/lang/String;

    .line 17
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netClient:Ljava/lang/String;

    .line 18
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x17

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->engineState:I

    .line 19
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x22

    .line 20
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isPreferNearestSample:I

    .line 21
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x23

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->networkTimeout:I

    .line 22
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x24

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isDisableShortSeek:I

    .line 23
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->internalIP:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 24
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v0, v16

    .line 25
    :cond_2
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->internalIP:Ljava/lang/String;

    .line 26
    :cond_3
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v2, 0x21

    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 28
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loaderType:Ljava/lang/String;

    .line 29
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_checkFirstFrameTimes()V

    .line 30
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x3d

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->core_volume:I

    .line 31
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x1b

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mute:I

    .line 32
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x1e

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiverFinal:I

    .line 33
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x1f

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipBoardName:Ljava/lang/String;

    .line 34
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareName:Ljava/lang/String;

    .line 35
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x6f

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareNameNew:Ljava/lang/String;

    .line 36
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$500(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v0

    if-lez v0, :cond_6

    .line 37
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v0

    if-nez v0, :cond_5

    .line 38
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput v6, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ae_type:I

    goto :goto_2

    .line 39
    :cond_5
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    invoke-static {v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$600(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    move-result v0

    if-ne v0, v9, :cond_6

    .line 40
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput v9, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ae_type:I

    .line 41
    :cond_6
    :goto_2
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sColdStartOptimize:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sIsColdStart:I

    if-nez v0, :cond_8

    .line 42
    :cond_7
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x36

    .line 43
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoAudioGap:J

    .line 44
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x39

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->moovPos:J

    .line 45
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x3a

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mdatPos:J

    .line 46
    :cond_8
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v2, 0x64

    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorCode:I

    .line 48
    :cond_9
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    if-nez v0, :cond_a

    .line 49
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x8c

    .line 50
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    .line 51
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x8d

    .line 52
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    .line 53
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x8e

    .line 54
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->feedInBeforeDecoded:I

    .line 55
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x8f

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreloadGear:Ljava/lang/String;

    .line 56
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v2, 0x91

    .line 57
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v0

    .line 58
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x52

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueFloat(I)F

    move-result v2

    if-lez v0, :cond_a

    const/4 v3, 0x0

    cmpl-float v7, v2, v3

    if-lez v7, :cond_a

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v7

    double-to-int v0, v2

    .line 59
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netblockBufferthreshold:I

    .line 60
    :cond_a
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoCodecProfile:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_b

    .line 61
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v7, 0x3f

    .line 62
    invoke-interface {v2, v7}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoCodecProfile:I

    .line 63
    :cond_b
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    if-ne v2, v3, :cond_c

    .line 64
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x40

    .line 65
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    .line 66
    :cond_c
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x4d

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoHWErrReason:I

    .line 67
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x93

    .line 68
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaxFramesInMediaCodec:I

    .line 69
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x57

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsViewHidden:I

    .line 70
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x9c

    .line 71
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallCount:I

    .line 72
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x9d

    .line 73
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueStr(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallList:Ljava/lang/String;

    .line 74
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getChargingState()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 75
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPowerList:Ljava/util/ArrayList;

    const-string v3, "power"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mChargingList:Ljava/util/ArrayList;

    const-string v3, "isCharging"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_d
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    invoke-interface {v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->forebackSwitchList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 78
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mForebackSwitchList:Ljava/util/ArrayList;

    .line 79
    :cond_e
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    if-eqz v0, :cond_f

    .line 80
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    const/16 v3, 0x9b

    invoke-interface {v0, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueMap(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMapAppLog:Ljava/util/Map;

    .line 81
    :cond_f
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x72

    .line 82
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkConnectCount:I

    .line 83
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v2, 0x89

    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-lez v0, :cond_10

    .line 84
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskDownloadSize:J

    .line 85
    :cond_10
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v2, 0x8a

    .line 86
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-lez v0, :cond_11

    .line 87
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubtitleDownloadSize:J

    .line 88
    :cond_11
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/16 v3, 0x5e

    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenStop:I

    goto :goto_3

    :cond_12
    move-object/from16 v16, v3

    .line 89
    :goto_3
    iget v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDuration:I

    if-lez v0, :cond_13

    .line 90
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 91
    :cond_13
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_14

    .line 92
    const-string v2, "VideoEventLogger"

    .line 93
    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 94
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    const-string v3, "playersessionid"

    move-object/from16 v7, v16

    invoke-interface {v0, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLastSessionID:Ljava/lang/String;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :cond_14
    move-object/from16 v7, v16

    .line 98
    :goto_4
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    iput-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSessionID:Ljava/lang/String;

    .line 99
    iget v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    iput v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 100
    iget v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mApiVer:I

    iput v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiver:I

    .line 101
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAuth:Ljava/lang/String;

    iput-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->auth:Ljava/lang/String;

    .line 102
    iget v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mStartTime:I

    iput v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->startTime:I

    .line 103
    iget v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDisableAccurateStart:I

    iput v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->disableAccurateStart:I

    .line 104
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vu:Ljava/util/ArrayList;

    .line 105
    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mLastResolution:Ljava/lang/String;

    iput-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lf:Ljava/lang/String;

    .line 106
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->df:Ljava/lang/String;

    .line 107
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsStartPlayAutomatically:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isStartPlayAutomatically:I

    .line 108
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferDataSeconds:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bufferSeconds:I

    .line 109
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loopcount:I

    .line 110
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mWidth:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->width:I

    .line 111
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeight:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->height:I

    .line 112
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mP2PUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pUrl:Ljava/lang/String;

    .line 113
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomP2PCDNType:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->customP2PCDNType:I

    .line 114
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncInit:I

    .line 115
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncCodecId:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncCodecId:I

    .line 116
    invoke-static {}, Lcom/ss/ttvideoengine/net/DNSServerIP;->getDNSServerIP()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_server_ip:Ljava/lang/String;

    .line 117
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bc:I

    .line 118
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->br:I

    .line 119
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrate:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bitrate:J

    .line 120
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioBitrate:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBitrate:J

    .line 121
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstRangeSize:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstRangeSize:J

    .line 122
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedLevel:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netSpeedLevel:J

    .line 123
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mModelVersion:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->modelVersion:J

    .line 124
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadioMode:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadioMode:I

    .line 125
    iget-boolean v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioStreamDisabled:Z

    iput-boolean v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDisabled:Z

    .line 126
    iget-boolean v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoStreamDisabled:Z

    iput-boolean v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDisabled:Z

    .line 127
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isReplay:I

    .line 128
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMediaCodecRender:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mediaCodecRender:I

    .line 129
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUseCodecPool:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->codecPool:I

    .line 130
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceSetTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v2, v10

    if-lez v8, :cond_15

    .line 131
    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceSetTime:J

    .line 132
    :cond_15
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceCode:Ljava/lang/String;

    .line 133
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayerSurfaceCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerSurfaceCode:Ljava/lang/String;

    .line 134
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    if-eqz v2, :cond_16

    .line 135
    iget-wide v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mAccuCostTime:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bufferAccuT:J

    .line 136
    :cond_16
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decoderBufferAccuT:J

    .line 137
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seekCount:I

    .line 138
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->switchResolutionCount:I

    .line 139
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableNNSR:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEnableNNSR:I

    .line 140
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReadCacheMode:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mReadCacheMode:I

    .line 141
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPreRangeOff:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreRangeOff:I

    .line 142
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferTimeout:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBufferTimeout:I

    .line 143
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomPlayEngineT:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlayEngineT:J

    .line 144
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomInitEngineT:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomInitEngineT:J

    .line 145
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomGetVideoModelT:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomGetVideoModelT:J

    .line 146
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomClickT:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomClickT:J

    .line 147
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHardwareConfType:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHardwareConfType:I

    .line 148
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->getScreenWidth()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenWidth:I

    .line 149
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->getScreenHeight()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenHeight:I

    .line 150
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getScreenPixelDensity()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPixelDensity:I

    .line 151
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getScreenXdpi()F

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->xdpi:F

    .line 152
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/ScreenUtils;->getScreenYdpi()F

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ydpi:F

    .line 153
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getWidthFactor()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_17

    .line 154
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v3}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getWidthFactor()F

    move-result v3

    iput v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrWidthFactor:F

    .line 155
    :cond_17
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getHeightFactor()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_18

    .line 156
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getHeightFactor()F

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrHeightFactor:F

    .line 157
    :cond_18
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getProccessSuccessRate()F

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProccessSuccessRate:F

    .line 158
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getProcessorAverageCostTime()F

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProcessorCostTime:F

    .line 159
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getSrAlgorithm()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrAlgorithm:I

    .line 160
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->getEnableBmf()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrEnableBmf:I

    .line 161
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFilterMonitor:Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->getList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFilterList:Ljava/util/ArrayList;

    .line 162
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->getList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBrightList:Ljava/util/ArrayList;

    .line 163
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->getHistory()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSizeList:Ljava/util/ArrayList;

    .line 164
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 165
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEngineHash:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEngineHash:I

    .line 166
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFromEnginePool:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFromEnginePool:Ljava/lang/String;

    .line 167
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorePoolSizeUpperLimit:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorePoolSizeUpperLimit:I

    .line 168
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorepoolSizeBeforeGetEngine:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorepoolSizeBeforeGetEngine:I

    .line 169
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCountOfEngineInUse:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCountOfEngineInUse:I

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move v0, v6

    .line 171
    :goto_5
    :try_start_0
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1a

    if-lt v0, v5, :cond_19

    goto :goto_6

    .line 172
    :cond_19
    const-string v3, "fetchretry%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    iget-object v8, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1a
    :goto_6
    move v0, v6

    .line 174
    :goto_7
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1c

    if-lt v0, v5, :cond_1b

    goto :goto_8

    .line 175
    :cond_1b
    const-string v3, "ldns%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v8, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ss/ttvideoengine/utils/Error;

    .line 177
    invoke-virtual {v8}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1c
    :goto_8
    move v0, v6

    .line 178
    :goto_9
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1e

    if-lt v0, v4, :cond_1d

    .line 179
    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v9

    if-eq v0, v3, :cond_1d

    goto :goto_a

    .line 180
    :cond_1d
    const-string v3, "error%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    iget-object v8, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 182
    :cond_1e
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 183
    const-string v0, "log"

    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_1f
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 185
    const-string/jumbo v0, "tr_err_msg"

    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorMsg:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 186
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 187
    :cond_20
    :goto_c
    iput-object v7, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    .line 188
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ex:Ljava/util/Map;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mExtraInfo:Ljava/lang/String;

    .line 190
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomStr:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 191
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomStr:Ljava/lang/String;

    .line 192
    :cond_21
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialURL:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 193
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialURL:Ljava/lang/String;

    .line 194
    :cond_22
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioInitURL:Ljava/lang/String;

    if-eqz v0, :cond_23

    .line 195
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioInitUrl:Ljava/lang/String;

    .line 196
    :cond_23
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialHost:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 197
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialHost:Ljava/lang/String;

    .line 198
    :cond_24
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialIP:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 199
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialIP:Ljava/lang/String;

    .line 200
    :cond_25
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialResolution:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 201
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialResolution:Ljava/lang/String;

    .line 202
    :cond_26
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQuality:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 203
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-object v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQuality:Ljava/lang/String;

    .line 204
    :cond_27
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQualityType:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQualityType:I

    .line 205
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaybackParams:Ljava/util/Map;

    if-eqz v2, :cond_28

    .line 206
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackparams:Ljava/util/Map;

    .line 207
    :cond_28
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 208
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubReqURL:Ljava/lang/String;

    .line 209
    :cond_29
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    if-eqz v2, :cond_2a

    .line 210
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskURL:Ljava/lang/String;

    .line 211
    :cond_2a
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 212
    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubError:Ljava/lang/String;

    .line 213
    :cond_2b
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    const-wide/32 v10, -0x80000000

    if-gtz v2, :cond_2c

    .line 214
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    .line 215
    :cond_2c
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2d

    .line 216
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    .line 217
    :cond_2d
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2e

    .line 218
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    .line 219
    :cond_2e
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_2f

    .line 220
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    .line 221
    :cond_2f
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSub:I

    .line 222
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSubThread:I

    .line 223
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMask:I

    .line 224
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMaskThread:I

    .line 225
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->maskErrc:I

    .line 226
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subLanSwichCount:I

    .line 227
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubIdsCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subIdsCount:I

    .line 228
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableBash:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableBash:I

    .line 229
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDL:I

    .line 230
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetWorkTryCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netWorkTryCount:I

    .line 231
    sget v2, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sIsColdStart:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isColdStart:I

    .line 232
    sput v6, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sIsColdStart:I

    .line 233
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    iget-wide v7, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_30

    .line 234
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    .line 235
    :cond_30
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    iget-wide v7, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_31

    .line 236
    iput-wide v10, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    .line 237
    :cond_31
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->prepare_before_play_t:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_before_play_t:J

    .line 238
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->setds_t:J

    .line 239
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    .line 240
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ps_t:J

    .line 241
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-gtz v2, :cond_32

    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_32

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 243
    :cond_32
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlayList:Ljava/util/ArrayList;

    .line 244
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPauseList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPauseList:Ljava/util/ArrayList;

    .line 245
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mResolutionList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mResolutionList:Ljava/util/ArrayList;

    .line 246
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaySpeedList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 247
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadiomodeList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadiomodeList:Ljava/util/ArrayList;

    .line 248
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLoopList:Ljava/util/ArrayList;

    .line 249
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mErrorList:Ljava/util/ArrayList;

    .line 250
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mRebufList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRebufList:Ljava/util/ArrayList;

    .line 251
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mSeekList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSeekList:Ljava/util/ArrayList;

    .line 252
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->get()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHeadsetStateList:Ljava/util/ArrayList;

    .line 253
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    iget-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mList:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncList:Ljava/util/ArrayList;

    .line 254
    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAVOutSyncCount:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncCount:I

    .line 255
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLRetryInfo:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLRetryList:Ljava/util/ArrayList;

    .line 256
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPowerList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerList:Ljava/util/ArrayList;

    .line 257
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mChargingList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mChargingList:Ljava/util/ArrayList;

    .line 258
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVBadInterlacedList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVBadInterlacedList:Ljava/util/ArrayList;

    .line 259
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrDistanceList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrDistanceList:Ljava/util/ArrayList;

    .line 260
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrFrameRate:F

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrFrameRate:F

    .line 261
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrScreenRefreshRate:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrScreenRefreshRate:I

    .line 262
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrHeadMovementDelay:J

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrHeadMovementDelay:J

    .line 263
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 264
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 265
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    const-string v2, "exit"

    invoke-virtual {v0, v6, v2}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->end(ILjava/lang/String;)V

    .line 266
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->getType()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->callbackNoRenderEnd(I)V

    .line 267
    :cond_33
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->getVideoHistory()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoVideoRenderList:Ljava/util/ArrayList;

    .line 268
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->getAudioHistory()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoAudioRenderList:Ljava/util/ArrayList;

    .line 269
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectList:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectList:Ljava/util/ArrayList;

    .line 270
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrPerEffectAverageTime:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrPerEffectAverageTime:Ljava/lang/String;

    .line 271
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectErrorCode:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectErrorCode:Ljava/lang/String;

    .line 272
    iget v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mOttPluginVersion:I

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mOttPluginVersion:I

    .line 273
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCompanyID:Ljava/lang/String;

    iput-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCompanyID:Ljava/lang/String;

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getMaskEvents()V

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getSubEvents()V

    .line 276
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->log_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_parseUrlLogID()V

    .line 278
    :cond_34
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-lez v0, :cond_35

    .line 279
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v7, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    sub-long/2addr v2, v7

    long-to-int v2, v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_block_t:I

    .line 280
    :cond_35
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    if-eqz v0, :cond_36

    .line 281
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mAccuCostTime:I

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seek_accu_t:I

    .line 282
    :cond_36
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 283
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Lcom/ss/ttvideoengine/utils/TimeService;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    iput-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->server_local_diff:J

    .line 284
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_updateFeatures()V

    .line 285
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getCastInfo()V

    .line 286
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    if-eqz v0, :cond_38

    .line 287
    invoke-interface {v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoStyle()Lcom/ss/ttvideoengine/model/VideoStyle;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 288
    invoke-virtual {v0, v6}, Lcom/ss/ttvideoengine/model/VideoStyle;->getValueInt(I)I

    move-result v2

    if-ne v2, v9, :cond_39

    .line 289
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput v9, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStyle:I

    .line 290
    invoke-virtual {v0, v9}, Lcom/ss/ttvideoengine/model/VideoStyle;->getValueInt(I)I

    move-result v3

    iput v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mDimension:I

    .line 291
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-virtual {v0, v4}, Lcom/ss/ttvideoengine/model/VideoStyle;->getValueInt(I)I

    move-result v3

    iput v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mProjectionModel:I

    .line 292
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-virtual {v0, v5}, Lcom/ss/ttvideoengine/model/VideoStyle;->getValueInt(I)I

    move-result v0

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSize:I

    goto :goto_d

    .line 293
    :cond_38
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    if-eqz v0, :cond_39

    .line 294
    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VRTracker;->getVideoStyle()I

    move-result v0

    iput v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStyle:I

    .line 295
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VRTracker;->getDimension()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mDimension:I

    .line 296
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VRTracker;->getProjectStyle()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mProjectionModel:I

    .line 297
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VRTracker;->getViewSize()I

    move-result v2

    iput v2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSize:I

    .line 298
    :cond_39
    :goto_d
    iget-object v0, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

    iget-object v2, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    iget-object v3, v1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/log/VegaCollector;->retrieveEventParam(Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;)V

    return-void
.end method

.method private static updateTimeConsumingEventData(Landroid/content/Context;Lcom/ss/ttvideoengine/log/VideoEventOnePlay;Lcom/ss/ttvideoengine/log/VideoEventBase;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "VideoEventLoggerV2"

    .line 6
    .line 7
    const-string p1, "event is null, return."

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/ss/ttvideoengine/utils/TTHelper;->getVolume(Landroid/content/Context;)F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    float-to-int v2, v2

    .line 18
    iput v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->volume:I

    .line 19
    .line 20
    if-eqz p2, :cond_8

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateMDLInfo()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v3, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 31
    .line 32
    const-string/jumbo v4, "vid"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iget-object v3, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 42
    .line 43
    const-string v4, "feed"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_6

    .line 50
    .line 51
    :cond_1
    iget-object v3, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 52
    .line 53
    if-eqz v3, :cond_6

    .line 54
    .line 55
    invoke-interface {v3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eqz v4, :cond_5

    .line 68
    .line 69
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 74
    .line 75
    const/16 v5, 0x30

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const/16 v6, 0x12

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/16 v7, 0x8

    .line 88
    .line 89
    invoke-virtual {v4, v7}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    const/4 v7, -0x1

    .line 97
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    packed-switch v8, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_0
    const-string v8, "h266"

    .line 106
    .line 107
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    move v7, v0

    .line 115
    goto :goto_1

    .line 116
    :pswitch_1
    const-string v8, "h265"

    .line 117
    .line 118
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-nez v4, :cond_3

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move v7, v1

    .line 126
    goto :goto_1

    .line 127
    :pswitch_2
    const-string v8, "h264"

    .line 128
    .line 129
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-nez v4, :cond_4

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    const/4 v7, 0x0

    .line 137
    :goto_1
    packed-switch v7, :pswitch_data_1

    .line 138
    .line 139
    .line 140
    const-string v4, "-1"

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :pswitch_3
    const-string v4, "2"

    .line 144
    .line 145
    goto :goto_2

    .line 146
    :pswitch_4
    const-string v4, "1"

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :pswitch_5
    const-string v4, "0"

    .line 150
    .line 151
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const/16 v6, 0x5f

    .line 160
    .line 161
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_5
    iput-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mGearinfoList:Ljava/util/ArrayList;

    .line 182
    .line 183
    :cond_6
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getNetType()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iput-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v2, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 190
    .line 191
    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    .line 192
    .line 193
    if-ne v2, v0, :cond_7

    .line 194
    .line 195
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const-string v2, "preload"

    .line 202
    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_7
    iget-object v0, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlFeatures:Ljava/util/Map;

    .line 207
    .line 208
    if-eqz v0, :cond_8

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-nez v0, :cond_8

    .line 215
    .line 216
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    .line 217
    .line 218
    iget-object v1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlFeatures:Ljava/util/Map;

    .line 219
    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 221
    .line 222
    .line 223
    iget v0, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlP2pLoader:I

    .line 224
    .line 225
    if-ltz v0, :cond_8

    .line 226
    .line 227
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iput-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loaderType:Ljava/lang/String;

    .line 232
    .line 233
    :cond_8
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->getSensitiveScene()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSensitiveMode:I

    .line 238
    .line 239
    iget-boolean v0, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 240
    .line 241
    if-eqz v0, :cond_e

    .line 242
    .line 243
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPURate()D

    .line 244
    .line 245
    .line 246
    move-result-wide v0

    .line 247
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCPUSpeed()D

    .line 248
    .line 249
    .line 250
    move-result-wide v2

    .line 251
    const-wide/16 v4, 0x0

    .line 252
    .line 253
    cmpl-double v6, v0, v4

    .line 254
    .line 255
    if-lez v6, :cond_9

    .line 256
    .line 257
    cmpl-double v6, v2, v4

    .line 258
    .line 259
    if-lez v6, :cond_9

    .line 260
    .line 261
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateEnd:D

    .line 262
    .line 263
    iput-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedEnd:D

    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_9
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCurrentCPUInfo()Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;

    .line 267
    .line 268
    .line 269
    move-result-object p2

    .line 270
    if-eqz p2, :cond_c

    .line 271
    .line 272
    iget-wide v0, p2, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;->cpuAppRate:D

    .line 273
    .line 274
    cmpl-double v2, v0, v4

    .line 275
    .line 276
    const-wide/high16 v6, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 277
    .line 278
    if-lez v2, :cond_a

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_a
    move-wide v0, v6

    .line 282
    :goto_3
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateEnd:D

    .line 283
    .line 284
    iget-wide v0, p2, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils$CPUInfo;->cpuAppSpeed:D

    .line 285
    .line 286
    cmpl-double p2, v0, v4

    .line 287
    .line 288
    if-lez p2, :cond_b

    .line 289
    .line 290
    move-wide v6, v0

    .line 291
    :cond_b
    iput-wide v6, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedEnd:D

    .line 292
    .line 293
    :cond_c
    :goto_4
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    if-nez p2, :cond_e

    .line 300
    .line 301
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_d

    .line 312
    .line 313
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Ljava/lang/Float;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    float-to-double v0, v0

    .line 324
    add-double/2addr v4, v0

    .line 325
    goto :goto_5

    .line 326
    :cond_d
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 329
    .line 330
    .line 331
    move-result p2

    .line 332
    int-to-double v0, p2

    .line 333
    div-double/2addr v4, v0

    .line 334
    double-to-float p2, v4

    .line 335
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAvgCurrent:F

    .line 336
    .line 337
    :cond_e
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEngineOptimizeFlag()J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    const-wide/16 v2, 0x2

    .line 346
    .line 347
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->isFlagOn(JJ)Z

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    if-nez p2, :cond_f

    .line 352
    .line 353
    invoke-static {p0}, Lcom/ss/ttvideoengine/log/DeviceMonitorUtils;->isPowerSaveMode(Landroid/content/Context;)I

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    if-ltz p0, :cond_f

    .line 358
    .line 359
    iput p0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeEnd:I

    .line 360
    .line 361
    :cond_f
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 362
    .line 363
    .line 364
    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getPortraitResult()I

    .line 366
    .line 367
    .line 368
    move-result p0

    .line 369
    iput p0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkScore:I

    .line 370
    .line 371
    if-eqz p3, :cond_10

    .line 372
    .line 373
    new-instance p0, Ljava/util/ArrayList;

    .line 374
    .line 375
    iget-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 376
    .line 377
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    .line 379
    .line 380
    new-instance p2, Ljava/util/ArrayList;

    .line 381
    .line 382
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    .line 386
    .line 387
    invoke-interface {p3, p0, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->calculateTargetBitrate(Ljava/util/List;Ljava/util/List;)D

    .line 388
    .line 389
    .line 390
    move-result-wide p2

    .line 391
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkQualityBitrate:D

    .line 392
    .line 393
    :cond_10
    invoke-static {}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->getHostabiBits()I

    .line 394
    .line 395
    .line 396
    move-result p0

    .line 397
    iput p0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHostAbiBits:I

    .line 398
    .line 399
    return-void

    .line 400
    nop

    .line 401
    :pswitch_data_0
    .packed-switch 0x300908
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public AVNoRenderEnd(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AVNoRenderEnd, type: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoEventLoggerV2"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string p1, "AVNoRenderEnd, not started before, abort"

    .line 32
    .line 33
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isType(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string p1, "AVNoRenderEnd, type does not match, abort"

    .line 46
    .line 47
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 52
    .line 53
    const-string/jumbo v1, "wait"

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->end(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->callbackNoRenderEnd(I)V

    .line 61
    .line 62
    .line 63
    if-nez p1, :cond_2

    .line 64
    .line 65
    const/16 p1, -0x7d7

    .line 66
    .line 67
    invoke-virtual {p0, p1, v2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 v0, 0x1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    const/16 p1, -0x7d8

    .line 75
    .line 76
    invoke-virtual {p0, p1, v2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    return-void
.end method

.method public AVNoRenderStart(II)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move v11, p1

    .line 3
    move/from16 v3, p2

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "AVNoRenderStart, type: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", reason: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "VideoEventLoggerV2"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->isStarted()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->updateReason(I)V

    .line 46
    .line 47
    .line 48
    const-string v1, "AVNoRenderStart event is already started, abort"

    .line 49
    .line 50
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 55
    .line 56
    const-wide/16 v12, -0x1

    .line 57
    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->getLastRebufTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    move-wide v5, v1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move-wide v5, v12

    .line 67
    :goto_0
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 68
    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->getLastSeekTime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    move-wide v7, v1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    move-wide v7, v12

    .line 78
    :goto_1
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 79
    .line 80
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->getLastSwitchTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v9

    .line 86
    const/4 v4, 0x0

    .line 87
    move v2, p1

    .line 88
    move/from16 v3, p2

    .line 89
    .line 90
    invoke-virtual/range {v1 .. v10}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->start(IIIJJJ)V

    .line 91
    .line 92
    .line 93
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->getRenderStageError()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-nez v2, :cond_3

    .line 104
    .line 105
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 106
    .line 107
    iput-object v1, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRenderStageError:Ljava/lang/String;

    .line 108
    .line 109
    :cond_3
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 110
    .line 111
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 112
    .line 113
    const-wide/16 v4, 0x0

    .line 114
    .line 115
    cmp-long v4, v2, v4

    .line 116
    .line 117
    if-lez v4, :cond_4

    .line 118
    .line 119
    iget-wide v4, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 120
    .line 121
    sub-long v12, v2, v4

    .line 122
    .line 123
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    const-string/jumbo v3, "type"

    .line 133
    .line 134
    .line 135
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    const-string/jumbo v3, "t"

    .line 147
    .line 148
    .line 149
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 153
    .line 154
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCodecType()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "codec"

    .line 159
    .line 160
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 164
    .line 165
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->getCurResolution()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const-string v3, "resolution"

    .line 170
    .line 171
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 175
    .line 176
    iget-object v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentQualityDesc:Ljava/lang/String;

    .line 177
    .line 178
    const-string v3, "quality_desc"

    .line 179
    .line 180
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 184
    .line 185
    iget v2, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    .line 186
    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    const-string v3, "hw"

    .line 192
    .line 193
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    iget-wide v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 197
    .line 198
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v3, "ps_t"

    .line 203
    .line 204
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    const-string v3, "first_frame_cost"

    .line 212
    .line 213
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 217
    .line 218
    iget-wide v2, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    .line 219
    .line 220
    const-wide/32 v4, -0x80000000

    .line 221
    .line 222
    .line 223
    cmp-long v4, v2, v4

    .line 224
    .line 225
    if-eqz v4, :cond_5

    .line 226
    .line 227
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    const-string v3, "seek_t"

    .line 232
    .line 233
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    :cond_5
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 237
    .line 238
    if-eqz v2, :cond_6

    .line 239
    .line 240
    const/16 v3, 0x65

    .line 241
    .line 242
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v3, "enable_nnsr"

    .line 251
    .line 252
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 256
    .line 257
    const/16 v3, 0x64

    .line 258
    .line 259
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string/jumbo v3, "surface_error_code"

    .line 268
    .line 269
    .line 270
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 274
    .line 275
    const/16 v3, 0x5c

    .line 276
    .line 277
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueLong(I)J

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    const-string/jumbo v3, "switch_resolution_t"

    .line 286
    .line 287
    .line 288
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    iget-object v2, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 292
    .line 293
    const/4 v3, 0x5

    .line 294
    invoke-interface {v2, v3, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 295
    .line 296
    .line 297
    :cond_6
    const/4 v1, 0x1

    .line 298
    if-nez v11, :cond_7

    .line 299
    .line 300
    const/16 v2, -0x7d7

    .line 301
    .line 302
    invoke-virtual {p0, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_7
    if-ne v11, v1, :cond_8

    .line 307
    .line 308
    const/16 v2, -0x7d8

    .line 309
    .line 310
    invoke-virtual {p0, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 311
    .line 312
    .line 313
    :cond_8
    :goto_2
    return-void
.end method

.method public AVOutSyncEnd(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 2
    .line 3
    const-string/jumbo v1, "wait"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 11
    .line 12
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v0, -0x7d6

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public AVOutSyncStart(I)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 5
    .line 6
    const-wide/16 v2, -0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->getLastRebufTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    move-wide v8, v4

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-wide v8, v2

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->getLastSeekTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    :cond_1
    move-wide v10, v2

    .line 26
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->getLastSwitchTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v12

    .line 34
    move v7, p1

    .line 35
    invoke-virtual/range {v6 .. v13}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncStart(IJJJ)V

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne p1, v1, :cond_2

    .line 42
    .line 43
    const/16 p1, -0x7d6

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method public _recordExitReason(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-wide/32 v0, -0x80000000

    .line 7
    .line 8
    .line 9
    if-eqz p2, :cond_5

    .line 10
    .line 11
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 12
    .line 13
    const/16 p2, -0x3ea

    .line 14
    .line 15
    if-eq p1, p2, :cond_4

    .line 16
    .line 17
    const/16 p2, -0x3eb

    .line 18
    .line 19
    if-eq p1, p2, :cond_4

    .line 20
    .line 21
    const/16 p2, -0x3ec

    .line 22
    .line 23
    if-eq p1, p2, :cond_4

    .line 24
    .line 25
    const/16 p2, -0x3ed

    .line 26
    .line 27
    if-ne p1, p2, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 p2, -0x7d3

    .line 31
    .line 32
    if-eq p1, p2, :cond_3

    .line 33
    .line 34
    const/16 p2, -0x7d2

    .line 35
    .line 36
    if-ne p1, p2, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_4
    :goto_1
    iget-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    cmp-long p1, p1, v0

    .line 54
    .line 55
    if-gtz p1, :cond_6

    .line 56
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_5
    const/16 p1, -0x7d1

    .line 65
    .line 66
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 67
    .line 68
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 69
    .line 70
    :cond_6
    :goto_2
    return-void
.end method

.method public abrEventEnd(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->abrSwitchEnd(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public abrEventStart(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->abrSwitchStart(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public accuBuffingTime(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public accumulateSize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_accumulateVPS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public addFeature(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatures:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "addFeature, key:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", value:"

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, "VideoEventLoggerV2"

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public addLabelUsage(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/portrait/LabelUsage;->addUsage(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public addSubtitleSwitchTime()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubLanSwitchCount:I

    .line 6
    .line 7
    return-void
.end method

.method public addWatchedDuration(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->watchduration:I

    .line 4
    .line 5
    return-void
.end method

.method public beginToPlay(Ljava/lang/String;JLjava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 5
    .line 6
    invoke-virtual {v1, p1, p4}, Lcom/ss/ttvideoengine/log/VideoEventBase;->beginToPlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-boolean p1, Lcom/ss/ttvideoengine/TTVideoEngine;->sColdStartOptimize:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget p1, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sIsColdStart:I

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->registerNetwork()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    .line 27
    .line 28
    :cond_2
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    cmp-long p1, v1, v3

    .line 33
    .line 34
    if-gtz p1, :cond_3

    .line 35
    .line 36
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->collectPowerStatistics()V

    .line 39
    .line 40
    .line 41
    :cond_3
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 44
    .line 45
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 46
    .line 47
    iget-object p4, p4, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->traceID:Ljava/lang/String;

    .line 50
    .line 51
    iget p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 52
    .line 53
    const-wide/32 v1, -0x80000000

    .line 54
    .line 55
    .line 56
    if-ne p4, v0, :cond_4

    .line 57
    .line 58
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 62
    .line 63
    :goto_0
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 64
    .line 65
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 66
    .line 67
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 68
    .line 69
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 70
    .line 71
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 72
    .line 73
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 74
    .line 75
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 76
    .line 77
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 78
    .line 79
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 80
    .line 81
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 82
    .line 83
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 84
    .line 85
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 86
    .line 87
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 88
    .line 89
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 90
    .line 91
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 92
    .line 93
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayCount:I

    .line 94
    .line 95
    add-int/2addr p2, v0

    .line 96
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayCount:I

    .line 97
    .line 98
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    .line 99
    .line 100
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    .line 101
    .line 102
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferStartT:J

    .line 103
    .line 104
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 105
    .line 106
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    .line 107
    .line 108
    iput-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    .line 109
    .line 110
    const/high16 p2, -0x80000000

    .line 111
    .line 112
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekPosition:I

    .line 113
    .line 114
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsEngineReuse:Z

    .line 115
    .line 116
    iput-boolean p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsEngineReuse:Z

    .line 117
    .line 118
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VegaCollector;->reset()V

    .line 121
    .line 122
    .line 123
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsEngineReuse:Z

    .line 124
    .line 125
    if-nez p1, :cond_5

    .line 126
    .line 127
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsEngineReuse:Z

    .line 128
    .line 129
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 130
    .line 131
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 132
    .line 133
    const-string/jumbo p2, "vid"

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_6

    .line 141
    .line 142
    const/16 p1, -0x3ea

    .line 143
    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 149
    .line 150
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 151
    .line 152
    const-string p2, "local_url"

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result p1

    .line 158
    const/16 p2, -0x3ed

    .line 159
    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    invoke-virtual {p0, p2, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 167
    .line 168
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 169
    .line 170
    if-nez p1, :cond_8

    .line 171
    .line 172
    const/16 p1, -0x3eb

    .line 173
    .line 174
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_8
    if-ne p1, v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {p0, p2, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 181
    .line 182
    .line 183
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSpeedReport:Z

    .line 184
    .line 185
    if-eqz p1, :cond_a

    .line 186
    .line 187
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->startRecord()V

    .line 190
    .line 191
    .line 192
    :cond_a
    const-string p1, "VideoEventLoggerV2"

    .line 193
    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string p3, "netlevel interval:"

    .line 200
    .line 201
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 205
    .line 206
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string p3, ", max count:"

    .line 210
    .line 211
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelMaxCount:I

    .line 215
    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 227
    .line 228
    if-lez p1, :cond_d

    .line 229
    .line 230
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 231
    .line 232
    if-nez p1, :cond_d

    .line 233
    .line 234
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getPortraitData()Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setSampleInterval(I)V

    .line 245
    .line 246
    .line 247
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelMaxCount:I

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->setMaxCount(I)V

    .line 250
    .line 251
    .line 252
    new-instance p2, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;

    .line 253
    .line 254
    const/4 p3, 0x0

    .line 255
    invoke-direct {p2, p0, p3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$MyTimerTask;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;)V

    .line 256
    .line 257
    .line 258
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->start()V

    .line 261
    .line 262
    .line 263
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTimerTask:Ljava/util/TimerTask;

    .line 264
    .line 265
    iget p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 266
    .line 267
    invoke-virtual {p1, p2, p4}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->schedule(Ljava/util/TimerTask;I)V

    .line 268
    .line 269
    .line 270
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 271
    .line 272
    iget p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 273
    .line 274
    iput p4, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityInterval:I

    .line 275
    .line 276
    div-int/lit8 p4, p4, 0x3

    .line 277
    .line 278
    iput p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedUpdateInterval:I

    .line 279
    .line 280
    const/16 p2, 0xc8

    .line 281
    .line 282
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    .line 283
    .line 284
    .line 285
    move-result p2

    .line 286
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedUpdateInterval:I

    .line 287
    .line 288
    const-string p2, "VideoEventLoggerV2"

    .line 289
    .line 290
    monitor-enter p2

    .line 291
    :try_start_0
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 292
    .line 293
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 294
    .line 295
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-static {}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->getInstance()Lcom/ss/ttvideoengine/log/PortraitNetworkScore;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore;->genNetworkQualityAlg()Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 305
    .line 306
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityVar:Ljava/lang/String;

    .line 307
    .line 308
    if-eqz p2, :cond_b

    .line 309
    .line 310
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result p2

    .line 314
    if-nez p2, :cond_b

    .line 315
    .line 316
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 317
    .line 318
    const/4 p4, 0x4

    .line 319
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityVar:Ljava/lang/String;

    .line 320
    .line 321
    invoke-interface {p2, p4, v0}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->setStringOption(ILjava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityVar:Ljava/lang/String;

    .line 325
    .line 326
    :cond_b
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    const-string p3, "net_quality"

    .line 331
    .line 332
    invoke-virtual {p2, p3}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    if-nez p2, :cond_c

    .line 337
    .line 338
    const/4 p2, 0x0

    .line 339
    goto :goto_2

    .line 340
    :cond_c
    const-string p3, "calculate_interval"

    .line 341
    .line 342
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    move-result p2

    .line 346
    :goto_2
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrateCalculationTask:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

    .line 347
    .line 348
    if-nez p3, :cond_d

    .line 349
    .line 350
    if-lez p2, :cond_d

    .line 351
    .line 352
    new-instance p3, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

    .line 353
    .line 354
    iget-object p4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 355
    .line 356
    invoke-direct {p3, p1, p4}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;-><init>(Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;)V

    .line 357
    .line 358
    .line 359
    iput-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrateCalculationTask:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$BitrateCalculationTask;

    .line 360
    .line 361
    invoke-virtual {p1, p3, p2}, Lcom/ss/ttvideoengine/portrait/NetworkPortraitData;->schedule(Ljava/util/TimerTask;I)V

    .line 362
    .line 363
    .line 364
    const-string p1, "VideoEventLoggerV2"

    .line 365
    .line 366
    new-instance p3, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string p4, "bitrate calculate interval: "

    .line 372
    .line 373
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    goto :goto_3

    .line 387
    :catchall_0
    move-exception p1

    .line 388
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    throw p1

    .line 390
    :cond_d
    :goto_3
    return-void
.end method

.method public bufferDataSeconds(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferDataSeconds:I

    .line 2
    .line 3
    return-void
.end method

.method public buildMetrics(I)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/metrics/MetricsFactory;->createMetrics(ILcom/ss/ttvideoengine/log/VideoEventOnePlay;)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public clockDiff(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->clockDiff:J

    .line 7
    .line 8
    return-void
.end method

.method public codecName(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 13
    .line 14
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 18
    .line 19
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public configResolution(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->configResolution(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public containerFps(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->containerFps:F

    .line 7
    .line 8
    return-void
.end method

.method public crosstalkHappen(ILjava/util/ArrayList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCrosstalkCount:I

    .line 4
    .line 5
    iput-object p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCrosstalkInfoList:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 p1, -0x7d9

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public curAudioDecodeError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-lez p1, :cond_1

    .line 7
    .line 8
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curAudioDecodeError:I

    .line 9
    .line 10
    :cond_1
    return-void
.end method

.method public curPlayBackTime(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    int-to-long v1, p1

    .line 7
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curPlayBackTime:J

    .line 8
    .line 9
    return-void
.end method

.method public curVideoDecodeError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-lez p1, :cond_1

    .line 7
    .line 8
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecodeError:I

    .line 9
    .line 10
    :cond_1
    return-void
.end method

.method public curVideoDecoderFps(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecoderFps:I

    .line 7
    .line 8
    return-void
.end method

.method public curVideoOutputFps(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoOutputFps:F

    .line 7
    .line 8
    return-void
.end method

.method public curVideoRenderError(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-ltz p1, :cond_1

    .line 7
    .line 8
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoRenderError:I

    .line 9
    .line 10
    :cond_1
    return-void
.end method

.method public deviceStartTime(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iput-wide p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    iput-wide p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public devicedOpenedTime(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p1, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iput-wide p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    iput-wide p2, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public didSentEvent(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public dropCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dropCount:I

    .line 7
    .line 8
    return-void
.end method

.method public enableSharp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSharp:I

    .line 7
    .line 8
    return-void
.end method

.method public enableStartPlayAutomatically(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsStartPlayAutomatically:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsStartPlayAutomatically:I

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public engineState(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->engineState:I

    .line 7
    .line 8
    return-void
.end method

.method public fetchInfoComplete(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    :cond_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFetchComplete:Z

    .line 6
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    if-ne p2, p1, :cond_1

    const/16 p2, -0x3ed

    .line 7
    invoke-virtual {p0, p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/16 p2, -0x3ec

    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fetchInfoComplete(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->fetchInfoComplete(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    return-void
.end method

.method public fetchedAndLeaveByUser(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->fetchedAndLeaveByUser:I

    .line 4
    .line 5
    return-void
.end method

.method public firstDNSFailed(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAsyncInit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    .line 2
    .line 3
    return v0
.end method

.method public getCoreEventParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VegaCollector;->get()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCurDecoderBufferAccuT()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCurDecoderBufferCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getEncryptKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->encryptKey:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mExtraInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstError()Lcom/ss/ttvideoengine/utils/Error;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstError:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntOption(I)I
    .locals 1

    .line 1
    const/16 v0, 0x31

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 14
    :goto_1
    return p1
.end method

.method public getLeaveWaitTime()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 8
    .line 9
    cmp-long v5, v3, v1

    .line 10
    .line 11
    if-lez v5, :cond_0

    .line 12
    .line 13
    iget-wide v5, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 14
    .line 15
    cmp-long v0, v5, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    sub-long/2addr v5, v3

    .line 20
    return-wide v5

    .line 21
    :cond_0
    return-wide v1
.end method

.method public getMovieStalledType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->getMovieStalledType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getStalledAudioBufferTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->getStatlledAudioBufferTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getStalledVideoBufferTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->getStalledVideoBufferTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    :goto_0
    return-wide v0
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2f

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eq p1, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x56

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSessionID:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-object v1
.end method

.method public getTraceID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->traceID:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public hwCodecException(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecException:I

    .line 7
    .line 8
    return-void
.end method

.method public hwCodecName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public initContentReporterIfNeeded(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-boolean v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->sEnableContentDataReport:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    const-string/jumbo v0, "trans_vdata_to_content=1"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/log/ContentDataReporter;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 33
    .line 34
    :cond_1
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUrlMatchCondition:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContentDataReporter:Lcom/ss/ttvideoengine/log/ContentDataReporter;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/ContentDataReporter;->setInitialUrl(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public isUploadLogEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUploadLogEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public logFirstError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstError:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc:I

    .line 8
    .line 9
    const/high16 v2, -0x80000000

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errt:I

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc_internal:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errt:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 28
    .line 29
    iget v1, p1, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 30
    .line 31
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc:I

    .line 32
    .line 33
    iget p1, p1, Lcom/ss/ttvideoengine/utils/Error;->internalCode:I

    .line 34
    .line 35
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc_internal:I

    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public logMessage(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public logPluginException(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pluginException:I

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 15
    .line 16
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ownPlayerCreateException:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public loopAgain()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopCount:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLoopList:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public mdlRetryResult(ILjava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    const-string v1, "result"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    const-string p3, "filehash"

    .line 24
    .line 25
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLRetryInfo:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance p3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {p3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const/4 v0, 0x2

    .line 40
    invoke-static {p2, p3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 46
    .line 47
    const/4 p2, 0x3

    .line 48
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mExpirePlayCode:I

    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public movieBufferDidReachEnd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bft:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bft:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public movieFinish(I)V
    .locals 7

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    .line 53
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v4, 0x4

    const-string/jumbo v5, "wait"

    if-ne v2, v4, :cond_0

    .line 54
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    invoke-virtual {v2, v5, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 55
    :goto_0
    iget v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 56
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    invoke-virtual {v2, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->movieFinish()V

    .line 59
    :cond_2
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    if-eqz v2, :cond_4

    .line 60
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    if-eqz v2, :cond_3

    const/16 v4, 0x43

    .line 61
    invoke-interface {v2, v4}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    int-to-long v4, v2

    goto :goto_1

    :cond_3
    const-wide/16 v4, -0x1

    .line 62
    :goto_1
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    long-to-int v4, v4

    const-string v5, "finish"

    invoke-virtual {v2, v4, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    .line 63
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 64
    :cond_4
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    .line 65
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    goto :goto_2

    .line 66
    :cond_5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 67
    :goto_2
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_upload(I)V

    return-void
.end method

.method public movieFinish(ILjava/lang/String;)V
    .locals 5

    .line 42
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v1, 0x4

    const-string v2, "error"

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    invoke-virtual {v0, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 44
    :goto_0
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 45
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const/4 v0, 0x5

    .line 47
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    if-eqz v3, :cond_2

    .line 48
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->movieFinish()V

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput p1, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vsc:I

    .line 50
    iput-object p2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vscMessage:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->movieFinish(I)V

    return-void
.end method

.method public movieFinish(Lcom/ss/ttvideoengine/utils/Error;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget v3, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const-string v4, "error"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_0

    .line 3
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    invoke-virtual {v3, v4, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    .line 4
    :goto_0
    iget v8, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 5
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    invoke-virtual {v3, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 6
    iget-object v3, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v1, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    move v3, v5

    :cond_1
    const/4 v8, 0x5

    .line 7
    iput v8, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    move-result-object v10

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string/jumbo v12, "strategy"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "apiver"

    invoke-virtual {v10, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v11, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-boolean v10, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_2

    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v13, v10, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    cmp-long v13, v13, v11

    if-gtz v13, :cond_2

    .line 13
    iput-wide v1, v10, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/utils/Error;->isPlayerErrorDomain()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 15
    iget-object v10, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gt v10, v6, :cond_3

    .line 16
    iget v10, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    add-int/2addr v10, v6

    iput v10, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 17
    :cond_3
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iput-wide v1, v6, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 18
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->logFirstError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 19
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    if-eqz v6, :cond_4

    const/16 v10, 0x43

    .line 20
    invoke-interface {v6, v10}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v6

    int-to-long v13, v6

    .line 21
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    iget-wide v5, v6, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    cmp-long v5, v5, v11

    if-gtz v5, :cond_5

    .line 22
    invoke-direct/range {p0 .. p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getFirstFrameSplitInfo()Ljava/util/Map;

    move-result-object v5

    .line 23
    iget-object v6, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    const/4 v15, 0x2

    invoke-interface {v6, v15, v5}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    goto :goto_2

    :cond_4
    const-wide/16 v13, -0x1

    .line 24
    :cond_5
    :goto_2
    iget-object v5, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    if-eqz v5, :cond_6

    iget-wide v5, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    cmp-long v11, v5, v11

    if-lez v11, :cond_6

    sub-long v5, v1, v5

    .line 25
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    iget-object v8, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    iget v8, v8, Lcom/ss/ttvideoengine/utils/Error;->code:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v12, "ec"

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v12, "p"

    invoke-interface {v11, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "t"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "c"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "st"

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v11}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;I)V

    const/4 v1, 0x0

    .line 32
    iput-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    const/4 v1, -0x1

    .line 33
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    const-wide/32 v1, -0x80000000

    .line 34
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    :cond_6
    if-eqz v3, :cond_7

    .line 35
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->movieFinish()V

    .line 36
    :cond_7
    iget-boolean v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    if-eqz v1, :cond_8

    .line 37
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    long-to-int v2, v13

    invoke-virtual {v1, v2, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 39
    :cond_8
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/ttvideoengine/utils/Error;->getType()I

    move-result v2

    iput v2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errt:I

    .line 40
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    move-object/from16 v2, p1

    iget v2, v2, Lcom/ss/ttvideoengine/utils/Error;->code:I

    iput v2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errc:I

    .line 41
    invoke-direct {v0, v7}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_upload(I)V

    return-void
.end method

.method public moviePreStalled(I)V
    .locals 2

    .line 1
    const-string v0, "VideoEventLoggerV2"

    .line 2
    .line 3
    const-string v1, "movie may stall"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->moviePreStalled(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public movieShouldRetry(Lcom/ss/ttvideoengine/utils/Error;II)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->isPlayerErrorDomain()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string/jumbo v3, "strategy"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const-string v2, "apiver"

    .line 40
    .line 41
    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->logFirstError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_accumulateVPS()V

    .line 53
    .line 54
    .line 55
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 56
    .line 57
    const/4 v0, 0x3

    .line 58
    if-ne p3, v0, :cond_1

    .line 59
    .line 60
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieShouldRetry()V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 66
    .line 67
    const/4 v2, 0x4

    .line 68
    if-ne p3, v2, :cond_2

    .line 69
    .line 70
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 71
    .line 72
    invoke-virtual {p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->movieShouldRetry()V

    .line 73
    .line 74
    .line 75
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 80
    .line 81
    if-eqz p3, :cond_4

    .line 82
    .line 83
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 84
    .line 85
    const-wide/16 v6, 0x0

    .line 86
    .line 87
    cmp-long p3, v4, v6

    .line 88
    .line 89
    if-lez p3, :cond_4

    .line 90
    .line 91
    sub-long v4, v2, v4

    .line 92
    .line 93
    new-instance p3, Ljava/util/HashMap;

    .line 94
    .line 95
    const/4 v6, 0x5

    .line 96
    invoke-direct {p3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    .line 98
    .line 99
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 100
    .line 101
    if-eqz v6, :cond_3

    .line 102
    .line 103
    const/16 v7, 0x43

    .line 104
    .line 105
    invoke-interface {v6, v7}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    goto :goto_0

    .line 110
    :cond_3
    const/4 v6, -0x1

    .line 111
    :goto_0
    iget-object v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 112
    .line 113
    iget v7, v7, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    const-string v8, "ec"

    .line 120
    .line 121
    invoke-interface {p3, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-string v7, "p"

    .line 129
    .line 130
    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v6

    .line 137
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    const-string/jumbo v7, "t"

    .line 142
    .line 143
    .line 144
    invoke-interface {p3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    const-string v5, "c"

    .line 152
    .line 153
    invoke-interface {p3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 157
    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    const-string/jumbo v5, "st"

    .line 163
    .line 164
    .line 165
    invoke-interface {p3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    .line 169
    .line 170
    new-instance v5, Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-direct {v5, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p3

    .line 179
    invoke-static {v4, p3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;I)V

    .line 180
    .line 181
    .line 182
    :cond_4
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 183
    .line 184
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 185
    .line 186
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 187
    .line 188
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 189
    .line 190
    if-eqz p1, :cond_9

    .line 191
    .line 192
    const-string p1, ""

    .line 193
    .line 194
    const-wide/32 v2, -0x80000000

    .line 195
    .line 196
    .line 197
    if-eq p2, v1, :cond_5

    .line 198
    .line 199
    const/4 p3, 0x2

    .line 200
    if-eq p2, p3, :cond_6

    .line 201
    .line 202
    if-eq p2, v0, :cond_7

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 206
    .line 207
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    .line 208
    .line 209
    :cond_6
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 210
    .line 211
    iput-object p1, p2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 212
    .line 213
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 214
    .line 215
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    .line 216
    .line 217
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 218
    .line 219
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 220
    .line 221
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 222
    .line 223
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    .line 224
    .line 225
    :cond_7
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 226
    .line 227
    iget p3, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 228
    .line 229
    if-ne p3, v1, :cond_8

    .line 230
    .line 231
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 232
    .line 233
    iput-object p1, p3, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 234
    .line 235
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    .line 236
    .line 237
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 238
    .line 239
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 240
    .line 241
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 242
    .line 243
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    .line 244
    .line 245
    :cond_8
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 246
    .line 247
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 248
    .line 249
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 250
    .line 251
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 252
    .line 253
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 254
    .line 255
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 256
    .line 257
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 258
    .line 259
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 260
    .line 261
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 262
    .line 263
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 264
    .line 265
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 266
    .line 267
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 268
    .line 269
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 270
    .line 271
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 272
    .line 273
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    .line 274
    .line 275
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    .line 276
    .line 277
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 278
    .line 279
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    .line 280
    .line 281
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    .line 282
    .line 283
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    .line 284
    .line 285
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 286
    .line 287
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    .line 288
    .line 289
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_start_t:J

    .line 290
    .line 291
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    .line 292
    .line 293
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    .line 294
    .line 295
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_start_t:J

    .line 296
    .line 297
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    .line 298
    .line 299
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    .line 300
    .line 301
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    .line 302
    .line 303
    iput-wide v2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    .line 304
    .line 305
    :cond_9
    :goto_1
    return-void
.end method

.method public movieStallEnd(I)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 12
    .line 13
    const-string/jumbo v1, "wait"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez p1, :cond_2

    .line 27
    .line 28
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-eq v2, v3, :cond_3

    .line 32
    .line 33
    const/16 v2, -0x7d3

    .line 34
    .line 35
    invoke-virtual {p0, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    if-ne p1, v0, :cond_3

    .line 40
    .line 41
    const/16 v2, -0x7d4

    .line 42
    .line 43
    invoke-virtual {p0, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 51
    .line 52
    iget-wide v4, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferEndT:J

    .line 53
    .line 54
    const-wide/16 v6, 0x0

    .line 55
    .line 56
    cmp-long v4, v4, v6

    .line 57
    .line 58
    if-gtz v4, :cond_4

    .line 59
    .line 60
    iput-wide v1, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferEndT:J

    .line 61
    .line 62
    :cond_4
    if-ne p1, v0, :cond_5

    .line 63
    .line 64
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDecodeBufferingStartT:J

    .line 65
    .line 66
    cmp-long p1, v4, v6

    .line 67
    .line 68
    if-lez p1, :cond_5

    .line 69
    .line 70
    cmp-long p1, v1, v4

    .line 71
    .line 72
    if-ltz p1, :cond_5

    .line 73
    .line 74
    sub-long v4, v1, v4

    .line 75
    .line 76
    iget-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 77
    .line 78
    add-long/2addr v8, v4

    .line 79
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 80
    .line 81
    iput-wide v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDecodeBufferingStartT:J

    .line 82
    .line 83
    :cond_5
    iput-wide v1, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 84
    .line 85
    return-void
.end method

.method public movieStalled(II)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "movieStalled, type: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "VideoEventLoggerV2"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    if-eq v1, v2, :cond_0

    .line 33
    .line 34
    iput v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 35
    .line 36
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetBufferIndex:I

    .line 37
    .line 38
    add-int/2addr v1, v0

    .line 39
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetBufferIndex:I

    .line 40
    .line 41
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 42
    .line 43
    invoke-virtual {v3, p2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStalled(II)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    .line 47
    .line 48
    add-int/2addr p2, v0

    .line 49
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    .line 50
    .line 51
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 52
    .line 53
    if-eq p2, v2, :cond_2

    .line 54
    .line 55
    const/16 p2, -0x7d3

    .line 56
    .line 57
    invoke-virtual {p0, p2, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    iget p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 64
    .line 65
    add-int/2addr p2, v0

    .line 66
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 67
    .line 68
    const/16 p2, -0x7d4

    .line 69
    .line 70
    invoke-virtual {p0, p2, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 74
    .line 75
    if-nez p2, :cond_3

    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 83
    .line 84
    iget-wide v3, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferStartT:J

    .line 85
    .line 86
    const-wide/16 v5, 0x0

    .line 87
    .line 88
    cmp-long v3, v3, v5

    .line 89
    .line 90
    if-gtz v3, :cond_4

    .line 91
    .line 92
    iput-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferStartT:J

    .line 93
    .line 94
    :cond_4
    if-ne p1, v0, :cond_5

    .line 95
    .line 96
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDecodeBufferingStartT:J

    .line 97
    .line 98
    :cond_5
    iput-wide v1, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferStartT:J

    .line 99
    .line 100
    return-void
.end method

.method public needRetryToFetch(Lcom/ss/ttvideoengine/utils/Error;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/utils/Error;->toMap()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "apiver"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onAVBadInterlaced(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->onAVBadInterlaced()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->onAVBadInterlaced()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->onAVBadInterlaced()V

    .line 20
    .line 21
    .line 22
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v1, 0x3

    .line 25
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-string v1, "pts"

    .line 29
    .line 30
    const-string v2, "-1"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "type"

    .line 36
    .line 37
    .line 38
    const-string v2, "non"

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "diff"

    .line 44
    .line 45
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVBadInterlacedList:Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance p2, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-direct {p2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onVideoInfoIdChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoByInfoId(I)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    const-string v1, "dash"

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v1, "bash"

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 41
    .line 42
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurDashAudioInfoId:I

    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x43

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v4, "p"

    .line 28
    .line 29
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v4, "t"

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPauseList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v4, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->setPlaying(Z)V

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->setLongValue(IJ)V

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method

.method public play(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x43

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "p"

    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string/jumbo v2, "t"

    .line 37
    .line 38
    .line 39
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayList:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v2, Lorg/json/JSONObject;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const/4 v0, 0x4

    .line 59
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->enableReport(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->setPlaying(Z)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->start()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->tryAddLastSizeToHistory()V

    .line 79
    .line 80
    .line 81
    const/16 v0, 0x8

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->enableReport(I)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateMonitor:Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateMonitor;->start()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->start()V

    .line 97
    .line 98
    .line 99
    :cond_2
    if-eqz p1, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 102
    .line 103
    iget v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenPlay:I

    .line 104
    .line 105
    const/high16 v1, -0x80000000

    .line 106
    .line 107
    if-ne v0, v1, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 110
    .line 111
    const/16 v1, 0x5e

    .line 112
    .line 113
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenPlay:I

    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public playbackBufferEnd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferEndT:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferEndT:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public playbackBufferStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferStartT:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferStartT:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public prepareEnd()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public prepareStart()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public recordBlockReason(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/high16 p1, -0x80000000

    .line 18
    .line 19
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeaveReason:I

    .line 20
    .line 21
    const-wide/32 p1, -0x80000000

    .line 22
    .line 23
    .line 24
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBlockBeginT:J

    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public renderSeekCompleted(I)V
    .locals 2

    .line 1
    const/16 v0, -0x7d2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 11
    .line 12
    const-string/jumbo v1, "wait"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reportBufferingMetrics()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->triggerBufferStartCb()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsLocal:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryFetchErrorInfo:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLRetryInfo:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstDNSErrorInfo:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomStr:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialURL:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioInitURL:Ljava/lang/String;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialHost:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialIP:Ljava/lang/String;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialResolution:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQuality:Ljava/lang/String;

    .line 56
    .line 57
    const/high16 v2, -0x80000000

    .line 58
    .line 59
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQualityType:I

    .line 60
    .line 61
    const-string v3, ""

    .line 62
    .line 63
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMessage:Ljava/lang/String;

    .line 64
    .line 65
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferDataSeconds:I

    .line 66
    .line 67
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaybackParams:Ljava/util/Map;

    .line 68
    .line 69
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDuration:I

    .line 70
    .line 71
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mStartTime:I

    .line 72
    .line 73
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurBufferCount:I

    .line 74
    .line 75
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetBufferIndex:I

    .line 76
    .line 77
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferCount:I

    .line 78
    .line 79
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBreakCount:I

    .line 80
    .line 81
    const-wide/16 v3, 0x0

    .line 82
    .line 83
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurDecoderBufferAccuT:J

    .line 84
    .line 85
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    .line 86
    .line 87
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    .line 88
    .line 89
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVPS:J

    .line 90
    .line 91
    iput-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAccumVDS:J

    .line 92
    .line 93
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadioMode:I

    .line 94
    .line 95
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableNNSR:I

    .line 96
    .line 97
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReadCacheMode:I

    .line 98
    .line 99
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPreRangeOff:I

    .line 100
    .line 101
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioStreamDisabled:Z

    .line 102
    .line 103
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoStreamDisabled:Z

    .line 104
    .line 105
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMediaCodecRender:I

    .line 106
    .line 107
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mWidth:I

    .line 108
    .line 109
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeight:I

    .line 110
    .line 111
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mProxyUrl:Ljava/lang/String;

    .line 112
    .line 113
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFetchComplete:Z

    .line 114
    .line 115
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableBash:I

    .line 116
    .line 117
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 118
    .line 119
    iget v3, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 120
    .line 121
    iget-boolean v4, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->unregisterNetwork()V

    .line 124
    .line 125
    .line 126
    new-instance v2, Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 127
    .line 128
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 129
    .line 130
    iget-boolean v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUploadLogEnabled:Z

    .line 131
    .line 132
    iget-object v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    invoke-direct {v2, v5, v6, v7}, Lcom/ss/ttvideoengine/log/VideoEventBase;-><init>(Lcom/ss/ttvideoengine/log/EventLoggerSource;ZLandroid/content/Context;)V

    .line 135
    .line 136
    .line 137
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 138
    .line 139
    iput v3, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 140
    .line 141
    iput-boolean v4, v2, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 142
    .line 143
    new-instance v3, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 144
    .line 145
    invoke-direct {v3, v2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;-><init>(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 146
    .line 147
    .line 148
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 149
    .line 150
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkSpeedPredictSamplingRate:F

    .line 151
    .line 152
    iput v2, v3, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->mSampingRate:F

    .line 153
    .line 154
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 155
    .line 156
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 157
    .line 158
    iput-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 161
    .line 162
    iput-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 163
    .line 164
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 165
    .line 166
    iput-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventAbrSwitch:Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;

    .line 169
    .line 170
    iput-object v3, v2, Lcom/ss/ttvideoengine/log/VideoEventAbrEvent;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 171
    .line 172
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->updateEventBase(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 175
    .line 176
    .line 177
    new-instance v2, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 178
    .line 179
    invoke-direct {v2, p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V

    .line 180
    .line 181
    .line 182
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 183
    .line 184
    new-instance v2, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 185
    .line 186
    invoke-direct {v2}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 190
    .line 191
    new-instance v2, Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 192
    .line 193
    invoke-direct {v2}, Lcom/ss/ttvideoengine/portrait/LabelUsage;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    .line 197
    .line 198
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstError:Lcom/ss/ttvideoengine/utils/Error;

    .line 199
    .line 200
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUrlMatchCondition:Z

    .line 201
    .line 202
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVegaCollector:Lcom/ss/ttvideoengine/log/VegaCollector;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VegaCollector;->reset()V

    .line 205
    .line 206
    .line 207
    new-instance v0, Lcom/ss/ttvideoengine/log/VRTracker;

    .line 208
    .line 209
    invoke-direct {v0}, Lcom/ss/ttvideoengine/log/VRTracker;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 213
    .line 214
    return-void
.end method

.method public retryFinish()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 7
    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    cmp-long v0, v2, v4

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 19
    .line 20
    sub-long v4, v2, v4

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashMap;

    .line 23
    .line 24
    const/4 v6, 0x5

    .line 25
    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iget-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 29
    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    const/16 v7, 0x43

    .line 33
    .line 34
    invoke-interface {v6, v7}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v6, v1

    .line 40
    :goto_0
    iget-object v7, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 41
    .line 42
    iget v7, v7, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 43
    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    const-string v8, "ec"

    .line 49
    .line 50
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    const-string v7, "p"

    .line 58
    .line 59
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string/jumbo v3, "t"

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "c"

    .line 77
    .line 78
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 82
    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string/jumbo v3, "st"

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorList:Ljava/util/ArrayList;

    .line 94
    .line 95
    new-instance v3, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v3, 0x3

    .line 105
    invoke-static {v2, v0, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCurError:Lcom/ss/ttvideoengine/utils/Error;

    .line 110
    .line 111
    const-wide/32 v2, -0x80000000

    .line 112
    .line 113
    .line 114
    iput-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStartT:J

    .line 115
    .line 116
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRetryStrategy:I

    .line 117
    .line 118
    return-void
.end method

.method public saveEvent()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-gtz v5, :cond_1

    .line 13
    .line 14
    iget-wide v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->ps_t:J

    .line 15
    .line 16
    cmp-long v5, v5, v3

    .line 17
    .line 18
    if-gtz v5, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    iget-boolean v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 22
    .line 23
    if-eqz v5, :cond_2

    .line 24
    .line 25
    cmp-long v1, v1, v3

    .line 26
    .line 27
    if-lez v1, :cond_2

    .line 28
    .line 29
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-gtz v1, :cond_2

    .line 34
    .line 35
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 36
    .line 37
    cmp-long v1, v1, v3

    .line 38
    .line 39
    if-gtz v1, :cond_3

    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 53
    .line 54
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateEventData()V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/ss/ttvideoengine/log/c;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/log/c;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public seekCompleted()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const-wide/32 v0, -0x80000000

    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public seekTo(IIZ)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 2
    .line 3
    if-nez v0, :cond_4

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p3, :cond_3

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 13
    .line 14
    const/4 v3, 0x3

    .line 15
    const-string v4, "seek"

    .line 16
    .line 17
    if-ne p3, v3, :cond_0

    .line 18
    .line 19
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 20
    .line 21
    invoke-virtual {p3, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 25
    .line 26
    iput-wide v1, p3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 27
    .line 28
    :cond_0
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v5, 0x4

    .line 32
    if-ne p3, v5, :cond_1

    .line 33
    .line 34
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 35
    .line 36
    invoke-virtual {p3, v4, v3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    .line 40
    .line 41
    add-int/2addr p3, v0

    .line 42
    iput p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekCount:I

    .line 43
    .line 44
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 45
    .line 46
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 47
    .line 48
    invoke-virtual {v5, p1, p2, p3}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->beginSeek(III)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 54
    .line 55
    iget-wide v6, v5, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferStartT:J

    .line 56
    .line 57
    iput-wide v6, p3, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferStartT:J

    .line 58
    .line 59
    iget-wide v6, v5, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 60
    .line 61
    iput-wide v6, p3, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mLastBufferEndT:J

    .line 62
    .line 63
    iput-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 64
    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    iput-wide v1, v5, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    .line 68
    .line 69
    iput p2, v5, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekPosition:I

    .line 70
    .line 71
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide p2

    .line 75
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSeekBeginT:J

    .line 76
    .line 77
    iget-boolean p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 78
    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 82
    .line 83
    invoke-virtual {p2, p1, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 87
    .line 88
    :cond_3
    const/16 p1, -0x7d2

    .line 89
    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 91
    .line 92
    .line 93
    :cond_4
    return-void
.end method

.method public setAbrGeneralInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrGeneralInfo:Ljava/util/Map;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setAbrInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setAudioBufferLength(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    long-to-int p1, p1

    .line 7
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBufferLength:I

    .line 8
    .line 9
    return-void
.end method

.method public setAudioDNSParseTime(JI)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, p3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 7
    .line 8
    return-void
.end method

.method public setAudioTranConnectTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 7
    .line 8
    return-void
.end method

.method public setAudioTranFirstPacketTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 7
    .line 8
    return-void
.end method

.method public setCheckHijack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->checkHijack:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setCurHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurHost(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCurIP(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurIP(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCurQuality(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurQuality(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCurResolution(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurResolution(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCurURL(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurURL(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setCurrentQualityDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setCurrentQualityDesc(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCustomInfo(Lcom/ss/ttvideoengine/log/IVideoEventLogger$VideoEventCustomInfo;Ljava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "brian setCustomInfo key:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", value:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "VideoEventLoggerV2"

    .line 27
    .line 28
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    :try_start_0
    sget-object v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$2;->$SwitchMap$com$ss$ttvideoengine$log$IVideoEventLogger$VideoEventCustomInfo:[I

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    aget v0, v0, v3

    .line 42
    .line 43
    packed-switch v0, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v3, "setCustomInfo invalid key:"

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto :goto_0

    .line 76
    :pswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 77
    .line 78
    check-cast p2, Ljava/lang/String;

    .line 79
    .line 80
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlaySessionId:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCompanyID:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mOttPluginVersion:I

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_3
    instance-of p1, p2, Ljava/util/HashMap;

    .line 98
    .line 99
    if-eqz p1, :cond_0

    .line 100
    .line 101
    check-cast p2, Ljava/util/HashMap;

    .line 102
    .line 103
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCastObject:Ljava/util/HashMap;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomPlayEngineT:J

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_5
    check-cast p2, Ljava/lang/Long;

    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 118
    .line 119
    .line 120
    move-result-wide p1

    .line 121
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomInitEngineT:J

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :pswitch_6
    check-cast p2, Ljava/lang/Long;

    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomGetVideoModelT:J

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :pswitch_7
    check-cast p2, Ljava/lang/Long;

    .line 134
    .line 135
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 136
    .line 137
    .line 138
    move-result-wide p1

    .line 139
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomClickT:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v0, "setCustomInfo fail:"

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :cond_0
    :goto_1
    :pswitch_8
    return-void

    .line 168
    nop

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomP2PCDNType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomP2PCDNType:I

    .line 2
    .line 3
    return-void
.end method

.method public setCustomStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCustomStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setDNSEndTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 8
    .line 9
    const/4 p2, 0x1

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    iget p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/16 p1, -0x3ed

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setDNSParseTime(JI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-gtz v1, :cond_1

    .line 13
    .line 14
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 15
    .line 16
    iput p3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public setDNSStartTime(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    .line 6
    .line 7
    iput p3, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    const/16 p1, -0x3ec

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setDashAudioCacheSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_apls:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setDashVideoCacheSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_vpls:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setDecodeFirstAudioFrameTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 7
    .line 8
    return-void
.end method

.method public setDecodeFirstVideoFrameTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 7
    .line 8
    return-void
.end method

.method public setDisableAccurateStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDisableAccurateStart:I

    .line 2
    .line 3
    return-void
.end method

.method public setDnsMode(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "dir_url"

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 19
    .line 20
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 21
    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne p1, v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 35
    .line 36
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public setDrmTokenUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmTokenUrl:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setDrmType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    .line 4
    .line 5
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDuration:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    .line 6
    .line 7
    return-void
.end method

.method public setEffect(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFilterMonitor:Lcom/ss/ttvideoengine/log/VideoFilterMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoFilterMonitor;->setEffect(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    new-instance v2, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "time"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectList:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const-string v0, "effect_type"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/16 v1, 0x8

    .line 39
    .line 40
    if-ne v0, v1, :cond_0

    .line 41
    .line 42
    const-string/jumbo v0, "vr_model"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const-string/jumbo v1, "view_size"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const-string/jumbo v2, "video_style"

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 64
    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/log/VRTracker;->setVideoStyle(I)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/log/VRTracker;->setViewSize(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/log/VRTracker;->setDimension(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/log/VRTracker;->setProjectStyle(I)V

    .line 82
    .line 83
    .line 84
    :cond_0
    return-void
.end method

.method public setEnableBash(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableBash:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnableBmfSr(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->setEnableBmf(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setEnableMDL(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableMDL:I

    .line 4
    .line 5
    return-void
.end method

.method public setEncryptKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->encryptKey:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setFeed(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    return-void
.end method

.method public setFeed(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setFeed(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    return-void
.end method

.method public setFirstPlayerFirstFrameTime(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    if-gtz v1, :cond_1

    .line 13
    .line 14
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public setFloatOption(IF)V
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p1, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0xa2

    .line 6
    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0xa4

    .line 10
    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xa6

    .line 14
    .line 15
    if-eq p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0xa7

    .line 18
    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->setProccessSuccessRate(F)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->setProcessorAverageCostTime(F)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectChainAverageTime:Ljava/lang/Float;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 44
    .line 45
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrFPS:Ljava/lang/Float;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_4
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkSpeedPredictSamplingRate:F

    .line 53
    .line 54
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->setSamplingRate(F)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method public setFramesDropNum(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFramesSetDropNum:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setGearStrategyEvent(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setHijackCode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq p1, v1, :cond_1

    .line 7
    .line 8
    iget v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstHijackCode:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstHijackCode:I

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastHijackCode:I

    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public setHijackRetry(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijackRetry:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setInitialHost(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialHost:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialHost:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setInitialIP(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialIP:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialIP:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setInitialQuality(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQuality:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setInitialQualityType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialQualityType:I

    .line 2
    .line 3
    return-void
.end method

.method public setInitialResolution(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialResolution:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "to"

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/4 p1, -0x1

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "p"

    .line 21
    .line 22
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string/jumbo v1, "t"

    .line 34
    .line 35
    .line 36
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v1, "c"

    .line 45
    .line 46
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    const-string v1, "seam"

    .line 52
    .line 53
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mResolutionList:Ljava/util/ArrayList;

    .line 57
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public setInitialURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mInitialURL:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mInitialURL:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioInitURL:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setIntOption(II)V
    .locals 3

    .line 1
    const/16 v0, 0x36

    .line 2
    .line 3
    if-eq p1, v0, :cond_f

    .line 4
    .line 5
    const/16 v0, 0x37

    .line 6
    .line 7
    if-eq p1, v0, :cond_e

    .line 8
    .line 9
    const/16 v0, 0x3b

    .line 10
    .line 11
    if-eq p1, v0, :cond_d

    .line 12
    .line 13
    const/16 v0, 0x3c

    .line 14
    .line 15
    if-eq p1, v0, :cond_c

    .line 16
    .line 17
    const/16 v0, 0x6f

    .line 18
    .line 19
    if-eq p1, v0, :cond_b

    .line 20
    .line 21
    const/16 v0, 0x70

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq p1, v0, :cond_9

    .line 26
    .line 27
    const/16 v0, 0x7e

    .line 28
    .line 29
    if-eq p1, v0, :cond_7

    .line 30
    .line 31
    const/16 v0, 0x7f

    .line 32
    .line 33
    if-eq p1, v0, :cond_6

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    packed-switch p1, :pswitch_data_1

    .line 39
    .line 40
    .line 41
    packed-switch p1, :pswitch_data_2

    .line 42
    .line 43
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 45
    .line 46
    .line 47
    packed-switch p1, :pswitch_data_3

    .line 48
    .line 49
    .line 50
    packed-switch p1, :pswitch_data_4

    .line 51
    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :pswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 56
    .line 57
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :pswitch_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 63
    .line 64
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 65
    .line 66
    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_2
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHardwareConfType:I

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :pswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 74
    .line 75
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 81
    .line 82
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :pswitch_5
    if-lez p2, :cond_10

    .line 88
    .line 89
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 90
    .line 91
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 92
    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :pswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 97
    .line 98
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :pswitch_7
    if-lez p2, :cond_10

    .line 104
    .line 105
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2200(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;)I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    or-int/2addr p2, v0

    .line 112
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2202(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 113
    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :pswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 118
    .line 119
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->color_trc:I

    .line 120
    .line 121
    goto/16 :goto_1

    .line 122
    .line 123
    :pswitch_9
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPreRangeOff:I

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :pswitch_a
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReadCacheMode:I

    .line 128
    .line 129
    goto/16 :goto_1

    .line 130
    .line 131
    :pswitch_b
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableNNSR:I

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :sswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VRTracker;->setViewSize(I)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VRTracker;->setProjectStyle(I)V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_1

    .line 148
    .line 149
    :sswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VRTracker;->setDimension(I)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :sswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVRTracker:Lcom/ss/ttvideoengine/log/VRTracker;

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VRTracker;->setVideoStyle(I)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_1

    .line 162
    .line 163
    :sswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 164
    .line 165
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_da:I

    .line 166
    .line 167
    goto/16 :goto_1

    .line 168
    .line 169
    :sswitch_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 170
    .line 171
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_dv:I

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :sswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 176
    .line 177
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason:I

    .line 178
    .line 179
    goto/16 :goto_1

    .line 180
    .line 181
    :sswitch_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 182
    .line 183
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalStrategy:I

    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :sswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 188
    .line 189
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalInterval:I

    .line 190
    .line 191
    goto/16 :goto_1

    .line 192
    .line 193
    :sswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 194
    .line 195
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalCode:I

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :sswitch_a
    if-lez p2, :cond_0

    .line 200
    .line 201
    move v1, v2

    .line 202
    :cond_0
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedForAudio:Z

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :sswitch_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 207
    .line 208
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeState:I

    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :sswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 213
    .line 214
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInvalidCode:I

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :sswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 219
    .line 220
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDLOnFirstPlay:I

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :sswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 225
    .line 226
    if-ne p2, v2, :cond_1

    .line 227
    .line 228
    move v1, v2

    .line 229
    :cond_1
    iput-boolean v1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVModelHasFallbackApi:Z

    .line 230
    .line 231
    goto/16 :goto_1

    .line 232
    .line 233
    :sswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 234
    .line 235
    if-eqz p1, :cond_10

    .line 236
    .line 237
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->setLoadTypeWhenSeek(I)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :sswitch_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 243
    .line 244
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 245
    .line 246
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    const-string/jumbo v0, "so"

    .line 251
    .line 252
    .line 253
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    goto/16 :goto_1

    .line 257
    .line 258
    :sswitch_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 259
    .line 260
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 261
    .line 262
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    const-string/jumbo v0, "sut"

    .line 267
    .line 268
    .line 269
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :sswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 275
    .line 276
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 277
    .line 278
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    const-string/jumbo v0, "srs"

    .line 283
    .line 284
    .line 285
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :sswitch_13
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskDelayLoading:I

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :sswitch_14
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskEnableDataloader:I

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :sswitch_15
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskRangeOpt:I

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :sswitch_16
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 303
    .line 304
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mExpirePlayCode:I

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :sswitch_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 309
    .line 310
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 311
    .line 312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    const-string/jumbo v0, "sm"

    .line 317
    .line 318
    .line 319
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    goto/16 :goto_1

    .line 323
    .line 324
    :sswitch_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 325
    .line 326
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 327
    .line 328
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    const-string/jumbo v0, "sfr"

    .line 333
    .line 334
    .line 335
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    goto/16 :goto_1

    .line 339
    .line 340
    :sswitch_19
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 341
    .line 342
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 343
    .line 344
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object p2

    .line 348
    const-string/jumbo v0, "ss"

    .line 349
    .line 350
    .line 351
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :sswitch_1a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 357
    .line 358
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 359
    .line 360
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    .line 362
    .line 363
    move-result-object p2

    .line 364
    const-string v0, "eas"

    .line 365
    .line 366
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_1b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 372
    .line 373
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 374
    .line 375
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const-string v1, "ess"

    .line 380
    .line 381
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 385
    .line 386
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$3102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 387
    .line 388
    .line 389
    goto/16 :goto_1

    .line 390
    .line 391
    :sswitch_1c
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEngineHash:I

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :sswitch_1d
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCountOfEngineInUse:I

    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :sswitch_1e
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorepoolSizeBeforeGetEngine:I

    .line 400
    .line 401
    goto/16 :goto_1

    .line 402
    .line 403
    :sswitch_1f
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mCorePoolSizeUpperLimit:I

    .line 404
    .line 405
    goto/16 :goto_1

    .line 406
    .line 407
    :sswitch_20
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 408
    .line 409
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 410
    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    const-string v0, "gs_error"

    .line 416
    .line 417
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    goto/16 :goto_1

    .line 421
    .line 422
    :sswitch_21
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 423
    .line 424
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 425
    .line 426
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    const-string v0, "gs_reason"

    .line 431
    .line 432
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    goto/16 :goto_1

    .line 436
    .line 437
    :sswitch_22
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mReportLevel:I

    .line 438
    .line 439
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 440
    .line 441
    invoke-direct {p0, v2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->enableReport(I)Z

    .line 442
    .line 443
    .line 444
    move-result p2

    .line 445
    iput-boolean p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->mReportSeek:Z

    .line 446
    .line 447
    goto/16 :goto_1

    .line 448
    .line 449
    :sswitch_23
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mModelVersion:I

    .line 450
    .line 451
    goto/16 :goto_1

    .line 452
    .line 453
    :sswitch_24
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableOptSubLoad:I

    .line 454
    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :sswitch_25
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSub:I

    .line 458
    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :sswitch_26
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMask:I

    .line 462
    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :sswitch_27
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSubThread:I

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :sswitch_28
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableMaskThread:I

    .line 470
    .line 471
    goto/16 :goto_1

    .line 472
    .line 473
    :sswitch_29
    new-instance p1, Ljava/util/HashMap;

    .line 474
    .line 475
    const/4 v0, 0x3

    .line 476
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 477
    .line 478
    .line 479
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 480
    .line 481
    if-eqz v0, :cond_2

    .line 482
    .line 483
    const/16 v1, 0x43

    .line 484
    .line 485
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    goto :goto_0

    .line 490
    :cond_2
    const/4 v0, -0x1

    .line 491
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object p2

    .line 495
    const-string v1, "s"

    .line 496
    .line 497
    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 501
    .line 502
    .line 503
    move-result-object p2

    .line 504
    const-string v0, "p"

    .line 505
    .line 506
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 510
    .line 511
    .line 512
    move-result-wide v0

    .line 513
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 514
    .line 515
    .line 516
    move-result-object p2

    .line 517
    const-string/jumbo v0, "t"

    .line 518
    .line 519
    .line 520
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadiomodeList:Ljava/util/ArrayList;

    .line 524
    .line 525
    new-instance v0, Lorg/json/JSONObject;

    .line 526
    .line 527
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-static {p2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_1

    .line 538
    .line 539
    :sswitch_2a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 540
    .line 541
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 542
    .line 543
    .line 544
    goto/16 :goto_1

    .line 545
    .line 546
    :sswitch_2b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 547
    .line 548
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 549
    .line 550
    .line 551
    goto/16 :goto_1

    .line 552
    .line 553
    :sswitch_2c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 554
    .line 555
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 556
    .line 557
    .line 558
    goto/16 :goto_1

    .line 559
    .line 560
    :sswitch_2d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 561
    .line 562
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 563
    .line 564
    .line 565
    goto/16 :goto_1

    .line 566
    .line 567
    :sswitch_2e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 568
    .line 569
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 570
    .line 571
    .line 572
    goto/16 :goto_1

    .line 573
    .line 574
    :sswitch_2f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 575
    .line 576
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 577
    .line 578
    .line 579
    goto/16 :goto_1

    .line 580
    .line 581
    :sswitch_30
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 582
    .line 583
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 584
    .line 585
    .line 586
    goto/16 :goto_1

    .line 587
    .line 588
    :sswitch_31
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 589
    .line 590
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 591
    .line 592
    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :sswitch_32
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 596
    .line 597
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 598
    .line 599
    .line 600
    goto/16 :goto_1

    .line 601
    .line 602
    :sswitch_33
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 603
    .line 604
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1202(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 605
    .line 606
    .line 607
    goto/16 :goto_1

    .line 608
    .line 609
    :sswitch_34
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 610
    .line 611
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1102(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 612
    .line 613
    .line 614
    goto/16 :goto_1

    .line 615
    .line 616
    :sswitch_35
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 617
    .line 618
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$1002(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 619
    .line 620
    .line 621
    goto/16 :goto_1

    .line 622
    .line 623
    :sswitch_36
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 624
    .line 625
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 626
    .line 627
    .line 628
    goto/16 :goto_1

    .line 629
    .line 630
    :sswitch_37
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 631
    .line 632
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$802(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 633
    .line 634
    .line 635
    goto/16 :goto_1

    .line 636
    .line 637
    :sswitch_38
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 638
    .line 639
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$702(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 640
    .line 641
    .line 642
    goto/16 :goto_1

    .line 643
    .line 644
    :sswitch_39
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 645
    .line 646
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$502(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 647
    .line 648
    .line 649
    goto/16 :goto_1

    .line 650
    .line 651
    :pswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 652
    .line 653
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 654
    .line 655
    .line 656
    goto/16 :goto_1

    .line 657
    .line 658
    :pswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 659
    .line 660
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$302(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 661
    .line 662
    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :pswitch_e
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkTimeout:I

    .line 666
    .line 667
    goto/16 :goto_1

    .line 668
    .line 669
    :pswitch_f
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBufferTimeout:I

    .line 670
    .line 671
    goto/16 :goto_1

    .line 672
    .line 673
    :pswitch_10
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelMaxCount:I

    .line 674
    .line 675
    goto/16 :goto_1

    .line 676
    .line 677
    :pswitch_11
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetLevelIntervalMs:I

    .line 678
    .line 679
    goto/16 :goto_1

    .line 680
    .line 681
    :pswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 682
    .line 683
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->setMaxWindowSize(I)V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_1

    .line 687
    .line 688
    :pswitch_13
    if-eqz p2, :cond_3

    .line 689
    .line 690
    iput-boolean v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSpeedReport:Z

    .line 691
    .line 692
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 693
    .line 694
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->startRecord()V

    .line 695
    .line 696
    .line 697
    goto :goto_1

    .line 698
    :cond_3
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEnableSpeedReport:Z

    .line 699
    .line 700
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 701
    .line 702
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->stopRecord()V

    .line 703
    .line 704
    .line 705
    goto :goto_1

    .line 706
    :pswitch_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 707
    .line 708
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->setInterval(I)V

    .line 709
    .line 710
    .line 711
    goto :goto_1

    .line 712
    :pswitch_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 713
    .line 714
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mAudioHwUser:I

    .line 715
    .line 716
    goto :goto_1

    .line 717
    :pswitch_16
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 718
    .line 719
    goto :goto_1

    .line 720
    :pswitch_17
    if-ne p2, v2, :cond_4

    .line 721
    .line 722
    move v1, v2

    .line 723
    :cond_4
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioStreamDisabled:Z

    .line 724
    .line 725
    goto :goto_1

    .line 726
    :pswitch_18
    if-ne p2, v2, :cond_5

    .line 727
    .line 728
    move v1, v2

    .line 729
    :cond_5
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoStreamDisabled:Z

    .line 730
    .line 731
    goto :goto_1

    .line 732
    :pswitch_19
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mRadioMode:I

    .line 733
    .line 734
    goto :goto_1

    .line 735
    :cond_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 736
    .line 737
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2402(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 738
    .line 739
    .line 740
    goto :goto_1

    .line 741
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 742
    .line 743
    if-ne p2, v2, :cond_8

    .line 744
    .line 745
    move v1, v2

    .line 746
    :cond_8
    iput-boolean v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnablePowerReport:Z

    .line 747
    .line 748
    goto :goto_1

    .line 749
    :cond_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 750
    .line 751
    if-ne p2, v2, :cond_a

    .line 752
    .line 753
    move v1, v2

    .line 754
    :cond_a
    iput-boolean v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mEnableTmpLog:Z

    .line 755
    .line 756
    goto :goto_1

    .line 757
    :cond_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 758
    .line 759
    iput p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHasNoSurfaceWhenAudioRenderStart:I

    .line 760
    .line 761
    goto :goto_1

    .line 762
    :cond_c
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedLevel:I

    .line 763
    .line 764
    goto :goto_1

    .line 765
    :cond_d
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFirstRangeSize:I

    .line 766
    .line 767
    goto :goto_1

    .line 768
    :cond_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 769
    .line 770
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$2902(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 771
    .line 772
    .line 773
    goto :goto_1

    .line 774
    :cond_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFeatureConfigs:Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;

    .line 775
    .line 776
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;->access$602(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$FeatureConfigs;I)I

    .line 777
    .line 778
    .line 779
    :cond_10
    :goto_1
    return-void

    .line 780
    nop

    .line 781
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_39
        0x1e -> :sswitch_38
        0x1f -> :sswitch_37
        0x20 -> :sswitch_36
        0x21 -> :sswitch_35
        0x22 -> :sswitch_34
        0x23 -> :sswitch_33
        0x24 -> :sswitch_32
        0x25 -> :sswitch_31
        0x26 -> :sswitch_30
        0x27 -> :sswitch_2f
        0x28 -> :sswitch_2e
        0x29 -> :sswitch_2d
        0x2a -> :sswitch_2c
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2a
        0x2d -> :sswitch_29
        0x2e -> :sswitch_28
        0x2f -> :sswitch_27
        0x30 -> :sswitch_26
        0x31 -> :sswitch_25
        0x32 -> :sswitch_24
        0x3e -> :sswitch_23
        0x64 -> :sswitch_22
        0x66 -> :sswitch_21
        0x68 -> :sswitch_20
        0x81 -> :sswitch_1f
        0x82 -> :sswitch_1e
        0x83 -> :sswitch_1d
        0x84 -> :sswitch_1c
        0x85 -> :sswitch_1b
        0x86 -> :sswitch_1a
        0x8a -> :sswitch_19
        0x8b -> :sswitch_18
        0x8c -> :sswitch_17
        0x8e -> :sswitch_16
        0x8f -> :sswitch_15
        0x90 -> :sswitch_14
        0x91 -> :sswitch_13
        0x94 -> :sswitch_12
        0x95 -> :sswitch_11
        0x96 -> :sswitch_10
        0x9b -> :sswitch_f
        0xac -> :sswitch_e
        0xad -> :sswitch_d
        0xae -> :sswitch_c
        0xaf -> :sswitch_b
        0xb1 -> :sswitch_a
        0xb2 -> :sswitch_9
        0xb3 -> :sswitch_8
        0xb4 -> :sswitch_7
        0xb5 -> :sswitch_6
        0xb6 -> :sswitch_5
        0xb7 -> :sswitch_4
        0xb8 -> :sswitch_3
        0xb9 -> :sswitch_2
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch

    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    :pswitch_data_3
    .packed-switch 0x4f
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x59
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIsEnableABR(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_enable_abr:I

    .line 4
    .line 5
    return-void
.end method

.method public setIsMultiDimensionsInput(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_multi_dimensionsInput:I

    .line 4
    .line 5
    return-void
.end method

.method public setIsMultiDimensionsOut(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->is_multi_dimensions:I

    .line 4
    .line 5
    return-void
.end method

.method public setIsVideoModelCache(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->useVideoModelCache:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setLoggerTimes(I)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    packed-switch p1, :pswitch_data_1

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->setSeekLoadingEndTime(J)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->setSeekLoadingBeginTime(J)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->setSeekCompleteTime(J)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->prepare_before_play_t:J

    .line 39
    .line 40
    cmp-long p1, v4, v2

    .line 41
    .line 42
    if-gtz p1, :cond_0

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->prepare_before_play_t:J

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 48
    .line 49
    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 50
    .line 51
    cmp-long v2, v4, v2

    .line 52
    .line 53
    if-gtz v2, :cond_0

    .line 54
    .line 55
    iput-wide v0, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    .line 59
    .line 60
    cmp-long p1, v4, v2

    .line 61
    .line 62
    if-gtz p1, :cond_0

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->setds_t:J

    .line 65
    .line 66
    :cond_0
    :goto_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLongOption(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x15

    .line 2
    .line 3
    if-eq p1, v0, :cond_a

    .line 4
    .line 5
    const/16 v0, 0x38

    .line 6
    .line 7
    if-eq p1, v0, :cond_9

    .line 8
    .line 9
    const/16 v0, 0x65

    .line 10
    .line 11
    if-eq p1, v0, :cond_8

    .line 12
    .line 13
    const/16 v0, 0x67

    .line 14
    .line 15
    if-eq p1, v0, :cond_7

    .line 16
    .line 17
    const/16 v0, 0x93

    .line 18
    .line 19
    if-eq p1, v0, :cond_6

    .line 20
    .line 21
    const/16 v0, 0x57

    .line 22
    .line 23
    if-eq p1, v0, :cond_5

    .line 24
    .line 25
    const/16 v0, 0x58

    .line 26
    .line 27
    if-eq p1, v0, :cond_4

    .line 28
    .line 29
    const/16 v0, 0x62

    .line 30
    .line 31
    if-eq p1, v0, :cond_3

    .line 32
    .line 33
    const/16 v0, 0x63

    .line 34
    .line 35
    if-eq p1, v0, :cond_2

    .line 36
    .line 37
    const/16 v0, 0x88

    .line 38
    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    .line 41
    const/16 v0, 0x89

    .line 42
    .line 43
    if-eq p1, v0, :cond_0

    .line 44
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    packed-switch p1, :pswitch_data_1

    .line 49
    .line 50
    .line 51
    packed-switch p1, :pswitch_data_2

    .line 52
    .line 53
    .line 54
    packed-switch p1, :pswitch_data_3

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 60
    .line 61
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_sock_create_t:J

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :pswitch_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 66
    .line 67
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_sock_create_t:J

    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :pswitch_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 72
    .line 73
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_tran_open_t:J

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 78
    .line 79
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_tran_open_t:J

    .line 80
    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :pswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 84
    .line 85
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_http_open_t:J

    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :pswitch_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 90
    .line 91
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_http_open_t:J

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :pswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 98
    .line 99
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-string p3, "gs_on_after_end"

    .line 104
    .line 105
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :pswitch_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 113
    .line 114
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    const-string p3, "gs_on_after_begin"

    .line 119
    .line 120
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :pswitch_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 128
    .line 129
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    const-string p3, "gs_on_before_end"

    .line 134
    .line 135
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :pswitch_9
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 143
    .line 144
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    const-string p3, "gs_on_before_begin"

    .line 149
    .line 150
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :pswitch_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 156
    .line 157
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 158
    .line 159
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    const-string p3, "gs_select_end"

    .line 164
    .line 165
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :pswitch_b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 173
    .line 174
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    const-string p3, "gs_select_begin"

    .line 179
    .line 180
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :pswitch_c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 186
    .line 187
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :pswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 192
    .line 193
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :pswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 198
    .line 199
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :pswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 204
    .line 205
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :pswitch_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 210
    .line 211
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_11
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 216
    .line 217
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_12
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 222
    .line 223
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :pswitch_13
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 228
    .line 229
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_14
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 234
    .line 235
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_15
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 240
    .line 241
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_start_t:J

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_16
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 246
    .line 247
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_start_t:J

    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :pswitch_17
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 252
    .line 253
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :pswitch_18
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 258
    .line 259
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :pswitch_19
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 264
    .line 265
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_1a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 270
    .line 271
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_1b
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 276
    .line 277
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    .line 278
    .line 279
    goto :goto_0

    .line 280
    :pswitch_1c
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 281
    .line 282
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 286
    .line 287
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 288
    .line 289
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    const-string p3, "bad"

    .line 294
    .line 295
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    goto :goto_0

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 300
    .line 301
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 302
    .line 303
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object p2

    .line 307
    const-string p3, "bbd"

    .line 308
    .line 309
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_2
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 314
    .line 315
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDuration:J

    .line 316
    .line 317
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 318
    .line 319
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mAudioStreamDuration:J

    .line 320
    .line 321
    goto :goto_0

    .line 322
    :cond_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 323
    .line 324
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDuration:J

    .line 325
    .line 326
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 327
    .line 328
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->mVideoStreamDuration:J

    .line 329
    .line 330
    goto :goto_0

    .line 331
    :cond_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 332
    .line 333
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_prepared_time:J

    .line 334
    .line 335
    goto :goto_0

    .line 336
    :cond_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 337
    .line 338
    iput-wide p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->httpResponseT:J

    .line 339
    .line 340
    goto :goto_0

    .line 341
    :cond_6
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileSize:J

    .line 342
    .line 343
    goto :goto_0

    .line 344
    :cond_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 345
    .line 346
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 347
    .line 348
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    const-string p3, "gs_speed"

    .line 353
    .line 354
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    goto :goto_0

    .line 358
    :cond_8
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 359
    .line 360
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 361
    .line 362
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    const-string p3, "gs_bitrate"

    .line 367
    .line 368
    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_9
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAudioBitrate:J

    .line 373
    .line 374
    goto :goto_0

    .line 375
    :cond_a
    iput-wide p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBitrate:J

    .line 376
    .line 377
    :goto_0
    return-void

    .line 378
    nop

    .line 379
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    :pswitch_data_2
    .packed-switch 0x69
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :pswitch_data_3
    .packed-switch 0x78
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLooping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLooping:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaskErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskErrc:I

    .line 2
    .line 3
    return-void
.end method

.method public setMaskUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setMediaCodecRender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMediaCodecRender:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetWorkTryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetWorkTryCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetworkSpeedFrom(DI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p3, :cond_2

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq p3, v1, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playEndSpeed:D

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_2
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstFrameSpeed:D

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setP2PCDNType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setP2PCDNType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setP2PSDKVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mP2PSDKVersion:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setP2PUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mP2PUrl:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setPlayAPIVersion(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mApiVer:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAuth:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setPlayType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlayType:I

    .line 4
    .line 5
    return-void
.end method

.method public setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getSpeed()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    new-instance v1, Ljava/util/HashMap;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getAudioFallbackMode()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "AFMode"

    .line 25
    .line 26
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/ss/ttm/player/PlaybackParams;->getPitch()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v3, "pitch"

    .line 38
    .line 39
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string/jumbo v3, "speed"

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaybackParams:Ljava/util/Map;

    .line 53
    .line 54
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 55
    .line 56
    iget p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 57
    .line 58
    cmpl-float p1, p1, v0

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 71
    .line 72
    iput v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 73
    .line 74
    new-instance p1, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const/16 v1, 0x43

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    const/4 v0, -0x1

    .line 91
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 92
    .line 93
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlaySpeed:F

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string/jumbo v2, "to"

    .line 100
    .line 101
    .line 102
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const-string v1, "p"

    .line 110
    .line 111
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 115
    .line 116
    .line 117
    move-result-wide v0

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string/jumbo v1, "t"

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 129
    .line 130
    new-instance v1, Lorg/json/JSONObject;

    .line 131
    .line 132
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    return-void
.end method

.method public setPlayerCreatedT(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_created_t:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-gtz v1, :cond_0

    .line 12
    .line 13
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_created_t:J

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public setPlayerHostAddr(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->internalIP:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public setPlayerSurface(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayerSurfaceCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayerSurfaceCode:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public setPlayerViewSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mViewSizeMonitor:Lcom/ss/ttvideoengine/log/ViewSizeMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/ViewSizeMonitor;->setSize(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProxyUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mProxyUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReceiveFirstAudioFrameTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 7
    .line 8
    return-void
.end method

.method public setReceiveFirstVideoFrameTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 7
    .line 8
    return-void
.end method

.method public setSRPreloadInfo(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRPreloadInfo:Ljava/util/Map;

    .line 4
    .line 5
    return-void
.end method

.method public setSRStrategyInfo(Lcom/ss/ttvideoengine/superresolution/SRStrategy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getStrategyInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setSourceRefreshLog(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSourceRefreshLog:Lorg/json/JSONObject;

    .line 4
    .line 5
    return-void
.end method

.method public setSourceType(ILjava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsLocal:Z

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setSourceType(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mPlayCount:I

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_setDefaultExitReason(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setSpeedPredictorAlgoType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->speed_predict_type:I

    .line 4
    .line 5
    return-void
.end method

.method public setSrAlgorithm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->setAlgorithm(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSrScaleType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSrMonitor:Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/SuperResolutionMonitor;->setSrScaleType(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStartPlayHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartPlayWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setStartTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mStartTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)V
    .locals 1

    .line 1
    sparse-switch p1, :sswitch_data_0

    .line 2
    .line 3
    .line 4
    goto/16 :goto_0

    .line 5
    .line 6
    :sswitch_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 7
    .line 8
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeError:Ljava/lang/String;

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :sswitch_1
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrEffectErrorCode:Ljava/lang/String;

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :sswitch_2
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mTrPerEffectAverageTime:Ljava/lang/String;

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :sswitch_3
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrVersion:Ljava/lang/String;

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :sswitch_4
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 27
    .line 28
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLGroupId:Ljava/lang/String;

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_5
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 33
    .line 34
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMediaID:Ljava/lang/String;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_6
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 38
    .line 39
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioFileHash:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_7
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 43
    .line 44
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFileHash:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_8
    :try_start_0
    new-instance p1, Lorg/json/JSONArray;

    .line 48
    .line 49
    invoke-direct {p1, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 55
    .line 56
    const-string/jumbo v0, "smi"

    .line 57
    .line 58
    .line 59
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :sswitch_9
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMaskFileHash:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :sswitch_a
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 72
    .line 73
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 74
    .line 75
    const-string v0, "headers"

    .line 76
    .line 77
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :sswitch_b
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 87
    .line 88
    iget-object p2, p2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 89
    .line 90
    const-string v0, "sc"

    .line 91
    .line 92
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_1
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :sswitch_c
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mFromEnginePool:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :sswitch_d
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityAlgorithm:Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;

    .line 105
    .line 106
    if-eqz p1, :cond_0

    .line 107
    .line 108
    const/4 v0, 0x4

    .line 109
    invoke-interface {p1, v0, p2}, Lcom/ss/ttvideoengine/log/PortraitNetworkScore$NetworkQualityAlgorithm;->setStringOption(ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    iput-object p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetworkQualityVar:Ljava/lang/String;

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :sswitch_e
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 117
    .line 118
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :sswitch_f
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 122
    .line 123
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mOriginVid:Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :sswitch_10
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 127
    .line 128
    iput-object p2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->log_id:Ljava/lang/String;

    .line 129
    .line 130
    :goto_0
    return-void

    .line 131
    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_10
        0x35 -> :sswitch_f
        0x56 -> :sswitch_e
        0x71 -> :sswitch_d
        0x80 -> :sswitch_c
        0x87 -> :sswitch_b
        0x8d -> :sswitch_a
        0x92 -> :sswitch_9
        0x97 -> :sswitch_8
        0x98 -> :sswitch_7
        0x99 -> :sswitch_6
        0x9a -> :sswitch_5
        0x9c -> :sswitch_4
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_2
        0xa5 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setSubTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setSubtitleError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubError:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSubtitleIdsCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubIdsCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setSubtitleRequestUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSubReqURL:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSurface(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceCode:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceSetTime:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-gtz p1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSurfaceSetTime:J

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setSurfaceBegin()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-le v0, v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 18
    .line 19
    const-wide/16 v2, 0x0

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-gtz v0, :cond_2

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public setSurfaceEnd()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-lez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    new-instance v2, Ljava/util/HashMap;

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const-wide/32 v0, -0x80000000

    .line 54
    .line 55
    .line 56
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceBeginT:J

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public setSurfaceSourceType(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSetSurfaceType:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 14
    .line 15
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setTextureRenderError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorMsg:Ljava/lang/String;

    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public setTraceID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->traceID:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 8
    .line 9
    iput-object p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTraceID:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public setTranConnectTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 7
    .line 8
    return-void
.end method

.method public setTranFirstPacketTime(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 7
    .line 8
    return-void
.end method

.method public setUploadLogEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUploadLogEnabled:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 4
    .line 5
    iput-boolean p1, v0, Lcom/ss/ttvideoengine/log/VideoEventBase;->isUploadLogEnabled:Z

    .line 6
    .line 7
    return-void
.end method

.method public setVUArray(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVUArray:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBufferLength(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    long-to-int p1, p1

    .line 7
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoBufferLength:I

    .line 8
    .line 9
    return-void
.end method

.method public setVideoCacheSize(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vpls:J

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public setVrDisplayDistance(F)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v3, "distc"

    .line 16
    .line 17
    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string/jumbo v1, "t"

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrDistanceList:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public setVrDisplayFrameRate(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrFrameRate:F

    .line 2
    .line 3
    return-void
.end method

.method public setVrHeadMovementDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrHeadMovementDelay:J

    .line 2
    .line 3
    return-void
.end method

.method public setVrScreenRefreshRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVrScreenRefreshRate:I

    .line 2
    .line 3
    return-void
.end method

.method public showedFirstAVSyncVideoFrame(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    cmp-long v1, v1, v3

    .line 8
    .line 9
    if-lez v1, :cond_0

    .line 10
    .line 11
    iget-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_first_sync_t:J

    .line 12
    .line 13
    cmp-long v1, v1, v3

    .line 14
    .line 15
    if-gtz v1, :cond_0

    .line 16
    .line 17
    iput-wide p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_first_sync_t:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public showedFirstFrame()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getFirstFrameSplitInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getNetworkSpeedFromPredictor()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mStSpeed:F

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public showedOneFrame()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 15
    .line 16
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mIsReplay:I

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-ne v0, v3, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 24
    .line 25
    iget-wide v4, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 26
    .line 27
    cmp-long v4, v4, v1

    .line 28
    .line 29
    if-gtz v4, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    iput-wide v4, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 38
    .line 39
    iget-wide v4, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 40
    .line 41
    cmp-long v1, v4, v1

    .line 42
    .line 43
    if-gtz v1, :cond_6

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->showedFirstFrame()V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->showedFirstFrame()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneNoRender:Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventOneNoRender;->showedFirstFrame()V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->showedOneFrame()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 82
    .line 83
    const/16 v2, 0x3f

    .line 84
    .line 85
    invoke-interface {v0, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput v0, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoCodecProfile:I

    .line 90
    .line 91
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 94
    .line 95
    const/16 v2, 0x40

    .line 96
    .line 97
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    .line 102
    .line 103
    :cond_5
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    .line 104
    .line 105
    if-ne v0, v3, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 108
    .line 109
    const/16 v1, 0x61

    .line 110
    .line 111
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_6

    .line 116
    .line 117
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    .line 119
    .line 120
    :cond_6
    const/16 v0, -0x7d1

    .line 121
    .line 122
    invoke-virtual {p0, v0, v3}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 123
    .line 124
    .line 125
    :cond_7
    return-void
.end method

.method public stop(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mBrightMonitor:Lcom/ss/ttvideoengine/log/BrightnessMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/BrightnessMonitor;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mHeadsetStateHistory:Lcom/ss/ttvideoengine/log/HeadsetStateHistory;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/HeadsetStateHistory;->stop()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    const-string v4, "exit"

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 29
    .line 30
    invoke-virtual {v2, v4, v5}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    move v2, v5

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x1

    .line 36
    :goto_0
    iget v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 37
    .line 38
    const/4 v6, 0x3

    .line 39
    if-ne v3, v6, :cond_2

    .line 40
    .line 41
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 47
    .line 48
    iput-wide v0, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 49
    .line 50
    move v2, v5

    .line 51
    :cond_2
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLeave:Z

    .line 54
    .line 55
    const-wide/16 v6, 0x0

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 60
    .line 61
    iget-wide v8, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 62
    .line 63
    cmp-long v8, v8, v6

    .line 64
    .line 65
    if-lez v8, :cond_3

    .line 66
    .line 67
    iget-wide v8, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 68
    .line 69
    cmp-long v8, v8, v6

    .line 70
    .line 71
    if-gtz v8, :cond_3

    .line 72
    .line 73
    iget-wide v8, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 74
    .line 75
    cmp-long v8, v8, v6

    .line 76
    .line 77
    if-gtz v8, :cond_4

    .line 78
    .line 79
    iput-wide v0, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 83
    .line 84
    iput-wide v0, v3, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 85
    .line 86
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 87
    .line 88
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/log/VideoEventBase;->movieFinish()V

    .line 91
    .line 92
    .line 93
    :cond_5
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 98
    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    const/16 v1, 0x43

    .line 102
    .line 103
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    int-to-long v0, v0

    .line 108
    goto :goto_2

    .line 109
    :cond_6
    const-wide/16 v0, -0x1

    .line 110
    .line 111
    :goto_2
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    .line 112
    .line 113
    long-to-int v0, v0

    .line 114
    invoke-virtual {v2, v0, v4}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iput-boolean v5, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 118
    .line 119
    :cond_7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 120
    .line 121
    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    .line 122
    .line 123
    cmp-long v0, v0, v6

    .line 124
    .line 125
    if-gtz v0, :cond_8

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_getFirstFrameSplitInfo()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 132
    .line 133
    const/4 v2, 0x2

    .line 134
    invoke-interface {v1, v2, v0}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->onInfo(ILjava/util/Map;)V

    .line 135
    .line 136
    .line 137
    :cond_8
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_upload(I)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public switchResolution()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    :cond_0
    const/16 v0, -0x7d5

    const/4 v1, 0x1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    return-void
.end method

.method public switchResolution(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    const-string/jumbo v1, "switch"

    if-eqz p3, :cond_1

    .line 2
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    invoke-virtual {v2, v1, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    .line 4
    :cond_0
    iget v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 5
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneEvent:Lcom/ss/ttvideoengine/log/VideoEventOneEvent;

    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneEvent;->movieStallEnd(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 7
    :cond_1
    iget-boolean v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    if-eqz v2, :cond_2

    const/16 v3, 0x43

    .line 9
    invoke-interface {v2, v3}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v2

    int-to-long v2, v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    .line 10
    :goto_0
    iget-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOutSync:Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;

    long-to-int v2, v2

    invoke-virtual {v4, v2, v1}, Lcom/ss/ttvideoengine/log/VideoEventOneOutSync;->AVOutSyncEnd(ILjava/lang/String;)V

    .line 11
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAVOutSyncing:Z

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 14
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mSwitchResolutionCount:I

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v0, p1, p2}, Lcom/ss/ttvideoengine/log/VideoEventBase;->configResolution(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    if-eqz p1, :cond_5

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    :cond_5
    if-eqz p3, :cond_6

    const/16 p1, -0x7d5

    .line 18
    invoke-virtual {p0, p1, v1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    :cond_6
    return-void
.end method

.method public switchResolutionEnd(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventOneOpera:Lcom/ss/ttvideoengine/log/VideoEventOneOpera;

    .line 10
    .line 11
    const-string/jumbo v2, "wait"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/ss/ttvideoengine/log/VideoEventOneOpera;->endSeek(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    iput v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mState:I

    .line 24
    .line 25
    :cond_1
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iput-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    .line 34
    .line 35
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 36
    .line 37
    iget-wide v2, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    cmp-long v4, v2, v4

    .line 42
    .line 43
    if-lez v4, :cond_3

    .line 44
    .line 45
    iget-wide v4, v1, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    .line 46
    .line 47
    sub-long/2addr v4, v2

    .line 48
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    .line 49
    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    const/16 v2, 0x43

    .line 53
    .line 54
    invoke-interface {v1, v2}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, -0x1

    .line 60
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    .line 61
    .line 62
    const/4 v3, 0x5

    .line 63
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 67
    .line 68
    iget-object v3, v3, Lcom/ss/ttvideoengine/log/VideoEventBase;->mCurrentResolution:Ljava/lang/String;

    .line 69
    .line 70
    const-string/jumbo v6, "to"

    .line 71
    .line 72
    .line 73
    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v3, "p"

    .line 81
    .line 82
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string/jumbo v3, "t"

    .line 94
    .line 95
    .line 96
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    const-string v3, "c"

    .line 104
    .line 105
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v3, "seam"

    .line 113
    .line 114
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mResolutionList:Ljava/util/ArrayList;

    .line 118
    .line 119
    new-instance v3, Lorg/json/JSONObject;

    .line 120
    .line 121
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->addToList(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_3
    if-eqz p1, :cond_4

    .line 132
    .line 133
    const/16 p1, -0x7d5

    .line 134
    .line 135
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->_recordExitReason(IZ)V

    .line 136
    .line 137
    .line 138
    :cond_4
    return-void
.end method

.method public updateGlobalNetworkSpeed(JJI)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mNetSpeedUpdateInterval:I

    .line 2
    .line 3
    if-eq p5, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p5, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    const-string p5, "VideoEventLoggerV2"

    .line 9
    .line 10
    monitor-enter p5

    .line 11
    :try_start_0
    const-string v0, "VideoEventLoggerV2"

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "global speed size:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", time:"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", totalsize:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", totaltime:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 62
    .line 63
    add-long/2addr v0, p1

    .line 64
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadSize:J

    .line 65
    .line 66
    iget-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 67
    .line 68
    add-long/2addr p1, p3

    .line 69
    iput-wide p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mMDLDownloadTime:J

    .line 70
    .line 71
    monitor-exit p5

    .line 72
    :cond_1
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1
.end method

.method public updateMultiNetworkSpeed(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2$1;-><init>(Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public updateNetworkSpeedPredictorSampleMutiValue(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;J)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->updateNetworkMutiSpeed(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;J)V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public updateNetworkSpeedPredictorSampleValue(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFFFJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventSample:Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move v4, p3

    .line 10
    move/from16 v5, p4

    .line 11
    .line 12
    move/from16 v6, p5

    .line 13
    .line 14
    move/from16 v7, p6

    .line 15
    .line 16
    move-wide/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v10, p9

    .line 19
    .line 20
    move-object/from16 v11, p10

    .line 21
    .line 22
    invoke-virtual/range {v1 .. v11}, Lcom/ss/ttvideoengine/log/VideoEventSampleRecord;->updateNetworkSpeed(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public updateVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->setVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mVideoModel:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/portrait/LabelUsage;->updateByVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    return-void
.end method

.method public updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->updateVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    return-void
.end method

.method public useAsyncInit(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncInit:I

    .line 2
    .line 3
    iput p2, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mAsyncCodecId:I

    .line 4
    .line 5
    return-void
.end method

.method public useCodecPool(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mUseCodecPool:I

    .line 2
    .line 3
    return-void
.end method

.method public useHardwareDecode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEventBase:Lcom/ss/ttvideoengine/log/VideoEventBase;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/log/VideoEventBase;->useVideoHW(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public useTextureRender(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRender:I

    .line 7
    .line 8
    return-void
.end method

.method public validateVideoMetaInfoFail(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijack:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mErrorInfo:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public watchFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventLoggerV2;->mEvent:Lcom/ss/ttvideoengine/log/VideoEventOnePlay;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->finish:I

    .line 8
    .line 9
    return-void
.end method
