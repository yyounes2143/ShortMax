.class public Lcom/ss/ttvideoengine/log/VideoEventOnePlay;
.super Ljava/lang/Object;
.source "VideoEventOnePlay.java"


# static fields
.field public static final EXIT_CODE_AFTER_AVOUTSYNC:I = -0x7d6

.field public static final EXIT_CODE_AFTER_CROSS_TALKING:I = -0x7d9

.field public static final EXIT_CODE_AFTER_DECODE:I = -0x7d4

.field public static final EXIT_CODE_AFTER_LOADING_NET:I = -0x7d3

.field public static final EXIT_CODE_AFTER_LOADING_SEEK:I = -0x7d2

.field public static final EXIT_CODE_AFTER_NO_AUDIO_RENDER:I = -0x7d8

.field public static final EXIT_CODE_AFTER_NO_VIDEO_RENDER:I = -0x7d7

.field public static final EXIT_CODE_AFTER_PLAYING:I = -0x7d1

.field public static final EXIT_CODE_AFTER_SWITCH:I = -0x7d5

.field public static final EXIT_CODE_BEFORE_AD:I = -0x3e9

.field public static final EXIT_CODE_BEFORE_AUDIO_DECODER_OPENING:I = -0x3f7

.field public static final EXIT_CODE_BEFORE_AUDIO_DECODE_FIRST_FRAME:I = -0x3fd

.field public static final EXIT_CODE_BEFORE_AUDIO_DEVICE_OPENING:I = -0x3f9

.field public static final EXIT_CODE_BEFORE_AUDIO_FIRST_PACKET:I = -0x3fb

.field public static final EXIT_CODE_BEFORE_AUDIO_RENDER_FIRST_FRAME:I = -0x3ff

.field public static final EXIT_CODE_BEFORE_AVFORMAT_FIND_STREAM:I = -0x3f3

.field public static final EXIT_CODE_BEFORE_AVFORMAT_OPENING:I = -0x3f2

.field public static final EXIT_CODE_BEFORE_DEC_CREATING:I = -0x3f4

.field public static final EXIT_CODE_BEFORE_DEMUXER_CREATING:I = -0x3ef

.field public static final EXIT_CODE_BEFORE_DNS_NOT_PARSED:I = -0x3ec

.field public static final EXIT_CODE_BEFORE_DNS_PARSED:I = -0x3ed

.field public static final EXIT_CODE_BEFORE_FIRST_FRAME_MSG_NOT_REPORT:I = -0x400

.field public static final EXIT_CODE_BEFORE_FORMATER_CREATING:I = -0x3ee

.field public static final EXIT_CODE_BEFORE_LOADING_FETCHED:I = -0x3eb

.field public static final EXIT_CODE_BEFORE_LOADING_NOT_FETCH:I = -0x3ea

.field public static final EXIT_CODE_BEFORE_OUTLET_CREATING:I = -0x3f5

.field public static final EXIT_CODE_BEFORE_SURFACE_NOT_SET:I = -0x401

.field public static final EXIT_CODE_BEFORE_TCP_CONNECTING:I = -0x3f0

.field public static final EXIT_CODE_BEFORE_TCP_FIRST_PACKET:I = -0x3f1

.field public static final EXIT_CODE_BEFORE_VIDEO_DECODER_OPENING:I = -0x3f6

.field public static final EXIT_CODE_BEFORE_VIDEO_DECODE_FIRST_FRAME:I = -0x3fc

.field public static final EXIT_CODE_BEFORE_VIDEO_DEVICE_OPENING:I = -0x3f8

.field public static final EXIT_CODE_BEFORE_VIDEO_FIRST_PACKET:I = -0x3fa

.field public static final EXIT_CODE_BEFORE_VIDEO_RENDER_FIRST_FRAME:I = -0x3fe

.field public static final KMAXFEEDCOUNT:I = 0x1e

.field public static final KMAXVIDEOFEEDDATA:I = 0x249f0

.field private static final TAG:Ljava/lang/String; = "VideoEventOnePlay"

.field public static final encrypt_version:I = 0x1

.field private static final logType:Ljava/lang/String; = "video_playq"

.field public static final monitorName:Ljava/lang/String; = "videoplayer_oneplay"


# instance fields
.field public a_dec_opened_t:J

.field public a_dec_start_t:J

.field public a_dns_start_t:J

.field public a_http_open_t:J

.field public a_render_f_t:J

.field public a_sock_create_t:J

.field public a_tran_open_t:J

.field public accu_vds:J

.field public ae_type:I

.field public apiString:Ljava/lang/String;

.field public apiver:I

.field public apiverFinal:I

.field public asyncCodecId:I

.field public asyncInit:I

.field public at:J

.field public audioBitrate:J

.field public audioBufferLength:I

.field public audioDeviceOpenedTime:J

.field public audioDeviceStartTime:J

.field public audioDnsT:J

.field public audioTranConnectT:J

.field public audioTranFirstPacketT:J

.field public auth:Ljava/lang/String;

.field public avformat_open_t:J

.field public bc:I

.field public bft:J

.field public bitrate:J

.field public br:I

.field public bufferAccuT:J

.field public bufferSeconds:I

.field public checkHijack:I

.field public chipBoardName:Ljava/lang/String;

.field public chipHardwareName:Ljava/lang/String;

.field public chipHardwareNameNew:Ljava/lang/String;

.field public clockDiff:J

.field public codecPool:I

.field public color_trc:I

.field public containerFps:F

.field public core_volume:I

.field public curAudioDecodeError:I

.field public curPlayBackTime:J

.field public curVideoDecodeError:I

.field public curVideoDecoderFps:I

.field public curVideoOutputFps:F

.field public curVideoRenderError:I

.field public customP2PCDNType:I

.field public d_apls:J

.field public d_vpls:J

.field public dec_create_t:J

.field public decodeFirstAudioFrameT:J

.field public decodeFirstVideoFrameT:J

.field public decoderBufferAccuT:J

.field public demuxer_begin_t:J

.field public demuxer_create_t:J

.field public df:Ljava/lang/String;

.field public disableAccurateStart:I

.field public dnsModule:I

.field public dnsT:J

.field public dns_end_t:J

.field public dns_server_ip:Ljava/lang/String;

.field public dns_start_t:J

.field public dropCount:I

.field public enableBash:I

.field public enableMDL:I

.field public enableMDLOnFirstPlay:I

.field public enableMask:I

.field public enableMaskThread:I

.field public enableSharp:I

.field public enableSub:I

.field public enableSubThread:I

.field public encryptKey:Ljava/lang/String;

.field public engineState:I

.field public errc:I

.field public errt:I

.field public et:J

.field public ex:Ljava/util/Map;

.field public feedInBeforeDecoded:I

.field public fetchedAndLeaveByUser:I

.field public finish:I

.field public firstBufferEndT:J

.field public firstBufferStartT:J

.field public firstFrameSpeed:D

.field public firstHijackCode:I

.field public firstRangeSize:J

.field public first_errc:I

.field public first_errc_internal:I

.field public first_errt:I

.field public formater_create_t:J

.field public height:I

.field public hijack:I

.field public hijackRetry:I

.field public httpResponseT:J

.field public hwCodecException:I

.field public hwCodecName:Ljava/lang/String;

.field public internalIP:Ljava/lang/String;

.field public isColdStart:I

.field public isDisableShortSeek:I

.field public isPreferNearestSample:I

.field public isReplay:I

.field public isStartPlayAutomatically:I

.field public lastBufferEndT:J

.field public lastBufferStartT:J

.field public lastHijackCode:I

.field public lastResolutionEndT:J

.field public lastResolutionStartT:J

.field public lastSeekEndT:J

.field public lastSeekPosition:I

.field public lastSeekStartT:J

.field public leave_block_t:I

.field public leave_method:I

.field public leave_reason:I

.field public lf:Ljava/lang/String;

.field public loaderType:Ljava/lang/String;

.field public log_id:Ljava/lang/String;

.field public loopcount:I

.field public lt:J

.field public mAVBadInterlacedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAVOutsyncCount:I

.field public mAVOutsyncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAudioCodecProfile:I

.field public mAudioFileHash:Ljava/lang/String;

.field public mAudioInitUrl:Ljava/lang/String;

.field public mAudioStreamDisabled:Z

.field public mAudioStreamDuration:J

.field public mAvgCurrent:F

.field public mBitrateList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBrightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBufferTimeout:I

.field public mCastinfoIsCastLive:I

.field public mCastinfoProtocal:Ljava/lang/String;

.field public mCastinfoSceneId:I

.field public mCastinfoSourceAppId:I

.field public mCatowerRttList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCatowerRttMsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mChargingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCompanyID:Ljava/lang/String;

.field public mCorePoolSizeUpperLimit:I

.field public mCorepoolSizeBeforeGetEngine:I

.field public mCountOfEngineInUse:I

.field public mCpuRateBegin:D

.field public mCpuRateEnd:D

.field public mCpuSpeedBegin:D

.field public mCpuSpeedEnd:D

.field public mCrosstalkCount:I

.field public mCrosstalkInfoList:Ljava/util/ArrayList;

.field public mCurrentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomClickT:J

.field public mCustomGetVideoModelT:J

.field public mCustomInitEngineT:J

.field public mCustomPlayEngineT:J

.field public mCustomPlaySessionId:Ljava/lang/String;

.field public mCustomPlayT:J

.field public mCustomStr:Ljava/lang/String;

.field public mDimension:I

.field public mEnableNNSR:I

.field public mEngineHash:I

.field public mErrorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExpirePlayCode:I

.field public mFeatures:Ljava/util/Map;

.field public mForebackSwitchList:Ljava/util/ArrayList;

.field public mFramesSetDropNum:I

.field public mFromEnginePool:Ljava/lang/String;

.field public mGearStrategyInfo:Ljava/util/Map;

.field public mHardwareConfType:I

.field public mHasNoSurfaceWhenAudioRenderStart:I

.field public mHeadsetStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHostAbiBits:I

.field public mInBackgroundWhenPlay:I

.field public mInBackgroundWhenStop:I

.field public mInitialHost:Ljava/lang/String;

.field public mInitialIP:Ljava/lang/String;

.field public mInitialQuality:Ljava/lang/String;

.field public mInitialQualityType:I

.field public mInitialResolution:Ljava/lang/String;

.field public mInitialURL:Ljava/lang/String;

.field public mIsEngineReuse:Z

.field public mIsViewHidden:I

.field public mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

.field public mLastSessionID:Ljava/lang/String;

.field public mLoopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMDLGroupId:Ljava/lang/String;

.field public mMDLRetryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMapAppLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mMaskDownloadSize:J

.field public mMaskURL:Ljava/lang/String;

.field public mMaxFramesInMediaCodec:I

.field public mMdlInitializeError:Ljava/lang/String;

.field public mMdlInitializeState:I

.field public mMdlInvalidCode:I

.field public mMdlMultiSpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public mNetQualityIndex:I

.field public mNetQualityInterval:I

.field public mNetworkConnectCount:I

.field public mNetworkQualityBitrate:D

.field public mNetworkScore:I

.field public mNetworkTypeList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNoAudioRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNoVideoRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOttPluginVersion:I

.field public mPauseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPixelDensity:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mPlayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPlaySpeedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPowerSaveModeBegin:I

.field public mPowerSaveModeEnd:I

.field public mPreRangeOff:I

.field public mPreloadGear:Ljava/lang/String;

.field public mProjectionModel:I

.field public mQualityList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRadioMode:I

.field public mRadiomodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mReadCacheMode:I

.field public mRebufList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRenderStageError:Ljava/lang/String;

.field public mResolutionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSRPreloadInfo:Ljava/util/Map;

.field public mSRStrategyInfo:Ljava/util/Map;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mSeekList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSensitiveMode:I

.field public mSessionID:Ljava/lang/String;

.field public mSetSurfaceTimeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSignalStrengthList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSourceRefreshLog:Lorg/json/JSONObject;

.field public mSrAlgorithm:I

.field public mSrEnableBmf:I

.field public mSrHeightFactor:F

.field public mSrProccessSuccessRate:F

.field public mSrProcessorCostTime:F

.field public mSrWidthFactor:F

.field public mStSpeed:F

.field public mSubError:Ljava/lang/String;

.field public mSubReqURL:Ljava/lang/String;

.field public mSubtitleDownloadSize:J

.field public mTrEffectChainAverageTime:Ljava/lang/Float;

.field public mTrEffectErrorCode:Ljava/lang/String;

.field public mTrEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTrFPS:Ljava/lang/Float;

.field public mTrPerEffectAverageTime:Ljava/lang/String;

.field public mTrVersion:Ljava/lang/String;

.field public mVModelHasFallbackApi:Z

.field public mVideoAbnormalCode:I

.field public mVideoAbnormalInterval:I

.field public mVideoAbnormalStrategy:I

.field public mVideoCodecProfile:I

.field public mVideoFileHash:Ljava/lang/String;

.field public mVideoFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoHWErrReason:I

.field public mVideoRenderStallCount:I

.field public mVideoRenderStallList:Ljava/lang/String;

.field public mVideoStreamDisabled:Z

.field public mVideoStreamDuration:J

.field public mVideoStyle:I

.field public mViewSize:I

.field public mViewSizeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVrDistanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVrFrameRate:F

.field public mVrHeadMovementDelay:J

.field public mVrScreenRefreshRate:I

.field public maskErrc:I

.field public maskEvents:Ljava/util/Map;

.field public mask_open_t:J

.field public mask_opened_t:J

.field public mdatPos:J

.field public mediaCodecRender:I

.field public minAudioFrameSize:J

.field public minVideoFrameSize:J

.field public miss_reason:I

.field public miss_reason_da:I

.field public miss_reason_dv:I

.field public modelVersion:J

.field public moovPos:J

.field public mute:I

.field public netClient:Ljava/lang/String;

.field public netSpeedLevel:J

.field public netWorkTryCount:I

.field public netblockBufferthreshold:I

.field public networkTimeout:I

.field public outlet_create_t:J

.field public ownPlayerCreateException:Ljava/lang/String;

.field public p2pStragetyMinPlayNum:I

.field public p2pStragetyMinSpeed:I

.field public p2pStragetyPlayNum:I

.field public p2pStragetyProbeSpeed:I

.field public p2pUrl:Ljava/lang/String;

.field public playEndSpeed:D

.field public playPreparedT:J

.field public playStartedT:J

.field public playbackBufferEndT:J

.field public playbackBufferStartT:J

.field public playbackparams:Ljava/util/Map;

.field public playerFirstFrameT:J

.field public playerSurfaceCode:Ljava/lang/String;

.field public player_created_t:J

.field public player_prepared_time:J

.field public pluginException:I

.field public prepare_before_play_t:J

.field public prepare_end_time:J

.field public prepare_start_time:J

.field public ps_t:J

.field public pt:J

.field public pt_new:J

.field public receiveFirstAudioFrameT:J

.field public receiveFirstVideoFrameT:J

.field public render_type:Ljava/lang/String;

.field public seekCount:I

.field public seek_accu_t:I

.field public server_local_diff:J

.field public setds_t:J

.field public startTime:I

.field public subEvents:Ljava/util/Map;

.field public subIdsCount:I

.field public subLanSwichCount:I

.field public sub_load_finish_t:J

.field public sub_req_finish_t:J

.field public surfaceCode:Ljava/lang/String;

.field public surfaceSetTime:J

.field public switchResolutionCount:I

.field public textureRender:I

.field public textureRenderErrorCode:I

.field public textureRenderErrorMsg:Ljava/lang/String;

.field public traceID:Ljava/lang/String;

.field public tranConnectT:J

.field public tranFirstPacketT:J

.field public useVideoModelCache:I

.field public v_dec_opened_t:J

.field public v_dec_start_t:J

.field public v_first_sync_t:J

.field public v_http_open_t:J

.field public v_render_f_t:J

.field public v_sock_create_t:J

.field public v_tran_open_t:J

.field public vds:J

.field public videoAudioGap:J

.field public videoBufferLength:I

.field public videoDeviceOpenedTime:J

.field public videoDeviceStartTime:J

.field public video_preload_size:I

.field public volume:I

.field public vpls:J

.field public vps:J

.field public vsc:I

.field public vscMessage:Ljava/lang/String;

.field public vt:J

.field public vu:Ljava/util/ArrayList;

.field public watchduration:I

.field public width:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_before_play_t:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->setds_t:J

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ps_t:J

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    .line 20
    .line 21
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 22
    .line 23
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_start_t:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_start_t:J

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    .line 40
    .line 41
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_http_open_t:J

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_http_open_t:J

    .line 44
    .line 45
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_tran_open_t:J

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_tran_open_t:J

    .line 48
    .line 49
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_sock_create_t:J

    .line 50
    .line 51
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_sock_create_t:J

    .line 52
    .line 53
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    .line 56
    .line 57
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 58
    .line 59
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    .line 60
    .line 61
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_prepared_time:J

    .line 62
    .line 63
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 64
    .line 65
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_first_sync_t:J

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    .line 68
    .line 69
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    .line 70
    .line 71
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bft:J

    .line 72
    .line 73
    const/high16 v2, -0x80000000

    .line 74
    .line 75
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bc:I

    .line 76
    .line 77
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->br:I

    .line 78
    .line 79
    new-instance v3, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vu:Ljava/util/ArrayList;

    .line 85
    .line 86
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vps:J

    .line 87
    .line 88
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    .line 89
    .line 90
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->accu_vds:J

    .line 91
    .line 92
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->width:I

    .line 93
    .line 94
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->height:I

    .line 95
    .line 96
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->video_preload_size:I

    .line 97
    .line 98
    const-string v3, ""

    .line 99
    .line 100
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->df:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lf:Ljava/lang/String;

    .line 103
    .line 104
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errt:I

    .line 105
    .line 106
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errc:I

    .line 107
    .line 108
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errt:I

    .line 109
    .line 110
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc:I

    .line 111
    .line 112
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc_internal:I

    .line 113
    .line 114
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vsc:I

    .line 115
    .line 116
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vscMessage:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomStr:Ljava/lang/String;

    .line 119
    .line 120
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialURL:Ljava/lang/String;

    .line 121
    .line 122
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioInitUrl:Ljava/lang/String;

    .line 123
    .line 124
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialHost:Ljava/lang/String;

    .line 125
    .line 126
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialIP:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialResolution:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQuality:Ljava/lang/String;

    .line 131
    .line 132
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQualityType:I

    .line 133
    .line 134
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijack:I

    .line 135
    .line 136
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pluginException:I

    .line 137
    .line 138
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ownPlayerCreateException:Ljava/lang/String;

    .line 139
    .line 140
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isStartPlayAutomatically:I

    .line 141
    .line 142
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bufferSeconds:I

    .line 143
    .line 144
    const/4 v4, 0x0

    .line 145
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ex:Ljava/util/Map;

    .line 146
    .line 147
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    .line 148
    .line 149
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 150
    .line 151
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->httpResponseT:J

    .line 152
    .line 153
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 154
    .line 155
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 156
    .line 157
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    .line 158
    .line 159
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    .line 160
    .line 161
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 162
    .line 163
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 164
    .line 165
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 166
    .line 167
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 168
    .line 169
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferStartT:J

    .line 170
    .line 171
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferEndT:J

    .line 172
    .line 173
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curPlayBackTime:J

    .line 174
    .line 175
    const/4 v5, 0x1

    .line 176
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoOutputFps:F

    .line 181
    .line 182
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->containerFps:F

    .line 183
    .line 184
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->clockDiff:J

    .line 185
    .line 186
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dropCount:I

    .line 187
    .line 188
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    .line 189
    .line 190
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 191
    .line 192
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    .line 193
    .line 194
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 195
    .line 196
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceSetTime:J

    .line 197
    .line 198
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceCode:Ljava/lang/String;

    .line 199
    .line 200
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerSurfaceCode:Ljava/lang/String;

    .line 201
    .line 202
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFramesSetDropNum:I

    .line 203
    .line 204
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->engineState:I

    .line 205
    .line 206
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->finish:I

    .line 207
    .line 208
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->internalIP:Ljava/lang/String;

    .line 209
    .line 210
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loaderType:Ljava/lang/String;

    .line 211
    .line 212
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiver:I

    .line 213
    .line 214
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiverFinal:I

    .line 215
    .line 216
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->auth:Ljava/lang/String;

    .line 217
    .line 218
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackparams:Ljava/util/Map;

    .line 219
    .line 220
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loopcount:I

    .line 221
    .line 222
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->switchResolutionCount:I

    .line 223
    .line 224
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->watchduration:I

    .line 225
    .line 226
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->useVideoModelCache:I

    .line 227
    .line 228
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->startTime:I

    .line 229
    .line 230
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->disableAccurateStart:I

    .line 231
    .line 232
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->customP2PCDNType:I

    .line 233
    .line 234
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncInit:I

    .line 235
    .line 236
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pUrl:Ljava/lang/String;

    .line 237
    .line 238
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bufferAccuT:J

    .line 239
    .line 240
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decoderBufferAccuT:J

    .line 241
    .line 242
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoBufferLength:I

    .line 243
    .line 244
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBufferLength:I

    .line 245
    .line 246
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netblockBufferthreshold:I

    .line 247
    .line 248
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seekCount:I

    .line 249
    .line 250
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->render_type:Ljava/lang/String;

    .line 251
    .line 252
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiString:Ljava/lang/String;

    .line 253
    .line 254
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netClient:Ljava/lang/String;

    .line 255
    .line 256
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->fetchedAndLeaveByUser:I

    .line 257
    .line 258
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->volume:I

    .line 259
    .line 260
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->core_volume:I

    .line 261
    .line 262
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mute:I

    .line 263
    .line 264
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableBash:I

    .line 265
    .line 266
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDL:I

    .line 267
    .line 268
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncCodecId:I

    .line 269
    .line 270
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSharp:I

    .line 271
    .line 272
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ae_type:I

    .line 273
    .line 274
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecoderFps:I

    .line 275
    .line 276
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecName:Ljava/lang/String;

    .line 277
    .line 278
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecException:I

    .line 279
    .line 280
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netWorkTryCount:I

    .line 281
    .line 282
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipBoardName:Ljava/lang/String;

    .line 283
    .line 284
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareName:Ljava/lang/String;

    .line 285
    .line 286
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareNameNew:Ljava/lang/String;

    .line 287
    .line 288
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBufferTimeout:I

    .line 289
    .line 290
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->networkTimeout:I

    .line 291
    .line 292
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isPreferNearestSample:I

    .line 293
    .line 294
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isDisableShortSeek:I

    .line 295
    .line 296
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    .line 297
    .line 298
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 299
    .line 300
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_created_t:J

    .line 301
    .line 302
    const/16 v7, -0x3ea

    .line 303
    .line 304
    iput v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 305
    .line 306
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_block_t:I

    .line 307
    .line 308
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_method:I

    .line 309
    .line 310
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seek_accu_t:I

    .line 311
    .line 312
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    .line 313
    .line 314
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    .line 315
    .line 316
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferStartT:J

    .line 317
    .line 318
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    .line 319
    .line 320
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionStartT:J

    .line 321
    .line 322
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastResolutionEndT:J

    .line 323
    .line 324
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekPosition:I

    .line 325
    .line 326
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->server_local_diff:J

    .line 327
    .line 328
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->traceID:Ljava/lang/String;

    .line 329
    .line 330
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->checkHijack:I

    .line 331
    .line 332
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijackRetry:I

    .line 333
    .line 334
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstHijackCode:I

    .line 335
    .line 336
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastHijackCode:I

    .line 337
    .line 338
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playPreparedT:J

    .line 339
    .line 340
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playStartedT:J

    .line 341
    .line 342
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecodeError:I

    .line 343
    .line 344
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curAudioDecodeError:I

    .line 345
    .line 346
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoRenderError:I

    .line 347
    .line 348
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    .line 349
    .line 350
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vpls:J

    .line 351
    .line 352
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_vpls:J

    .line 353
    .line 354
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_apls:J

    .line 355
    .line 356
    const/4 v7, 0x0

    .line 357
    iput v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason:I

    .line 358
    .line 359
    iput v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_da:I

    .line 360
    .line 361
    iput v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_dv:I

    .line 362
    .line 363
    const-wide/high16 v8, 0x36a0000000000000L    # 1.401298464324817E-45

    .line 364
    .line 365
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstFrameSpeed:D

    .line 366
    .line 367
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playEndSpeed:D

    .line 368
    .line 369
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkConnectCount:I

    .line 370
    .line 371
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mediaCodecRender:I

    .line 372
    .line 373
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRender:I

    .line 374
    .line 375
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorMsg:Ljava/lang/String;

    .line 376
    .line 377
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorCode:I

    .line 378
    .line 379
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->codecPool:I

    .line 380
    .line 381
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferStartT:J

    .line 382
    .line 383
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferEndT:J

    .line 384
    .line 385
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bitrate:J

    .line 386
    .line 387
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBitrate:J

    .line 388
    .line 389
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isColdStart:I

    .line 390
    .line 391
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoAudioGap:J

    .line 392
    .line 393
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->moovPos:J

    .line 394
    .line 395
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mdatPos:J

    .line 396
    .line 397
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstRangeSize:J

    .line 398
    .line 399
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    .line 400
    .line 401
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    .line 402
    .line 403
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netSpeedLevel:J

    .line 404
    .line 405
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->modelVersion:J

    .line 406
    .line 407
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->feedInBeforeDecoded:I

    .line 408
    .line 409
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoHWErrReason:I

    .line 410
    .line 411
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaxFramesInMediaCodec:I

    .line 412
    .line 413
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallCount:I

    .line 414
    .line 415
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerFirstFrameT:J

    .line 416
    .line 417
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pStragetyMinPlayNum:I

    .line 418
    .line 419
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pStragetyPlayNum:I

    .line 420
    .line 421
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pStragetyMinSpeed:I

    .line 422
    .line 423
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->p2pStragetyProbeSpeed:I

    .line 424
    .line 425
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadioMode:I

    .line 426
    .line 427
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDisabled:Z

    .line 428
    .line 429
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDisabled:Z

    .line 430
    .line 431
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isReplay:I

    .line 432
    .line 433
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEnableNNSR:I

    .line 434
    .line 435
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreRangeOff:I

    .line 436
    .line 437
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mReadCacheMode:I

    .line 438
    .line 439
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSessionID:Ljava/lang/String;

    .line 440
    .line 441
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->log_id:Ljava/lang/String;

    .line 442
    .line 443
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLastSessionID:Ljava/lang/String;

    .line 444
    .line 445
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreloadGear:Ljava/lang/String;

    .line 446
    .line 447
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFileHash:Ljava/lang/String;

    .line 448
    .line 449
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioFileHash:Ljava/lang/String;

    .line 450
    .line 451
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallList:Ljava/lang/String;

    .line 452
    .line 453
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoCodecProfile:I

    .line 454
    .line 455
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    .line 456
    .line 457
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDuration:J

    .line 458
    .line 459
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDuration:J

    .line 460
    .line 461
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mStSpeed:F

    .line 462
    .line 463
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityInterval:I

    .line 464
    .line 465
    iput v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityIndex:I

    .line 466
    .line 467
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkScore:I

    .line 468
    .line 469
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkQualityBitrate:D

    .line 470
    .line 471
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    .line 472
    .line 473
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomClickT:J

    .line 474
    .line 475
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomGetVideoModelT:J

    .line 476
    .line 477
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlayT:J

    .line 478
    .line 479
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomInitEngineT:J

    .line 480
    .line 481
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlayEngineT:J

    .line 482
    .line 483
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 484
    .line 485
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 486
    .line 487
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRPreloadInfo:Ljava/util/Map;

    .line 488
    .line 489
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlayList:Ljava/util/ArrayList;

    .line 490
    .line 491
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPauseList:Ljava/util/ArrayList;

    .line 492
    .line 493
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mResolutionList:Ljava/util/ArrayList;

    .line 494
    .line 495
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlaySpeedList:Ljava/util/ArrayList;

    .line 496
    .line 497
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadiomodeList:Ljava/util/ArrayList;

    .line 498
    .line 499
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLoopList:Ljava/util/ArrayList;

    .line 500
    .line 501
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mErrorList:Ljava/util/ArrayList;

    .line 502
    .line 503
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRebufList:Ljava/util/ArrayList;

    .line 504
    .line 505
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSeekList:Ljava/util/ArrayList;

    .line 506
    .line 507
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncList:Ljava/util/ArrayList;

    .line 508
    .line 509
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHeadsetStateList:Ljava/util/ArrayList;

    .line 510
    .line 511
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoVideoRenderList:Ljava/util/ArrayList;

    .line 512
    .line 513
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoAudioRenderList:Ljava/util/ArrayList;

    .line 514
    .line 515
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerList:Ljava/util/ArrayList;

    .line 516
    .line 517
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mChargingList:Ljava/util/ArrayList;

    .line 518
    .line 519
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVBadInterlacedList:Ljava/util/ArrayList;

    .line 520
    .line 521
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mForebackSwitchList:Ljava/util/ArrayList;

    .line 522
    .line 523
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncCount:I

    .line 524
    .line 525
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_req_finish_t:J

    .line 526
    .line 527
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->sub_load_finish_t:J

    .line 528
    .line 529
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_open_t:J

    .line 530
    .line 531
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mask_opened_t:J

    .line 532
    .line 533
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->maskErrc:I

    .line 534
    .line 535
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSub:I

    .line 536
    .line 537
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSubThread:I

    .line 538
    .line 539
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMask:I

    .line 540
    .line 541
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMaskThread:I

    .line 542
    .line 543
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subLanSwichCount:I

    .line 544
    .line 545
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subIdsCount:I

    .line 546
    .line 547
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskURL:Ljava/lang/String;

    .line 548
    .line 549
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubReqURL:Ljava/lang/String;

    .line 550
    .line 551
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubError:Ljava/lang/String;

    .line 552
    .line 553
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->color_trc:I

    .line 554
    .line 555
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHardwareConfType:I

    .line 556
    .line 557
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenWidth:I

    .line 558
    .line 559
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenHeight:I

    .line 560
    .line 561
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPixelDensity:I

    .line 562
    .line 563
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->xdpi:F

    .line 564
    .line 565
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ydpi:F

    .line 566
    .line 567
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrWidthFactor:F

    .line 568
    .line 569
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrHeightFactor:F

    .line 570
    .line 571
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProccessSuccessRate:F

    .line 572
    .line 573
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProcessorCostTime:F

    .line 574
    .line 575
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrAlgorithm:I

    .line 576
    .line 577
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrEnableBmf:I

    .line 578
    .line 579
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFilterList:Ljava/util/ArrayList;

    .line 580
    .line 581
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBrightList:Ljava/util/ArrayList;

    .line 582
    .line 583
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSizeList:Ljava/util/ArrayList;

    .line 584
    .line 585
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLRetryList:Ljava/util/ArrayList;

    .line 586
    .line 587
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsEngineReuse:Z

    .line 588
    .line 589
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsViewHidden:I

    .line 590
    .line 591
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHasNoSurfaceWhenAudioRenderStart:I

    .line 592
    .line 593
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateBegin:D

    .line 594
    .line 595
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateEnd:D

    .line 596
    .line 597
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedBegin:D

    .line 598
    .line 599
    iput-wide v8, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedEnd:D

    .line 600
    .line 601
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeBegin:I

    .line 602
    .line 603
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeEnd:I

    .line 604
    .line 605
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAvgCurrent:F

    .line 606
    .line 607
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSensitiveMode:I

    .line 608
    .line 609
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mExpirePlayCode:I

    .line 610
    .line 611
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskDownloadSize:J

    .line 612
    .line 613
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubtitleDownloadSize:J

    .line 614
    .line 615
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStyle:I

    .line 616
    .line 617
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mDimension:I

    .line 618
    .line 619
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mProjectionModel:I

    .line 620
    .line 621
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrDistanceList:Ljava/util/ArrayList;

    .line 622
    .line 623
    iput v5, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrFrameRate:F

    .line 624
    .line 625
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrScreenRefreshRate:I

    .line 626
    .line 627
    iput-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrHeadMovementDelay:J

    .line 628
    .line 629
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoIsCastLive:I

    .line 630
    .line 631
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSourceAppId:I

    .line 632
    .line 633
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSceneId:I

    .line 634
    .line 635
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoProtocal:Ljava/lang/String;

    .line 636
    .line 637
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSize:I

    .line 638
    .line 639
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEngineHash:I

    .line 640
    .line 641
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFromEnginePool:Ljava/lang/String;

    .line 642
    .line 643
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorePoolSizeUpperLimit:I

    .line 644
    .line 645
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorepoolSizeBeforeGetEngine:I

    .line 646
    .line 647
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCountOfEngineInUse:I

    .line 648
    .line 649
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    .line 650
    .line 651
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHostAbiBits:I

    .line 652
    .line 653
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrVersion:Ljava/lang/String;

    .line 654
    .line 655
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrFPS:Ljava/lang/Float;

    .line 656
    .line 657
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectList:Ljava/util/ArrayList;

    .line 658
    .line 659
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrPerEffectAverageTime:Ljava/lang/String;

    .line 660
    .line 661
    iput-object v6, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectChainAverageTime:Ljava/lang/Float;

    .line 662
    .line 663
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectErrorCode:Ljava/lang/String;

    .line 664
    .line 665
    new-instance v0, Ljava/util/HashMap;

    .line 666
    .line 667
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    .line 669
    .line 670
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMapAppLog:Ljava/util/Map;

    .line 671
    .line 672
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mOttPluginVersion:I

    .line 673
    .line 674
    iput-object v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCompanyID:Ljava/lang/String;

    .line 675
    .line 676
    const/4 v0, -0x1

    .line 677
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCrosstalkCount:I

    .line 678
    .line 679
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlaySessionId:Ljava/lang/String;

    .line 680
    .line 681
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLGroupId:Ljava/lang/String;

    .line 682
    .line 683
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenPlay:I

    .line 684
    .line 685
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenStop:I

    .line 686
    .line 687
    iput-boolean v7, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVModelHasFallbackApi:Z

    .line 688
    .line 689
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDLOnFirstPlay:I

    .line 690
    .line 691
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInvalidCode:I

    .line 692
    .line 693
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeState:I

    .line 694
    .line 695
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalCode:I

    .line 696
    .line 697
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalStrategy:I

    .line 698
    .line 699
    iput v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalInterval:I

    .line 700
    .line 701
    iput-object v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeError:Ljava/lang/String;

    .line 702
    .line 703
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 704
    .line 705
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 706
    .line 707
    .line 708
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBitrateList:Ljava/util/LinkedHashMap;

    .line 709
    .line 710
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 711
    .line 712
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 713
    .line 714
    .line 715
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mQualityList:Ljava/util/LinkedHashMap;

    .line 716
    .line 717
    new-instance v0, Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .line 721
    .line 722
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    .line 723
    .line 724
    new-instance v0, Ljava/util/ArrayList;

    .line 725
    .line 726
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .line 728
    .line 729
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    .line 730
    .line 731
    new-instance v0, Ljava/util/ArrayList;

    .line 732
    .line 733
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .line 735
    .line 736
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    .line 737
    .line 738
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 739
    .line 740
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 741
    .line 742
    .line 743
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkTypeList:Ljava/util/LinkedHashMap;

    .line 744
    .line 745
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 746
    .line 747
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 748
    .line 749
    .line 750
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSignalStrengthList:Ljava/util/LinkedHashMap;

    .line 751
    .line 752
    new-instance v0, Ljava/util/HashMap;

    .line 753
    .line 754
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 755
    .line 756
    .line 757
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    .line 758
    .line 759
    new-instance v0, Ljava/util/HashMap;

    .line 760
    .line 761
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 762
    .line 763
    .line 764
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    .line 765
    .line 766
    new-instance v0, Ljava/util/ArrayList;

    .line 767
    .line 768
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .line 770
    .line 771
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    .line 772
    .line 773
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 774
    .line 775
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 776
    .line 777
    .line 778
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    .line 779
    .line 780
    new-instance v0, Ljava/util/HashMap;

    .line 781
    .line 782
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 783
    .line 784
    .line 785
    iput-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRPreloadInfo:Ljava/util/Map;

    .line 786
    .line 787
    invoke-direct {p0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->initParametersIfNeeded()V

    .line 788
    .line 789
    .line 790
    return-void
.end method

.method private SerialMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", :"

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "VideoEventOnePlay"

    .line 46
    .line 47
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    :goto_0
    return-object v0
.end method

.method private doEncryptThings(Lcom/ss/ttvideoengine/log/VideoEventBase;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/log/VideoEventBase;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "encrypt_version"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 15
    .line 16
    iget-wide v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-string v3, "reply_size"

    .line 23
    .line 24
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    iget-wide v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    const-string/jumbo v3, "vs"

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    .line 40
    .line 41
    iget v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    .line 42
    .line 43
    int-to-long v1, v1

    .line 44
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    const-string v3, "mdl_speed"

    .line 49
    .line 50
    invoke-static {v0, v3, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptStringV1(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "codec"

    .line 60
    .line 61
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vps:J

    .line 65
    .line 66
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    const-string/jumbo p1, "vps"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 74
    .line 75
    .line 76
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    .line 77
    .line 78
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v1

    .line 82
    const-string/jumbo p1, "vds"

    .line 83
    .line 84
    .line 85
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->accu_vds:J

    .line 89
    .line 90
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    const-string p1, "accumulate_vds"

    .line 95
    .line 96
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->watchduration:I

    .line 100
    .line 101
    int-to-long v1, p1

    .line 102
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v1

    .line 106
    const-string/jumbo p1, "watch_dur"

    .line 107
    .line 108
    .line 109
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 110
    .line 111
    .line 112
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vpls:J

    .line 113
    .line 114
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    const-string/jumbo p1, "vpls"

    .line 119
    .line 120
    .line 121
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bc:I

    .line 125
    .line 126
    int-to-long v1, p1

    .line 127
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 128
    .line 129
    .line 130
    move-result-wide v1

    .line 131
    const-string p1, "bc"

    .line 132
    .line 133
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    .line 137
    .line 138
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 139
    .line 140
    .line 141
    move-result-wide v1

    .line 142
    const-string/jumbo p1, "vt"

    .line 143
    .line 144
    .line 145
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 146
    .line 147
    .line 148
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->height:I

    .line 149
    .line 150
    int-to-long v1, p1

    .line 151
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 152
    .line 153
    .line 154
    move-result-wide v1

    .line 155
    const-string p1, "height"

    .line 156
    .line 157
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 158
    .line 159
    .line 160
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->width:I

    .line 161
    .line 162
    int-to-long v1, p1

    .line 163
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 164
    .line 165
    .line 166
    move-result-wide v1

    .line 167
    const-string/jumbo p1, "width"

    .line 168
    .line 169
    .line 170
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 171
    .line 172
    .line 173
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskDownloadSize:J

    .line 174
    .line 175
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    const-string p1, "mask_download_size"

    .line 180
    .line 181
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 182
    .line 183
    .line 184
    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubtitleDownloadSize:J

    .line 185
    .line 186
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptIntergerV1(J)J

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    const-string/jumbo p1, "subtitle_download_size"

    .line 191
    .line 192
    .line 193
    invoke-static {v0, p1, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 194
    .line 195
    .line 196
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mStSpeed:F

    .line 197
    .line 198
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptFloatV1(F)F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    const-string/jumbo v1, "st_net_speed"

    .line 203
    .line 204
    .line 205
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialResolution:Ljava/lang/String;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->encryptStringV1(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    const-string v1, "initial_resolution"

    .line 215
    .line 216
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-object v0
.end method

.method private initParametersIfNeeded()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadioMode:I

    .line 3
    .line 4
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mExpirePlayCode:I

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDLOnFirstPlay:I

    .line 7
    .line 8
    return-void
.end method

.method private limitStringLength(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-le v0, p2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    return-object p1
.end method

.method private parseLeaveReason(Lcom/ss/ttvideoengine/log/VideoEventBase;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "vid"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    .line 15
    .line 16
    cmp-long v0, v3, v1

    .line 17
    .line 18
    if-gtz v0, :cond_0

    .line 19
    .line 20
    const/16 v0, -0x3ea

    .line 21
    .line 22
    iput v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 23
    .line 24
    :cond_0
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    .line 25
    .line 26
    cmp-long v0, v3, v1

    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    .line 31
    .line 32
    cmp-long v0, v3, v1

    .line 33
    .line 34
    if-gtz v0, :cond_1

    .line 35
    .line 36
    iget-object p1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    .line 37
    .line 38
    const-string v0, "local_url"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const/16 p1, -0x3ec

    .line 47
    .line 48
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    .line 52
    .line 53
    cmp-long p1, v3, v1

    .line 54
    .line 55
    if-gtz p1, :cond_2

    .line 56
    .line 57
    const/16 p1, -0x3eb

    .line 58
    .line 59
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    .line 63
    .line 64
    cmp-long p1, v3, v1

    .line 65
    .line 66
    if-gtz p1, :cond_3

    .line 67
    .line 68
    const/16 p1, -0x3ee

    .line 69
    .line 70
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    .line 74
    .line 75
    cmp-long p1, v3, v1

    .line 76
    .line 77
    if-gtz p1, :cond_4

    .line 78
    .line 79
    const/16 p1, -0x3ef

    .line 80
    .line 81
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    .line 85
    .line 86
    cmp-long p1, v3, v1

    .line 87
    .line 88
    if-gtz p1, :cond_5

    .line 89
    .line 90
    const/16 p1, -0x3f0

    .line 91
    .line 92
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    .line 96
    .line 97
    cmp-long p1, v3, v1

    .line 98
    .line 99
    if-gtz p1, :cond_6

    .line 100
    .line 101
    const/16 p1, -0x3f1

    .line 102
    .line 103
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 104
    .line 105
    return-void

    .line 106
    :cond_6
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    .line 107
    .line 108
    cmp-long p1, v3, v1

    .line 109
    .line 110
    if-gtz p1, :cond_7

    .line 111
    .line 112
    const/16 p1, -0x3f2

    .line 113
    .line 114
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 115
    .line 116
    return-void

    .line 117
    :cond_7
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    .line 118
    .line 119
    cmp-long p1, v3, v1

    .line 120
    .line 121
    if-gtz p1, :cond_8

    .line 122
    .line 123
    const/16 p1, -0x3f3

    .line 124
    .line 125
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    .line 129
    .line 130
    cmp-long p1, v3, v1

    .line 131
    .line 132
    if-gtz p1, :cond_9

    .line 133
    .line 134
    const/16 p1, -0x3f4

    .line 135
    .line 136
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 137
    .line 138
    return-void

    .line 139
    :cond_9
    iget p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadioMode:I

    .line 140
    .line 141
    if-nez p1, :cond_a

    .line 142
    .line 143
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    .line 144
    .line 145
    cmp-long v0, v3, v1

    .line 146
    .line 147
    if-gtz v0, :cond_a

    .line 148
    .line 149
    const/16 p1, -0x3f6

    .line 150
    .line 151
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 152
    .line 153
    return-void

    .line 154
    :cond_a
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    .line 155
    .line 156
    cmp-long v0, v3, v1

    .line 157
    .line 158
    if-gtz v0, :cond_b

    .line 159
    .line 160
    const/16 p1, -0x3f7

    .line 161
    .line 162
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 163
    .line 164
    return-void

    .line 165
    :cond_b
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    .line 166
    .line 167
    cmp-long v0, v3, v1

    .line 168
    .line 169
    if-gtz v0, :cond_c

    .line 170
    .line 171
    const/16 p1, -0x3f5

    .line 172
    .line 173
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 174
    .line 175
    return-void

    .line 176
    :cond_c
    if-nez p1, :cond_e

    .line 177
    .line 178
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    .line 179
    .line 180
    cmp-long v0, v3, v1

    .line 181
    .line 182
    if-gtz v0, :cond_e

    .line 183
    .line 184
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceSetTime:J

    .line 185
    .line 186
    cmp-long p1, v3, v1

    .line 187
    .line 188
    if-gtz p1, :cond_d

    .line 189
    .line 190
    const/16 p1, -0x401

    .line 191
    .line 192
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 193
    .line 194
    goto :goto_0

    .line 195
    :cond_d
    const/16 p1, -0x3f8

    .line 196
    .line 197
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 198
    .line 199
    :goto_0
    return-void

    .line 200
    :cond_e
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    .line 201
    .line 202
    cmp-long v0, v3, v1

    .line 203
    .line 204
    if-gtz v0, :cond_f

    .line 205
    .line 206
    const/16 p1, -0x3f9

    .line 207
    .line 208
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 209
    .line 210
    return-void

    .line 211
    :cond_f
    if-nez p1, :cond_10

    .line 212
    .line 213
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    .line 214
    .line 215
    cmp-long v0, v3, v1

    .line 216
    .line 217
    if-gtz v0, :cond_10

    .line 218
    .line 219
    const/16 p1, -0x3fa

    .line 220
    .line 221
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 222
    .line 223
    return-void

    .line 224
    :cond_10
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    .line 225
    .line 226
    cmp-long v0, v3, v1

    .line 227
    .line 228
    if-gtz v0, :cond_11

    .line 229
    .line 230
    const/16 p1, -0x3fb

    .line 231
    .line 232
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 233
    .line 234
    return-void

    .line 235
    :cond_11
    if-nez p1, :cond_12

    .line 236
    .line 237
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    .line 238
    .line 239
    cmp-long v0, v3, v1

    .line 240
    .line 241
    if-gtz v0, :cond_12

    .line 242
    .line 243
    const/16 p1, -0x3fc

    .line 244
    .line 245
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 246
    .line 247
    return-void

    .line 248
    :cond_12
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    .line 249
    .line 250
    cmp-long v0, v3, v1

    .line 251
    .line 252
    if-gtz v0, :cond_13

    .line 253
    .line 254
    const/16 p1, -0x3fd

    .line 255
    .line 256
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 257
    .line 258
    return-void

    .line 259
    :cond_13
    if-nez p1, :cond_14

    .line 260
    .line 261
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    .line 262
    .line 263
    cmp-long p1, v3, v1

    .line 264
    .line 265
    if-gtz p1, :cond_14

    .line 266
    .line 267
    const/16 p1, -0x3fe

    .line 268
    .line 269
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 270
    .line 271
    return-void

    .line 272
    :cond_14
    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    .line 273
    .line 274
    cmp-long p1, v3, v1

    .line 275
    .line 276
    if-gtz p1, :cond_15

    .line 277
    .line 278
    const/16 p1, -0x3ff

    .line 279
    .line 280
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 281
    .line 282
    return-void

    .line 283
    :cond_15
    const/16 p1, -0x400

    .line 284
    .line 285
    iput p1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    .line 286
    .line 287
    return-void
.end method

.method private parsePreloadGear(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, ";|="

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_6

    .line 23
    .line 24
    array-length v2, p1

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const/4 v2, 0x0

    .line 29
    :goto_0
    array-length v3, p1

    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    if-ge v2, v3, :cond_2

    .line 33
    .line 34
    :try_start_0
    aget-object v3, p1, v2

    .line 35
    .line 36
    add-int/lit8 v4, v2, 0x1

    .line 37
    .line 38
    aget-object v4, p1, v4

    .line 39
    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    const-wide/16 v2, 0x0

    .line 67
    .line 68
    cmp-long p1, p2, v2

    .line 69
    .line 70
    if-lez p1, :cond_4

    .line 71
    .line 72
    const-string/jumbo p1, "vgt0"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p1, p2, p3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 76
    .line 77
    .line 78
    :cond_4
    cmp-long p1, p4, v2

    .line 79
    .line 80
    if-lez p1, :cond_5

    .line 81
    .line 82
    const-string p1, "agt0"

    .line 83
    .line 84
    invoke-static {v1, p1, p4, p5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    :cond_5
    invoke-direct {p0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    return-object p1

    .line 92
    :cond_6
    :goto_2
    return-object v0
.end method


# virtual methods
.method public toJsonObject(Lcom/ss/ttvideoengine/log/VideoEventBase;)Lorg/json/JSONObject;
    .locals 10

    const/4 v6, 0x0

    if-nez p1, :cond_0

    return-object v6

    .line 1
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->parseLeaveReason(Lcom/ss/ttvideoengine/log/VideoEventBase;)V

    .line 4
    :cond_1
    const-string v0, "player_sessionid"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSessionID:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, "app_sessionid"

    sget-object v1, Lcom/ss/ttvideoengine/log/VideoEventBase;->appSessionId:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "log_type"

    const-string/jumbo v1, "video_playq"

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string v0, "sdk_version"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->sdk_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v0, "plugin_exception"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pluginException:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 9
    const-string/jumbo v0, "sv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->sv:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, "pv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->pv:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v0, "pc"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->pc:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "ffv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->ffmpeg_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "vcnv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->libvcn_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string/jumbo v0, "trv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->texturender_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v0, "prldv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->preload_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v0, "abrv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->abr_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v0, "prdtv"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->predict_version:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    const-string v1, "dir_url"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    const-string/jumbo v0, "v"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVid:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_2
    const-string v0, "play_type"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mPlayType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 22
    const-string v0, "pt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 23
    const-string v0, "at"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->at:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 24
    const-string v0, "prepare_start_time"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_start_time:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 25
    const-string v0, "prepare_end_time"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_end_time:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 26
    const-string v0, "play_preparedt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playPreparedT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 27
    const-string v0, "play_startedt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playStartedT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 28
    const-string/jumbo v0, "vt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 29
    const-string/jumbo v0, "v_first_sync_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_first_sync_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 30
    const-string v0, "et"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->et:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 31
    const-string v0, "lt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 32
    const-string v0, "bft"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bft:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 33
    const-string v0, "bc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bc:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 34
    const-string v0, "br"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->br:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v0, "vu"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vu:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 36
    const-string/jumbo v0, "vd"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vd:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 37
    const-string/jumbo v0, "vs"

    iget-wide v4, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 38
    const-string/jumbo v0, "vps"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vps:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 39
    const-string/jumbo v0, "vds"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vds:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 40
    const-string v0, "accumulate_vds"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->accu_vds:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 41
    const-string/jumbo v0, "width"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->width:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 42
    const-string v0, "height"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->height:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 43
    const-string v0, "async_init"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncInit:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 44
    const-string v0, "async_codec_id"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->asyncCodecId:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 45
    const-string/jumbo v0, "video_preload_size"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->video_preload_size:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 46
    const-string v0, "df"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->df:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "lf"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lf:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v0, "codec"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->codec_type:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "a_codec"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->a_codec_type:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "render_type"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->render_type:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "hijack"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijack:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 52
    const-string v0, "hw"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHW:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 53
    const-string v0, "hw_user"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mVideoHWUser:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 54
    const-string v0, "hw_err_reason"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoHWErrReason:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 55
    const-string v0, "audio_hw_user"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mAudioHwUser:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 56
    const-string v0, "dns_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 57
    const-string/jumbo v0, "tran_ct"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranConnectT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 58
    const-string/jumbo v0, "tran_ft"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->tranFirstPacketT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 59
    const-string v0, "a_dns_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDnsT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 60
    const-string v0, "a_tran_ct"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranConnectT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 61
    const-string v0, "a_tran_ft"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioTranFirstPacketT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 62
    const-string v0, "re_f_videoframet"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstVideoFrameT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 63
    const-string v0, "de_f_videoframet"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstVideoFrameT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 64
    const-string v0, "re_f_audioframet"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->receiveFirstAudioFrameT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 65
    const-string v0, "de_f_audioframet"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decodeFirstAudioFrameT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 66
    const-string v0, "bu_acu_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bufferAccuT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 67
    const-string v0, "de_bu_acu_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->decoderBufferAccuT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 68
    const-string v0, "internal_ip"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->internalIP:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v0, "tag"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTag:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "subtag"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSubTag:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ex:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ex"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "mdlretry"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLRetryList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 73
    const-string v0, "first_buf_startt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferStartT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 74
    const-string v0, "first_buf_endt"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstBufferEndT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 75
    const-string v0, "cur_play_pos"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curPlayBackTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 76
    const-string v0, "engine_state"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->engineState:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 77
    const-string/jumbo v0, "video_out_fps"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoOutputFps:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 78
    const-string v0, "container_fps"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->containerFps:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 79
    const-string/jumbo v0, "video_decoder_fps"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecoderFps:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 80
    const-string v0, "clock_diff"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->clockDiff:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 81
    const-string v0, "drop_count"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dropCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 82
    const-string/jumbo v0, "video_device_opened_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceOpenedTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 83
    const-string v0, "audio_device_opened_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceOpenedTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 84
    const-string v0, "finish"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->finish:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 85
    const-string v0, "is_start_play_automatically"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isStartPlayAutomatically:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 86
    const-string v0, "player_create_exception"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ownPlayerCreateException:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "custom_str"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomStr:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "initial_url"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialURL:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "initial_host"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialHost:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "initial_ip"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialIP:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "initial_resolution"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialResolution:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "initial_quality"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQuality:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "initial_quality_type"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInitialQualityType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 94
    const-string v0, "apiver"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiver:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 95
    const-string v0, "auth"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->auth:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "apiver_final"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiverFinal:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 97
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackparams:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playparam"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "vtype"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "dynamic_type"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->dynamic_type:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "lc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loopcount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 101
    const-string/jumbo v0, "switch_resolution_c"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->switchResolutionCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 102
    const-string/jumbo v0, "watch_dur"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->watchduration:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 103
    const-string v0, "sc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seekCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 104
    const-string/jumbo v0, "vid_cache"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->useVideoModelCache:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 105
    const-string v0, "custom_p2p_cdn_type"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->customP2PCDNType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 106
    const-string/jumbo v0, "start_time"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->startTime:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 107
    const-string v0, "disable_accurate_start"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->disableAccurateStart:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 108
    const-string v0, "audio_codec_nameId"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->audioCodecNameId:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v0, "video_codec_nameId"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->videoCodecNameId:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 110
    const-string v0, "format_type"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->formatType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v0, "surface_set_time"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceSetTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 112
    const-string/jumbo v0, "surface_code"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->surfaceCode:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, "surface_code_player"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playerSurfaceCode:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v0, "frames_drop_set_num"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFramesSetDropNum:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 115
    const-string/jumbo v0, "video_device_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoDeviceStartTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 116
    const-string v0, "audio_device_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioDeviceStartTime:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 117
    const-string/jumbo v0, "video_length"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoBufferLength:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 118
    const-string v0, "audio_length"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBufferLength:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 119
    const-string v0, "net_block_buffer_threshold"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netblockBufferthreshold:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 120
    const-string v0, "api_str"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->apiString:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "net_client"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netClient:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "fetch_lv"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->fetchedAndLeaveByUser:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 123
    const-string/jumbo v0, "volume"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->volume:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 124
    const-string v0, "core_volume"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->core_volume:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 125
    const-string v0, "ae_type"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ae_type:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 126
    const-string v0, "mute"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mute:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 127
    const-string/jumbo v0, "source_type"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v0, "sharp"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableSharp:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 129
    const-string v0, "dns_server_ip"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_server_ip:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrInfo:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abr_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->abrGeneralInfo:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "abr_general_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "enc_key"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->encryptKey:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "hw_codec_name"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecName:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "hw_codec_exception"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hwCodecException:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 135
    const-string v0, "enable_bash"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableBash:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 136
    const-string v0, "enable_mdl"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDL:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 137
    const-string v0, "network_try_count"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netWorkTryCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 138
    const-string v0, "chipboard"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipBoardName:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "chiphardware"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareName:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "chiphardware_new"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->chipHardwareNameNew:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "buffer_timeout"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBufferTimeout:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 142
    const-string v0, "dns_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_start_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 143
    const-string v0, "dns_end_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dns_end_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 144
    const-string v0, "dns_type"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDNSType:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "player_created_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->player_created_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 146
    const-string v0, "errt"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errt:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 147
    const-string v0, "errc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->errc:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 148
    const-string v0, "fir_errt"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errt:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 149
    const-string v0, "fir_errc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 150
    const-string v0, "fir_errc_in"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->first_errc_internal:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 151
    const-string/jumbo v0, "vsc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vsc:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 152
    const-string/jumbo v0, "vsc_message"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vscMessage:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->subEvents:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sub_events"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->maskEvents:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mask_events"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "lv_reason"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_reason:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 156
    const-string v0, "lv_bt"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_block_t:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 157
    const-string v0, "lv_method"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->leave_method:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 158
    const-string v0, "sat"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->seek_accu_t:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 159
    const-string v0, "lsst"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekStartT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 160
    const-string v0, "lset"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekEndT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 161
    const-string v0, "lbst"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferStartT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 162
    const-string v0, "lbet"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastBufferEndT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 163
    const-string v0, "lsp"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastSeekPosition:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 164
    const-string/jumbo v0, "sl_diff"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->server_local_diff:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 165
    const-string/jumbo v0, "trace_id"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->traceID:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "network_timeout"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->networkTimeout:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 167
    const-string v0, "is_pref_near_sam"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isPreferNearestSample:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 168
    const-string v0, "is_disable_short_seek"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isDisableShortSeek:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 169
    const-string v0, "drm_type"

    iget v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 170
    const-string v0, "drm_token_url"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDrmTokenUrl:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "check_hijack"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->checkHijack:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 172
    const-string v0, "hijack_retry"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->hijackRetry:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 173
    const-string v0, "first_hijack_code"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstHijackCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 174
    const-string v0, "last_hijack_code"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lastHijackCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 175
    const-string v0, "mdl_loader_type"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->loaderType:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "mdl_version"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMdlVersion:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "dns_mod"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dnsModule:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 178
    const-string/jumbo v0, "vd_err"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoDecodeError:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 179
    const-string v0, "ad_err"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curAudioDecodeError:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 180
    const-string/jumbo v0, "vr_err"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->curVideoRenderError:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 181
    const-string v0, "net_type"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mNetworkType:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "vpls"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vpls:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 183
    const-string v0, "d_apls"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_apls:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 184
    const-string v0, "d_vpls"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->d_vpls:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 185
    const-string v0, "mr"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 186
    const-string v0, "mr_dv"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_dv:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 187
    const-string v0, "mr_da"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->miss_reason_da:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 188
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstFrameSpeed:D

    double-to-float v0, v0

    const-string/jumbo v1, "vt_speed"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 189
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playEndSpeed:D

    double-to-float v0, v0

    const-string v1, "end_speed"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 190
    const-string v0, "mediacodec_render"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mediaCodecRender:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 191
    const-string/jumbo v0, "tr"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRender:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 192
    const-string/jumbo v0, "tr_err"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->textureRenderErrorCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 193
    const-string v0, "cp"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->codecPool:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 194
    const-string v0, "bit_rate"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->bitrate:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 195
    const-string v0, "audio_bitrate"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->audioBitrate:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 196
    const-string v0, "cold_start"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isColdStart:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 197
    const-string v0, "av_gap"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->videoAudioGap:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 198
    const-string v0, "moov_pos"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->moovPos:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 199
    const-string v0, "mdat_pos"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mdatPos:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 200
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->feedInBeforeDecoded:I

    if-lez v0, :cond_3

    .line 201
    const-string v1, "feed_in_before_decoded"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 202
    :cond_3
    const-string v0, "frange_size"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->firstRangeSize:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 203
    const-string v0, "net_speed_level"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->netSpeedLevel:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 204
    const-string/jumbo v0, "video_model_version"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->modelVersion:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 205
    const-string v0, "prepare_before_play_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->prepare_before_play_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 206
    const-string/jumbo v0, "setds_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->setds_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 207
    const-string v0, "ps_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ps_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 208
    const-string v0, "pt_new"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 209
    const-string v0, "a_dns_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dns_start_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 210
    const-string v0, "formater_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->formater_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 211
    const-string v0, "avformat_open_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->avformat_open_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 212
    const-string v0, "demuxer_begin_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_begin_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 213
    const-string v0, "demuxer_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->demuxer_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 214
    const-string v0, "dec_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->dec_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 215
    const-string v0, "outlet_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->outlet_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 216
    const-string/jumbo v0, "v_render_f_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_render_f_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 217
    const-string v0, "a_render_f_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_render_f_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 218
    const-string v0, "a_dec_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_start_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 219
    const-string/jumbo v0, "v_dec_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_start_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 220
    const-string v0, "a_dec_opened_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_dec_opened_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 221
    const-string/jumbo v0, "v_dec_opened_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_dec_opened_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 222
    const-string v0, "a_http_open_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_http_open_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 223
    const-string/jumbo v0, "v_http_open_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_http_open_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 224
    const-string/jumbo v0, "v_tran_open_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_tran_open_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 225
    const-string v0, "a_tran_open_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_tran_open_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 226
    const-string/jumbo v0, "v_sock_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->v_sock_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 227
    const-string v0, "a_sock_create_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->a_sock_create_t:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 228
    const-string v0, "radio_mode"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadioMode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 229
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDisabled:Z

    const-string/jumbo v1, "v_disabled"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 230
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDisabled:Z

    const-string v1, "a_disabled"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 231
    const-string v0, "is_replay"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->isReplay:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 232
    const-string v0, "play_log_id"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->log_id:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "enable_nnsr"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEnableNNSR:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 234
    const-string v0, "at_r"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mReadCacheMode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 235
    const-string v0, "at_rs"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreRangeOff:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v0, "video_codec_profile"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoCodecProfile:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 237
    const-string v0, "audio_codec_profile"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioCodecProfile:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 238
    const-string v0, "last_sessionid"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLastSessionID:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkTypeList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nettype_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSignalStrengthList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sigstrength_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "netspeed_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlMultiSpeedList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 242
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mQualityList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quality_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBitrateList:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitrate_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "catowerrtt_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 245
    const-string v0, "catowerrttms_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCatowerRttMsList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    const-string v0, "netquality_int"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetQualityInterval:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 247
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "features"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v0, "network_score"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkScore:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 249
    const-string v0, "before_play_buffer_start_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferStartT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 250
    const-string v0, "before_play_buffer_end_t"

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->playbackBufferEndT:J

    invoke-static {v7, v0, v4, v5}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 251
    const-string/jumbo v0, "st_net_speed"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mStSpeed:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 252
    const-string/jumbo v0, "v_file_hash"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFileHash:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v0, "a_file_hash"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioFileHash:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v0, "max_frame_in_mc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaxFramesInMediaCodec:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 255
    const-string/jumbo v0, "video_abnormal_code"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 256
    const-string/jumbo v0, "video_abnormal_strategy"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalStrategy:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 257
    const-string/jumbo v0, "video_abnormal_interval"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalInterval:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "video_abnormal_code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " video_abnormal_strategy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " video_abnormal_interval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoAbnormalInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "VideoEventOnePlay"

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->startTime:I

    if-nez v0, :cond_7

    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->feedInBeforeDecoded:I

    if-lez v0, :cond_7

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_7

    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    const-wide/32 v2, 0x249f0

    cmp-long v0, v0, v2

    if-gez v0, :cond_7

    .line 260
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    const-string v9, "pgd"

    const-string v1, "min_video_frame_size"

    if-eqz v0, :cond_4

    const-string v2, "dash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    const-string v0, "min_audio_frame_size"

    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    invoke-static {v7, v0, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 262
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    invoke-static {v7, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 263
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreloadGear:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->parsePreloadGear(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 264
    invoke-static {v7, v9, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_4
    iget-wide v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    iget-wide v4, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    move-wide v2, v4

    .line 266
    :goto_0
    invoke-static {v7, v1, v2, v3}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 267
    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPreloadGear:Ljava/lang/String;

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->parsePreloadGear(Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 268
    invoke-static {v7, v9, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minVideoFrameSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minVideoFrameSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", minAudioFrameSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->minAudioFrameSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_7
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mGearStrategyInfo:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gear_strategy_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRStrategyInfo:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sr_strategy_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSRPreloadInfo:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sr_preload_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "mdl_preload_info"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdl_preload_info:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    const-string v1, "cur_ip"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    const-string v1, "cur_host"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    const-string v1, "cur_url"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    const-string v2, "reply_size"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 278
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    const-string v1, "mdl_speed"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 279
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    const-string v1, "mdl_file_key"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    const-string v1, "mdl_re_url"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    const-string v1, "mdl_ec"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 282
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    const-string v2, "end_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 283
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    const-string v2, "mdl_dns_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 284
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_seek_num:I

    const-string v1, "mdl_seek_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 285
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_p2p_ier:I

    const-string v1, "mdl_v_p2p_ier"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 286
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    const-string v1, "mdl_ip_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    const-string v1, "mdl_blocked_ips"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    const-string v1, "mdl_response_cache"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    const-string v1, "mdl_response_cinfo"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_disable_seek:I

    const-string v1, "mdl_disable_seek"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 291
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_ip:Ljava/lang/String;

    const-string v1, "a_cur_ip"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_host:Ljava/lang/String;

    const-string v1, "a_cur_host"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_speed:I

    const-string v1, "a_mdl_speed"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 294
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_dns_t:J

    const-string v2, "a_mdl_dns_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 295
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ip_list:Ljava/lang/String;

    const-string v1, "a_mdl_ip_list"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cdn_cache:Ljava/lang/String;

    const-string v1, "a_mdl_response_cache"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_client_info:Ljava/lang/String;

    const-string v1, "a_mdl_response_cinfo"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v0, "custom_click_t"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomClickT:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 299
    const-string v0, "custom_vm_t"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomGetVideoModelT:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 300
    const-string v0, "custom_init_t"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomInitEngineT:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 301
    const-string v0, "custom_play_t"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlayEngineT:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 302
    const-string/jumbo v0, "v_render_stall_count"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v0, "v_render_stall_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoRenderStallList:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v0, "screen_w"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenWidth:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 305
    const-string v0, "screen_h"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mScreenHeight:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 306
    const-string v0, "p_density"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPixelDensity:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 307
    const-string/jumbo v0, "xdpi"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->xdpi:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 308
    const-string/jumbo v0, "ydpi"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ydpi:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 309
    const-string/jumbo v0, "sr_w"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrWidthFactor:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 310
    const-string/jumbo v0, "sr_h"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrHeightFactor:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 311
    const-string/jumbo v0, "sr_algorithm"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrAlgorithm:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 312
    const-string/jumbo v0, "sr_process_rate"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProccessSuccessRate:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 313
    const-string/jumbo v0, "sr_process_act"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrProcessorCostTime:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 314
    const-string v0, "enble_bmf"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSrEnableBmf:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 315
    const-string v0, "eye_filter"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoFilterList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 316
    const-string v0, "bright_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mBrightList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 317
    const-string/jumbo v0, "view_size_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSizeList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 318
    const-string/jumbo v0, "vr_distance_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrDistanceList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 319
    const-string/jumbo v0, "vr_frame_rate"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrFrameRate:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 320
    const-string/jumbo v0, "vr_screen_refresh_rate"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrScreenRefreshRate:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 321
    const-string/jumbo v0, "vr_head_movement_delay"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVrHeadMovementDelay:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 322
    const-string v0, "play_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlayList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 323
    const-string v0, "pause_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPauseList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 324
    const-string v0, "resolution_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mResolutionList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 325
    const-string v0, "playspeed_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPlaySpeedList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 326
    const-string v0, "radiomode_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRadiomodeList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 327
    const-string v0, "loop_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLoopList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 328
    const-string v0, "error_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mErrorList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 329
    const-string v0, "rebuf_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRebufList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 330
    const-string v0, "seek_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSeekList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 331
    const-string v0, "av_outsync_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 332
    const-string v0, "av_outsync_count"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 333
    const-string v0, "color_trc"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->color_trc:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 334
    const-string v0, "headset_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHeadsetStateList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 335
    const-string v0, "hw_conf_type"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHardwareConfType:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 336
    const-string v0, "no_a_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoAudioRenderList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 337
    const-string v0, "no_v_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoVideoRenderList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 338
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsEngineReuse:Z

    const-string v1, "is_reuse_engine"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 339
    const-string/jumbo v0, "v_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStreamDuration:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 340
    const-string v0, "a_duration"

    iget-wide v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioStreamDuration:J

    invoke-static {v7, v0, v1, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 341
    const-string/jumbo v0, "view_hidden"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mIsViewHidden:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 342
    const-string v0, "power"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 343
    const-string v0, "is_charging"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mChargingList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    const-string v0, "foreback_switch_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mForebackSwitchList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 345
    const-string v0, "r_stage_errcs"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mRenderStageError:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v0, "bad_interlaced_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVBadInterlacedList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 347
    const-string v0, "no_surface_play"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHasNoSurfaceWhenAudioRenderStart:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 348
    const-string v0, "net_conn_cnt"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkConnectCount:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 349
    const-string/jumbo v0, "video_style"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVideoStyle:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 350
    const-string v0, "dimension"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mDimension:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 351
    const-string v0, "projection_model"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mProjectionModel:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 352
    const-string/jumbo v0, "view_size"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mViewSize:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 353
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateBegin:D

    double-to-float v0, v0

    const-string v1, "cpu_rate_begin"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 354
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuRateEnd:D

    double-to-float v0, v0

    const-string v1, "cpu_rate_end"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 355
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedBegin:D

    double-to-float v0, v0

    const-string v1, "cpu_speed_begin"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 356
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCpuSpeedEnd:D

    double-to-float v0, v0

    const-string v1, "cpu_speed_end"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 357
    const-string v0, "power_save_begin"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeBegin:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 358
    const-string v0, "power_save_end"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mPowerSaveModeEnd:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 359
    const-string v0, "battery_current"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAvgCurrent:F

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 360
    const-string v0, "battery_current_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCurrentList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 361
    const-string v0, "gear_info_list"

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mGearinfoList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 362
    const-string v0, "engine_hashcode"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mEngineHash:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 363
    const-string v0, "enginepool_is_from_enginepool"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFromEnginePool:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "enginepool_corepoolsize_upper_limit"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorePoolSizeUpperLimit:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 365
    const-string v0, "enginepool_corepoolsize_before_getengine"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCorepoolSizeBeforeGetEngine:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 366
    const-string v0, "enginepool_count_of_engine_in_use"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCountOfEngineInUse:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 367
    const-string/jumbo v0, "tr_v"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrVersion:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrFPS:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string/jumbo v1, "tr_fps"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 369
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->limitStringLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eff_list"

    invoke-static {v7, v2, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrPerEffectAverageTime:Ljava/lang/String;

    const/16 v2, 0x100

    invoke-direct {p0, v0, v2}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->limitStringLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "eff_avrtime"

    invoke-static {v7, v2, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectChainAverageTime:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v2, "eff_chain_avrtime"

    invoke-static {v7, v2, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 372
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mTrEffectErrorCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->limitStringLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eff_errc"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v0, "ott_plugin_v"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mOttPluginVersion:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 374
    const-string v0, "company_id"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCompanyID:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCrosstalkCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_8

    .line 376
    const-string v2, "crosstalk_count"

    invoke-static {v7, v2, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 377
    const-string v0, "crosstalk_info_list"

    iget-object v2, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCrosstalkInfoList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v2}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    :cond_8
    iget v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSensitiveMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 379
    :cond_9
    const-string v6, "guest_mode"

    goto :goto_2

    .line 380
    :cond_a
    const-string/jumbo v6, "teen_mode"

    goto :goto_2

    .line 381
    :cond_b
    const-string/jumbo v6, "user_disagree"

    .line 382
    :goto_2
    const-string v0, "sensitive_mode"

    invoke-static {v7, v0, v6}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-wide v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNetworkQualityBitrate:D

    double-to-float v0, v0

    const-string/jumbo v1, "target_bitrate"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;F)V

    .line 384
    const-string v0, "expire_play_code"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mExpirePlayCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 385
    const-string v0, "mask_download_size"

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMaskDownloadSize:J

    invoke-static {v7, v0, v3, v4}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 386
    const-string/jumbo v0, "subtitle_download_size"

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSubtitleDownloadSize:J

    invoke-static {v7, v0, v3, v4}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 387
    const-string v0, "cast_info_is_cast_live"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoIsCastLive:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 388
    const-string v0, "cast_info_source_app_id"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSourceAppId:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 389
    const-string v0, "cast_info_scene_id"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoSceneId:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 390
    const-string v0, "cast_info_protocal"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCastinfoProtocal:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "host_abi_b"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mHostAbiBits:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 392
    iget-boolean v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mHasGetPreloadTraceId:Z

    const-string v1, "has_get_preload_traceid"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 393
    const-string v0, "custom_play_session_id"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mCustomPlaySessionId:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "mdl_group_id"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMDLGroupId:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v0, "background_play"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenPlay:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 396
    const-string v0, "background_stop"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mInBackgroundWhenStop:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 397
    invoke-static {}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->getInstance()Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;

    move-result-object v0

    .line 398
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->getAbility()I

    move-result v1

    if-lez v1, :cond_c

    .line 399
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/playermetrcis/PlayerMetrics;->getMetricsLog()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 400
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 401
    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "metrics_info_new"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "metrics_info :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_c
    invoke-static {}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getInstance()Lcom/ss/ttvideoengine/portrait/PortraitEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/ttvideoengine/portrait/PortraitEngine;->getAllLabels()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 405
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 406
    const-string v1, "portrait_labels"

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->SerialMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_d
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    move-result-object v0

    const-string v1, ""

    const-string/jumbo v3, "vs_impression_id"

    invoke-virtual {v0, v3, v1}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v7, v3, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mSourceTypeStr:Ljava/lang/String;

    const-string v1, "feed"

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 411
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mVModelHasFallbackApi:Z

    const-string/jumbo v1, "vm_fbapi"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 412
    :cond_e
    const-string v0, "initial_enable_mdl"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->enableMDLOnFirstPlay:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 413
    const-string v0, "mdl_invalid_code"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInvalidCode:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 414
    const-string v0, "mdl_init_state"

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeState:I

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 415
    const-string v0, "mdl_init_err"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMdlInitializeError:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMediaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->getLogData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 417
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 418
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 419
    :cond_f
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mMediaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->removeLogData(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mTraceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->popOnePlayLog(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 421
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 422
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 423
    :cond_10
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mLabelUsage:Lcom/ss/ttvideoengine/portrait/LabelUsage;

    if-eqz v0, :cond_11

    .line 424
    const-string v1, "label_usage"

    invoke-virtual {v0, v7}, Lcom/ss/ttvideoengine/portrait/LabelUsage;->get(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pt_new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->pt_new:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ps_t:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ps_t:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vv_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->vt:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lwp_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->lt:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outsync count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outsync list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAVOutsyncList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", vtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->vtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cur_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v1, v1, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", features:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mFeatures:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->ownPlayerCreateException:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no_a_list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoAudioRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", no_v_list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mNoVideoRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mDataSource:Lcom/ss/ttvideoengine/log/EventLoggerSource;

    if-eqz v0, :cond_12

    const/16 v1, 0x94

    .line 428
    invoke-interface {v0, v1}, Lcom/ss/ttvideoengine/log/EventLoggerSource;->getLogValueInt(I)I

    move-result v0

    goto :goto_3

    :cond_12
    const/4 v0, 0x0

    :goto_3
    if-ne v0, v2, :cond_13

    .line 429
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->doEncryptThings(Lcom/ss/ttvideoengine/log/VideoEventBase;)Ljava/util/Map;

    move-result-object v0

    .line 430
    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 431
    :cond_13
    sget-boolean v0, Lcom/ss/ttvideoengine/TTVideoEngine;->sBuryDataOptimize:Z

    if-nez v0, :cond_14

    .line 432
    const-string v0, "init_audio_url"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mAudioInitUrl:Ljava/lang/String;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, "set_surface_time_list"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSetSurfaceTimeList:Ljava/util/ArrayList;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 434
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    const-string v2, "cur_req_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 435
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    const-string v2, "cur_end_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 436
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    const-string v2, "cur_cache_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 437
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    const-string v1, "cache_type"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 438
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    const-string v2, "down_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 439
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    const-string v2, "player_wait_time"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 440
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    const-string v1, "player_wait_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 441
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    const-string v1, "mdl_is_socrf"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 442
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    const-string v1, "mdl_req_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 443
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    const-string v1, "mdl_url_index"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 444
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    const-string v1, "mdl_cur_source"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 445
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    const-string v1, "mdl_extra_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    const-string v2, "mdl_fs"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 447
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    const-string v1, "mdl_stage"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 448
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    const-string v2, "req_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 449
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    const-string/jumbo v2, "tcp_con_start_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 450
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    const-string/jumbo v2, "tcp_con_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 451
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    const-string/jumbo v2, "tcp_first_pack_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 452
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    const-string v2, "http_first_body_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 453
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_open_end_t:J

    const-string v2, "http_open_end_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 454
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    const-string v1, "http_code"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 455
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_pcdn_full_speed:I

    const-string v1, "mdl_p2p_sp"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 456
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_res_err:I

    const-string v1, "mdl_res_err"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 457
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_read_src:I

    const-string v1, "mdl_read_src"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 458
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_msg:Ljava/lang/String;

    const-string v1, "mdl_last_msg"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_server_timing:Ljava/lang/String;

    const-string v1, "mdl_server_timing"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlVideoInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_v_lt:I

    const-string v1, "mdl_v_lt"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 461
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_req_pos:J

    const-string v2, "a_cur_req_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 462
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_end_pos:J

    const-string v2, "a_cur_end_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 463
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_cache_pos:J

    const-string v2, "a_cur_cache_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 464
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cache_type:I

    const-string v1, "a_cache_type"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 465
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_url:Ljava/lang/String;

    const-string v1, "a_cur_url"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_reply_size:J

    const-string v2, "a_reply_size"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 467
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_down_pos:J

    const-string v2, "a_down_pos"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 468
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_time:J

    const-string v2, "a_player_wait_time"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 469
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_player_wait_num:I

    const-string v1, "a_player_wait_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 470
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_file_key:Ljava/lang/String;

    const-string v1, "a_mdl_file_key"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_is_socrf:I

    const-string v1, "a_mdl_is_socrf"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 472
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_num:I

    const-string v1, "a_mdl_req_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 473
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_url_index:I

    const-string v1, "a_mdl_url_index"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 474
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_re_url:Ljava/lang/String;

    const-string v1, "a_mdl_re_url"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_cur_soure:I

    const-string v1, "a_mdl_cur_source"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 476
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_extra_info:Ljava/lang/String;

    const-string v1, "a_mdl_extra_info"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_error_code:I

    const-string v1, "a_mdl_ec"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 478
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_fs:J

    const-string v2, "a_mdl_fs"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 479
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_stage:I

    const-string v1, "a_mdl_stage"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 480
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_req_t:J

    const-string v2, "a_req_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 481
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_end_t:J

    const-string v2, "a_end_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 482
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_start_t:J

    const-string v2, "a_tcp_con_start_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 483
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_tcp_end_t:J

    const-string v2, "a_tcp_con_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 484
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_ttfp:J

    const-string v2, "a_tcp_first_pack_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 485
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_httpfb:J

    const-string v2, "a_http_first_body_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 486
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-wide v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_open_end_t:J

    const-string v2, "a_http_open_end_t"

    invoke-static {v7, v2, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;J)V

    .line 487
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_http_code:I

    const-string v1, "a_http_code"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 488
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_res_err:I

    const-string v1, "a_mdl_res_err"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 489
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_read_src:I

    const-string v1, "a_mdl_read_src"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 490
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_seek_num:I

    const-string v1, "a_mdl_seek_num"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;I)V

    .line 491
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_last_msg:Ljava/lang/String;

    const-string v1, "a_mdl_last_msg"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_server_timing:Ljava/lang/String;

    const-string v1, "a_mdl_server_timing"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p1, Lcom/ss/ttvideoengine/log/VideoEventBase;->mdlAudioInfo:Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;

    iget-object v0, v0, Lcom/ss/ttvideoengine/log/VideoEventBase$MDLTrackInfo;->mdl_blocked_ips:Ljava/lang/String;

    const-string v1, "a_mdl_blocked_ips"

    invoke-static {v7, v1, v0}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_14
    const-string/jumbo v0, "source_refresh_log"

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mSourceRefreshLog:Lorg/json/JSONObject;

    invoke-static {v7, v0, v1}, Lcom/ss/ttvideoengine/log/LoggerUtils;->putToMap(Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 495
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMapAppLog:Ljava/util/Map;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 496
    iget-object v0, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMapAppLog:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App VV Tacking Log\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ttvideoengine/log/VideoEventOnePlay;->mMapAppLog:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
