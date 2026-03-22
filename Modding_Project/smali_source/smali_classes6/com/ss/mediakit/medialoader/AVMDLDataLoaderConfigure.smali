.class public Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;
.super Ljava/lang/Object;
.source "AVMDLDataLoaderConfigure.java"


# static fields
.field public static final ALLOW_PRELOAD_WHEN_PLAY:I = 0x0

.field public static final DEFAULT_CHECK_SUM_LEVEL:I = 0x0

.field public static final DEFAULT_MAX_CACHE_AGE:I = 0x127500

.field public static final DEFAULT_MAX_CACHE_SIZE:I = 0x12c00000

.field public static final DEFAULT_MAX_FACTORY_CACHE_SIZE:I = 0xc800000

.field public static final DEFAULT_MAX_FACTORY_MEMORY_SIZE:I = 0x500000

.field public static final DEFAULT_P2P_PREDOWN_PEER_COUNT:I = 0x5

.field public static final DEFAULT_PRELOAD_PARALLEL_NUM:I = 0x1

.field public static final DEFAULT_SOCKET_IDLE_TIMEOUT:I = 0x78

.field public static final DISABLE_EXTERN_DNS:I = 0x0

.field public static final DISABLE_SOCKET_REUSE:I = 0x0

.field public static final ENABLE_EXTERN_DNS:I = 0x1

.field public static final ENABLE_SOCKET_REUSE:I = 0x1

.field public static final ENCRYPT_VERSION_0:I = 0x0

.field public static final ENCRYPT_VERSION_1:I = 0x1

.field public static final IsCheckAfterAll:I = 0x1

.field public static final IsCheckAfterPreloadTask:I = 0x0

.field public static final NOT_ALLOW_PLAY_TASK_KEY_PRELOAD:I = 0x1

.field public static final NOT_ALLOW_PRELOAD_WHEN_PLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AVMDLDataLoaderConfigure"

.field public static final TEST_SPEED_TYPE_VERSION_1:I = 0x1

.field public static final TEST_SPEED_TYPE_VERSION_2:I = 0x2

.field public static final WAIT_LIST_IS_QUEUE:I = 0x1

.field public static final WAIT_LIST_IS_STACK:I = 0x0

.field public static final XY_DY_LIB:I = 0x1

.field public static final XY_LIB_DEFAULT:I = -0x1

.field public static final XY_XG_LIB:I


# instance fields
.field public mAccessCheckLevel:I

.field public mAlogEnable:I

.field public mAppInfo:Ljava/lang/String;

.field public mByteMediaNetLoaderCronetBufSizeKB:I

.field public mCacheDir:Ljava/lang/String;

.field public mCacheDirListsStr:Ljava/lang/String;

.field public mCheckCacheDir:I

.field public mCheckContentTypeMethod:I

.field public mCheckPreloadLevel:I

.field public mCheckSumLevel:I

.field public mCloseLocalServer:I

.field public mCloseThreadPool:I

.field public mConnectPoolStragetyValue:J

.field public mControlCDNRangeType:I

.field public mCustomUA:Ljava/lang/String;

.field public mDNSBackType:I

.field public mDNSMainType:I

.field public mDefaultExpiredTime:I

.field public mDevDiskSizeMB:I

.field public mDevMemorySizeMB:I

.field public mDeviceScoreEx:I

.field public mDisableRecentCache:I

.field public mDmDomain:Ljava/lang/String;

.field public mDomains:Ljava/lang/String;

.field public mDownLogMaxSize:I

.field public mDownloadDir:Ljava/lang/String;

.field public mDynamicPreconnectConfigStr:Ljava/lang/String;

.field public mEnableBenchMarkIOSpeed:I

.field public mEnableByteMediaNetLoader:I

.field public mEnableCacheReqRange:I

.field public mEnableCellularUp:I

.field public mEnableCustomDirSearchAllPath:I

.field public mEnableDownloaderLog:I

.field public mEnableDynamicTimeout:I

.field public mEnableEarlyData:I

.field public mEnableEnginePortrait:I

.field public mEnableEventInfo:I

.field public mEnableExternDNS:I

.field public mEnableFileCacheV2:I

.field public mEnableFileMutexOptimize:I

.field public mEnableFileRingBuffer:I

.field public mEnableIOManager:I

.field public mEnableIpBucket:I

.field public mEnableLazyBufferpool:I

.field public mEnableLoaderLogExtractUrls:I

.field public mEnableLoaderPreempt:I

.field public mEnableLoaderSeek:I

.field public mEnableMaxCacheAgeForAllDir:I

.field public mEnableMissReason:I

.field public mEnableMultiDownloadPath:I

.field public mEnableNetScheduler:I

.field public mEnableNetworkChangeNotify:I

.field public mEnableNewBufferpool:I

.field public mEnableOkHttpLoader:I

.field public mEnableOptimizeRange:I

.field public mEnableOwnVDPPreloadNotify:I

.field public mEnableP2PPreDown:I

.field public mEnableP2pUpload:I

.field public mEnablePcdnAuto:I

.field public mEnablePlayInfoCache:I

.field public mEnablePlayLog:I

.field public mEnablePreconnect:I

.field public mEnablePreloadReUse:I

.field public mEnableReportHeaders:I

.field public mEnableReportTaskLog:I

.field public mEnableSessionReuse:I

.field public mEnableSocketReuse:I

.field public mEnableSpeedEngine:I

.field public mEnableSpeedPredict:I

.field public mEnableSpeedReport:I

.field public mEnableStorageModule:I

.field public mEnableSyncDnsForPcdn:I

.field public mEnableTTNetLoader:I

.field public mEnableTTQuicHeLoader:I

.field public mEnableTTQuicHeLoaderCheckWithNetworkType:I

.field public mEnableThreadPoolCheckIdle:I

.field public mEnableTraceIdPreloadLog:I

.field public mEnableUseFileExtendLoaderBuffer:I

.field public mEnableUseGroupId:I

.field public mEnableUseOriginalUrl:I

.field public mEnableWaitNetReachable:I

.field public mEncryptVersion:I

.field public mEnginePortraitStr:Ljava/lang/String;

.field public mErrorStateTrustTime:I

.field public mFileExtendSizeKB:I

.field public mFileKeyRule:Ljava/lang/String;

.field public mFileManagerInterval:I

.field public mFileRingBufferOptStr:Ljava/lang/String;

.field public mFirstRangeLeftThreshold:I

.field public mForbidByPassCookie:I

.field public mForesightDomain:Ljava/lang/String;

.field public mGetCookieTokenLevel:I

.field public mGlobalSpeedSampleInterval:I

.field public mHlsTsFileKeyGenerateType:I

.field public mIgnorePlayInfo:I

.field public mIgnoreTextSpeedTest:I

.field public mIsAllowTryTheLastUrl:I

.field public mIsCloseFileCache:I

.field public mKeyDomain:Ljava/lang/String;

.field public mKeyToken:Ljava/lang/String;

.field public mLiveCacheThresholdHttpToP2p:I

.field public mLiveCacheThresholdP2pToHttp:I

.field public mLiveContainerString:Ljava/lang/String;

.field public mLiveEnableMdlProto:I

.field public mLiveLoaderEnable:I

.field public mLiveLoaderType:I

.field public mLiveMaxTrySwitchP2pTimes:I

.field public mLiveMobileDownloadAllow:I

.field public mLiveMobileUploadAllow:I

.field public mLiveP2pAllow:I

.field public mLiveRecvDataTimeout:I

.field public mLiveWaitP2pReadyThreshold:I

.field public mLiveWatchDurationThreshold:I

.field public mLoaderFactoryDir:Ljava/lang/String;

.field public mLoaderFactoryMaxCacheSize:I

.field public mLoaderFactoryMaxMemorySize:I

.field public mLoaderType:I

.field public mMainToBackUpDelayedTime:I

.field public mMaxAliveHostNum:I

.field public mMaxCacheAge:I

.field public mMaxCacheSize:I

.field public mMaxFileMemCacheNum:I

.field public mMaxFileMemCacheSize:I

.field public mMaxIPV4Num:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mMaxIPV6Num:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mMaxIpCountEachDomain:I

.field public mMaxIpNum:I

.field public mMaxLoaderLogNum:I

.field public mMaxSocketReuseCount:I

.field public mMaxTlsVersion:I

.field public mMdlExtensionOptsStr:Ljava/lang/String;

.field public mMdlTTQuicHeOptsStr:Ljava/lang/String;

.field public mMinAllowSpeed:I

.field public mMonitorMinAllowLoadSize:J

.field public mMonitorTimeInternal:J

.field public mN80OptsStr:Ljava/lang/String;

.field public mNetCacheDir:Ljava/lang/String;

.field public mNetSChedulerBlockDurationMs:I

.field public mNetSchedulerBlockAllNetErr:I

.field public mNetSchedulerBlockErrCount:I

.field public mNetSchedulerBlockHostIpErrCount:I

.field public mNetSchedulerConfigStr:Ljava/lang/String;

.field public mNetUnreachableStopRetry:I

.field public mNetUnreachableTimeout:I

.field public mNewBufferPoolBlockSize:I

.field public mNewBufferPoolGrowBlockCount:I

.field public mNewBufferPoolResidentSize:I

.field public mNextDownloadThreshold:I

.field public mNonBlockRangeMaxSizeKB:I

.field public mNonBlockRangeMode:I

.field public mOnlyUseCdn:I

.field public mOpenTimeOut:I

.field public mP2PConfigStr:Ljava/lang/String;

.field public mP2PCostTag:Ljava/lang/String;

.field public mP2PFirstRangeLoaderType:I

.field public mP2PPreDownPeerCount:I

.field public mP2PStragetyLevel:J

.field public mPrecisePreloadConfigStr:Ljava/lang/String;

.field public mPreconnectNum:I

.field public mPreloadInfoRecordMaxCnt:I

.field public mPreloadParallelNum:I

.field public mPreloadStrategy:I

.field public mPreloadWaitListType:I

.field public mProtectCacheDirsStr:Ljava/lang/String;

.field public mRWTimeOut:I

.field public mRingBufferSizeKB:I

.field public mSessionCacheInterval:I

.field public mSessionTimeout:I

.field public mSettingsDomain:Ljava/lang/String;

.field public mSkipCDNBeforeExpiredSec:I

.field public mSocketIdleTimeOut:I

.field public mSocketInitialTimeout:I

.field public mSocketRecvBufferSize:I

.field public mSocketSendBufferKB:I

.field public mSocketTraingCenterConfigStr:Ljava/lang/String;

.field public mSpeedCoefficientValue:I

.field public mSpeedEngineSetting:Ljava/lang/String;

.field public mSpeedSampleInterval:I

.field public mStoIoWriteLimitKBTh1:I

.field public mStoIoWriteLimitKBTh2:I

.field public mStoMaxIdleTimeSec:I

.field public mStoPlayDldWinSizeKBLS:I

.field public mStoPlayDldWinSizeKBNM:I

.field public mStoRingBufferSizeKB:I

.field public mStoStrategyConfig:Ljava/lang/String;

.field public mTTNetLoaderCronetBufSizeKB:I

.field public mTTquicheCacheDir:Ljava/lang/String;

.field public mTemporaryOptStr:Ljava/lang/String;

.field public mTestSpeedTypeVersion:I

.field public mThreadPoolMinCount:I

.field public mThreadPoolTTLSecond:I

.field public mThreadStackSizeLevel:I

.field public mTryCount:I

.field public mUpdateCacheFileInternal:I

.field public mUseNewSpeedTestForSingle:I

.field public mVdpABTestId:Ljava/lang/String;

.field public mVdpExtGlobalInfo:Ljava/lang/String;

.field public mVdpGroupId:Ljava/lang/String;

.field public mWriteFileNotifyIntervalMS:I

.field public mXYLibValue:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePcdnAuto:I

    .line 3
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAlogEnable:I

    const v1, 0x7fffffff

    .line 4
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV6Num:I

    .line 5
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV4Num:I

    .line 6
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayLog:I

    .line 7
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetScheduler:I

    .line 8
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCacheReqRange:I

    .line 9
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTNetLoader:I

    .line 10
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoader:I

    .line 11
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoaderCheckWithNetworkType:I

    .line 12
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTTNetLoaderCronetBufSizeKB:I

    .line 13
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockAllNetErr:I

    .line 14
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockErrCount:I

    .line 15
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockHostIpErrCount:I

    .line 16
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSChedulerBlockDurationMs:I

    .line 17
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFirstRangeLeftThreshold:I

    const/4 v1, 0x5

    .line 18
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PPreDownPeerCount:I

    const/4 v1, 0x1

    .line 19
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PFirstRangeLoaderType:I

    .line 20
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMultiDownloadPath:I

    .line 21
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableStorageModule:I

    .line 22
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBNM:I

    .line 23
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBLS:I

    .line 24
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoRingBufferSizeKB:I

    .line 25
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh1:I

    .line 26
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh2:I

    .line 27
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoMaxIdleTimeSec:I

    const/4 v2, 0x0

    .line 28
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoStrategyConfig:Ljava/lang/String;

    .line 29
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    .line 30
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mN80OptsStr:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDeviceScoreEx:I

    .line 32
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEnginePortrait:I

    .line 33
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnginePortraitStr:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2pUpload:I

    .line 35
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevDiskSizeMB:I

    .line 36
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevMemorySizeMB:I

    .line 37
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpExtGlobalInfo:Ljava/lang/String;

    .line 38
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTemporaryOptStr:Ljava/lang/String;

    .line 39
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileKeyRule:Ljava/lang/String;

    .line 40
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSkipCDNBeforeExpiredSec:I

    .line 41
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnoreTextSpeedTest:I

    .line 42
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOptimizeRange:I

    .line 43
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownLogMaxSize:I

    .line 44
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckCacheDir:I

    .line 45
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGetCookieTokenLevel:I

    .line 46
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseGroupId:I

    .line 47
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlTTQuicHeOptsStr:Ljava/lang/String;

    .line 48
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDisableRecentCache:I

    .line 49
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUpdateCacheFileInternal:I

    .line 50
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCustomDirSearchAllPath:I

    .line 51
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    .line 53
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMissReason:I

    const/16 v3, 0x14

    .line 54
    iput v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadInfoRecordMaxCnt:I

    .line 55
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTraceIdPreloadLog:I

    .line 56
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseLocalServer:I

    .line 57
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionCacheInterval:I

    .line 58
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileManagerInterval:I

    .line 59
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheSize:I

    .line 60
    iput p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOpenTimeOut:I

    .line 61
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRWTimeOut:I

    .line 62
    iput p4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTryCount:I

    .line 63
    iput-object p5, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 64
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 65
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderFactoryDir:Ljava/lang/String;

    const/high16 p1, 0xc800000

    .line 66
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderFactoryMaxCacheSize:I

    const/high16 p1, 0x500000

    .line 67
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderFactoryMaxMemorySize:I

    .line 68
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadParallelNum:I

    const p1, 0x127500

    .line 69
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheAge:I

    .line 70
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMaxCacheAgeForAllDir:I

    .line 71
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    .line 72
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadWaitListType:I

    .line 73
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreloadReUse:I

    .line 74
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    .line 75
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSocketReuse:I

    .line 76
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mControlCDNRangeType:I

    .line 77
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsCloseFileCache:I

    const/16 p1, 0x78

    .line 78
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketIdleTimeOut:I

    .line 79
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSMainType:I

    const/4 p2, 0x2

    .line 80
    iput p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSBackType:I

    .line 81
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMainToBackUpDelayedTime:I

    .line 82
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTestSpeedTypeVersion:I

    .line 83
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckSumLevel:I

    .line 84
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDefaultExpiredTime:I

    .line 85
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAppInfo:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEncryptVersion:I

    .line 87
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedCoefficientValue:I

    .line 88
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableBenchMarkIOSpeed:I

    .line 89
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpCountEachDomain:I

    .line 90
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIpBucket:I

    .line 91
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mErrorStateTrustTime:I

    .line 92
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOnlyUseCdn:I

    const/4 p1, -0x1

    .line 93
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketSendBufferKB:I

    .line 94
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRingBufferSizeKB:I

    .line 95
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileCacheV2:I

    .line 96
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportTaskLog:I

    const/16 p3, 0x2000

    .line 99
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileExtendSizeKB:I

    .line 100
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseOriginalUrl:I

    .line 101
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderLogExtractUrls:I

    .line 102
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxLoaderLogNum:I

    .line 103
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckContentTypeMethod:I

    .line 104
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseThreadPool:I

    .line 105
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadStackSizeLevel:I

    .line 106
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableThreadPoolCheckIdle:I

    .line 107
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolMinCount:I

    .line 108
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolTTLSecond:I

    .line 109
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMode:I

    .line 110
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMaxSizeKB:I

    .line 111
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableStopRetry:I

    .line 112
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableWaitNetReachable:I

    .line 113
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableTimeout:I

    .line 114
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mHlsTsFileKeyGenerateType:I

    .line 115
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportHeaders:I

    .line 116
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveP2pAllow:I

    const/16 p3, 0x2710

    .line 117
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    .line 118
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderEnable:I

    const/16 p3, 0x4e20

    .line 119
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWatchDurationThreshold:I

    const/16 p3, 0xdac

    .line 120
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdHttpToP2p:I

    const/16 p3, 0x3e8

    .line 121
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdP2pToHttp:I

    const/4 p3, 0x3

    .line 122
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMaxTrySwitchP2pTimes:I

    const p4, 0xea60

    .line 123
    iput p4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWaitP2pReadyThreshold:I

    .line 124
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileUploadAllow:I

    .line 125
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileDownloadAllow:I

    const/16 p4, 0x1388

    .line 126
    iput p4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveRecvDataTimeout:I

    .line 127
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveContainerString:Ljava/lang/String;

    .line 128
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveEnableMdlProto:I

    .line 129
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreconnect:I

    .line 130
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreconnectNum:I

    .line 131
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderPreempt:I

    .line 132
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNextDownloadThreshold:I

    .line 133
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAccessCheckLevel:I

    .line 134
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2PPreDown:I

    .line 135
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTTquicheCacheDir:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxTlsVersion:I

    .line 138
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSessionReuse:I

    .line 139
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSyncDnsForPcdn:I

    .line 140
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnorePlayInfo:I

    .line 141
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSettingsDomain:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDmDomain:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForesightDomain:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDomains:Ljava/lang/String;

    .line 145
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckPreloadLevel:I

    .line 146
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mXYLibValue:I

    const/16 p1, 0x1f4

    .line 147
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mWriteFileNotifyIntervalMS:I

    .line 148
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileRingBuffer:I

    .line 149
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLazyBufferpool:I

    .line 150
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNewBufferpool:I

    .line 151
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolBlockSize:I

    .line 152
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolResidentSize:I

    .line 153
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolGrowBlockCount:I

    .line 154
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseFileExtendLoaderBuffer:I

    .line 155
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheSize:I

    .line 156
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheNum:I

    .line 157
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownloadDir:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyDomain:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyToken:Ljava/lang/String;

    .line 160
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForbidByPassCookie:I

    const/16 p1, 0xe10

    .line 161
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionTimeout:I

    .line 162
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayInfoCache:I

    .line 163
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDownloaderLog:I

    .line 164
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsAllowTryTheLastUrl:I

    .line 165
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedSampleInterval:I

    .line 166
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    .line 167
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderSeek:I

    .line 168
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGlobalSpeedSampleInterval:I

    .line 169
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDynamicTimeout:I

    .line 170
    iput p3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketInitialTimeout:I

    .line 171
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxSocketReuseCount:I

    const-wide/16 p1, 0x0

    .line 172
    iput-wide p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PStragetyLevel:J

    .line 173
    iput-wide p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mConnectPoolStragetyValue:J

    .line 174
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxAliveHostNum:I

    .line 175
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMinAllowSpeed:I

    .line 176
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOwnVDPPreloadNotify:I

    .line 177
    iput-wide p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorTimeInternal:J

    .line 178
    iput-wide p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorMinAllowLoadSize:J

    .line 179
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketTraingCenterConfigStr:Ljava/lang/String;

    .line 180
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEventInfo:I

    .line 181
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 182
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEarlyData:I

    .line 183
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUseNewSpeedTestForSingle:I

    .line 184
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedPredict:I

    .line 185
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedEngine:I

    .line 186
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedReport:I

    .line 187
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedEngineSetting:Ljava/lang/String;

    .line 188
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PConfigStr:Ljava/lang/String;

    .line 189
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketRecvBufferSize:I

    .line 190
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCellularUp:I

    .line 191
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetworkChangeNotify:I

    .line 192
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerConfigStr:Ljava/lang/String;

    .line 193
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDynamicPreconnectConfigStr:Ljava/lang/String;

    .line 194
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOkHttpLoader:I

    .line 195
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableByteMediaNetLoader:I

    .line 196
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mByteMediaNetLoaderCronetBufSizeKB:I

    .line 197
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    .line 198
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpNum:I

    .line 199
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileMutexOptimize:I

    .line 200
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileRingBufferOptStr:Ljava/lang/String;

    .line 201
    iput-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultonfigure()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;
    .locals 7

    .line 1
    new-instance v6, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/high16 v1, 0x12c00000

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x5

    .line 9
    move-object v0, v6

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;-><init>(IIIILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method


# virtual methods
.method public ParseJsonConfig()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ttmn"

    .line 2
    .line 3
    .line 4
    const-string v1, "enable_mdl_proto"

    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveContainerString:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Lorg/json/JSONObject;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveContainerString:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveEnableMdlProto:I

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "mdl live json enable_mdl_proto:"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveEnableMdlProto:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "parse json config fail:"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    :goto_0
    return-void
.end method

.method public setCacheInfoList([Ljava/lang/String;[J)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_5

    .line 3
    .line 4
    array-length v0, p2

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    array-length v1, p2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    array-length v1, p1

    .line 18
    if-ge v0, v1, :cond_3

    .line 19
    .line 20
    aget-object v1, p1, v0

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "$"

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    aget-object v3, p1, v0

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    aget-wide v2, p2, v0

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    iget-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string/jumbo v3, "|"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    aget-object v3, p1, v0

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    aget-wide v2, p2, v0

    .line 89
    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 102
    .line 103
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    const-string p2, "AVMDLDataLoaderConfigure"

    .line 113
    .line 114
    if-eqz p1, :cond_4

    .line 115
    .line 116
    const-string p1, "cache dir list str is null"

    .line 117
    .line 118
    invoke-static {p2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v0, "cache dir list str is:"

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    :goto_2
    return-void
.end method

.method public setProtectCacheDirs([Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_3

    .line 11
    .line 12
    aget-object v1, p1, v0

    .line 13
    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    aget-object v1, p1, v0

    .line 26
    .line 27
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string/jumbo v2, "|"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    aget-object v2, p1, v0

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 56
    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    const-string v0, "AVMDLDataLoaderConfigure"

    .line 67
    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    const-string p1, "protect cache dir list str is null"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v1, "protect cache dir list str is:"

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
