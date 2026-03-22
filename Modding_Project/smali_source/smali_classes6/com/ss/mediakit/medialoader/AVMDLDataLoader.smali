.class public final Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
.super Ljava/lang/Object;
.source "AVMDLDataLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final AVMDLCopyErrorFileCopyFailed:I = -0x5

.field public static final AVMDLCopyErrorFileHaveHole:I = -0x6

.field public static final AVMDLCopyErrorFileKeyNotCaching:I = -0x4

.field public static final AVMDLCopyErrorInvalidParameter:I = -0x1

.field public static final AVMDLCopyErrorMdlNotRunning:I = -0x2

.field public static final AVMDLCopyErrorNotCached:I = -0x3

.field public static final AVMDLErrorIsCreateTask:I = -0x3e8

.field public static final AVMDLErrorIsInvalidContentLenth:I = -0x7d0

.field public static final AVMDLErrorIsInvalidFileWrite:I = -0x1388

.field public static final AVMDLErrorIsInvalidRequestInfo:I = -0xfa0

.field public static final AVMDLErrorIsStatusCodeMoreThan400:I = -0xbb8

.field public static final AVMDLErrorIsStatusCodeMoreThan500:I = -0xbb9

.field public static final AVMDLErrorIsTheSameKeyTask:I = -0x3e9

.field public static final AVMDLErrorIsTooManyTask:I = -0x3ea

.field public static final AVMDLLoaderTypeNone:I = 0x2710

.field public static final AVMDLTaskStateStart:I = 0x1

.field public static final AVMDLTaskStateStop:I = 0x2

.field public static final AVMDLTaskTypeDownloadTask:I = 0x3

.field public static final AVMDLTaskTypePlayTask:I = 0x1

.field public static final AVMDLTaskTypePreconnectTask:I = 0x4

.field public static final AVMDLTaskTypePreloadTask:I = 0x2

.field public static final AVMDLoaderTypeAliP2P:I = 0x5

.field public static final AVMDLoaderTypeHttp:I = 0x0

.field public static final AVMDLoaderTypeKsyP2P:I = 0x3

.field public static final AVMDLoaderTypeOwnLiveVDP:I = 0x7

.field public static final AVMDLoaderTypeOwnVDP:I = 0x2

.field public static final AVMDLoaderTypeWsuP2P:I = 0x6

.field public static final AVMDLoaderTypeXYVod:I = 0x1

.field public static final AVMDLoaderTypeYFP2P:I = 0x4

.field public static final IsCellular:I = 0x1

.field public static final IsClose:I = 0x5

.field public static final IsComplete:I = 0x3

.field public static final IsDefault:I = 0x0

.field public static final IsFail:I = 0x2

.field public static final IsInit:I = 0x0

.field public static final IsStart:I = 0x1

.field public static final IsStop:I = 0x4

.field public static final IsWifi:I = 0x2

.field public static final KeyIsAccessCheckLevel:I = 0xdb7

.field public static final KeyIsAllowTryTheLastUrl:I = 0x1cbd

.field public static final KeyIsAlogEnable:I = 0x1c39

.field public static final KeyIsAlogInfo:I = 0xe

.field public static final KeyIsByteMediaNetLoaderCronetBufSizeKB:I = 0x1cb7

.field public static final KeyIsCDNLog:I = 0x6

.field public static final KeyIsCacheDirListsStr:I = 0x1ce7

.field public static final KeyIsCheckCacheDir:I = 0x1d06

.field public static final KeyIsCheckContentTypeMethod:I = 0x1cef

.field public static final KeyIsCloseFileCache:I = 0x320

.field public static final KeyIsCloseLocalServer:I = 0x1d11

.field public static final KeyIsCloseThreadPool:I = 0x1cf0

.field public static final KeyIsConnectPoolStragetyValue:I = 0x1cc3

.field public static final KeyIsControlCDNRangeType:I = 0x2bf

.field public static final KeyIsCopyOperation:I = 0x17

.field public static final KeyIsCustomUA:I = 0x201e

.field public static final KeyIsDNSLog:I = 0xf

.field public static final KeyIsDeviceScoreEx:I = 0x1d02

.field public static final KeyIsDisableRecentCache:I = 0x1d0b

.field public static final KeyIsDownloadDir:I = 0x1c84

.field public static final KeyIsDownloadEnd:I = 0x15

.field public static final KeyIsDownloadSuspend:I = 0x16

.field public static final KeyIsDownloaderLog:I = 0x13

.field public static final KeyIsDownloaderLogTTNet:I = 0x10

.field public static final KeyIsDynamicPreconnectConfigStr:I = 0x1d4d

.field public static final KeyIsEnableByteMediaNetLoader:I = 0x1cb6

.field public static final KeyIsEnableCacheReqRange:I = 0x1cbe

.field public static final KeyIsEnableCellularUp:I = 0x2017

.field public static final KeyIsEnableCustomDirSearchAllPath:I = 0x1d17

.field public static final KeyIsEnableDynamicSocketTimeout:I = 0x1cc2

.field public static final KeyIsEnableEarlyData:I = 0x201b

.field public static final KeyIsEnableEventInfo:I = 0x270f

.field public static final KeyIsEnableExternDNS:I = 0x2bc

.field public static final KeyIsEnableFileCacheV2:I = 0x1c36

.field public static final KeyIsEnableFileMutexOptimize:I = 0x1cfc

.field public static final KeyIsEnableFileRingBuffer:I = 0x1c3c

.field public static final KeyIsEnableIOManager:I = 0x1cdf

.field public static final KeyIsEnableIpBucket:I = 0x385

.field public static final KeyIsEnableLazyBufferpool:I = 0x1ca4

.field public static final KeyIsEnableLoaderLogExtractUrls:I = 0x1ced

.field public static final KeyIsEnableLoaderPreempt:I = 0x9ce

.field public static final KeyIsEnableLoaderSeek:I = 0x1cc9

.field public static final KeyIsEnableMissReasonRecord:I = 0x1d0e

.field public static final KeyIsEnableMultiDownloadPath:I = 0x1cf3

.field public static final KeyIsEnableNetScheduler:I = 0x1cae

.field public static final KeyIsEnableNewBufferpool:I = 0x1ca6

.field public static final KeyIsEnableOkHttpLoader:I = 0x2454

.field public static final KeyIsEnableOptimizeRange:I = 0x1d04

.field public static final KeyIsEnableP2PPreDown:I = 0x1cac

.field public static final KeyIsEnableP2PUpload:I = 0x2af8

.field public static final KeyIsEnablePlayInfoCache:I = 0x1cab

.field public static final KeyIsEnablePlayLog:I = 0x1cad

.field public static final KeyIsEnablePreconnect:I = 0x9cc

.field public static final KeyIsEnablePreloadReUse:I = 0x69

.field public static final KeyIsEnableReportHeaders:I = 0x2ee2

.field public static final KeyIsEnableSessionReuse:I = 0x1587

.field public static final KeyIsEnableSocketReuse:I = 0x2bd

.field public static final KeyIsEnableSpeedEngine:I = 0x2020

.field public static final KeyIsEnableSpeedPredict:I = 0x201c

.field public static final KeyIsEnableSpeedReport:I = 0x2021

.field public static final KeyIsEnableStorageModule:I = 0x2710

.field public static final KeyIsEnableSyncDnsForPcdn:I = 0x1c3a

.field public static final KeyIsEnableTTQuicHeLoaderCheckWithNetworkTypeI32:I = 0x1cb9

.field public static final KeyIsEnableThreadPoolCheckIdle:I = 0x1cf5

.field public static final KeyIsEnableTraceidPreloadLog:I = 0x1d10

.field public static final KeyIsEnableUseFileExtendLoaderBuffer:I = 0x1c3d

.field public static final KeyIsEnableUseGroupId:I = 0x1d07

.field public static final KeyIsEnableUseOriginalUrl:I = 0x1cec

.field public static final KeyIsEnableWaitNetReachable:I = 0x1cfb

.field public static final KeyIsEnginePortraitStr:I = 0x1d15

.field public static final KeyIsEnginePortraitUpdateStr:I = 0x1d16

.field public static final KeyIsErrorStateTrustTime:I = 0x386

.field public static final KeyIsFileCacheProgress:I = 0x3

.field public static final KeyIsFileDeleteSizeByUsedTime:I = 0x386

.field public static final KeyIsFileKeyRule:I = 0x2ee0

.field public static final KeyIsFileManagerInterval:I = 0x1d13

.field public static final KeyIsFileRingBufferOptStr:I = 0x206e

.field public static final KeyIsFirstRangeLeftThreshold:I = 0x1cb2

.field public static final KeyIsForbidByPassCookie:I = 0x5e6

.field public static final KeyIsGetAllCacheSize:I = 0x64

.field public static final KeyIsGetBatteryPct:I = 0x2b01

.field public static final KeyIsGetCacheInfo:I = 0x65

.field public static final KeyIsGetCacheSize:I = 0x67

.field public static final KeyIsGetCookieTokenLevel:I = 0x206f

.field public static final KeyIsGetCostLog:I = 0x3f3

.field public static final KeyIsGetCustomHttpHeader:I = 0x5e5

.field public static final KeyIsGetDemuxerVersion:I = 0x1d09

.field public static final KeyIsGetDevModel:I = 0x2b04

.field public static final KeyIsGetDownloadCountByVid:I = 0x2401

.field public static final KeyIsGetEnableHls:I = 0x24bf

.field public static final KeyIsGetFreeStorageKB:I = 0x2b00

.field public static final KeyIsGetFsV4Domain:I = 0x1901

.field public static final KeyIsGetFsV6Domain:I = 0x1902

.field public static final KeyIsGetIOManagerHandle:I = 0x1cde

.field public static final KeyIsGetIOManagerInterfaceVersion:I = 0x1cea

.field public static final KeyIsGetIoWriteError:I = 0x3f5

.field public static final KeyIsGetIsOverHeat:I = 0x2b03

.field public static final KeyIsGetIsPowerSaveMode:I = 0x2b02

.field public static final KeyIsGetLoaderVersion:I = 0xb

.field public static final KeyIsGetLocalAddr:I = 0x4

.field public static final KeyIsGetMdlProtocolHandle:I = 0x1c32

.field public static final KeyIsGetMissReason:I = 0x70

.field public static final KeyIsGetPlayLog:I = 0x3f2

.field public static final KeyIsGetPreloadTraceId:I = 0x3f4

.field public static final KeyIsGetProxyUrl:I = 0xdb8

.field public static final KeyIsGetResStatus:I = 0x1c3f

.field public static final KeyIsGetSpeedStatus:I = 0x1c3e

.field public static final KeyIsGetTotalStorageKB:I = 0x2aff

.field public static final KeyIsGetUrlGenerator:I = 0x1d01

.field public static final KeyIsGetVersionInfo:I = 0x33e

.field public static final KeyIsGlobalSpeedSample:I = 0x2bf

.field public static final KeyIsHeartBeatLog:I = 0x46

.field public static final KeyIsHiJackError:I = 0x2bd

.field public static final KeyIsHlsTsFileKeyGenerateType:I = 0x2ee1

.field public static final KeyIsIOSpeedInfo:I = 0x5

.field public static final KeyIsIgnorePlayInfo:I = 0x24b8

.field public static final KeyIsIgnoreTextSpeedTest:I = 0x1d03

.field public static final KeyIsInitialSocketTimeout:I = 0x1cc0

.field public static final KeyIsIsCheckPreloadLevel:I = 0x1970

.field public static final KeyIsIsChecksumLevel:I = 0x5e0

.field public static final KeyIsIsDownloadSource:I = 0x5e2

.field public static final KeyIsIsEnableDownloaderLog:I = 0x1cb3

.field public static final KeyIsIsEnableTTNetLoader:I = 0x1cb4

.field public static final KeyIsIsEnableTTQuicHeLoader:I = 0x1cb8

.field public static final KeyIsIsEncryptVersion:I = 0x5e1

.field public static final KeyIsIsGetChecksumInfo:I = 0x5df

.field public static final KeyIsIsMaxTlsVersion:I = 0x1588

.field public static final KeyIsIsPreloadCancel:I = 0x7

.field public static final KeyIsIsTestSpeedVersion:I = 0x5de

.field public static final KeyIsLiveCacheThresholdHttpToP2p:I = 0x1f46

.field public static final KeyIsLiveCacheThresholdP2pToHttp:I = 0x1f47

.field public static final KeyIsLiveContainerString:I = 0x1f55

.field public static final KeyIsLiveEnableMdlProto:I = 0x1fa6

.field public static final KeyIsLiveGetCurrentBitRate:I = 0x1f44

.field public static final KeyIsLiveGetLoaderType:I = 0x1fa7

.field public static final KeyIsLiveGetP2pState:I = 0x1f42

.field public static final KeyIsLiveGetPlayCacheSec:I = 0x1f43

.field public static final KeyIsLiveLoaderEnable:I = 0x1fa4

.field public static final KeyIsLiveLoaderP2pEnable:I = 0x1fa5

.field public static final KeyIsLiveMaxTrySwitchP2pTimes:I = 0x1f48

.field public static final KeyIsLiveMobileDownloadAllow:I = 0x1f4b

.field public static final KeyIsLiveMobileUploadAllow:I = 0x1f4a

.field public static final KeyIsLivePlayInfoAudioMixingEnd:I = 0x1f4e

.field public static final KeyIsLivePlayInfoAudioMixingStart:I = 0x1f4d

.field public static final KeyIsLivePlayInfoIsPreview:I = 0x1f50

.field public static final KeyIsLivePlayInfoIsStreamReceived:I = 0x1f4f

.field public static final KeyIsLiveRecvDataTimeout:I = 0x1f4c

.field public static final KeyIsLiveSetLoaderType:I = 0x1f40

.field public static final KeyIsLiveSetP2pAllow:I = 0x1f41

.field public static final KeyIsLiveSetPrepareTask:I = 0x1f51

.field public static final KeyIsLiveSetTaskFinish:I = 0x1f52

.field public static final KeyIsLiveWaitP2pReadyThreshold:I = 0x1f49

.field public static final KeyIsLiveWatchDurationThreshold:I = 0x1f45

.field public static final KeyIsLoadMonitorMinAllowLoadSize:I = 0x1ce5

.field public static final KeyIsLoadMonitorTimeInternal:I = 0x1ce4

.field public static final KeyIsLoaderCacheSize:I = 0x2400

.field public static final KeyIsLoaderEventCancel:I = 0x48

.field public static final KeyIsLoaderEventCompleted:I = 0x49

.field public static final KeyIsLoaderEventStart:I = 0x47

.field public static final KeyIsLoaderEventUnKnown:I = 0x4a

.field public static final KeyIsLoaderFactoryP2PLevel:I = 0x2018
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KeyIsLoaderFactoryP2PStragetyLevel:I = 0x201a

.field public static final KeyIsLoaderFactoryXYLibValue:I = 0x2019

.field public static final KeyIsLoaderTypeSwitch:I = 0xc

.field public static final KeyIsMAXIPV4Num:I = 0x1ca3

.field public static final KeyIsMAXIPV6Num:I = 0x1ca2

.field public static final KeyIsMarkedFileIOSpeed:I = 0x5e4

.field public static final KeyIsMaxFileMemCacheNum:I = 0x158b

.field public static final KeyIsMaxFileMemCacheSize:I = 0x1589

.field public static final KeyIsMaxIpCountEachDomain:I = 0x384

.field public static final KeyIsMaxIpNum:I = 0x206d

.field public static final KeyIsMaxKeepAliveHostNum:I = 0x1cc4

.field public static final KeyIsMaxLoaderLogNum:I = 0x1cee

.field public static final KeyIsMaxSocketReuseNum:I = 0x1cc1

.field public static final KeyIsN80OptsStr:I = 0x1d4f

.field public static final KeyIsNeedNetworkSwitch:I = 0x385

.field public static final KeyIsNetCacheDir:I = 0x1586

.field public static final KeyIsNetSchedulerBlockAllNetErr:I = 0x1caf

.field public static final KeyIsNetSchedulerBlockDurationMs:I = 0x1cb1

.field public static final KeyIsNetSchedulerBlockErrCount:I = 0x1cb0

.field public static final KeyIsNetSchedulerConfigStr:I = 0x1ceb

.field public static final KeyIsNetUnreachableStopRetry:I = 0x1cfa

.field public static final KeyIsNetUnreachableTimeout:I = 0x1cfe

.field public static final KeyIsNetworkAccessType:I = 0x1c33

.field public static final KeyIsNetworkChanged:I = 0x1c31

.field public static final KeyIsNewBufferPoolGrowBlockCount:I = 0x1ca9

.field public static final KeyIsNewBufferpoolBlockSize:I = 0x1ca7

.field public static final KeyIsNewBufferpoolResidentSize:I = 0x1ca8

.field public static final KeyIsNewPreloadLog:I = 0x3ea

.field public static final KeyIsNewProtocolLog:I = 0x3e9

.field public static final KeyIsNewProxyLog:I = 0x3e8

.field public static final KeyIsNewSampleLog:I = 0x3ec

.field public static final KeyIsNewTaskLog:I = 0x3eb

.field public static final KeyIsNextDownloadThreshold:I = 0x9cf

.field public static final KeyIsNonBlockRangeMaxSizeKB:I = 0x1cf9

.field public static final KeyIsNonBlockRangeMode:I = 0x1cf8

.field public static final KeyIsOnLiveLoaderError:I = 0x9

.field public static final KeyIsOwnLiveLoaderLog:I = 0xa

.field public static final KeyIsOwnLiveLoaderLogSample:I = 0xb

.field public static final KeyIsOwnVdpLog:I = 0x1

.field public static final KeyIsP2PConfigStr:I = 0x201d

.field public static final KeyIsP2PCostTag:I = 0x1cff

.field public static final KeyIsP2PFirstRangeLoaderType:I = 0x1ccc

.field public static final KeyIsP2PPredownPeerCount:I = 0x1cbf

.field public static final KeyIsPlayInfoBufferingEnd:I = 0x1c2e

.field public static final KeyIsPlayInfoBufferingStart:I = 0x1c2d

.field public static final KeyIsPlayInfoCurrentBuffer:I = 0x1c2f

.field public static final KeyIsPlayInfoLoadPercent:I = 0x1c2c

.field public static final KeyIsPlayInfoPlayingPos:I = 0x1c2b

.field public static final KeyIsPlayInfoRenderStart:I = 0x1c2a

.field public static final KeyIsPlayTaskCacheEnd:I = 0x34

.field public static final KeyIsPlayTaskEnd:I = 0x33

.field public static final KeyIsPlayTaskState:I = 0x32

.field public static final KeyIsPrecisePreloadConfig:I = 0x1d0a

.field public static final KeyIsPreconnectNum:I = 0x9cd

.field public static final KeyIsPreloadEnd:I = 0x4

.field public static final KeyIsPreloadFail:I = 0x8

.field public static final KeyIsPreloadInfoRecordMaxCnt:I = 0x1d0f

.field public static final KeyIsPreloadStragetyWhenPlay:I = 0x406

.field public static final KeyIsPreloadTraceIdRecordMaxCntI32:I = 0x1d00

.field public static final KeyIsPreloadWaitListType:I = 0x410

.field public static final KeyIsProtectCacheDirAvoidClear:I = 0x1d14

.field public static final KeyIsQuickGetCacheSize:I = 0x6a

.field public static final KeyIsQuickQueryCacheSize:I = 0x71

.field public static final KeyIsReportHttpRespHeaders:I = 0x7d0

.field public static final KeyIsRingBufferSizeKB:I = 0x1c35

.field public static final KeyIsSessionCacheInterval:I = 0x1d12

.field public static final KeyIsSessionTimeout:I = 0x1ca5

.field public static final KeyIsSetAlogFuncPtr:I = 0x44c

.field public static final KeyIsSetBackupLoaderType:I = 0x1c3b

.field public static final KeyIsSetCacheDir:I = 0x0

.field public static final KeyIsSetCurDiskSizeMB:I = 0x2afb

.field public static final KeyIsSetCurMemorySizeMB:I = 0x2afd

.field public static final KeyIsSetDMDomain:I = 0x24ba

.field public static final KeyIsSetDemuxerHandle:I = 0x1d08

.field public static final KeyIsSetDevDiskSizeMB:I = 0x2afa

.field public static final KeyIsSetDevMemorySizeMB:I = 0x2afc

.field public static final KeyIsSetDomains:I = 0x24bc

.field public static final KeyIsSetDownLogMaxSize:I = 0x1d05

.field public static final KeyIsSetEnableMaxCacheAgeForAllDir:I = 0x6f

.field public static final KeyIsSetEnableOwnVdpPreloadNotify:I = 0x1ce3

.field public static final KeyIsSetEnableReportTaskLog:I = 0x1ccb

.field public static final KeyIsSetFileExtendSize:I = 0x1ce0

.field public static final KeyIsSetForesightDomain:I = 0x24bb

.field public static final KeyIsSetGlobalSpeedSampleInterval:I = 0x1cca

.field public static final KeyIsSetKeyDomain:I = 0x24bd

.field public static final KeyIsSetKeyToken:I = 0x24be

.field public static final KeyIsSetLiveListener:I = 0x6b

.field public static final KeyIsSetLoaderFactoryAppInfo:I = 0xa

.field public static final KeyIsSetLoaderFactoryCacheDir:I = 0x9

.field public static final KeyIsSetLoaderFactoryMaxCacheSize:I = 0x7

.field public static final KeyIsSetLoaderFactoryMaxMemorySize:I = 0x8

.field public static final KeyIsSetLoaderType:I = 0x6

.field public static final KeyIsSetMaxCacheAge:I = 0x68

.field public static final KeyIsSetMaxCacheSize:I = 0x1

.field public static final KeyIsSetMdlExtensionOpts:I = 0x1d4c

.field public static final KeyIsSetMdlTTQuicHeOpts:I = 0x1d50

.field public static final KeyIsSetMinAllowSpeed:I = 0x1ce1

.field public static final KeyIsSetNetSchedulerBlockHostErrIpCount:I = 0x1ce2

.field public static final KeyIsSetOnlyUseCdn:I = 0x1c30

.field public static final KeyIsSetOpenTimeOut:I = 0x3

.field public static final KeyIsSetPcdnAuto:I = 0xc

.field public static final KeyIsSetPlayInfoSeekAction:I = 0x1caa

.field public static final KeyIsSetPreconnectState:I = 0x201f

.field public static final KeyIsSetPreloadParallelNum:I = 0x66

.field public static final KeyIsSetRWTimeOut:I = 0x2

.field public static final KeyIsSetSettingsDomain:I = 0x24b9

.field public static final KeyIsSetSocketRecvBuffer:I = 0x1ce9

.field public static final KeyIsSetSpeedSampleInterval:I = 0x1cc8

.field public static final KeyIsSetTryCount:I = 0x5

.field public static final KeyIsSetUseNewSingSpeedTest:I = 0x1ce8

.field public static final KeyIsSetVdpExtDynamicInfo:I = 0x2afe

.field public static final KeyIsSetVdpExtGlobalInfo:I = 0x2af9

.field public static final KeyIsSkipCDNBeforeExpiredSec:I = 0x1cfd

.field public static final KeyIsSocketIdleTimeout:I = 0x2be

.field public static final KeyIsSocketSendBufferKB:I = 0x1c34

.field public static final KeyIsSocketTrainingCenterConfigStr:I = 0x1ce6

.field public static final KeyIsSpeedCoefficientValue:I = 0x5e3

.field public static final KeyIsSpeedEngineSetting:I = 0x2022

.field public static final KeyIsSpeedInfo:I = 0x2

.field public static final KeyIsSpeedTestSampledByTime:I = 0x2bc

.field public static final KeyIsSpeedTestSampledByTimeV2:I = 0x2be

.field public static final KeyIsStoIoWriteLimitKBTh1:I = 0x2714

.field public static final KeyIsStoIoWriteLimitKBTh2:I = 0x2715

.field public static final KeyIsStoMaxIdleTimeSec:I = 0x2716

.field public static final KeyIsStoPlayDldWinSizeKBLS:I = 0x2712

.field public static final KeyIsStoPlayDldWinSizeKBNM:I = 0x2711

.field public static final KeyIsStoRingBufferSizeKB:I = 0x2713

.field public static final KeyIsStoStrategyConfig:I = 0x2717

.field public static final KeyIsStoUpdateCacheDir:I = 0x1d0d

.field public static final KeyIsStorageLog:I = 0x3ed

.field public static final KeyIsTTNetLoaderCronetBufSizeKB:I = 0x1cb5

.field public static final KeyIsTTQuicHeCacheDir:I = 0x1971

.field public static final KeyIsTaskFail:I = 0x14

.field public static final KeyIsTaskLog:I = 0x0

.field public static final KeyIsTaskOpen:I = 0x18

.field public static final KeyIsTemporaryOptStr:I = 0x1d4e

.field public static final KeyIsThreadPoolIdleTTLSecond:I = 0x1cf6

.field public static final KeyIsThreadPoolMinCount:I = 0x1cf7

.field public static final KeyIsThreadStackSizeLevel:I = 0x1cf4

.field public static final KeyIsUpdateCacheFileInternal:I = 0x1d0c

.field public static final KeyIsUpdateNetworkScore:I = 0x1cf1

.field public static final KeyIsUpdateNetworkStrength:I = 0x1cf2

.field public static final KeyIsVdpABTestId:I = 0x1c37

.field public static final KeyIsVdpGroupId:I = 0x1c38

.field public static final KeyIsWriteFileNotifyIntervalMS:I = 0x6e

.field public static final LogInfoKeyIsPcdnTaskLog:I = 0xd

.field public static final LongValueViaConfigNotReady:J = -0x3e6L

.field public static final LongValueViaUnknownKey:J = -0x1L

.field public static final S_FAIL:I = -0x1

.field public static final S_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AVMDLDataLoader"

.field private static isSupportQueryEncode:Z = true

.field private static mGlobalApplicationContext:Landroid/content/Context; = null

.field private static volatile mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader; = null

.field public static mIsByteMediaNetInit:Ljava/lang/Boolean; = null

.field private static volatile mIsLibraryLoaded:Z = false

.field private static volatile mIsMdlByteMediaNetPluginLoaded:Z = false

.field private static volatile mIsMdlTtnetPluginLoaded:Z = false

.field private static mLoadFailMsg:Ljava/lang/String; = ""


# instance fields
.field private isSupportGetAuth:Z

.field private mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

.field private mEndTime:J

.field private mEventListener:Lcom/ss/mediakit/medialoader/LoaderListener;

.field private mHandle:J

.field private mHandler:Landroid/os/Handler;

.field private mLiveListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

.field private mLogHandler:Landroid/os/Handler;

.field private mMsgThread:Ljava/lang/Thread;

.field private mPluginLibraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

.field private final mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSartTime:J

.field private mStartCompleteListener:Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;

.field private volatile mState:I

.field private mTaskListener:Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;

.field private mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

.field private mWaitingCopyItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    sput-object v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsByteMediaNetInit:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-void
.end method

.method private constructor <init>(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mPluginLibraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadWritedLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mMsgThread:Ljava/lang/Thread;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportGetAuth:Z

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mStartCompleteListener:Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;

    .line 29
    .line 30
    new-instance v3, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWaitingCopyItem:Ljava/util/Map;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mTaskListener:Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initNativeHandle()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 53
    .line 54
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    cmp-long v0, v0, v3

    .line 59
    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    invoke-direct {p0, p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initLogThread(Landroid/os/Handler$Callback;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 69
    .line 70
    iput-boolean v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportGetAuth:Z

    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    .line 74
    .line 75
    const-string v0, "create native mdl fail"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method private static native _addDataSource(JILjava/lang/String;)V
.end method

.method private static native _cancel(JLjava/lang/String;)V
.end method

.method private static native _cancelAll(J)V
.end method

.method private static native _cancelAllPreloadWaitReqs(J)V
.end method

.method private static native _cleanCacheDir(JJ)V
.end method

.method private static native _cleanSpecifiedCacheDir(JLjava/lang/String;I)V
.end method

.method private static native _clearAllCaches(J)V
.end method

.method private static native _clearAndGetCachesByUsedTime(JJI)J
.end method

.method private static native _clearCachesByUsedTime(JJ)V
.end method

.method private static native _clearNetinfoCache(J)V
.end method

.method private static native _close(J)V
.end method

.method private static native _copyFile(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native _copyFile64(JLjava/lang/String;Ljava/lang/String;)J
.end method

.method private static native _copyFileWithCustomDir(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native _copyFileWithCustomDir64(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native _copyFileWithForceFlag(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native _copyFileWithForceFlag64(JLjava/lang/String;Ljava/lang/String;I)J
.end method

.method private _copyInternal(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

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
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v2, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mForceCopyUnfinished:Z

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mCustomDir:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    iget-object v2, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getCacheInfo(Ljava/lang/String;)Lcom/ss/mediakit/medialoader/AVMDLFileInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, -0x5

    .line 37
    const/4 v4, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "copy failed. file info null "

    .line 50
    .line 51
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v4, v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object v5, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 66
    .line 67
    if-eqz v5, :cond_3

    .line 68
    .line 69
    invoke-interface {v5, v2}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onFileInfo(Lcom/ss/mediakit/medialoader/AVMDLFileInfo;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v6, "copy file result: "

    .line 78
    .line 79
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "AVMDLDataLoader"

    .line 90
    .line 91
    invoke-static {v6, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 95
    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget-wide v5, v2, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mCacheSize:J

    .line 99
    .line 100
    cmp-long v5, v0, v5

    .line 101
    .line 102
    if-eqz v5, :cond_5

    .line 103
    .line 104
    iget-wide v5, v2, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mContentLenght:J

    .line 105
    .line 106
    cmp-long v2, v0, v5

    .line 107
    .line 108
    if-eqz v2, :cond_5

    .line 109
    .line 110
    const-wide/16 v5, 0x0

    .line 111
    .line 112
    cmp-long v2, v0, v5

    .line 113
    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "copy failed.copy error code "

    .line 123
    .line 124
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {p1, v4, v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 139
    const-string v1, "copy success."

    .line 140
    .line 141
    invoke-interface {p1, v0, v4, v1}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    return-void
.end method

.method private final native _create()J
.end method

.method private static native _downloadResource(JLjava/lang/String;)V
.end method

.method private static native _encodeUrl(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native _forceClearAllCaches(J)V
.end method

.method private static native _forceRemoveCacheFile(JLjava/lang/String;)V
.end method

.method private static native _getAuth(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native _getCDNLog(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native _getContinueCacheSize(JLjava/lang/String;IJ)J
.end method

.method private static native _getIsFileCacheComplete(JLjava/lang/String;)I
.end method

.method private static native _getLongValue(JI)J
.end method

.method private static native _getLongValueByStr(JLjava/lang/String;I)J
.end method

.method private static native _getLongValueByStrStr(JLjava/lang/String;Ljava/lang/String;I)J
.end method

.method private static native _getStringValue(JI)Ljava/lang/String;
.end method

.method private static native _getStringValueByStr(JLjava/lang/String;I)Ljava/lang/String;
.end method

.method private static native _getStringValueByStrStr(JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private static native _haveRunningPlayTask(JLjava/lang/String;)I
.end method

.method private static native _makeFileAutoDeleteFlag(JLjava/lang/String;I)V
.end method

.method private static native _makeTsFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native _onCellularAlwaysUp(JJI)I
.end method

.method private static native _onInitMultiNetworkEnv(JI)I
.end method

.method private static native _p2pPredown(JLjava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method private static native _preConnectByHost(JLjava/lang/String;I)V
.end method

.method private static native _preloadGroupResource(JLjava/lang/String;Ljava/lang/String;II)V
.end method

.method private static native _preloadResource(JLjava/lang/String;I)V
.end method

.method private static native _preloadResourceWithOffset(JLjava/lang/String;II)V
.end method

.method private static native _removeCacheFile(JLjava/lang/String;)V
.end method

.method private static native _resetPreloadTraceId(JLjava/lang/String;)V
.end method

.method private static native _resumeFileWriteIO(J)V
.end method

.method private static native _setInt64Value(JIJ)V
.end method

.method private static native _setInt64ValueByStrKey(JILjava/lang/String;J)V
.end method

.method private static native _setIntValue(JII)V
.end method

.method private static native _setStringValue(JILjava/lang/String;)V
.end method

.method private static native _start(J)I
.end method

.method private static native _stop(J)V
.end method

.method private static native _suspendedDownload(JLjava/lang/String;)V
.end method

.method private static native _tryDownloadPlayReqByKey(JLjava/lang/String;)I
.end method

.method private static native _updateDNSInfo(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
.end method

.method private static native _writeDataToFile(JLjava/lang/String;JJI[B)I
.end method

.method static synthetic access$002(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->startInternal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private copyInternal(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V
    .locals 7

    .line 1
    const-string v0, "AVMDLDataLoader"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p1, :cond_7

    .line 6
    .line 7
    iget-object v3, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_7

    .line 14
    .line 15
    iget-object v3, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    iget-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 31
    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    cmp-long v5, v3, v5

    .line 35
    .line 36
    if-eqz v5, :cond_6

    .line 37
    .line 38
    iget-object v5, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v3, v4, v5}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getIsFileCacheComplete(JLjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const/4 v4, 0x1

    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyInternal(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :catch_0
    move-exception v0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-ne v3, v1, :cond_2

    .line 57
    .line 58
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const-string v1, "cache file read writer failed."

    .line 63
    .line 64
    const/4 v3, -0x6

    .line 65
    invoke-interface {v0, v2, v3, v1}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mForceCopyUnfinished:Z

    .line 70
    .line 71
    if-eqz v1, :cond_3

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyInternal(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    iget-boolean v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mWaitIfCaching:Z

    .line 78
    .line 79
    if-eqz v1, :cond_5

    .line 80
    .line 81
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 82
    .line 83
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v3, v4, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_haveRunningPlayTask(JLjava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v4, "try download play "

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, " result: "

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    if-lez v1, :cond_4

    .line 121
    .line 122
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWaitingCopyItem:Ljava/util/Map;

    .line 123
    .line 124
    iget-object v1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 131
    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    const-string v1, "file key not playing."

    .line 135
    .line 136
    const/4 v3, -0x4

    .line 137
    invoke-interface {v0, v2, v3, v1}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 142
    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    const-string v1, "cache not finish."

    .line 146
    .line 147
    const/4 v3, -0x3

    .line 148
    invoke-interface {v0, v2, v3, v1}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .line 150
    .line 151
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 161
    .line 162
    if-eqz p1, :cond_6

    .line 163
    .line 164
    const-string v0, "medialoader not running"

    .line 165
    .line 166
    const/4 v1, -0x2

    .line 167
    invoke-interface {p1, v2, v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :goto_2
    return-void

    .line 172
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 175
    .line 176
    .line 177
    throw p1

    .line 178
    :cond_7
    :goto_4
    const-string v3, "copy file invalid filekey or destpath is null"

    .line 179
    .line 180
    invoke-static {v0, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_8

    .line 184
    .line 185
    iget-object p1, p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 186
    .line 187
    if-eqz p1, :cond_8

    .line 188
    .line 189
    const-string v0, "invalid parameter"

    .line 190
    .line 191
    invoke-interface {p1, v2, v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_8
    return-void
.end method

.method private createFilePathBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v1, 0x2f

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, "/"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-nez p2, :cond_2

    .line 69
    .line 70
    new-instance p2, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 82
    .line 83
    .line 84
    :cond_2
    return-object p1

    .line 85
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 86
    return-object p1
.end method

.method private encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

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
    return-object p1

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 9
    .line 10
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p1

    .line 15
    :catch_0
    const/4 p1, 0x0

    .line 16
    return-object p1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mGlobalApplicationContext:Landroid/content/Context;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public static getInstance()Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    .locals 6

    .line 1
    sget-object v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_1
    new-instance v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;-><init>(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v2

    .line 24
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v3, "ttmdljava"

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v5, "create native exception"

    .line 36
    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    sput-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 51
    .line 52
    :cond_0
    :goto_0
    monitor-exit v0

    .line 53
    goto :goto_2

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw v1

    .line 56
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mInstance:Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 57
    .line 58
    return-object v0
.end method

.method public static declared-synchronized getLoadFailMsg()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method private getProxyUrl()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "----try get proxyaddr"

    .line 2
    .line 3
    const-string v1, "AVMDLProxy"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "http.proxyHost"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "proxy host:"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    const-string v2, "http.proxyPort"

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "proxy port:"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v1, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "http://"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ":"

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, "/"

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    .line 104
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "****end get proxyaddr, result:"

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v0
.end method

.method private handleCopyMsg(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 12

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    const/16 v2, 0x33

    .line 17
    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    if-ne v0, v2, :cond_9

    .line 21
    .line 22
    :cond_1
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, ","

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v1, v0

    .line 31
    const/4 v3, 0x4

    .line 32
    if-ge v1, v3, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    aget-object v4, v0, v1

    .line 37
    .line 38
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    const/4 v6, 0x1

    .line 47
    aget-object v7, v0, v6

    .line 48
    .line 49
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    const-wide/16 v9, 0x0

    .line 58
    .line 59
    cmp-long v11, v7, v9

    .line 60
    .line 61
    if-gtz v11, :cond_3

    .line 62
    .line 63
    iget v11, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 64
    .line 65
    if-eq v11, v3, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    const/4 v3, 0x2

    .line 69
    aget-object v0, v0, v3

    .line 70
    .line 71
    iget-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWaitingCopyItem:Ljava/util/Map;

    .line 72
    .line 73
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_9

    .line 78
    .line 79
    iget-object v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWaitingCopyItem:Ljava/util/Map;

    .line 80
    .line 81
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;

    .line 86
    .line 87
    cmp-long v3, v4, v7

    .line 88
    .line 89
    const-string v4, "copy failed."

    .line 90
    .line 91
    if-nez v3, :cond_7

    .line 92
    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    iget-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    iget-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 105
    .line 106
    iget-object v2, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mDestPath:Ljava/lang/String;

    .line 107
    .line 108
    iget-boolean v3, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mForceCopyUnfinished:Z

    .line 109
    .line 110
    invoke-virtual {p0, p1, v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    iget-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 115
    .line 116
    if-eqz p1, :cond_9

    .line 117
    .line 118
    cmp-long v0, v2, v9

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    const-string v0, "copy success."

    .line 123
    .line 124
    invoke-interface {p1, v6, v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    const/4 v0, -0x5

    .line 129
    invoke-interface {p1, v1, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    :goto_0
    return-void

    .line 134
    :cond_7
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 135
    .line 136
    if-ne p1, v2, :cond_9

    .line 137
    .line 138
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 139
    .line 140
    iget-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v2, v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_haveRunningPlayTask(JLjava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-lez p1, :cond_8

    .line 147
    .line 148
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mFileKey:Ljava/lang/String;

    .line 151
    .line 152
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    const-string v1, "have running playtask skip, %s"

    .line 157
    .line 158
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string v0, "AVMDLDataLoader"

    .line 163
    .line 164
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_8
    iget-object p1, v0, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;->mListener:Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;

    .line 169
    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    const/4 v0, -0x3

    .line 173
    invoke-interface {p1, v1, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLCopyOperationListener;->onCopyComplete(ZILjava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_9
    :goto_1
    return-void
.end method

.method private hijack()V
    .locals 2

    .line 1
    const-string v0, "----hijack start"

    .line 2
    .line 3
    const-string/jumbo v1, "ttmdljava"

    .line 4
    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->processHijack()V

    .line 10
    .line 11
    .line 12
    const-string v0, "hijack clear net cache: "

    .line 13
    .line 14
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->clearNetinfoCache()V

    .line 18
    .line 19
    .line 20
    const-string v0, "****hijack end"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static declared-synchronized init(Z)I
    .locals 5

    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return v2

    .line 3
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    .line 4
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    if-nez p0, :cond_4

    .line 5
    invoke-static {}, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->loadBoringssl()Z

    move-result p0

    if-nez p0, :cond_1

    .line 6
    const-string/jumbo p0, "ttmn"

    const-string v1, "load boringssl fail!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 7
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    move-result p0

    if-nez p0, :cond_2

    .line 8
    const-string/jumbo p0, "ttmn"

    const-string v1, "Can\'t load vcn "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->loadAVMDLBaseLibrary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    const-string p0, "avmdl"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 11
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 12
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other exception when loading avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 13
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other exception when loading avmdl library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 14
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 15
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load avmdl library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :goto_3
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifylib()Z

    move-result p0

    if-nez p0, :cond_3

    .line 17
    const-string/jumbo p0, "ttmn"

    const-string v1, "Can\'t load vcnverify lib "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_3
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadTTNetLoaderPlugin()Z

    .line 19
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadByteMediaNetLoaderPlugin()Z

    .line 20
    :cond_4
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p0, :cond_5

    .line 21
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    .line 22
    :cond_5
    monitor-exit v0

    return v2

    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(ZZ)I
    .locals 5

    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 24
    monitor-exit v0

    return v2

    .line 25
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    .line 26
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    if-nez p0, :cond_5

    .line 27
    invoke-static {}, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->loadBoringssl()Z

    move-result p0

    if-nez p0, :cond_1

    .line 28
    const-string/jumbo p0, "ttmn"

    const-string v1, "load boringssl fail!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 29
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    move-result p0

    if-nez p0, :cond_2

    .line 30
    const-string/jumbo p0, "ttmn"

    const-string v1, "Can\'t load vcn "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->loadAVMDLBaseLibrary()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    const-string p0, "avmdl"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 33
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 34
    :goto_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other exception when loading avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 35
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other exception when loading avmdl library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 36
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load avmdl library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_3
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifylib()Z

    move-result p0

    if-nez p0, :cond_3

    .line 39
    const-string/jumbo p0, "ttmn"

    const-string v1, "Can\'t load vcnverify lib "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_4

    .line 40
    const-string/jumbo p0, "ttmn"

    const-string/jumbo p1, "try to load pcdn lib"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    const-string p0, "avmdlp2p"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_5

    .line 42
    :goto_4
    :try_start_5
    const-string/jumbo p1, "ttmn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other exception when loading avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 43
    :goto_5
    const-string/jumbo p1, "ttmn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load avmdlp2p library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_4
    :goto_6
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadTTNetLoaderPlugin()Z

    .line 45
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadByteMediaNetLoaderPlugin()Z

    .line 46
    :cond_5
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p0, :cond_6

    .line 47
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_6
    monitor-exit v0

    return v2

    :goto_7
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public static declared-synchronized init(ZZZ)I
    .locals 5

    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 50
    monitor-exit v0

    return v2

    .line 51
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    .line 52
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    if-nez p0, :cond_6

    .line 53
    invoke-static {}, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->loadBoringssl()Z

    move-result p0

    if-nez p0, :cond_1

    .line 54
    const-string/jumbo p0, "ttmn"

    const-string v1, "load boringssl fail!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    move-result p0

    if-nez p0, :cond_2

    .line 56
    const-string/jumbo p0, "ttmn"

    const-string v1, "Can\'t load vcn "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->loadAVMDLBaseLibrary()V

    const/4 p0, 0x1

    if-eqz p2, :cond_3

    .line 58
    const-string/jumbo p2, "ttmn"

    const-string/jumbo v1, "try load avmdlv2"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    const-string p2, "avmdlv2"

    invoke-static {p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    .line 61
    const-string/jumbo p2, "ttmn"

    const-string v1, "load avmdlv2 suc"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 62
    const-string/jumbo p2, "ttmn"

    const-string/jumbo v1, "try to load pcdn lib"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 63
    :try_start_3
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load avmdlv2 failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string/jumbo v1, "ttmn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load avmdlv2 failed msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    :goto_1
    sget-boolean p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_6

    .line 66
    :try_start_4
    const-string p2, "avmdl"

    invoke-static {p2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 67
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    .line 68
    :goto_2
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other exception when loading avmdl library: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 69
    const-string/jumbo p2, "ttmn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "other exception when loading avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 70
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t load avmdl library: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLoadFailMsg:Ljava/lang/String;

    .line 71
    const-string/jumbo p2, "ttmn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t load avmdl library: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_4
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifylib()Z

    move-result p0

    if-nez p0, :cond_4

    .line 73
    const-string/jumbo p0, "ttmn"

    const-string p2, "Can\'t load vcnverify lib "

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz p1, :cond_5

    .line 74
    const-string/jumbo p0, "ttmn"

    const-string/jumbo p1, "try to load pcdn lib"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 75
    :try_start_6
    const-string p0, "avmdlp2p"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    goto :goto_6

    .line 76
    :goto_5
    :try_start_7
    const-string/jumbo p1, "ttmn"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other exception when loading avmdl library: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 77
    :goto_6
    const-string/jumbo p1, "ttmn"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t load avmdlp2p library: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_5
    :goto_7
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadTTNetLoaderPlugin()Z

    .line 79
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadByteMediaNetLoaderPlugin()Z

    .line 80
    :cond_6
    sget-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez p0, :cond_7

    .line 81
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    .line 82
    :cond_7
    monitor-exit v0

    return v2

    :goto_8
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0
.end method

.method public static initApplicationContext(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mGlobalApplicationContext:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sput-object p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mGlobalApplicationContext:Landroid/content/Context;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public static initByteMediaNetEnv(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsByteMediaNetInit:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string p0, "bytemedianetinit"

    .line 13
    .line 14
    const-string p1, "has init, not need again"

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    :try_start_1
    const-string v1, "com.ss.avframework.transport.ContextUtils"

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "initApplicationContext"

    .line 31
    .line 32
    const-class v3, Landroid/content/Context;

    .line 33
    .line 34
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    .line 45
    .line 46
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v1, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p0, "bytemedianetinit"

    .line 55
    .line 56
    const-string v1, "init application context"

    .line 57
    .line 58
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    const-string p0, "com.ss.avframework.transport.JNIUtils"

    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string v1, "setClassLoader"

    .line 68
    .line 69
    const-class v4, Ljava/lang/ClassLoader;

    .line 70
    .line 71
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 80
    .line 81
    .line 82
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    const-string p0, "bytemedianetinit"

    .line 90
    .line 91
    const-string p1, "init classloader"

    .line 92
    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 97
    .line 98
    sput-object p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsByteMediaNetInit:Ljava/lang/Boolean;

    .line 99
    .line 100
    const-string p0, "bytemedianetinit"

    .line 101
    .line 102
    const-string p1, "init bytemedianet suc"

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    :try_start_2
    const-string p1, "bytemedianetinit"

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v2, "init bytemedianet exception, "

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    const-string p1, "bytemedianetinit"

    .line 136
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v2, "init bytemedianet exception,msg: "

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :goto_0
    monitor-exit v0

    .line 162
    return-void

    .line 163
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    throw p0
.end method

.method public static declared-synchronized initDependency()I
    .locals 3

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->loadBoringssl()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string/jumbo v1, "ttmn"

    .line 11
    .line 12
    .line 13
    const-string v2, "load boringssl fail!"

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    const-string/jumbo v1, "ttmn"

    .line 28
    .line 29
    .line 30
    const-string v2, "Can\'t load vcn "

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifylib()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string/jumbo v1, "ttmn"

    .line 42
    .line 43
    .line 44
    const-string v2, "Can\'t load vcnverify lib "

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    :cond_2
    monitor-exit v0

    .line 50
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw v1
.end method

.method private initLogThread(Landroid/os/Handler$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mMsgThread:Ljava/lang/Thread;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader$1;-><init>(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;Landroid/os/Handler$Callback;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mMsgThread:Ljava/lang/Thread;

    .line 11
    .line 12
    const-string p1, "mdl_log_handler"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mMsgThread:Ljava/lang/Thread;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private initNativeHandle()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_create()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    iput-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 24
    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    new-instance v0, Landroid/os/Handler;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance v0, Landroid/os/Handler;

    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    :cond_2
    :goto_1
    return-void
.end method

.method public static declared-synchronized initWithLibraryManager()I
    .locals 3

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->loadLibraries()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    sput-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsLibraryLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v2, -0x1

    .line 29
    :goto_1
    monitor-exit v0

    .line 30
    return v2

    .line 31
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    throw v1
.end method

.method private isNotifyInfo(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/16 v0, 0x14

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x32

    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/16 v0, 0x15

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x33

    .line 24
    .line 25
    if-eq p1, v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0x16

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    const/16 v0, 0x34

    .line 35
    .line 36
    if-eq p1, v0, :cond_1

    .line 37
    .line 38
    const/16 v0, 0x385

    .line 39
    .line 40
    if-eq p1, v0, :cond_1

    .line 41
    .line 42
    const/16 v0, 0x18

    .line 43
    .line 44
    if-eq p1, v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x386

    .line 47
    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p1, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 54
    :goto_1
    return p1
.end method

.method public static isVCBasekitStaticLinked()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public static declared-synchronized loadAVMDLBaseLibrary()V
    .locals 5

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initDependency()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    :try_start_1
    const-string v1, "avmdlbase"

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_2

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :goto_0
    :try_start_2
    const-string/jumbo v2, "ttmn"

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "other exception when loading avmdlbase library: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    goto :goto_3

    .line 43
    :goto_1
    const-string/jumbo v2, "ttmn"

    .line 44
    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "Can\'t load avmdlbase library: "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    :goto_2
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 69
    throw v1
.end method

.method public static makeTsFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "AVMDLDataLoader"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_makeTsFileKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "makeTsFileKey failed, other reason:  "

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_1
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "makeTsFileKey failed, native not support: "

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v0, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    const/4 p0, 0x0

    .line 60
    return-object p0
.end method

.method private postMessage(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p2, Landroid/os/Message;->what:I

    const/16 v1, 0x2bd

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    const-string/jumbo p1, "ttmdljava"

    const-string p2, "receive hijack err: "

    invoke-static {p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->hijack()V

    return v2

    :cond_0
    if-eqz p1, :cond_2

    .line 4
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    check-cast p2, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;->onNotify(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    :cond_2
    :goto_0
    return v2
.end method

.method private postMessage(Lcom/ss/mediakit/medialoader/LoaderListener;Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 7
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    check-cast v1, Lcom/ss/mediakit/medialoader/LoaderEventInfo;

    if-eqz v1, :cond_4

    .line 9
    iget p2, p2, Landroid/os/Message;->what:I

    const/16 v2, 0x47

    const-string/jumbo v3, "ttmdljava"

    if-ne p2, v2, :cond_1

    .line 10
    invoke-interface {p1, v1}, Lcom/ss/mediakit/medialoader/LoaderListener;->onLoaderTaskStart(Lcom/ss/mediakit/medialoader/LoaderEventInfo;)V

    .line 11
    const-string p1, "receive eventLog KeyIsLoaderEventStart"

    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x48

    if-ne p2, v2, :cond_2

    .line 12
    invoke-interface {p1, v1}, Lcom/ss/mediakit/medialoader/LoaderListener;->onLoaderTaskCancel(Lcom/ss/mediakit/medialoader/LoaderEventInfo;)V

    .line 13
    const-string p1, "receive eventLog KeyIsLoaderEventCancel"

    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x49

    if-ne p2, v2, :cond_3

    .line 14
    invoke-interface {p1, v1}, Lcom/ss/mediakit/medialoader/LoaderListener;->onLoaderTaskCompleted(Lcom/ss/mediakit/medialoader/LoaderEventInfo;)V

    .line 15
    const-string p1, "receive eventLog KeyIsLoaderEventCompleted"

    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    const-string p1, "receive eventLog fail"

    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public static queryComponentEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "query ComponentEncode:stacktrace "

    .line 2
    .line 3
    const-string v1, "query ComponentEncode:err "

    .line 4
    .line 5
    sget-boolean v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportQueryEncode:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_1

    .line 9
    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v4, "before encode, src: "

    .line 23
    .line 24
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v4, "AVMDLDataLoader"

    .line 35
    .line 36
    invoke-static {v4, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x4

    .line 40
    :try_start_0
    invoke-static {p0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_encodeUrl(Ljava/lang/String;I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-object p0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v4, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v4, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_1
    move-exception p0

    .line 92
    const/4 v2, 0x0

    .line 93
    sput-boolean v2, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportQueryEncode:Z

    .line 94
    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v4, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-static {v4, p0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :cond_1
    :goto_0
    return-object v3
.end method

.method private setConfigureInternal(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    const-string v2, "loaderFactory"

    invoke-direct {p0, v0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->createFilePathBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    const-string v2, "netCache"

    invoke-direct {p0, v0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->createFilePathBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    .line 8
    :cond_2
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1586

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 11
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetCacheDir:Ljava/lang/String;

    const-string/jumbo v2, "ttquiche"

    invoke-direct {p0, v0, v2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->createFilePathBaseDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTTquicheCacheDir:Ljava/lang/String;

    .line 12
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v4, 0x1971

    invoke-static {v2, v3, v4, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 13
    :cond_4
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAppInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0xa

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAppInfo:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 15
    :cond_5
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownloadDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 16
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c84

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownloadDir:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 17
    :cond_6
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 18
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d4c

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 19
    :cond_7
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlTTQuicHeOptsStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d50

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlTTQuicHeOptsStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 21
    :cond_8
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTemporaryOptStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d4e

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTemporaryOptStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 23
    :cond_9
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mN80OptsStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 24
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d4f

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mN80OptsStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 25
    :cond_a
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedEngineSetting:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 26
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2022

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedEngineSetting:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 27
    :cond_b
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 28
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d0a

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPrecisePreloadConfigStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 29
    :cond_c
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f41

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveP2pAllow:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 30
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f40

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 31
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f45

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWatchDurationThreshold:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 32
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f46

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdHttpToP2p:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 33
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f47

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveCacheThresholdP2pToHttp:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 34
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f48

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMaxTrySwitchP2pTimes:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 35
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f49

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveWaitP2pReadyThreshold:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 36
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f4a

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileUploadAllow:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 37
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f4b

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveMobileDownloadAllow:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 38
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f4c

    iget v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveRecvDataTimeout:I

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 39
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1f55

    iget-object v4, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveContainerString:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 40
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheSize:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 41
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRWTimeOut:I

    const/4 v5, 0x2

    invoke-static {v2, v3, v5, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 42
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOpenTimeOut:I

    const/4 v6, 0x3

    invoke-static {v2, v3, v6, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 43
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/4 v0, 0x5

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTryCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 44
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/4 v0, 0x7

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheSize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 45
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderFactoryMaxMemorySize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 46
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePcdnAuto:I

    if-ne v0, v4, :cond_d

    .line 47
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0xc

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    goto :goto_0

    .line 48
    :cond_d
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/4 v0, 0x6

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 49
    :goto_0
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x66

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadParallelNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 50
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsCloseFileCache:I

    const/16 v7, 0x320

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 51
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxCacheAge:I

    if-lez v0, :cond_e

    .line 52
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v8, 0x68

    invoke-static {v2, v3, v8, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 53
    :cond_e
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x6f

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMaxCacheAgeForAllDir:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 54
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x406

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadStrategy:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 55
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x410

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadWaitListType:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 56
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x69

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreloadReUse:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 57
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2bc

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableExternDNS:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 58
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2bd

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSocketReuse:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 59
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2bf

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mControlCDNRangeType:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 60
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2be

    iget v8, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketIdleTimeOut:I

    invoke-static {v2, v3, v0, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 61
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsCloseFileCache:I

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 62
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x5de

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTestSpeedTypeVersion:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 63
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x5e0

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckSumLevel:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 64
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x5e1

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEncryptVersion:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 65
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x5e3

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedCoefficientValue:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 66
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x384

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpCountEachDomain:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 67
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x385

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIpBucket:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 68
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x386

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mErrorStateTrustTime:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 69
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x9cc

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePreconnect:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 70
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x9cd

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreconnectNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 71
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x9ce

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderPreempt:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 72
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x9cf

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNextDownloadThreshold:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 73
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c30

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mOnlyUseCdn:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 74
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0xdb7

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAccessCheckLevel:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 75
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1587

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSessionReuse:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 76
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1588

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxTlsVersion:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 77
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1970

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckPreloadLevel:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 78
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2019

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mXYLibValue:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 79
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cac

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2PPreDown:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 80
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cad

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayLog:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 81
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cae

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNetScheduler:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 82
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cbe

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCacheReqRange:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 83
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1caf

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockAllNetErr:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 84
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb0

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockErrCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 85
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb1

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSChedulerBlockDurationMs:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 86
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb2

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFirstRangeLeftThreshold:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 87
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce2

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerBlockHostIpErrCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 88
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1589

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheSize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 89
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x158b

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 90
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x6e

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mWriteFileNotifyIntervalMS:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 91
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cbf

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PPreDownPeerCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 92
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ccc

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PFirstRangeLoaderType:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 93
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketSendBufferKB:I

    if-lez v0, :cond_f

    .line 94
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1c34

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 95
    :cond_f
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mRingBufferSizeKB:I

    if-lez v0, :cond_10

    .line 96
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1c35

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 97
    :cond_10
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c36

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileCacheV2:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 98
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 99
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c37

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 100
    :cond_11
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 101
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c38

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 102
    :cond_12
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerConfigStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 103
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ceb

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetSchedulerConfigStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 104
    :cond_13
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c39

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mAlogEnable:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 105
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c3a

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSyncDnsForPcdn:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 106
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c3c

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileRingBuffer:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 107
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca4

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLazyBufferpool:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 108
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca6

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableNewBufferpool:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 109
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca7

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolBlockSize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 110
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolResidentSize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 111
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca9

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNewBufferPoolGrowBlockCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 112
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1c3d

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseFileExtendLoaderBuffer:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 113
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca2

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV6Num:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 114
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca3

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIPV4Num:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 115
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x5e6

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForbidByPassCookie:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 116
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ca5

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionTimeout:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 117
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cab

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnablePlayInfoCache:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 118
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb3

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDownloaderLog:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 119
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb4

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTNetLoader:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 120
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb5

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mTTNetLoaderCronetBufSizeKB:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 121
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cbd

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIsAllowTryTheLastUrl:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 122
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSpeedSampleInterval:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 123
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUseNewSpeedTestForSingle:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 124
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoader:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 125
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb9

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTTQuicHeLoaderCheckWithNetworkType:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 126
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cdf

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableIOManager:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 127
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc9

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderSeek:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 128
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cca

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGlobalSpeedSampleInterval:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 129
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc2

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableDynamicTimeout:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 130
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc0

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketInitialTimeout:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 131
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc1

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxSocketReuseCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 132
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ccb

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportTaskLog:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 133
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x201a

    iget-wide v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PStragetyLevel:J

    invoke-static {v2, v3, v0, v7, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V

    .line 134
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc3

    iget-wide v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mConnectPoolStragetyValue:J

    invoke-static {v2, v3, v0, v7, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V

    .line 135
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cc4

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxAliveHostNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 136
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce0

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileExtendSizeKB:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 137
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce1

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMinAllowSpeed:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 138
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce3

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOwnVDPPreloadNotify:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 139
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x201b

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEarlyData:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 140
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x201c

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedPredict:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 141
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2020

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedEngine:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 142
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2021

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableSpeedReport:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 143
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cec

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseOriginalUrl:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 144
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ced

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableLoaderLogExtractUrls:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 145
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cee

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxLoaderLogNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 146
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cef

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckContentTypeMethod:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 147
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf4

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadStackSizeLevel:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 148
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf5

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableThreadPoolCheckIdle:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 149
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf6

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolTTLSecond:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 150
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf7

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mThreadPoolMinCount:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 151
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMode:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 152
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNonBlockRangeMaxSizeKB:I

    if-lez v0, :cond_14

    .line 153
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1cf9

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 154
    :cond_14
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cfa

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableStopRetry:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 155
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cfb

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableWaitNetReachable:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 156
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce5

    iget-wide v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorMinAllowLoadSize:J

    invoke-static {v2, v3, v0, v7, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V

    .line 157
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce4

    iget-wide v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMonitorTimeInternal:J

    invoke-static {v2, v3, v0, v7, v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V

    .line 158
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce6

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketTraingCenterConfigStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 159
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnginePortraitStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 160
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d15

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnginePortraitStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 161
    :cond_15
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce7

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDirListsStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 162
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x201d

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PConfigStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 163
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1ce9

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSocketRecvBufferSize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 164
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb6

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableByteMediaNetLoader:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 165
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cb7

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mByteMediaNetLoaderCronetBufSizeKB:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 166
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2017

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCellularUp:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 167
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf0

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseThreadPool:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 168
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x206d

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxIpNum:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 169
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d03

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnoreTextSpeedTest:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 170
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d04

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOptimizeRange:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 171
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d06

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCheckCacheDir:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 172
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d07

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableUseGroupId:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 173
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d0e

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMissReason:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 174
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d0f

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mPreloadInfoRecordMaxCnt:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 175
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d10

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableTraceIdPreloadLog:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 176
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCloseLocalServer:I

    if-lez v0, :cond_16

    .line 177
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1d11

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 178
    :cond_16
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mGetCookieTokenLevel:I

    if-lez v0, :cond_17

    .line 179
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x206f

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 180
    :cond_17
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d0b

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDisableRecentCache:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 181
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d0c

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mUpdateCacheFileInternal:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 182
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d17

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCustomDirSearchAllPath:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 183
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2ee1

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mHlsTsFileKeyGenerateType:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 184
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2ee2

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableReportHeaders:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 185
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d14

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mProtectCacheDirsStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 186
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableEventInfo:I

    if-lez v0, :cond_18

    .line 187
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x270f

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 188
    :cond_18
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDownLogMaxSize:I

    if-lez v0, :cond_19

    .line 189
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1d05

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 190
    :cond_19
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableStorageModule:I

    if-lez v0, :cond_1e

    .line 191
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2710

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 192
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBNM:I

    if-lez v0, :cond_1a

    .line 193
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2711

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 194
    :cond_1a
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoPlayDldWinSizeKBLS:I

    if-lez v0, :cond_1b

    .line 195
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2712

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 196
    :cond_1b
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoRingBufferSizeKB:I

    if-lez v0, :cond_1c

    .line 197
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2713

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 198
    :cond_1c
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh1:I

    if-lez v0, :cond_1d

    .line 199
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2714

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 200
    :cond_1d
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoMaxIdleTimeSec:I

    if-lez v0, :cond_1e

    .line 201
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2716

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 202
    :cond_1e
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoStrategyConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 203
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2717

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoStrategyConfig:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 204
    :cond_1f
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mStoIoWriteLimitKBTh2:I

    if-lez v0, :cond_20

    .line 205
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x2715

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 206
    :cond_20
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 207
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cff

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mP2PCostTag:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 208
    :cond_21
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24b8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mIgnorePlayInfo:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 209
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSettingsDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 210
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24b9

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSettingsDomain:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 211
    :cond_22
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDmDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 212
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24ba

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDmDomain:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 213
    :cond_23
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForesightDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 214
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24bb

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mForesightDomain:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 215
    :cond_24
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDomains:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 216
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24bc

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDomains:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 217
    :cond_25
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 218
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24bd

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyDomain:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 219
    :cond_26
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 220
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x24be

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mKeyToken:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 221
    :cond_27
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDynamicPreconnectConfigStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 222
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d4d

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDynamicPreconnectConfigStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 223
    :cond_28
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 224
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x201e

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCustomUA:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 225
    :cond_29
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileRingBufferOptStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 226
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x206e

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileRingBufferOptStr:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 227
    :cond_2a
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileKeyRule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 228
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2ee0

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileKeyRule:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 229
    :cond_2b
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2454

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableOkHttpLoader:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 230
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2af8

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableP2pUpload:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 231
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2afa

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevDiskSizeMB:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 232
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2afc

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDevMemorySizeMB:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 233
    iget-object v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpExtGlobalInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 234
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x2af9

    iget-object v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpExtGlobalInfo:Ljava/lang/String;

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V

    .line 235
    :cond_2c
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cf3

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableMultiDownloadPath:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 236
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cfc

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableFileMutexOptimize:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 237
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cfd

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSkipCDNBeforeExpiredSec:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 238
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1cfe

    iget v7, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mNetUnreachableTimeout:I

    invoke-static {v2, v3, v0, v7}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 239
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDeviceScoreEx:I

    if-lez v0, :cond_2d

    .line 240
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1d02

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 241
    :cond_2d
    iget v0, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mSessionCacheInterval:I

    if-lez v0, :cond_2e

    .line 242
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v7, 0x1d12

    invoke-static {v2, v3, v7, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 243
    :cond_2e
    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mFileManagerInterval:I

    if-lez p1, :cond_2f

    .line 244
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const/16 v0, 0x1d13

    invoke-static {v2, v3, v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V

    .line 245
    :cond_2f
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSMainType:I

    invoke-static {v1, p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 246
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDNSBackType:I

    invoke-static {v4, p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 247
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mDefaultExpiredTime:I

    invoke-static {v5, p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    .line 248
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    iget p1, p1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMainToBackUpDelayedTime:I

    invoke-static {v6, p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->setIntValue(II)V

    :cond_30
    :goto_1
    return-void
.end method

.method public static setOkhttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/downloader/AVMDLHttpExcutor;->setOkHttpClient(Lokhttp3/OkHttpClient;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startInternal()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initLogThread(Landroid/os/Handler$Callback;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadP2pPluginInternal()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->tryLoadQuicPluginInternal()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setConfigureInternal(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V

    .line 31
    .line 32
    .line 33
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_start(J)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ltz v0, :cond_0

    .line 40
    .line 41
    iput v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 52
    .line 53
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableBenchMarkIOSpeed:I

    .line 54
    .line 55
    if-lez v0, :cond_1

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->testFileIOSpeed()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string/jumbo v4, "test io average speed:%d"

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v3, "BENCHMARKIO"

    .line 79
    .line 80
    invoke-static {v3, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    if-lez v0, :cond_1

    .line 84
    .line 85
    const/16 v2, 0x5e4

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mStartCompleteListener:Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    invoke-interface {v0}, Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;->onStartComplete()V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 98
    .line 99
    if-ne v0, v1, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 102
    .line 103
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mEnableCellularUp:I

    .line 104
    .line 105
    if-lez v0, :cond_3

    .line 106
    .line 107
    const-string/jumbo v0, "start try up cellular"

    .line 108
    .line 109
    .line 110
    const-string v1, "AVMDLDataLoader"

    .line 111
    .line 112
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getApplicationContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->alwayUpCellular(Landroid/content/Context;)Z

    .line 120
    .line 121
    .line 122
    const-string v0, "end try up cellular"

    .line 123
    .line 124
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getApplicationContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLMultiNetwork;->registerNetworkChangeCallback(Landroid/content/Context;)Z

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :goto_1
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 138
    .line 139
    .line 140
    throw v0
.end method

.method private testFileIO(Ljava/lang/String;ILjava/io/RandomAccessFile;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    int-to-long p1, p2

    .line 15
    invoke-virtual {p3, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    .line 17
    .line 18
    const/16 p1, 0x1000

    .line 19
    .line 20
    new-array p1, p1, [B

    .line 21
    .line 22
    const/4 p2, 0x0

    .line 23
    move v4, p2

    .line 24
    :goto_0
    const/16 v5, 0xc8

    .line 25
    .line 26
    if-ge v4, v5, :cond_1

    .line 27
    .line 28
    const/4 v5, 0x5

    .line 29
    int-to-long v5, v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    .line 32
    .line 33
    const/16 v5, 0x400

    .line 34
    .line 35
    invoke-virtual {p3, p1, p2, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    sub-long/2addr p1, v2

    .line 46
    const/16 p3, 0x3e8

    .line 47
    .line 48
    int-to-long v2, p3

    .line 49
    sub-long/2addr p1, v2

    .line 50
    const-wide/16 v2, 0x0

    .line 51
    .line 52
    cmp-long p3, p1, v2

    .line 53
    .line 54
    if-lez p3, :cond_2

    .line 55
    .line 56
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    .line 58
    const v0, 0xc8000

    .line 59
    .line 60
    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string/jumbo v1, "size:%d costtime:%d"

    .line 74
    .line 75
    .line 76
    invoke-static {p3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    const-string v0, "BENCHMARKIO"

    .line 81
    .line 82
    invoke-static {v0, p3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-wide/32 v0, 0xc8000

    .line 86
    .line 87
    .line 88
    div-long/2addr v0, p1

    .line 89
    long-to-double p1, v0

    .line 90
    return-wide p1

    .line 91
    :cond_2
    return-wide v0
.end method

.method private testFileIOSpeed()I
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "BENCHMARKIO"

    .line 4
    .line 5
    iget-object v0, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v3, -0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    iget-object v0, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    add-int/lit8 v4, v4, -0x1

    .line 26
    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v4, 0x2f

    .line 32
    .line 33
    if-ne v0, v4, :cond_1

    .line 34
    .line 35
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 36
    .line 37
    iget-object v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 40
    .line 41
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "%siospeed"

    .line 46
    .line 47
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    move-object v4, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 54
    .line 55
    iget-object v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 56
    .line 57
    iget-object v4, v4, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mCacheDir:Ljava/lang/String;

    .line 58
    .line 59
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v5, "%s/iospeed"

    .line 64
    .line 65
    invoke-static {v0, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_0

    .line 70
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 71
    .line 72
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 82
    .line 83
    .line 84
    :cond_2
    new-instance v5, Ljava/io/File;

    .line 85
    .line 86
    const-string v0, "iospeed.cach"

    .line 87
    .line 88
    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 98
    .line 99
    .line 100
    :cond_3
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    .line 101
    .line 102
    const-string v0, "rw"

    .line 103
    .line 104
    invoke-direct {v6, v5, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 105
    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    const-wide/16 v10, 0x0

    .line 109
    .line 110
    const-wide/16 v12, 0x0

    .line 111
    .line 112
    :goto_2
    const/16 v0, 0x1e

    .line 113
    .line 114
    if-ge v9, v0, :cond_5

    .line 115
    .line 116
    :try_start_1
    invoke-direct {v1, v4, v9, v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->testFileIO(Ljava/lang/String;ILjava/io/RandomAccessFile;)D

    .line 117
    .line 118
    .line 119
    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 121
    .line 122
    const-string v3, "num:%d result:%f"

    .line 123
    .line 124
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v0, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :goto_3
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    goto :goto_5

    .line 146
    :catchall_0
    move-exception v0

    .line 147
    goto :goto_6

    .line 148
    :catch_0
    move-exception v0

    .line 149
    goto :goto_4

    .line 150
    :catch_1
    move-exception v0

    .line 151
    const-wide/16 v14, 0x0

    .line 152
    .line 153
    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string/jumbo v7, "test fileio exception:"

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v2, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :goto_5
    cmpl-double v0, v14, v7

    .line 179
    .line 180
    if-lez v0, :cond_4

    .line 181
    .line 182
    const/16 v0, 0x14

    .line 183
    .line 184
    if-lt v9, v0, :cond_4

    .line 185
    .line 186
    add-double/2addr v12, v14

    .line 187
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 188
    .line 189
    add-double/2addr v10, v7

    .line 190
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .line 198
    .line 199
    :catch_2
    const-wide/16 v2, 0x0

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :goto_6
    throw v0

    .line 203
    :goto_7
    cmpl-double v0, v10, v2

    .line 204
    .line 205
    if-lez v0, :cond_6

    .line 206
    .line 207
    div-double/2addr v12, v10

    .line 208
    double-to-int v0, v12

    .line 209
    return v0

    .line 210
    :cond_6
    const/4 v2, 0x0

    .line 211
    return v2

    .line 212
    :catch_3
    move-exception v0

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v5, "create accefile exception:"

    .line 219
    .line 220
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    return v3
.end method

.method public static declared-synchronized tryLoadByteMediaNetLoaderPlugin()Z
    .locals 3

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "ttmdljava"

    .line 5
    .line 6
    .line 7
    const-string v2, "do load bytemedianet"

    .line 8
    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const-string/jumbo v1, "ttmdljava"

    .line 13
    .line 14
    .line 15
    const-string v2, "end do load bytemedianet"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsMdlByteMediaNetPluginLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw v1
.end method

.method private tryLoadP2pPluginInternal()V
    .locals 5

    .line 1
    const-string v0, "Can\'t load p2p library: "

    .line 2
    .line 3
    const-string v1, "AVMDLDataLoader"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mPluginLibraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string/jumbo v2, "try to load p2p lib by mdl"

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mPluginLibraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 16
    .line 17
    const-string v3, "avmdlp2p"

    .line 18
    .line 19
    invoke-interface {v2, v3}, Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    const-string v4, "load p2p lib by mdl result:%d"

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception v2

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v2

    .line 46
    goto :goto_1

    .line 47
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    :cond_0
    :goto_2
    return-void
.end method

.method private tryLoadQuicPluginInternal()V
    .locals 0

    .line 1
    return-void
.end method

.method public static declared-synchronized tryLoadTTNetLoaderPlugin()Z
    .locals 2

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mIsMdlTtnetPluginLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static tryLoadVcnverifylib()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string/jumbo v1, "vcn"

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "ttmn"

    .line 11
    .line 12
    .line 13
    const-string v2, "Can\'t load vcn "

    .line 14
    .line 15
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const-string v0, "load vcnverify fail"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_0
    const-string v0, "load vcnverify suc"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    return v0
.end method


# virtual methods
.method public addDataSource(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "addDataSource: id: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", queyr: "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "AVMDLDataLoader"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 44
    .line 45
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_addDataSource(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    :catch_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :goto_0
    return-void
.end method

.method public asyncCopyOperation(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    iput v1, v0, Landroid/os/Message;->what:I

    .line 18
    .line 19
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return p1

    .line 26
    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_cancel(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public cancelAll()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_cancelAll(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public cancelAllPreloadWaitReqs()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_cancelAllPreloadWaitReqs(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public cleanCacheDir(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_cleanCacheDir(JJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public cleanSpecifiedCacheDir(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_cleanSpecifiedCacheDir(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public clearAllCaches()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_clearAllCaches(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public clearNetinfoCache()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/ss/mediakit/net/IPCache;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_clearNetinfoCache(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :goto_1
    return-void

    .line 38
    :goto_2
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-eqz v4, :cond_2

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_close(J)V

    .line 21
    .line 22
    .line 23
    iput-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    iput v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto :goto_4

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mMsgThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_3
    return-void

    .line 74
    :goto_4
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    iget-wide v4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    .line 4
    invoke-static {v4, v5, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFile64(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3

    .line 6
    :goto_1
    :try_start_1
    iget-wide v5, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    .line 7
    :try_start_2
    invoke-static {v5, v6, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFile(JLjava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    return-wide v2

    .line 10
    :goto_4
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 22
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_0

    return-wide v2

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const-wide/16 v0, 0x0

    .line 24
    :try_start_0
    iget-wide v4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    cmp-long v6, v4, v0

    if-eqz v6, :cond_1

    .line 25
    invoke-static {v4, v5, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFileWithCustomDir64(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3

    .line 27
    :goto_1
    :try_start_1
    iget-wide v5, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v5, v0

    if-eqz v0, :cond_2

    .line 28
    :try_start_2
    invoke-static {v5, v6, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFileWithCustomDir(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v2, p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 29
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    return-wide v2

    .line 31
    :goto_4
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public copyFile(Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 9

    .line 11
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-wide v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 13
    :try_start_0
    iget-wide v6, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_1

    .line 14
    invoke-static {v6, v7, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFileWithForceFlag64(JLjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_3

    .line 16
    :goto_1
    :try_start_1
    iget-wide v7, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v7, v4

    if-eqz v4, :cond_2

    .line 17
    :try_start_2
    invoke-static {v7, v8, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_copyFileWithForceFlag(JLjava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v1, v1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 18
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v3

    :goto_2
    if-eqz v0, :cond_2

    if-eq p3, v3, :cond_2

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->copyFile(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 20
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_3
    return-wide v1

    .line 21
    :goto_4
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public doParseHosts([Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/net/AVMDLDNSParser;->doParseHosts([Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public downloadResource(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_downloadResource(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-void

    .line 46
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public forceClearAllCaches()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_forceClearAllCaches(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public forceRemoveFileCache(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_forceRemoveCacheFile(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-void

    .line 46
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public getAllCacheSize()J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    cmp-long v4, v0, v4

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    const/16 v4, 0x64

    .line 23
    .line 24
    invoke-static {v0, v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValue(JI)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 36
    .line 37
    .line 38
    goto :goto_2

    .line 39
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :goto_2
    return-wide v2

    .line 44
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public getAuth(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportGetAuth:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_3

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 18
    .line 19
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getAuth(JLjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_2

    .line 31
    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isSupportGetAuth:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :goto_1
    return-object v2

    .line 40
    :goto_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_3
    return-object v2
.end method

.method public getCDNLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getCDNLog(JLjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_2

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_1
    const-string v0, "AVMDLDataLoader"

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "not support get cdnlog,"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :goto_1
    return-object v2

    .line 56
    :goto_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public getCacheInfo(Ljava/lang/String;)Lcom/ss/mediakit/medialoader/AVMDLFileInfo;
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 21
    .line 22
    const-wide/16 v5, 0x0

    .line 23
    .line 24
    cmp-long v0, v3, v5

    .line 25
    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    const/16 v0, 0x65

    .line 29
    .line 30
    invoke-static {v3, v4, p1, v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValueByStr(JLjava/lang/String;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_2
    :try_start_1
    const-string v0, ","

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    array-length v0, p1

    .line 53
    const/4 v3, 0x3

    .line 54
    if-lt v0, v3, :cond_5

    .line 55
    .line 56
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;

    .line 57
    .line 58
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x2

    .line 62
    :try_start_2
    aget-object v1, p1, v1

    .line 63
    .line 64
    iput-object v1, v0, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mFilePath:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    aget-object v3, p1, v1

    .line 68
    .line 69
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    aget-object v1, p1, v1

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    iput-wide v3, v0, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mCacheSize:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_4

    .line 90
    :catch_0
    move-exception p1

    .line 91
    move-object v1, v0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    :goto_0
    aget-object v1, p1, v2

    .line 94
    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    aget-object p1, p1, v2

    .line 102
    .line 103
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v1

    .line 111
    iput-wide v1, v0, Lcom/ss/mediakit/medialoader/AVMDLFileInfo;->mContentLenght:J
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    :cond_4
    move-object v1, v0

    .line 114
    goto :goto_1

    .line 115
    :catch_1
    move-exception p1

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 120
    .line 121
    .line 122
    goto :goto_3

    .line 123
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_3
    return-object v1

    .line 128
    :goto_4
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public getCacheSize(Ljava/lang/String;)J
    .locals 6

    .line 10
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_0

    return-wide v2

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v2

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    const/16 v4, 0x67

    .line 14
    invoke-static {v0, v1, p1, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStr(JLjava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 16
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-wide v2

    .line 17
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getCacheSize(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_0

    return-wide v2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-wide v2

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-wide v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_3

    const/16 v4, 0x67

    .line 6
    invoke-static {v0, v1, p1, p2, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStrStr(JLjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 8
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-wide v2

    .line 9
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getConfig()Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 9
    .line 10
    return-object v0
.end method

.method public getContinueCacheSize(Ljava/lang/String;IJ)J
    .locals 10

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v4, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    cmp-long v0, v4, v0

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object v6, p1

    .line 30
    move v7, p2

    .line 31
    move-wide v8, p3

    .line 32
    invoke-static/range {v4 .. v9}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getContinueCacheSize(JLjava/lang/String;IJ)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_2
    return-wide v2

    .line 52
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public getDownloadCount(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x2401

    .line 30
    .line 31
    invoke-static {v0, v1, p1, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStr(JLjava/lang/String;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_2
    return-wide v2

    .line 51
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public getInt64Value(IJ)J
    .locals 6

    .line 1
    const/16 v0, 0x1f43

    .line 2
    .line 3
    const-string/jumbo v1, "ttmdljava"

    .line 4
    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/16 v0, 0x1f44

    .line 9
    .line 10
    if-ne p1, v0, :cond_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLiveListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;->getInt64Value(IJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "getInt64Value mLiveListener is nullptr, code: "

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    const-wide/16 v4, 0x1

    .line 44
    .line 45
    packed-switch p1, :pswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getApplicationContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p2}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->isOverHeat(Landroid/content/Context;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    :goto_0
    move-wide p2, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-wide p2, v2

    .line 62
    goto :goto_1

    .line 63
    :pswitch_1
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getApplicationContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-static {p2}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->isPowerSaveMode(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_2
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getApplicationContext()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->getBatteryPercentage(Landroid/content/Context;)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    int-to-long p2, p2

    .line 83
    goto :goto_1

    .line 84
    :pswitch_3
    invoke-static {}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->getTotalFreeStorageKB()J

    .line 85
    .line 86
    .line 87
    move-result-wide p2

    .line 88
    goto :goto_1

    .line 89
    :pswitch_4
    invoke-static {}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->getTotalStorageSpaceKB()J

    .line 90
    .line 91
    .line 92
    move-result-wide p2

    .line 93
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v2, "getInt64Value code: "

    .line 99
    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p1, " defaultValue: "

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-wide p2

    .line 122
    nop

    .line 123
    :pswitch_data_0
    .packed-switch 0x2aff
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v3, v0, v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-static {v0, v1, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValue(JI)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_2
    return-object v2

    .line 42
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw v0
.end method

.method public getLongValue(I)J
    .locals 11

    .line 1
    const/16 v0, 0x1c32

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/16 v0, 0x1cde

    .line 10
    .line 11
    if-eq p1, v0, :cond_4

    .line 12
    .line 13
    const/16 v0, 0x24bf

    .line 14
    .line 15
    if-eq p1, v0, :cond_4

    .line 16
    .line 17
    const/16 v0, 0x1cea

    .line 18
    .line 19
    if-eq p1, v0, :cond_4

    .line 20
    .line 21
    const/16 v0, 0x1d09

    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    goto/16 :goto_5

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const-string v6, " result: "

    .line 31
    .line 32
    const-string v7, "getLongValue key: "

    .line 33
    .line 34
    const-string/jumbo v8, "ttmdljava"

    .line 35
    .line 36
    .line 37
    if-eq v0, v5, :cond_1

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v8, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-wide v3

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 65
    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-wide/16 v1, -0x3e6

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v8, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-wide v1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 98
    .line 99
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 101
    .line 102
    .line 103
    :try_start_0
    iget-wide v9, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 104
    .line 105
    cmp-long v0, v9, v1

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    invoke-static {v9, v10, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValue(JI)J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    goto :goto_1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    goto :goto_4

    .line 116
    :catch_0
    move-exception v0

    .line 117
    goto :goto_2

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 119
    .line 120
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderType:I

    .line 121
    .line 122
    :goto_0
    int-to-long v3, v0

    .line 123
    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 125
    .line 126
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveEnableMdlProto:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 130
    .line 131
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveP2pAllow:I

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 135
    .line 136
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLiveLoaderEnable:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {v8, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-wide v3

    .line 174
    :goto_4
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 177
    .line 178
    .line 179
    throw p1

    .line 180
    :cond_4
    :goto_5
    iget-wide v5, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 181
    .line 182
    cmp-long v0, v5, v1

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-static {v5, v6, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValue(JI)J

    .line 187
    .line 188
    .line 189
    move-result-wide v3

    .line 190
    :cond_5
    return-wide v3

    .line 191
    :pswitch_data_0
    .packed-switch 0x1fa4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLongValueByStr(Ljava/lang/String;I)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStr(JLjava/lang/String;I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :goto_2
    return-wide v2

    .line 49
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 52
    .line 53
    .line 54
    throw p1
.end method

.method public getMissReason(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 25
    .line 26
    .line 27
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 28
    .line 29
    const-wide/16 v4, 0x0

    .line 30
    .line 31
    cmp-long v4, v0, v4

    .line 32
    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    const/16 v4, 0x70

    .line 36
    .line 37
    invoke-static {v0, v1, p1, p2, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStrStr(JLjava/lang/String;Ljava/lang/String;I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_2
    return-wide v2

    .line 57
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_4
    return-wide v2
.end method

.method public getStringCacheInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    const/16 v3, 0x65

    .line 5
    invoke-static {v0, v1, p1, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValueByStr(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-object v2

    .line 8
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getStringCacheInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 9
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 11
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_3

    const/16 v3, 0x65

    .line 14
    invoke-static {v0, v1, p1, p2, v3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValueByStrStr(JLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 16
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-object v2

    .line 17
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v3, v0, v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValue(JI)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_2
    return-object v2

    .line 41
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public getStringValueByStr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 14
    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v3, v0, v3

    .line 18
    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getStringValueByStr(JLjava/lang/String;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_3

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :goto_2
    return-object v2

    .line 41
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public getStringValueByStrkey(IJLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    const/16 v0, 0x5df

    .line 9
    .line 10
    if-eq p1, v0, :cond_5

    .line 11
    .line 12
    const/16 v0, 0x5e2

    .line 13
    .line 14
    if-eq p1, v0, :cond_4

    .line 15
    .line 16
    const/16 v0, 0x5e5

    .line 17
    .line 18
    if-eq p1, v0, :cond_4

    .line 19
    .line 20
    const/16 v0, 0xdb8

    .line 21
    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x2b04

    .line 25
    .line 26
    if-eq p1, v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0x1901

    .line 29
    .line 30
    if-eq p1, v0, :cond_1

    .line 31
    .line 32
    const/16 v0, 0x1902

    .line 33
    .line 34
    if-eq p1, v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 38
    .line 39
    if-eqz v0, :cond_6

    .line 40
    .line 41
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 48
    .line 49
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;->getStringValue(IJLjava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string/jumbo v1, "what:"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, ", code:"

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, ", key3"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, ", result:"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string/jumbo p2, "ttmdljava"

    .line 96
    .line 97
    .line 98
    invoke-static {p2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    invoke-static {}, Lcom/ss/mediakit/utils/AVMDLDeviceUtil;->getDeviceModel()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->getProxyUrl()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    goto :goto_0

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 113
    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-nez v0, :cond_6

    .line 121
    .line 122
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 123
    .line 124
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;->getStringValue(IJLjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    goto :goto_0

    .line 129
    :cond_5
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 130
    .line 131
    if-eqz p1, :cond_6

    .line 132
    .line 133
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 140
    .line 141
    invoke-interface {p1, p4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;->getCheckSumInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    :cond_6
    :goto_0
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x17

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->copyInternal(Lcom/ss/mediakit/medialoader/AVMDLCopyOperation;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 p1, 0x1

    .line 17
    return p1

    .line 18
    :cond_1
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0x33

    .line 22
    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWaitingCopyItem:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-lez v2, :cond_3

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-direct {p0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->handleCopyMsg(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    const/16 v1, 0xc

    .line 43
    .line 44
    if-eq v0, v1, :cond_7

    .line 45
    .line 46
    const/16 v1, 0x9

    .line 47
    .line 48
    if-ne v0, v1, :cond_4

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    const/16 v1, 0x47

    .line 52
    .line 53
    if-eq v0, v1, :cond_6

    .line 54
    .line 55
    const/16 v1, 0x48

    .line 56
    .line 57
    if-eq v0, v1, :cond_6

    .line 58
    .line 59
    const/16 v1, 0x49

    .line 60
    .line 61
    if-eq v0, v1, :cond_6

    .line 62
    .line 63
    const/16 v1, 0x4a

    .line 64
    .line 65
    if-ne v0, v1, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 69
    .line 70
    invoke-direct {p0, v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->postMessage(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;Landroid/os/Message;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    return p1

    .line 75
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mEventListener:Lcom/ss/mediakit/medialoader/LoaderListener;

    .line 76
    .line 77
    invoke-direct {p0, v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->postMessage(Lcom/ss/mediakit/medialoader/LoaderListener;Landroid/os/Message;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    return p1

    .line 82
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLiveListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;

    .line 83
    .line 84
    invoke-direct {p0, v0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->postMessage(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;Landroid/os/Message;)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    return p1
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public makeFileAutoDeleteFlag(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_makeFileAutoDeleteFlag(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-void

    .line 46
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public onCellularAlwaysUp(J)I
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "start on cellular netId: "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "AVMDLDataLoader"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 27
    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    :try_start_0
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 31
    .line 32
    const-wide/16 v4, 0x0

    .line 33
    .line 34
    cmp-long v4, v2, v4

    .line 35
    .line 36
    if-eqz v4, :cond_0

    .line 37
    .line 38
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 39
    .line 40
    invoke-static {v2, v3, p1, p2, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_onCellularAlwaysUp(JJI)I

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "end on cellular netId: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, " ret: "

    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v0
.end method

.method public onEventInfo(Ljava/lang/Object;)V
    .locals 11

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    const-string v1, "bytesLoaded"

    .line 4
    .line 5
    const-string v2, "fileHash"

    .line 6
    .line 7
    const-string v3, "endOff"

    .line 8
    .line 9
    const-string v4, "off"

    .line 10
    .line 11
    const-string/jumbo v5, "taskType"

    .line 12
    .line 13
    .line 14
    const-string/jumbo v6, "what"

    .line 15
    .line 16
    .line 17
    iget v7, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 18
    .line 19
    const/4 v8, 0x1

    .line 20
    if-ne v7, v8, :cond_a

    .line 21
    .line 22
    iget-object v7, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 23
    .line 24
    if-nez v7, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    new-instance v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;

    .line 29
    .line 30
    invoke-direct {v7}, Lcom/ss/mediakit/medialoader/LoaderEventInfo;-><init>()V

    .line 31
    .line 32
    .line 33
    const/16 v9, 0x4a

    .line 34
    .line 35
    iput v9, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->what:I

    .line 36
    .line 37
    :try_start_0
    check-cast p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    const-string v10, "AVMDLDataLoader"

    .line 44
    .line 45
    if-eqz v9, :cond_1

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iput v6, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->what:I

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v9, "[debugUI] eventMap contains What"

    .line 65
    .line 66
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v9, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->what:I

    .line 70
    .line 71
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v10, v6}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-eqz v6, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    iput v5, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->taskType:I

    .line 102
    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    const-string v6, "[debugUI] eventMap contains taskType"

    .line 109
    .line 110
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget v6, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->taskType:I

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v10, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_3

    .line 130
    .line 131
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Ljava/lang/Long;

    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 138
    .line 139
    .line 140
    move-result-wide v4

    .line 141
    iput-wide v4, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->off:J

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v5, "[debugUI] eventMap contains off"

    .line 149
    .line 150
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-wide v5, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->off:J

    .line 154
    .line 155
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v10, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_4

    .line 170
    .line 171
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    iput-wide v3, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->endOff:J

    .line 182
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v4, "[debugUI] eventMap contains endOff"

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-wide v4, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->endOff:J

    .line 194
    .line 195
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-static {v10, v3}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_5

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iput-object v2, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->fileHash:Ljava/lang/String;

    .line 220
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .line 225
    .line 226
    const-string v3, "[debugUI] eventMap contains fileHash"

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v3, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->fileHash:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {v10, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_6

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Ljava/lang/Long;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 256
    .line 257
    .line 258
    move-result-wide v1

    .line 259
    iput-wide v1, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->bytesLoaded:J

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v2, "[debugUI] eventMap contains bytesLoaded"

    .line 267
    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-wide v2, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->bytesLoaded:J

    .line 272
    .line 273
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v10, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    const-string v2, ""

    .line 288
    .line 289
    if-eqz v1, :cond_7

    .line 290
    .line 291
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    const-string v1, "[debugUI] eventMap contains headers"

    .line 305
    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-static {v10, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_7
    move-object p1, v2

    .line 321
    :goto_1
    if-eq p1, v2, :cond_8

    .line 322
    .line 323
    const-string v0, "\r\n"

    .line 324
    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    array-length v0, p1

    .line 330
    const/4 v1, 0x0

    .line 331
    move v2, v1

    .line 332
    :goto_2
    if-ge v2, v0, :cond_9

    .line 333
    .line 334
    aget-object v3, p1, v2

    .line 335
    .line 336
    const-string v4, ":"

    .line 337
    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    iget-object v4, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->mHeaders:Ljava/util/HashMap;

    .line 343
    .line 344
    aget-object v5, v3, v1

    .line 345
    .line 346
    aget-object v3, v3, v8

    .line 347
    .line 348
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    add-int/lit8 v2, v2, 0x1

    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    const-string v0, "[debugUI] what"

    .line 360
    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    iget v0, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->what:I

    .line 365
    .line 366
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {v10, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    const-string p1, "[debugUI]no headers"

    .line 377
    .line 378
    invoke-static {v10, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 379
    .line 380
    .line 381
    goto :goto_4

    .line 382
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    .line 384
    .line 385
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    .line 386
    .line 387
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    iget v0, v7, Lcom/ss/mediakit/medialoader/LoaderEventInfo;->what:I

    .line 392
    .line 393
    iput v0, p1, Landroid/os/Message;->what:I

    .line 394
    .line 395
    iput-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    .line 397
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 398
    .line 399
    .line 400
    :cond_a
    :goto_5
    return-void
.end method

.method public onInitMultiNetworkEnv()I
    .locals 6

    .line 1
    const-string/jumbo v0, "start on init multinetwork env"

    .line 2
    .line 3
    .line 4
    const-string v1, "AVMDLDataLoader"

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    :try_start_0
    iget-wide v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 16
    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v4, v2, v4

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    invoke-static {v2, v3, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_onInitMultiNetworkEnv(JI)I

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :goto_1
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :goto_2
    const-string v2, "end on init multinetwork env"

    .line 45
    .line 46
    invoke-static {v1, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v0
.end method

.method public onLogInfo(IIILjava/lang/String;)V
    .locals 9

    .line 2
    const-string/jumbo v0, "unknown"

    iget v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    new-instance v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    invoke-direct {v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 4
    iput p1, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    int-to-long v3, p2

    .line 5
    iput-wide v3, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 6
    iput-object p4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    int-to-long p2, p3

    .line 7
    iput-wide p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLogInfo what:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "ttmdljava"

    invoke-static {p3, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->isNotifyInfo(I)Z

    move-result p2

    if-nez p2, :cond_14

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onLogInfo what: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " is not notify"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/16 p3, 0xe

    if-eq p1, p3, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logToJson()V

    :cond_1
    if-eqz p1, :cond_13

    if-eq p1, v2, :cond_12

    const/16 p3, 0xa

    if-eq p1, p3, :cond_11

    const/16 p4, 0xb

    if-eq p1, p4, :cond_10

    const/16 v3, 0x13

    if-eq p1, v3, :cond_f

    const/16 v3, 0x46

    if-eq p1, v3, :cond_e

    const/16 v3, 0x2bc

    if-eq p1, v3, :cond_4

    const/16 p2, 0x2be

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2bf

    if-eq p1, p2, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_7

    .line 12
    :pswitch_0
    const-string p2, "bb_storage"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 13
    :pswitch_1
    const-string p2, "bb_sample"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 14
    :pswitch_2
    const-string p2, "bb_task"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 15
    :pswitch_3
    const-string p2, "bb_preload"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 16
    :pswitch_4
    const-string p2, "bb_protocol"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 17
    :pswitch_5
    const-string p2, "bb_proxy"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 18
    :pswitch_6
    const-string p2, "mdl_dns_log"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 19
    :pswitch_7
    const-string p2, "alog_info"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 20
    :pswitch_8
    const-string p2, "pcdn_task"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 21
    :cond_2
    const-string p2, "global_speed"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 22
    :cond_3
    const-string/jumbo p2, "speed_info"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto/16 :goto_7

    .line 23
    :cond_4
    :try_start_0
    iget-object v3, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 24
    iget-object v3, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 25
    array-length v4, v3

    if-lt v4, p2, :cond_14

    .line 26
    iput-object v0, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    const/4 v4, 0x0

    .line 27
    aget-object v5, v3, v4

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 28
    const-string/jumbo v4, "video"

    iput-object v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_0

    .line 29
    :cond_5
    aget-object v4, v3, v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 30
    const-string v4, "audio"

    iput-object v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    .line 31
    :cond_6
    :goto_0
    aget-object v2, v3, v2

    iput-object v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x2

    .line 32
    :try_start_1
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    const/4 v2, 0x3

    .line 33
    :try_start_2
    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    :catch_1
    :try_start_3
    array-length v2, v3
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v4, 0x5

    const-string v5, "-1"

    if-lt v2, v4, :cond_7

    .line 35
    :try_start_4
    aget-object p2, v3, p2

    goto :goto_1

    :cond_7
    move-object p2, v5

    .line 36
    :goto_1
    array-length v2, v3

    const/4 v6, 0x6

    if-lt v2, v6, :cond_8

    .line 37
    aget-object v2, v3, v4

    goto :goto_2

    :cond_8
    move-object v2, v5

    .line 38
    :goto_2
    array-length v4, v3

    const/4 v7, 0x7

    if-lt v4, v7, :cond_9

    .line 39
    aget-object v0, v3, v6

    .line 40
    :cond_9
    array-length v4, v3

    const/16 v6, 0x8

    if-lt v4, v6, :cond_a

    .line 41
    aget-object v4, v3, v7

    goto :goto_3

    :cond_a
    move-object v4, v5

    .line 42
    :goto_3
    array-length v7, v3

    const/16 v8, 0x9

    if-lt v7, v8, :cond_b

    .line 43
    aget-object v6, v3, v6

    goto :goto_4

    :cond_b
    move-object v6, v5

    .line 44
    :goto_4
    array-length v7, v3

    if-lt v7, p3, :cond_c

    .line 45
    aget-object v7, v3, v8

    goto :goto_5

    :cond_c
    move-object v7, v5

    .line 46
    :goto_5
    array-length v8, v3

    if-lt v8, p4, :cond_d

    .line 47
    aget-object v5, v3, p3

    .line 48
    :cond_d
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 50
    const-string/jumbo v3, "tcpRtt"

    invoke-virtual {p4, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo p2, "tcpLastRecvDate"

    invoke-virtual {p4, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo p2, "tcpInfo"

    invoke-virtual {p3, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string p2, "protocol"

    invoke-virtual {p3, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string p2, "downStart"

    invoke-virtual {p3, p2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string p2, "downEnd"

    invoke-virtual {p3, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string p2, "curBuf"

    invoke-virtual {p3, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string p2, "fullBuf"

    invoke-virtual {p3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logExtraJsonStr:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    .line 59
    :cond_e
    const-string p2, "heart_beat"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_6

    .line 60
    :cond_f
    const-string p2, "mdl_downloader_log"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_7

    .line 61
    :cond_10
    const-string p2, "own_live_loader_sample"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_7

    .line 62
    :cond_11
    const-string p2, "own_live_loader"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_7

    .line 63
    :cond_12
    const-string p2, "own_vdp"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    goto :goto_7

    .line 64
    :cond_13
    :pswitch_9
    const-string p2, "media_loader"

    iput-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->logType:Ljava/lang/String;

    .line 65
    :goto_6
    iget-object p2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->jsonLog:Lorg/json/JSONObject;

    if-nez p2, :cond_14

    return-void

    .line 66
    :catch_2
    :cond_14
    :goto_7
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 67
    iput p1, p2, Landroid/os/Message;->what:I

    .line 68
    iput-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLogInfo(IILjava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->onLogInfo(IIILjava/lang/String;)V

    return-void
.end method

.method public onNotify(IJI)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput p1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->what:I

    .line 17
    .line 18
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->parameter:J

    .line 19
    .line 20
    int-to-long p2, p4

    .line 21
    iput-wide p2, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;->code:J

    .line 22
    .line 23
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    iput-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    iput p1, p2, Landroid/os/Message;->what:I

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized onTaskEvent(ILjava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mTaskListener:Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/ss/mediakit/medialoader/AVMDLTaskEventID;->taskTypeIsValid(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_1
    :try_start_2
    invoke-static {p4}, Lcom/ss/mediakit/medialoader/AVMDLTaskEventID;->eventTypeIsValid(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :cond_2
    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_3
    :try_start_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 42
    .line 43
    .line 44
    move-object v5, v0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    :cond_4
    move-object v5, v1

    .line 49
    :goto_0
    :try_start_6
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mTaskListener:Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;

    .line 50
    .line 51
    move v1, p1

    .line 52
    move-object v2, p2

    .line 53
    move v3, p3

    .line 54
    move v4, p4

    .line 55
    invoke-interface/range {v0 .. v5}, Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;->onTaskEventNotify(ILjava/lang/String;IILorg/json/JSONObject;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 61
    throw p1
.end method

.method public preConnectByHost(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_preConnectByHost(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception p1

    .line 26
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public preloadGroupResource(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    if-nez p4, :cond_1

    .line 14
    .line 15
    goto :goto_4

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v0, v1, v3

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    move-object v4, p2

    .line 31
    move v5, p3

    .line 32
    move v6, p4

    .line 33
    invoke-static/range {v1 .. v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_preloadGroupResource(JLjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :catch_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_2
    return-void

    .line 52
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_3
    :goto_4
    return-void
.end method

.method public preloadResource(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_4

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_preloadResource(JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 8
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_3
    :goto_4
    return-void
.end method

.method public preloadResource(Ljava/lang/String;II)V
    .locals 4

    .line 9
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_1

    goto :goto_4

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 13
    invoke-static {v0, v1, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_preloadResourceWithOffset(JLjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    .line 15
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 16
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_3
    :goto_4
    return-void
.end method

.method public quickQueryCacheSize(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x71

    .line 30
    .line 31
    invoke-static {v0, v1, p1, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStr(JLjava/lang/String;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_2
    return-wide v2

    .line 51
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public removeFileCache(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_removeCacheFile(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-void

    .line 46
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public resetPreloadTraceId(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_resetPreloadTraceId(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public resumeFileWriteIO()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "AVMDLDataLoader"

    .line 8
    .line 9
    const-string v1, "resume file write io: "

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 20
    .line 21
    iget v0, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheSize:I

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_resumeFileWriteIO(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    iput v1, v0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMaxFileMemCacheSize:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :goto_2
    return-void
.end method

.method public resumePreConnect()V
    .locals 2

    .line 1
    const/16 v0, 0x201f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setBackUpIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

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
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 15
    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    const/16 v2, 0xb

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    invoke-direct/range {v1 .. v7}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p1, v0}, Lcom/ss/mediakit/net/IPCache;->putBackUpIp(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public setConfigure(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mConfigure:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->ParseJsonConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public setEventListener(Lcom/ss/mediakit/medialoader/LoaderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mEventListener:Lcom/ss/mediakit/medialoader/LoaderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setInt64ValueByStrKey(ILjava/lang/String;J)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    cmp-long v0, v1, v3

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move-wide v5, p3

    .line 23
    invoke-static/range {v1 .. v6}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64ValueByStrKey(JILjava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :goto_2
    return-void

    .line 42
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public setIntValue(II)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setIntValue(JII)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public setListener(ILcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_0

    .line 5
    :try_start_0
    iput-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mLiveListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public setListener(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mVodListener:Lcom/ss/mediakit/medialoader/AVMDLDataLoaderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public setLongValue(IJ)V
    .locals 5

    .line 1
    const/16 v0, 0x1d08

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-ne p1, v0, :cond_1

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 8
    .line 9
    cmp-long v0, v3, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v3, v4, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eq v0, v3, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 29
    .line 30
    cmp-long v0, v3, v1

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-static {v3, v4, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setInt64Value(JIJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :catch_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :goto_2
    return-void

    .line 53
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public setPluginLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mPluginLibraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setStartCompleteListener(Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mStartCompleteListener:Lcom/ss/mediakit/medialoader/AVMDLStartCompleteListener;

    .line 2
    .line 3
    return-void
.end method

.method public setStringValue(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

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
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 20
    .line 21
    const-wide/16 v2, 0x0

    .line 22
    .line 23
    cmp-long v2, v0, v2

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_setStringValue(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_3

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_2
    return-void

    .line 46
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public declared-synchronized setTaskEventListener(Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mTaskListener:Lcom/ss/mediakit/medialoader/AVMDLTaskEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public start()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->initNativeHandle()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/Thread;

    .line 12
    .line 13
    new-instance v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader$2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader$2;-><init>(Lcom/ss/mediakit/medialoader/AVMDLDataLoader;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    .line 23
    .line 24
    return v2
.end method

.method public stop()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_stop(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public suspendDownload(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_suspendedDownload(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :catch_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :goto_2
    return-void

    .line 39
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method public suspendPreconnect()V
    .locals 2

    .line 1
    const/16 v0, 0x201f

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->setIntValue(II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public tryQuickGetCacheSize(Ljava/lang/String;)J
    .locals 6

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, -0x1

    .line 5
    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-wide v2

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-wide v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v4, v0, v4

    .line 26
    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    const/16 v4, 0x6a

    .line 30
    .line 31
    invoke-static {v0, v1, p1, v4}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_getLongValueByStr(JLjava/lang/String;I)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto :goto_3

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :goto_2
    return-wide v2

    .line 51
    :goto_3
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mReadLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public tryToClearAndGetCachesByUsedTime(JZ)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    .line 8
    return-wide v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-wide v3, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 15
    .line 16
    cmp-long v0, v3, v1

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {v3, v4, p1, p2, p3}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_clearAndGetCachesByUsedTime(JJI)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :goto_1
    :try_start_1
    const-string/jumbo p2, "testcacheinterface"

    .line 36
    .line 37
    .line 38
    new-instance p3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "call exception"

    .line 44
    .line 45
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_2
    return-wide v1

    .line 64
    :goto_3
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public tryToClearCachesByUsedTime(J)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-static {v0, v1, p1, p2}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_clearCachesByUsedTime(JJ)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :goto_1
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :goto_2
    return-void
.end method

.method public updateDNSInfo(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-wide v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    move-object v4, p2

    .line 16
    move-wide v5, p3

    .line 17
    move-object v7, p5

    .line 18
    move v8, p6

    .line 19
    invoke-static/range {v1 .. v8}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_updateDNSInfo(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p1

    .line 31
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    return-void

    .line 36
    :goto_2
    iget-object p2, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public writeDataToFile(Ljava/lang/String;JJI[B)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v11, p4

    .line 6
    .line 7
    move/from16 v13, p6

    .line 8
    .line 9
    iget v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mState:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-eq v2, v3, :cond_0

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "start write data to file filekey:"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v14, " off:"

    .line 31
    .line 32
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v15, " length:"

    .line 39
    .line 40
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v10, "AVMDLDataLoader"

    .line 51
    .line 52
    invoke-static {v10, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 58
    .line 59
    .line 60
    :try_start_0
    iget-wide v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mHandle:J
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    move-object/from16 v4, p1

    .line 63
    .line 64
    move-wide/from16 v5, p2

    .line 65
    .line 66
    move-wide/from16 v7, p4

    .line 67
    .line 68
    move/from16 v9, p6

    .line 69
    .line 70
    move-object/from16 v16, v10

    .line 71
    .line 72
    move-object/from16 v10, p7

    .line 73
    .line 74
    :try_start_1
    invoke-static/range {v2 .. v10}, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->_writeDataToFile(JLjava/lang/String;JJI[B)I

    .line 75
    .line 76
    .line 77
    move-result v2
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v3, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    iget-object v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :catch_0
    move-object/from16 v16, v10

    .line 92
    .line 93
    :catch_1
    iget-object v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 96
    .line 97
    .line 98
    const/4 v2, -0x3

    .line 99
    goto :goto_0

    .line 100
    :catch_2
    move-object/from16 v16, v10

    .line 101
    .line 102
    :catch_3
    iget-object v2, v1, Lcom/ss/mediakit/medialoader/AVMDLDataLoader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 105
    .line 106
    .line 107
    const/4 v2, -0x2

    .line 108
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v4, "end write data to file filekey:"

    .line 114
    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object/from16 v3, v16

    .line 138
    .line 139
    invoke-static {v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v2
.end method
