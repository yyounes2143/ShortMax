package com.ss.mediakit.medialoader;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.boringssl.so.BoringsslLoaderWrapper;
import com.ss.mediakit.downloader.AVMDLHttpExcutor;
import com.ss.mediakit.net.AVMDLDNSInfo;
import com.ss.mediakit.net.AVMDLDNSParser;
import com.ss.mediakit.net.AVMDLMultiNetwork;
import com.ss.mediakit.net.IPCache;
import com.ss.mediakit.utils.AVMDLDeviceUtil;
import com.ss.mediakit.vcnlib.VcnlibloadWrapper;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.File;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import okhttp3.OkHttpClient;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public final class AVMDLDataLoader implements Handler.Callback {
    public static final int AVMDLCopyErrorFileCopyFailed = -5;
    public static final int AVMDLCopyErrorFileHaveHole = -6;
    public static final int AVMDLCopyErrorFileKeyNotCaching = -4;
    public static final int AVMDLCopyErrorInvalidParameter = -1;
    public static final int AVMDLCopyErrorMdlNotRunning = -2;
    public static final int AVMDLCopyErrorNotCached = -3;
    public static final int AVMDLErrorIsCreateTask = -1000;
    public static final int AVMDLErrorIsInvalidContentLenth = -2000;
    public static final int AVMDLErrorIsInvalidFileWrite = -5000;
    public static final int AVMDLErrorIsInvalidRequestInfo = -4000;
    public static final int AVMDLErrorIsStatusCodeMoreThan400 = -3000;
    public static final int AVMDLErrorIsStatusCodeMoreThan500 = -3001;
    public static final int AVMDLErrorIsTheSameKeyTask = -1001;
    public static final int AVMDLErrorIsTooManyTask = -1002;
    public static final int AVMDLLoaderTypeNone = 10000;
    public static final int AVMDLTaskStateStart = 1;
    public static final int AVMDLTaskStateStop = 2;
    public static final int AVMDLTaskTypeDownloadTask = 3;
    public static final int AVMDLTaskTypePlayTask = 1;
    public static final int AVMDLTaskTypePreconnectTask = 4;
    public static final int AVMDLTaskTypePreloadTask = 2;
    public static final int AVMDLoaderTypeAliP2P = 5;
    public static final int AVMDLoaderTypeHttp = 0;
    public static final int AVMDLoaderTypeKsyP2P = 3;
    public static final int AVMDLoaderTypeOwnLiveVDP = 7;
    public static final int AVMDLoaderTypeOwnVDP = 2;
    public static final int AVMDLoaderTypeWsuP2P = 6;
    public static final int AVMDLoaderTypeXYVod = 1;
    public static final int AVMDLoaderTypeYFP2P = 4;
    public static final int IsCellular = 1;
    public static final int IsClose = 5;
    public static final int IsComplete = 3;
    public static final int IsDefault = 0;
    public static final int IsFail = 2;
    public static final int IsInit = 0;
    public static final int IsStart = 1;
    public static final int IsStop = 4;
    public static final int IsWifi = 2;
    public static final int KeyIsAccessCheckLevel = 3511;
    public static final int KeyIsAllowTryTheLastUrl = 7357;
    public static final int KeyIsAlogEnable = 7225;
    public static final int KeyIsAlogInfo = 14;
    public static final int KeyIsByteMediaNetLoaderCronetBufSizeKB = 7351;
    public static final int KeyIsCDNLog = 6;
    public static final int KeyIsCacheDirListsStr = 7399;
    public static final int KeyIsCheckCacheDir = 7430;
    public static final int KeyIsCheckContentTypeMethod = 7407;
    public static final int KeyIsCloseFileCache = 800;
    public static final int KeyIsCloseLocalServer = 7441;
    public static final int KeyIsCloseThreadPool = 7408;
    public static final int KeyIsConnectPoolStragetyValue = 7363;
    public static final int KeyIsControlCDNRangeType = 703;
    public static final int KeyIsCopyOperation = 23;
    public static final int KeyIsCustomUA = 8222;
    public static final int KeyIsDNSLog = 15;
    public static final int KeyIsDeviceScoreEx = 7426;
    public static final int KeyIsDisableRecentCache = 7435;
    public static final int KeyIsDownloadDir = 7300;
    public static final int KeyIsDownloadEnd = 21;
    public static final int KeyIsDownloadSuspend = 22;
    public static final int KeyIsDownloaderLog = 19;
    public static final int KeyIsDownloaderLogTTNet = 16;
    public static final int KeyIsDynamicPreconnectConfigStr = 7501;
    public static final int KeyIsEnableByteMediaNetLoader = 7350;
    public static final int KeyIsEnableCacheReqRange = 7358;
    public static final int KeyIsEnableCellularUp = 8215;
    public static final int KeyIsEnableCustomDirSearchAllPath = 7447;
    public static final int KeyIsEnableDynamicSocketTimeout = 7362;
    public static final int KeyIsEnableEarlyData = 8219;
    public static final int KeyIsEnableEventInfo = 9999;
    public static final int KeyIsEnableExternDNS = 700;
    public static final int KeyIsEnableFileCacheV2 = 7222;
    public static final int KeyIsEnableFileMutexOptimize = 7420;
    public static final int KeyIsEnableFileRingBuffer = 7228;
    public static final int KeyIsEnableIOManager = 7391;
    public static final int KeyIsEnableIpBucket = 901;
    public static final int KeyIsEnableLazyBufferpool = 7332;
    public static final int KeyIsEnableLoaderLogExtractUrls = 7405;
    public static final int KeyIsEnableLoaderPreempt = 2510;
    public static final int KeyIsEnableLoaderSeek = 7369;
    public static final int KeyIsEnableMissReasonRecord = 7438;
    public static final int KeyIsEnableMultiDownloadPath = 7411;
    public static final int KeyIsEnableNetScheduler = 7342;
    public static final int KeyIsEnableNewBufferpool = 7334;
    public static final int KeyIsEnableOkHttpLoader = 9300;
    public static final int KeyIsEnableOptimizeRange = 7428;
    public static final int KeyIsEnableP2PPreDown = 7340;
    public static final int KeyIsEnableP2PUpload = 11000;
    public static final int KeyIsEnablePlayInfoCache = 7339;
    public static final int KeyIsEnablePlayLog = 7341;
    public static final int KeyIsEnablePreconnect = 2508;
    public static final int KeyIsEnablePreloadReUse = 105;
    public static final int KeyIsEnableReportHeaders = 12002;
    public static final int KeyIsEnableSessionReuse = 5511;
    public static final int KeyIsEnableSocketReuse = 701;
    public static final int KeyIsEnableSpeedEngine = 8224;
    public static final int KeyIsEnableSpeedPredict = 8220;
    public static final int KeyIsEnableSpeedReport = 8225;
    public static final int KeyIsEnableStorageModule = 10000;
    public static final int KeyIsEnableSyncDnsForPcdn = 7226;
    public static final int KeyIsEnableTTQuicHeLoaderCheckWithNetworkTypeI32 = 7353;
    public static final int KeyIsEnableThreadPoolCheckIdle = 7413;
    public static final int KeyIsEnableTraceidPreloadLog = 7440;
    public static final int KeyIsEnableUseFileExtendLoaderBuffer = 7229;
    public static final int KeyIsEnableUseGroupId = 7431;
    public static final int KeyIsEnableUseOriginalUrl = 7404;
    public static final int KeyIsEnableWaitNetReachable = 7419;
    public static final int KeyIsEnginePortraitStr = 7445;
    public static final int KeyIsEnginePortraitUpdateStr = 7446;
    public static final int KeyIsErrorStateTrustTime = 902;
    public static final int KeyIsFileCacheProgress = 3;
    public static final int KeyIsFileDeleteSizeByUsedTime = 902;
    public static final int KeyIsFileKeyRule = 12000;
    public static final int KeyIsFileManagerInterval = 7443;
    public static final int KeyIsFileRingBufferOptStr = 8302;
    public static final int KeyIsFirstRangeLeftThreshold = 7346;
    public static final int KeyIsForbidByPassCookie = 1510;
    public static final int KeyIsGetAllCacheSize = 100;
    public static final int KeyIsGetBatteryPct = 11009;
    public static final int KeyIsGetCacheInfo = 101;
    public static final int KeyIsGetCacheSize = 103;
    public static final int KeyIsGetCookieTokenLevel = 8303;
    public static final int KeyIsGetCostLog = 1011;
    public static final int KeyIsGetCustomHttpHeader = 1509;
    public static final int KeyIsGetDemuxerVersion = 7433;
    public static final int KeyIsGetDevModel = 11012;
    public static final int KeyIsGetDownloadCountByVid = 9217;
    public static final int KeyIsGetEnableHls = 9407;
    public static final int KeyIsGetFreeStorageKB = 11008;
    public static final int KeyIsGetFsV4Domain = 6401;
    public static final int KeyIsGetFsV6Domain = 6402;
    public static final int KeyIsGetIOManagerHandle = 7390;
    public static final int KeyIsGetIOManagerInterfaceVersion = 7402;
    public static final int KeyIsGetIoWriteError = 1013;
    public static final int KeyIsGetIsOverHeat = 11011;
    public static final int KeyIsGetIsPowerSaveMode = 11010;
    public static final int KeyIsGetLoaderVersion = 11;
    public static final int KeyIsGetLocalAddr = 4;
    public static final int KeyIsGetMdlProtocolHandle = 7218;
    public static final int KeyIsGetMissReason = 112;
    public static final int KeyIsGetPlayLog = 1010;
    public static final int KeyIsGetPreloadTraceId = 1012;
    public static final int KeyIsGetProxyUrl = 3512;
    public static final int KeyIsGetResStatus = 7231;
    public static final int KeyIsGetSpeedStatus = 7230;
    public static final int KeyIsGetTotalStorageKB = 11007;
    public static final int KeyIsGetUrlGenerator = 7425;
    public static final int KeyIsGetVersionInfo = 830;
    public static final int KeyIsGlobalSpeedSample = 703;
    public static final int KeyIsHeartBeatLog = 70;
    public static final int KeyIsHiJackError = 701;
    public static final int KeyIsHlsTsFileKeyGenerateType = 12001;
    public static final int KeyIsIOSpeedInfo = 5;
    public static final int KeyIsIgnorePlayInfo = 9400;
    public static final int KeyIsIgnoreTextSpeedTest = 7427;
    public static final int KeyIsInitialSocketTimeout = 7360;
    public static final int KeyIsIsCheckPreloadLevel = 6512;
    public static final int KeyIsIsChecksumLevel = 1504;
    public static final int KeyIsIsDownloadSource = 1506;
    public static final int KeyIsIsEnableDownloaderLog = 7347;
    public static final int KeyIsIsEnableTTNetLoader = 7348;
    public static final int KeyIsIsEnableTTQuicHeLoader = 7352;
    public static final int KeyIsIsEncryptVersion = 1505;
    public static final int KeyIsIsGetChecksumInfo = 1503;
    public static final int KeyIsIsMaxTlsVersion = 5512;
    public static final int KeyIsIsPreloadCancel = 7;
    public static final int KeyIsIsTestSpeedVersion = 1502;
    public static final int KeyIsLiveCacheThresholdHttpToP2p = 8006;
    public static final int KeyIsLiveCacheThresholdP2pToHttp = 8007;
    public static final int KeyIsLiveContainerString = 8021;
    public static final int KeyIsLiveEnableMdlProto = 8102;
    public static final int KeyIsLiveGetCurrentBitRate = 8004;
    public static final int KeyIsLiveGetLoaderType = 8103;
    public static final int KeyIsLiveGetP2pState = 8002;
    public static final int KeyIsLiveGetPlayCacheSec = 8003;
    public static final int KeyIsLiveLoaderEnable = 8100;
    public static final int KeyIsLiveLoaderP2pEnable = 8101;
    public static final int KeyIsLiveMaxTrySwitchP2pTimes = 8008;
    public static final int KeyIsLiveMobileDownloadAllow = 8011;
    public static final int KeyIsLiveMobileUploadAllow = 8010;
    public static final int KeyIsLivePlayInfoAudioMixingEnd = 8014;
    public static final int KeyIsLivePlayInfoAudioMixingStart = 8013;
    public static final int KeyIsLivePlayInfoIsPreview = 8016;
    public static final int KeyIsLivePlayInfoIsStreamReceived = 8015;
    public static final int KeyIsLiveRecvDataTimeout = 8012;
    public static final int KeyIsLiveSetLoaderType = 8000;
    public static final int KeyIsLiveSetP2pAllow = 8001;
    public static final int KeyIsLiveSetPrepareTask = 8017;
    public static final int KeyIsLiveSetTaskFinish = 8018;
    public static final int KeyIsLiveWaitP2pReadyThreshold = 8009;
    public static final int KeyIsLiveWatchDurationThreshold = 8005;
    public static final int KeyIsLoadMonitorMinAllowLoadSize = 7397;
    public static final int KeyIsLoadMonitorTimeInternal = 7396;
    public static final int KeyIsLoaderCacheSize = 9216;
    public static final int KeyIsLoaderEventCancel = 72;
    public static final int KeyIsLoaderEventCompleted = 73;
    public static final int KeyIsLoaderEventStart = 71;
    public static final int KeyIsLoaderEventUnKnown = 74;
    @Deprecated
    public static final int KeyIsLoaderFactoryP2PLevel = 8216;
    public static final int KeyIsLoaderFactoryP2PStragetyLevel = 8218;
    public static final int KeyIsLoaderFactoryXYLibValue = 8217;
    public static final int KeyIsLoaderTypeSwitch = 12;
    public static final int KeyIsMAXIPV4Num = 7331;
    public static final int KeyIsMAXIPV6Num = 7330;
    public static final int KeyIsMarkedFileIOSpeed = 1508;
    public static final int KeyIsMaxFileMemCacheNum = 5515;
    public static final int KeyIsMaxFileMemCacheSize = 5513;
    public static final int KeyIsMaxIpCountEachDomain = 900;
    public static final int KeyIsMaxIpNum = 8301;
    public static final int KeyIsMaxKeepAliveHostNum = 7364;
    public static final int KeyIsMaxLoaderLogNum = 7406;
    public static final int KeyIsMaxSocketReuseNum = 7361;
    public static final int KeyIsN80OptsStr = 7503;
    public static final int KeyIsNeedNetworkSwitch = 901;
    public static final int KeyIsNetCacheDir = 5510;
    public static final int KeyIsNetSchedulerBlockAllNetErr = 7343;
    public static final int KeyIsNetSchedulerBlockDurationMs = 7345;
    public static final int KeyIsNetSchedulerBlockErrCount = 7344;
    public static final int KeyIsNetSchedulerConfigStr = 7403;
    public static final int KeyIsNetUnreachableStopRetry = 7418;
    public static final int KeyIsNetUnreachableTimeout = 7422;
    public static final int KeyIsNetworkAccessType = 7219;
    public static final int KeyIsNetworkChanged = 7217;
    public static final int KeyIsNewBufferPoolGrowBlockCount = 7337;
    public static final int KeyIsNewBufferpoolBlockSize = 7335;
    public static final int KeyIsNewBufferpoolResidentSize = 7336;
    public static final int KeyIsNewPreloadLog = 1002;
    public static final int KeyIsNewProtocolLog = 1001;
    public static final int KeyIsNewProxyLog = 1000;
    public static final int KeyIsNewSampleLog = 1004;
    public static final int KeyIsNewTaskLog = 1003;
    public static final int KeyIsNextDownloadThreshold = 2511;
    public static final int KeyIsNonBlockRangeMaxSizeKB = 7417;
    public static final int KeyIsNonBlockRangeMode = 7416;
    public static final int KeyIsOnLiveLoaderError = 9;
    public static final int KeyIsOwnLiveLoaderLog = 10;
    public static final int KeyIsOwnLiveLoaderLogSample = 11;
    public static final int KeyIsOwnVdpLog = 1;
    public static final int KeyIsP2PConfigStr = 8221;
    public static final int KeyIsP2PCostTag = 7423;
    public static final int KeyIsP2PFirstRangeLoaderType = 7372;
    public static final int KeyIsP2PPredownPeerCount = 7359;
    public static final int KeyIsPlayInfoBufferingEnd = 7214;
    public static final int KeyIsPlayInfoBufferingStart = 7213;
    public static final int KeyIsPlayInfoCurrentBuffer = 7215;
    public static final int KeyIsPlayInfoLoadPercent = 7212;
    public static final int KeyIsPlayInfoPlayingPos = 7211;
    public static final int KeyIsPlayInfoRenderStart = 7210;
    public static final int KeyIsPlayTaskCacheEnd = 52;
    public static final int KeyIsPlayTaskEnd = 51;
    public static final int KeyIsPlayTaskState = 50;
    public static final int KeyIsPrecisePreloadConfig = 7434;
    public static final int KeyIsPreconnectNum = 2509;
    public static final int KeyIsPreloadEnd = 4;
    public static final int KeyIsPreloadFail = 8;
    public static final int KeyIsPreloadInfoRecordMaxCnt = 7439;
    public static final int KeyIsPreloadStragetyWhenPlay = 1030;
    public static final int KeyIsPreloadTraceIdRecordMaxCntI32 = 7424;
    public static final int KeyIsPreloadWaitListType = 1040;
    public static final int KeyIsProtectCacheDirAvoidClear = 7444;
    public static final int KeyIsQuickGetCacheSize = 106;
    public static final int KeyIsQuickQueryCacheSize = 113;
    public static final int KeyIsReportHttpRespHeaders = 2000;
    public static final int KeyIsRingBufferSizeKB = 7221;
    public static final int KeyIsSessionCacheInterval = 7442;
    public static final int KeyIsSessionTimeout = 7333;
    public static final int KeyIsSetAlogFuncPtr = 1100;
    public static final int KeyIsSetBackupLoaderType = 7227;
    public static final int KeyIsSetCacheDir = 0;
    public static final int KeyIsSetCurDiskSizeMB = 11003;
    public static final int KeyIsSetCurMemorySizeMB = 11005;
    public static final int KeyIsSetDMDomain = 9402;
    public static final int KeyIsSetDemuxerHandle = 7432;
    public static final int KeyIsSetDevDiskSizeMB = 11002;
    public static final int KeyIsSetDevMemorySizeMB = 11004;
    public static final int KeyIsSetDomains = 9404;
    public static final int KeyIsSetDownLogMaxSize = 7429;
    public static final int KeyIsSetEnableMaxCacheAgeForAllDir = 111;
    public static final int KeyIsSetEnableOwnVdpPreloadNotify = 7395;
    public static final int KeyIsSetEnableReportTaskLog = 7371;
    public static final int KeyIsSetFileExtendSize = 7392;
    public static final int KeyIsSetForesightDomain = 9403;
    public static final int KeyIsSetGlobalSpeedSampleInterval = 7370;
    public static final int KeyIsSetKeyDomain = 9405;
    public static final int KeyIsSetKeyToken = 9406;
    public static final int KeyIsSetLiveListener = 107;
    public static final int KeyIsSetLoaderFactoryAppInfo = 10;
    public static final int KeyIsSetLoaderFactoryCacheDir = 9;
    public static final int KeyIsSetLoaderFactoryMaxCacheSize = 7;
    public static final int KeyIsSetLoaderFactoryMaxMemorySize = 8;
    public static final int KeyIsSetLoaderType = 6;
    public static final int KeyIsSetMaxCacheAge = 104;
    public static final int KeyIsSetMaxCacheSize = 1;
    public static final int KeyIsSetMdlExtensionOpts = 7500;
    public static final int KeyIsSetMdlTTQuicHeOpts = 7504;
    public static final int KeyIsSetMinAllowSpeed = 7393;
    public static final int KeyIsSetNetSchedulerBlockHostErrIpCount = 7394;
    public static final int KeyIsSetOnlyUseCdn = 7216;
    public static final int KeyIsSetOpenTimeOut = 3;
    public static final int KeyIsSetPcdnAuto = 12;
    public static final int KeyIsSetPlayInfoSeekAction = 7338;
    public static final int KeyIsSetPreconnectState = 8223;
    public static final int KeyIsSetPreloadParallelNum = 102;
    public static final int KeyIsSetRWTimeOut = 2;
    public static final int KeyIsSetSettingsDomain = 9401;
    public static final int KeyIsSetSocketRecvBuffer = 7401;
    public static final int KeyIsSetSpeedSampleInterval = 7368;
    public static final int KeyIsSetTryCount = 5;
    public static final int KeyIsSetUseNewSingSpeedTest = 7400;
    public static final int KeyIsSetVdpExtDynamicInfo = 11006;
    public static final int KeyIsSetVdpExtGlobalInfo = 11001;
    public static final int KeyIsSkipCDNBeforeExpiredSec = 7421;
    public static final int KeyIsSocketIdleTimeout = 702;
    public static final int KeyIsSocketSendBufferKB = 7220;
    public static final int KeyIsSocketTrainingCenterConfigStr = 7398;
    public static final int KeyIsSpeedCoefficientValue = 1507;
    public static final int KeyIsSpeedEngineSetting = 8226;
    public static final int KeyIsSpeedInfo = 2;
    public static final int KeyIsSpeedTestSampledByTime = 700;
    public static final int KeyIsSpeedTestSampledByTimeV2 = 702;
    public static final int KeyIsStoIoWriteLimitKBTh1 = 10004;
    public static final int KeyIsStoIoWriteLimitKBTh2 = 10005;
    public static final int KeyIsStoMaxIdleTimeSec = 10006;
    public static final int KeyIsStoPlayDldWinSizeKBLS = 10002;
    public static final int KeyIsStoPlayDldWinSizeKBNM = 10001;
    public static final int KeyIsStoRingBufferSizeKB = 10003;
    public static final int KeyIsStoStrategyConfig = 10007;
    public static final int KeyIsStoUpdateCacheDir = 7437;
    public static final int KeyIsStorageLog = 1005;
    public static final int KeyIsTTNetLoaderCronetBufSizeKB = 7349;
    public static final int KeyIsTTQuicHeCacheDir = 6513;
    public static final int KeyIsTaskFail = 20;
    public static final int KeyIsTaskLog = 0;
    public static final int KeyIsTaskOpen = 24;
    public static final int KeyIsTemporaryOptStr = 7502;
    public static final int KeyIsThreadPoolIdleTTLSecond = 7414;
    public static final int KeyIsThreadPoolMinCount = 7415;
    public static final int KeyIsThreadStackSizeLevel = 7412;
    public static final int KeyIsUpdateCacheFileInternal = 7436;
    public static final int KeyIsUpdateNetworkScore = 7409;
    public static final int KeyIsUpdateNetworkStrength = 7410;
    public static final int KeyIsVdpABTestId = 7223;
    public static final int KeyIsVdpGroupId = 7224;
    public static final int KeyIsWriteFileNotifyIntervalMS = 110;
    public static final int LogInfoKeyIsPcdnTaskLog = 13;
    public static final long LongValueViaConfigNotReady = -998;
    public static final long LongValueViaUnknownKey = -1;
    public static final int S_FAIL = -1;
    public static final int S_OK = 0;
    private static final String TAG = "AVMDLDataLoader";
    private static boolean isSupportQueryEncode = true;
    private static Context mGlobalApplicationContext = null;
    private static volatile AVMDLDataLoader mInstance = null;
    public static Boolean mIsByteMediaNetInit = Boolean.FALSE;
    private static volatile boolean mIsLibraryLoaded = false;
    private static volatile boolean mIsMdlByteMediaNetPluginLoaded = false;
    private static volatile boolean mIsMdlTtnetPluginLoaded = false;
    private static String mLoadFailMsg = "";
    private boolean isSupportGetAuth;
    private AVMDLDataLoaderConfigure mConfigure;
    private long mEndTime;
    private LoaderListener mEventListener;
    private long mHandle;
    private AVMDLDataLoaderListener mLiveListener;
    private Thread mMsgThread;
    private final ReentrantReadWriteLock.ReadLock mReadLock;
    private final ReentrantReadWriteLock mReadWritedLock;
    private long mSartTime;
    private AVMDLStartCompleteListener mStartCompleteListener;
    private volatile int mState;
    private AVMDLTaskEventListener mTaskListener;
    private AVMDLDataLoaderListener mVodListener;
    private Map<String, AVMDLCopyOperation> mWaitingCopyItem;
    private final ReentrantReadWriteLock.WriteLock mWriteLock;
    private Handler mHandler = null;
    private Handler mLogHandler = null;
    private IAVMDLLibraryLoader mPluginLibraryLoader = null;

    private AVMDLDataLoader(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) throws Exception {
        this.mState = -1;
        this.mConfigure = null;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.mReadWritedLock = reentrantReadWriteLock;
        this.mMsgThread = null;
        this.isSupportGetAuth = true;
        this.mStartCompleteListener = null;
        this.mWaitingCopyItem = new HashMap();
        this.mTaskListener = null;
        initNativeHandle();
        this.mReadLock = reentrantReadWriteLock.readLock();
        this.mWriteLock = reentrantReadWriteLock.writeLock();
        if (this.mHandle != 0) {
            initLogThread(this);
            this.mConfigure = aVMDLDataLoaderConfigure;
            this.mState = 0;
            this.isSupportGetAuth = true;
            return;
        }
        throw new Exception("create native mdl fail");
    }

    private static native void _addDataSource(long j10, int i10, String str);

    private static native void _cancel(long j10, String str);

    private static native void _cancelAll(long j10);

    private static native void _cancelAllPreloadWaitReqs(long j10);

    private static native void _cleanCacheDir(long j10, long j11);

    private static native void _cleanSpecifiedCacheDir(long j10, String str, int i10);

    private static native void _clearAllCaches(long j10);

    private static native long _clearAndGetCachesByUsedTime(long j10, long j11, int i10);

    private static native void _clearCachesByUsedTime(long j10, long j11);

    private static native void _clearNetinfoCache(long j10);

    private static native void _close(long j10);

    private static native int _copyFile(long j10, String str, String str2);

    private static native long _copyFile64(long j10, String str, String str2);

    private static native int _copyFileWithCustomDir(long j10, String str, String str2, String str3);

    private static native long _copyFileWithCustomDir64(long j10, String str, String str2, String str3);

    private static native int _copyFileWithForceFlag(long j10, String str, String str2, int i10);

    private static native long _copyFileWithForceFlag64(long j10, String str, String str2, int i10);

    private void _copyInternal(AVMDLCopyOperation aVMDLCopyOperation) {
        long copyFile;
        if (TextUtils.isEmpty(aVMDLCopyOperation.mCustomDir)) {
            copyFile = copyFile(aVMDLCopyOperation.mFileKey, aVMDLCopyOperation.mDestPath, aVMDLCopyOperation.mForceCopyUnfinished);
        } else {
            copyFile = copyFile(aVMDLCopyOperation.mFileKey, aVMDLCopyOperation.mCustomDir, aVMDLCopyOperation.mDestPath);
        }
        AVMDLFileInfo cacheInfo = getCacheInfo(aVMDLCopyOperation.mFileKey);
        if (cacheInfo == null) {
            AVMDLCopyOperationListener aVMDLCopyOperationListener = aVMDLCopyOperation.mListener;
            if (aVMDLCopyOperationListener != null) {
                aVMDLCopyOperationListener.onCopyComplete(false, -5, "copy failed. file info null " + copyFile);
                return;
            }
            return;
        }
        AVMDLCopyOperationListener aVMDLCopyOperationListener2 = aVMDLCopyOperation.mListener;
        if (aVMDLCopyOperationListener2 != null) {
            aVMDLCopyOperationListener2.onFileInfo(cacheInfo);
        }
        AVMDLLog.d(TAG, "copy file result: " + copyFile);
        AVMDLCopyOperationListener aVMDLCopyOperationListener3 = aVMDLCopyOperation.mListener;
        if (aVMDLCopyOperationListener3 != null) {
            if (copyFile != cacheInfo.mCacheSize && copyFile != cacheInfo.mContentLenght && copyFile != 0) {
                aVMDLCopyOperationListener3.onCopyComplete(false, -5, "copy failed.copy error code " + copyFile);
                return;
            }
            aVMDLCopyOperationListener3.onCopyComplete(true, 0, "copy success.");
        }
    }

    private final native long _create();

    private static native void _downloadResource(long j10, String str);

    private static native String _encodeUrl(String str, int i10);

    private static native void _forceClearAllCaches(long j10);

    private static native void _forceRemoveCacheFile(long j10, String str);

    private static native String _getAuth(long j10, String str);

    private static native String _getCDNLog(long j10, String str);

    private static native long _getContinueCacheSize(long j10, String str, int i10, long j11);

    private static native int _getIsFileCacheComplete(long j10, String str);

    private static native long _getLongValue(long j10, int i10);

    private static native long _getLongValueByStr(long j10, String str, int i10);

    private static native long _getLongValueByStrStr(long j10, String str, String str2, int i10);

    private static native String _getStringValue(long j10, int i10);

    private static native String _getStringValueByStr(long j10, String str, int i10);

    private static native String _getStringValueByStrStr(long j10, String str, String str2, int i10);

    private static native int _haveRunningPlayTask(long j10, String str);

    private static native void _makeFileAutoDeleteFlag(long j10, String str, int i10);

    private static native String _makeTsFileKey(String str, String str2);

    private static native int _onCellularAlwaysUp(long j10, long j11, int i10);

    private static native int _onInitMultiNetworkEnv(long j10, int i10);

    @Deprecated
    private static native void _p2pPredown(long j10, String str);

    private static native void _preConnectByHost(long j10, String str, int i10);

    private static native void _preloadGroupResource(long j10, String str, String str2, int i10, int i11);

    private static native void _preloadResource(long j10, String str, int i10);

    private static native void _preloadResourceWithOffset(long j10, String str, int i10, int i11);

    private static native void _removeCacheFile(long j10, String str);

    private static native void _resetPreloadTraceId(long j10, String str);

    private static native void _resumeFileWriteIO(long j10);

    private static native void _setInt64Value(long j10, int i10, long j11);

    private static native void _setInt64ValueByStrKey(long j10, int i10, String str, long j11);

    private static native void _setIntValue(long j10, int i10, int i11);

    private static native void _setStringValue(long j10, int i10, String str);

    private static native int _start(long j10);

    private static native void _stop(long j10);

    private static native void _suspendedDownload(long j10, String str);

    private static native int _tryDownloadPlayReqByKey(long j10, String str);

    private static native void _updateDNSInfo(long j10, String str, String str2, long j11, String str3, int i10);

    private static native int _writeDataToFile(long j10, String str, long j11, long j12, int i10, byte[] bArr);

    private void copyInternal(AVMDLCopyOperation aVMDLCopyOperation) {
        AVMDLCopyOperationListener aVMDLCopyOperationListener;
        if (aVMDLCopyOperation != null && !TextUtils.isEmpty(aVMDLCopyOperation.mFileKey) && !TextUtils.isEmpty(aVMDLCopyOperation.mDestPath)) {
            this.mWriteLock.lock();
            try {
                try {
                    long j10 = this.mHandle;
                    if (j10 != 0) {
                        int _getIsFileCacheComplete = _getIsFileCacheComplete(j10, aVMDLCopyOperation.mFileKey);
                        if (_getIsFileCacheComplete == 1) {
                            _copyInternal(aVMDLCopyOperation);
                        } else if (_getIsFileCacheComplete == -1) {
                            AVMDLCopyOperationListener aVMDLCopyOperationListener2 = aVMDLCopyOperation.mListener;
                            if (aVMDLCopyOperationListener2 != null) {
                                aVMDLCopyOperationListener2.onCopyComplete(false, -6, "cache file read writer failed.");
                            }
                        } else if (aVMDLCopyOperation.mForceCopyUnfinished) {
                            _copyInternal(aVMDLCopyOperation);
                        } else if (aVMDLCopyOperation.mWaitIfCaching) {
                            int _haveRunningPlayTask = _haveRunningPlayTask(this.mHandle, aVMDLCopyOperation.mFileKey);
                            AVMDLLog.d(TAG, "try download play " + aVMDLCopyOperation.mFileKey + " result: " + _haveRunningPlayTask);
                            if (_haveRunningPlayTask > 0) {
                                this.mWaitingCopyItem.put(aVMDLCopyOperation.mFileKey, aVMDLCopyOperation);
                            } else {
                                AVMDLCopyOperationListener aVMDLCopyOperationListener3 = aVMDLCopyOperation.mListener;
                                if (aVMDLCopyOperationListener3 != null) {
                                    aVMDLCopyOperationListener3.onCopyComplete(false, -4, "file key not playing.");
                                }
                            }
                        } else {
                            AVMDLCopyOperationListener aVMDLCopyOperationListener4 = aVMDLCopyOperation.mListener;
                            if (aVMDLCopyOperationListener4 != null) {
                                aVMDLCopyOperationListener4.onCopyComplete(false, -3, "cache not finish.");
                            }
                        }
                    }
                } catch (UnsatisfiedLinkError e10) {
                    e10.printStackTrace();
                    AVMDLCopyOperationListener aVMDLCopyOperationListener5 = aVMDLCopyOperation.mListener;
                    if (aVMDLCopyOperationListener5 != null) {
                        aVMDLCopyOperationListener5.onCopyComplete(false, -2, "medialoader not running");
                    }
                }
                this.mWriteLock.unlock();
                return;
            } catch (Throwable th2) {
                this.mWriteLock.unlock();
                throw th2;
            }
        }
        AVMDLLog.d(TAG, "copy file invalid filekey or destpath is null");
        if (aVMDLCopyOperation != null && (aVMDLCopyOperationListener = aVMDLCopyOperation.mListener) != null) {
            aVMDLCopyOperationListener.onCopyComplete(false, -1, "invalid parameter");
        }
    }

    private String createFilePathBaseDir(String str, String str2) {
        String str3;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (str.charAt(str.length() - 1) == '/') {
                str3 = str + str2;
            } else {
                str3 = str + DomExceptionUtils.SEPARATOR + str2;
            }
            if (!TextUtils.isEmpty(str3)) {
                File file = new File(str3);
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            return str3;
        }
        return null;
    }

    private String encodeUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static Context getApplicationContext() {
        Context context;
        synchronized (AVMDLDataLoader.class) {
            context = mGlobalApplicationContext;
        }
        return context;
    }

    public static AVMDLDataLoader getInstance() {
        if (mInstance == null) {
            synchronized (AVMDLDataLoader.class) {
                if (mInstance == null) {
                    try {
                        mInstance = new AVMDLDataLoader(null);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        Log.e("ttmdljava", "create native exception" + e10);
                        mInstance = null;
                    }
                }
            }
        }
        return mInstance;
    }

    public static synchronized String getLoadFailMsg() {
        String str;
        synchronized (AVMDLDataLoader.class) {
            str = mLoadFailMsg;
        }
        return str;
    }

    private String getProxyUrl() {
        String str;
        AVMDLLog.d("AVMDLProxy", "----try get proxyaddr");
        String property = System.getProperty("http.proxyHost");
        AVMDLLog.d("AVMDLProxy", "proxy host:" + property);
        if (!TextUtils.isEmpty(property)) {
            String property2 = System.getProperty("http.proxyPort");
            AVMDLLog.d("AVMDLProxy", "proxy port:" + property2);
            if (!TextUtils.isEmpty(property2)) {
                str = "http://" + property + ":" + property2 + DomExceptionUtils.SEPARATOR;
                AVMDLLog.d("AVMDLProxy", "****end get proxyaddr, result:" + str);
                return str;
            }
        }
        str = null;
        AVMDLLog.d("AVMDLProxy", "****end get proxyaddr, result:" + str);
        return str;
    }

    private void handleCopyMsg(AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo) {
        if (aVMDLDataLoaderNotifyInfo != null && !TextUtils.isEmpty(aVMDLDataLoaderNotifyInfo.logInfo)) {
            int i10 = aVMDLDataLoaderNotifyInfo.what;
            if (i10 == 3 || i10 == 51) {
                String[] split = aVMDLDataLoaderNotifyInfo.logInfo.split(",");
                if (split.length < 4) {
                    return;
                }
                long longValue = Long.valueOf(split[0]).longValue();
                long longValue2 = Long.valueOf(split[1]).longValue();
                if (longValue2 <= 0 && aVMDLDataLoaderNotifyInfo.what != 4) {
                    return;
                }
                String str = split[2];
                if (this.mWaitingCopyItem.containsKey(str)) {
                    AVMDLCopyOperation aVMDLCopyOperation = this.mWaitingCopyItem.get(str);
                    if (longValue == longValue2) {
                        if (aVMDLCopyOperation != null && !TextUtils.isEmpty(aVMDLCopyOperation.mFileKey)) {
                            long copyFile = copyFile(aVMDLCopyOperation.mFileKey, aVMDLCopyOperation.mDestPath, aVMDLCopyOperation.mForceCopyUnfinished);
                            AVMDLCopyOperationListener aVMDLCopyOperationListener = aVMDLCopyOperation.mListener;
                            if (aVMDLCopyOperationListener != null) {
                                if (copyFile == 0) {
                                    aVMDLCopyOperationListener.onCopyComplete(true, 0, "copy success.");
                                } else {
                                    aVMDLCopyOperationListener.onCopyComplete(false, -5, "copy failed.");
                                }
                            }
                        }
                    } else if (aVMDLDataLoaderNotifyInfo.what == 51) {
                        if (_haveRunningPlayTask(this.mHandle, aVMDLCopyOperation.mFileKey) > 0) {
                            AVMDLLog.d(TAG, String.format(Locale.US, "have running playtask skip, %s", aVMDLCopyOperation.mFileKey));
                            return;
                        }
                        AVMDLCopyOperationListener aVMDLCopyOperationListener2 = aVMDLCopyOperation.mListener;
                        if (aVMDLCopyOperationListener2 != null) {
                            aVMDLCopyOperationListener2.onCopyComplete(false, -3, "copy failed.");
                        }
                    }
                }
            }
        }
    }

    private void hijack() {
        AVMDLLog.d("ttmdljava", "----hijack start");
        AVMDLDNSParser.processHijack();
        AVMDLLog.d("ttmdljava", "hijack clear net cache: ");
        clearNetinfoCache();
        AVMDLLog.d("ttmdljava", "****hijack end");
    }

    public static synchronized int init(boolean z10) {
        synchronized (AVMDLDataLoader.class) {
            try {
                if (mIsLibraryLoaded) {
                    return 0;
                }
                mIsLibraryLoaded = z10;
                if (!mIsLibraryLoaded) {
                    if (!BoringsslLoaderWrapper.loadBoringssl()) {
                        Log.e("ttmn", "load boringssl fail!");
                    }
                    if (!VcnlibloadWrapper.tryLoadVcnlib()) {
                        Log.e("ttmn", "Can't load vcn ");
                    }
                    loadAVMDLBaseLibrary();
                    try {
                        System.loadLibrary("avmdl");
                        mIsLibraryLoaded = true;
                    } catch (UnsatisfiedLinkError e10) {
                        mLoadFailMsg = "Can't load avmdl library: " + e10;
                        Log.e("ttmn", "Can't load avmdl library: " + e10);
                    } catch (Throwable th2) {
                        mLoadFailMsg = "other exception when loading avmdl library: " + th2;
                        Log.e("ttmn", "other exception when loading avmdl library: " + th2);
                    }
                    if (!VcnlibloadWrapper.tryLoadVcnverifylib()) {
                        Log.e("ttmn", "Can't load vcnverify lib ");
                    }
                    tryLoadTTNetLoaderPlugin();
                    tryLoadByteMediaNetLoaderPlugin();
                }
                return !mIsLibraryLoaded ? -1 : 0;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void initApplicationContext(Context context) {
        synchronized (AVMDLDataLoader.class) {
            try {
                if (mGlobalApplicationContext == null) {
                    mGlobalApplicationContext = context;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static void initByteMediaNetEnv(Context context, ClassLoader classLoader) {
        synchronized (AVMDLDataLoader.class) {
            if (mIsByteMediaNetInit.booleanValue()) {
                Log.e("bytemedianetinit", "has init, not need again");
                return;
            }
            Method method = Class.forName("com.ss.avframework.transport.ContextUtils").getMethod("initApplicationContext", Context.class);
            method.setAccessible(true);
            method.invoke(null, context);
            Log.e("bytemedianetinit", "init application context");
            Method method2 = Class.forName("com.ss.avframework.transport.JNIUtils").getMethod("setClassLoader", ClassLoader.class);
            method2.setAccessible(true);
            method2.invoke(null, classLoader);
            Log.e("bytemedianetinit", "init classloader");
            mIsByteMediaNetInit = Boolean.TRUE;
            Log.e("bytemedianetinit", "init bytemedianet suc");
        }
    }

    public static synchronized int initDependency() {
        synchronized (AVMDLDataLoader.class) {
            try {
                if (!BoringsslLoaderWrapper.loadBoringssl()) {
                    Log.e("ttmn", "load boringssl fail!");
                }
                if (!VcnlibloadWrapper.tryLoadVcnlib()) {
                    Log.e("ttmn", "Can't load vcn ");
                }
                if (!VcnlibloadWrapper.tryLoadVcnverifylib()) {
                    Log.e("ttmn", "Can't load vcnverify lib ");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return 0;
    }

    private void initLogThread(final Handler.Callback callback) {
        if (this.mMsgThread == null) {
            Thread thread = new Thread() { // from class: com.ss.mediakit.medialoader.AVMDLDataLoader.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    if (Looper.myLooper() == null) {
                        Looper.prepare();
                    }
                    AVMDLDataLoader.this.mLogHandler = new Handler(callback);
                    Looper.loop();
                }
            };
            this.mMsgThread = thread;
            thread.setName("mdl_log_handler");
            this.mMsgThread.start();
        }
    }

    private void initNativeHandle() {
        if (this.mHandle != 0) {
            return;
        }
        try {
            this.mHandle = _create();
        } catch (Throwable th2) {
            this.mHandle = 0L;
            th2.printStackTrace();
        }
        if (this.mHandle != 0 && this.mHandler == null) {
            if (Looper.myLooper() != null) {
                this.mHandler = new Handler(this);
            } else {
                this.mHandler = new Handler(Looper.getMainLooper(), this);
            }
        }
    }

    public static synchronized int initWithLibraryManager() {
        synchronized (AVMDLDataLoader.class) {
            try {
                int i10 = 0;
                if (mIsLibraryLoaded) {
                    return 0;
                }
                if (AVMDLLibraryManager.loadLibraries()) {
                    mIsLibraryLoaded = true;
                }
                if (!mIsLibraryLoaded) {
                    i10 = -1;
                }
                return i10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean isNotifyInfo(int i10) {
        if (i10 != 4 && i10 != 20 && i10 != 50 && i10 != 8 && i10 != 3 && i10 != 21 && i10 != 51 && i10 != 7 && i10 != 22 && i10 != 52 && i10 != 901 && i10 != 24 && i10 != 902) {
            return false;
        }
        return true;
    }

    public static boolean isVCBasekitStaticLinked() {
        return false;
    }

    public static synchronized void loadAVMDLBaseLibrary() {
        synchronized (AVMDLDataLoader.class) {
            try {
                initDependency();
                try {
                    System.loadLibrary("avmdlbase");
                } catch (UnsatisfiedLinkError e10) {
                    Log.e("ttmn", "Can't load avmdlbase library: " + e10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static String makeTsFileKey(String str, String str2) {
        try {
            return _makeTsFileKey(str, str2);
        } catch (Exception e10) {
            AVMDLLog.e(TAG, "makeTsFileKey failed, other reason:  " + e10.getMessage());
            return null;
        } catch (UnsatisfiedLinkError e11) {
            AVMDLLog.e(TAG, "makeTsFileKey failed, native not support: " + e11.getMessage());
            return null;
        }
    }

    private boolean postMessage(AVMDLDataLoaderListener aVMDLDataLoaderListener, Message message) {
        Object obj;
        AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo;
        if (message.what == 701) {
            AVMDLLog.d("ttmdljava", "receive hijack err: ");
            hijack();
            return true;
        }
        if (aVMDLDataLoaderListener != null && (obj = message.obj) != null && (aVMDLDataLoaderNotifyInfo = (AVMDLDataLoaderNotifyInfo) obj) != null) {
            aVMDLDataLoaderListener.onNotify(aVMDLDataLoaderNotifyInfo);
        }
        return true;
    }

    public static String queryComponentEncode(String str) {
        if (isSupportQueryEncode && !TextUtils.isEmpty(str)) {
            AVMDLLog.d(TAG, "before encode, src: " + str);
            try {
                return _encodeUrl(str, 4);
            } catch (Exception e10) {
                AVMDLLog.d(TAG, "query ComponentEncode:err " + e10.getMessage());
                AVMDLLog.d(TAG, "query ComponentEncode:stacktrace " + e10.getStackTrace());
            } catch (UnsatisfiedLinkError e11) {
                isSupportQueryEncode = false;
                AVMDLLog.d(TAG, "query ComponentEncode:err " + e11.getMessage());
                AVMDLLog.d(TAG, "query ComponentEncode:stacktrace " + e11.getStackTrace());
            }
        }
        return null;
    }

    private void setConfigureInternal(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        if (this.mHandle == 0 || aVMDLDataLoaderConfigure == null) {
            return;
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mCacheDir)) {
            String createFilePathBaseDir = createFilePathBaseDir(aVMDLDataLoaderConfigure.mCacheDir, "loaderFactory");
            if (!TextUtils.isEmpty(createFilePathBaseDir)) {
                _setStringValue(this.mHandle, 9, createFilePathBaseDir);
            }
            if (TextUtils.isEmpty(this.mConfigure.mNetCacheDir)) {
                aVMDLDataLoaderConfigure.mNetCacheDir = createFilePathBaseDir(aVMDLDataLoaderConfigure.mCacheDir, "netCache");
            }
            _setStringValue(this.mHandle, 0, aVMDLDataLoaderConfigure.mCacheDir);
        }
        if (!TextUtils.isEmpty(this.mConfigure.mNetCacheDir)) {
            _setStringValue(this.mHandle, KeyIsNetCacheDir, aVMDLDataLoaderConfigure.mNetCacheDir);
            String createFilePathBaseDir2 = createFilePathBaseDir(aVMDLDataLoaderConfigure.mNetCacheDir, "ttquiche");
            aVMDLDataLoaderConfigure.mTTquicheCacheDir = createFilePathBaseDir2;
            _setStringValue(this.mHandle, KeyIsTTQuicHeCacheDir, createFilePathBaseDir2);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mAppInfo)) {
            _setStringValue(this.mHandle, 10, aVMDLDataLoaderConfigure.mAppInfo);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mDownloadDir)) {
            _setStringValue(this.mHandle, KeyIsDownloadDir, aVMDLDataLoaderConfigure.mDownloadDir);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mMdlExtensionOptsStr)) {
            _setStringValue(this.mHandle, KeyIsSetMdlExtensionOpts, aVMDLDataLoaderConfigure.mMdlExtensionOptsStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mMdlTTQuicHeOptsStr)) {
            _setStringValue(this.mHandle, 7504, aVMDLDataLoaderConfigure.mMdlTTQuicHeOptsStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mTemporaryOptStr)) {
            _setStringValue(this.mHandle, KeyIsTemporaryOptStr, aVMDLDataLoaderConfigure.mTemporaryOptStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mN80OptsStr)) {
            _setStringValue(this.mHandle, KeyIsN80OptsStr, aVMDLDataLoaderConfigure.mN80OptsStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mSpeedEngineSetting)) {
            _setStringValue(this.mHandle, KeyIsSpeedEngineSetting, aVMDLDataLoaderConfigure.mSpeedEngineSetting);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mPrecisePreloadConfigStr)) {
            _setStringValue(this.mHandle, KeyIsPrecisePreloadConfig, aVMDLDataLoaderConfigure.mPrecisePreloadConfigStr);
        }
        _setIntValue(this.mHandle, 8001, aVMDLDataLoaderConfigure.mLiveP2pAllow);
        _setIntValue(this.mHandle, 8000, aVMDLDataLoaderConfigure.mLiveLoaderType);
        _setIntValue(this.mHandle, KeyIsLiveWatchDurationThreshold, aVMDLDataLoaderConfigure.mLiveWatchDurationThreshold);
        _setIntValue(this.mHandle, KeyIsLiveCacheThresholdHttpToP2p, aVMDLDataLoaderConfigure.mLiveCacheThresholdHttpToP2p);
        _setIntValue(this.mHandle, KeyIsLiveCacheThresholdP2pToHttp, aVMDLDataLoaderConfigure.mLiveCacheThresholdP2pToHttp);
        _setIntValue(this.mHandle, KeyIsLiveMaxTrySwitchP2pTimes, aVMDLDataLoaderConfigure.mLiveMaxTrySwitchP2pTimes);
        _setIntValue(this.mHandle, KeyIsLiveWaitP2pReadyThreshold, aVMDLDataLoaderConfigure.mLiveWaitP2pReadyThreshold);
        _setIntValue(this.mHandle, KeyIsLiveMobileUploadAllow, aVMDLDataLoaderConfigure.mLiveMobileUploadAllow);
        _setIntValue(this.mHandle, KeyIsLiveMobileDownloadAllow, aVMDLDataLoaderConfigure.mLiveMobileDownloadAllow);
        _setIntValue(this.mHandle, KeyIsLiveRecvDataTimeout, aVMDLDataLoaderConfigure.mLiveRecvDataTimeout);
        _setStringValue(this.mHandle, KeyIsLiveContainerString, aVMDLDataLoaderConfigure.mLiveContainerString);
        _setIntValue(this.mHandle, 1, aVMDLDataLoaderConfigure.mMaxCacheSize);
        _setIntValue(this.mHandle, 2, aVMDLDataLoaderConfigure.mRWTimeOut);
        _setIntValue(this.mHandle, 3, aVMDLDataLoaderConfigure.mOpenTimeOut);
        _setIntValue(this.mHandle, 5, aVMDLDataLoaderConfigure.mTryCount);
        _setIntValue(this.mHandle, 7, aVMDLDataLoaderConfigure.mMaxCacheSize);
        _setIntValue(this.mHandle, 8, aVMDLDataLoaderConfigure.mLoaderFactoryMaxMemorySize);
        int i10 = aVMDLDataLoaderConfigure.mEnablePcdnAuto;
        if (i10 == 1) {
            _setIntValue(this.mHandle, 12, i10);
        } else {
            _setIntValue(this.mHandle, 6, aVMDLDataLoaderConfigure.mLoaderType);
        }
        _setIntValue(this.mHandle, 102, aVMDLDataLoaderConfigure.mPreloadParallelNum);
        _setIntValue(this.mHandle, 800, aVMDLDataLoaderConfigure.mIsCloseFileCache);
        int i11 = aVMDLDataLoaderConfigure.mMaxCacheAge;
        if (i11 > 0) {
            _setIntValue(this.mHandle, 104, i11);
        }
        _setIntValue(this.mHandle, 111, aVMDLDataLoaderConfigure.mEnableMaxCacheAgeForAllDir);
        _setIntValue(this.mHandle, KeyIsPreloadStragetyWhenPlay, aVMDLDataLoaderConfigure.mPreloadStrategy);
        _setIntValue(this.mHandle, 1040, aVMDLDataLoaderConfigure.mPreloadWaitListType);
        _setIntValue(this.mHandle, 105, aVMDLDataLoaderConfigure.mEnablePreloadReUse);
        _setIntValue(this.mHandle, 700, aVMDLDataLoaderConfigure.mEnableExternDNS);
        _setIntValue(this.mHandle, 701, aVMDLDataLoaderConfigure.mEnableSocketReuse);
        _setIntValue(this.mHandle, 703, aVMDLDataLoaderConfigure.mControlCDNRangeType);
        _setIntValue(this.mHandle, 702, aVMDLDataLoaderConfigure.mSocketIdleTimeOut);
        _setIntValue(this.mHandle, 800, aVMDLDataLoaderConfigure.mIsCloseFileCache);
        _setIntValue(this.mHandle, 1502, aVMDLDataLoaderConfigure.mTestSpeedTypeVersion);
        _setIntValue(this.mHandle, 1504, aVMDLDataLoaderConfigure.mCheckSumLevel);
        _setIntValue(this.mHandle, 1505, aVMDLDataLoaderConfigure.mEncryptVersion);
        _setIntValue(this.mHandle, 1507, aVMDLDataLoaderConfigure.mSpeedCoefficientValue);
        _setIntValue(this.mHandle, 900, aVMDLDataLoaderConfigure.mMaxIpCountEachDomain);
        _setIntValue(this.mHandle, 901, aVMDLDataLoaderConfigure.mEnableIpBucket);
        _setIntValue(this.mHandle, 902, aVMDLDataLoaderConfigure.mErrorStateTrustTime);
        _setIntValue(this.mHandle, KeyIsEnablePreconnect, aVMDLDataLoaderConfigure.mEnablePreconnect);
        _setIntValue(this.mHandle, KeyIsPreconnectNum, aVMDLDataLoaderConfigure.mPreconnectNum);
        _setIntValue(this.mHandle, KeyIsEnableLoaderPreempt, aVMDLDataLoaderConfigure.mEnableLoaderPreempt);
        _setIntValue(this.mHandle, KeyIsNextDownloadThreshold, aVMDLDataLoaderConfigure.mNextDownloadThreshold);
        _setIntValue(this.mHandle, KeyIsSetOnlyUseCdn, aVMDLDataLoaderConfigure.mOnlyUseCdn);
        _setIntValue(this.mHandle, KeyIsAccessCheckLevel, aVMDLDataLoaderConfigure.mAccessCheckLevel);
        _setIntValue(this.mHandle, KeyIsEnableSessionReuse, aVMDLDataLoaderConfigure.mEnableSessionReuse);
        _setIntValue(this.mHandle, KeyIsIsMaxTlsVersion, aVMDLDataLoaderConfigure.mMaxTlsVersion);
        _setIntValue(this.mHandle, KeyIsIsCheckPreloadLevel, aVMDLDataLoaderConfigure.mCheckPreloadLevel);
        _setIntValue(this.mHandle, KeyIsLoaderFactoryXYLibValue, aVMDLDataLoaderConfigure.mXYLibValue);
        _setIntValue(this.mHandle, KeyIsEnableP2PPreDown, aVMDLDataLoaderConfigure.mEnableP2PPreDown);
        _setIntValue(this.mHandle, KeyIsEnablePlayLog, aVMDLDataLoaderConfigure.mEnablePlayLog);
        _setIntValue(this.mHandle, KeyIsEnableNetScheduler, aVMDLDataLoaderConfigure.mEnableNetScheduler);
        _setIntValue(this.mHandle, KeyIsEnableCacheReqRange, aVMDLDataLoaderConfigure.mEnableCacheReqRange);
        _setIntValue(this.mHandle, KeyIsNetSchedulerBlockAllNetErr, aVMDLDataLoaderConfigure.mNetSchedulerBlockAllNetErr);
        _setIntValue(this.mHandle, KeyIsNetSchedulerBlockErrCount, aVMDLDataLoaderConfigure.mNetSchedulerBlockErrCount);
        _setIntValue(this.mHandle, KeyIsNetSchedulerBlockDurationMs, aVMDLDataLoaderConfigure.mNetSChedulerBlockDurationMs);
        _setIntValue(this.mHandle, KeyIsFirstRangeLeftThreshold, aVMDLDataLoaderConfigure.mFirstRangeLeftThreshold);
        _setIntValue(this.mHandle, KeyIsSetNetSchedulerBlockHostErrIpCount, aVMDLDataLoaderConfigure.mNetSchedulerBlockHostIpErrCount);
        _setIntValue(this.mHandle, KeyIsMaxFileMemCacheSize, aVMDLDataLoaderConfigure.mMaxFileMemCacheSize);
        _setIntValue(this.mHandle, KeyIsMaxFileMemCacheNum, aVMDLDataLoaderConfigure.mMaxFileMemCacheNum);
        _setIntValue(this.mHandle, 110, aVMDLDataLoaderConfigure.mWriteFileNotifyIntervalMS);
        _setIntValue(this.mHandle, KeyIsP2PPredownPeerCount, aVMDLDataLoaderConfigure.mP2PPreDownPeerCount);
        _setIntValue(this.mHandle, KeyIsP2PFirstRangeLoaderType, aVMDLDataLoaderConfigure.mP2PFirstRangeLoaderType);
        int i12 = aVMDLDataLoaderConfigure.mSocketSendBufferKB;
        if (i12 > 0) {
            _setIntValue(this.mHandle, KeyIsSocketSendBufferKB, i12);
        }
        int i13 = aVMDLDataLoaderConfigure.mRingBufferSizeKB;
        if (i13 > 0) {
            _setIntValue(this.mHandle, KeyIsRingBufferSizeKB, i13);
        }
        _setIntValue(this.mHandle, KeyIsEnableFileCacheV2, aVMDLDataLoaderConfigure.mEnableFileCacheV2);
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mVdpABTestId)) {
            _setStringValue(this.mHandle, KeyIsVdpABTestId, aVMDLDataLoaderConfigure.mVdpABTestId);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mVdpGroupId)) {
            _setStringValue(this.mHandle, KeyIsVdpGroupId, aVMDLDataLoaderConfigure.mVdpGroupId);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mNetSchedulerConfigStr)) {
            _setStringValue(this.mHandle, KeyIsNetSchedulerConfigStr, aVMDLDataLoaderConfigure.mNetSchedulerConfigStr);
        }
        _setIntValue(this.mHandle, KeyIsAlogEnable, aVMDLDataLoaderConfigure.mAlogEnable);
        _setIntValue(this.mHandle, KeyIsEnableSyncDnsForPcdn, aVMDLDataLoaderConfigure.mEnableSyncDnsForPcdn);
        _setIntValue(this.mHandle, KeyIsEnableFileRingBuffer, aVMDLDataLoaderConfigure.mEnableFileRingBuffer);
        _setIntValue(this.mHandle, KeyIsEnableLazyBufferpool, aVMDLDataLoaderConfigure.mEnableLazyBufferpool);
        _setIntValue(this.mHandle, KeyIsEnableNewBufferpool, aVMDLDataLoaderConfigure.mEnableNewBufferpool);
        _setIntValue(this.mHandle, KeyIsNewBufferpoolBlockSize, aVMDLDataLoaderConfigure.mNewBufferPoolBlockSize);
        _setIntValue(this.mHandle, KeyIsNewBufferpoolResidentSize, aVMDLDataLoaderConfigure.mNewBufferPoolResidentSize);
        _setIntValue(this.mHandle, KeyIsNewBufferPoolGrowBlockCount, aVMDLDataLoaderConfigure.mNewBufferPoolGrowBlockCount);
        _setIntValue(this.mHandle, KeyIsEnableUseFileExtendLoaderBuffer, aVMDLDataLoaderConfigure.mEnableUseFileExtendLoaderBuffer);
        _setIntValue(this.mHandle, KeyIsMAXIPV6Num, aVMDLDataLoaderConfigure.mMaxIPV6Num);
        _setIntValue(this.mHandle, KeyIsMAXIPV4Num, aVMDLDataLoaderConfigure.mMaxIPV4Num);
        _setIntValue(this.mHandle, 1510, aVMDLDataLoaderConfigure.mForbidByPassCookie);
        _setIntValue(this.mHandle, KeyIsSessionTimeout, aVMDLDataLoaderConfigure.mSessionTimeout);
        _setIntValue(this.mHandle, KeyIsEnablePlayInfoCache, aVMDLDataLoaderConfigure.mEnablePlayInfoCache);
        _setIntValue(this.mHandle, KeyIsIsEnableDownloaderLog, aVMDLDataLoaderConfigure.mEnableDownloaderLog);
        _setIntValue(this.mHandle, KeyIsIsEnableTTNetLoader, aVMDLDataLoaderConfigure.mEnableTTNetLoader);
        _setIntValue(this.mHandle, KeyIsTTNetLoaderCronetBufSizeKB, aVMDLDataLoaderConfigure.mTTNetLoaderCronetBufSizeKB);
        _setIntValue(this.mHandle, KeyIsAllowTryTheLastUrl, aVMDLDataLoaderConfigure.mIsAllowTryTheLastUrl);
        _setIntValue(this.mHandle, KeyIsSetSpeedSampleInterval, aVMDLDataLoaderConfigure.mSpeedSampleInterval);
        _setIntValue(this.mHandle, KeyIsSetUseNewSingSpeedTest, aVMDLDataLoaderConfigure.mUseNewSpeedTestForSingle);
        _setIntValue(this.mHandle, KeyIsIsEnableTTQuicHeLoader, aVMDLDataLoaderConfigure.mEnableTTQuicHeLoader);
        _setIntValue(this.mHandle, KeyIsEnableTTQuicHeLoaderCheckWithNetworkTypeI32, aVMDLDataLoaderConfigure.mEnableTTQuicHeLoaderCheckWithNetworkType);
        _setIntValue(this.mHandle, KeyIsEnableIOManager, aVMDLDataLoaderConfigure.mEnableIOManager);
        _setIntValue(this.mHandle, KeyIsEnableLoaderSeek, aVMDLDataLoaderConfigure.mEnableLoaderSeek);
        _setIntValue(this.mHandle, KeyIsSetGlobalSpeedSampleInterval, aVMDLDataLoaderConfigure.mGlobalSpeedSampleInterval);
        _setIntValue(this.mHandle, KeyIsEnableDynamicSocketTimeout, aVMDLDataLoaderConfigure.mEnableDynamicTimeout);
        _setIntValue(this.mHandle, KeyIsInitialSocketTimeout, aVMDLDataLoaderConfigure.mSocketInitialTimeout);
        _setIntValue(this.mHandle, KeyIsMaxSocketReuseNum, aVMDLDataLoaderConfigure.mMaxSocketReuseCount);
        _setIntValue(this.mHandle, KeyIsSetEnableReportTaskLog, aVMDLDataLoaderConfigure.mEnableReportTaskLog);
        _setInt64Value(this.mHandle, KeyIsLoaderFactoryP2PStragetyLevel, aVMDLDataLoaderConfigure.mP2PStragetyLevel);
        _setInt64Value(this.mHandle, KeyIsConnectPoolStragetyValue, aVMDLDataLoaderConfigure.mConnectPoolStragetyValue);
        _setIntValue(this.mHandle, KeyIsMaxKeepAliveHostNum, aVMDLDataLoaderConfigure.mMaxAliveHostNum);
        _setIntValue(this.mHandle, KeyIsSetFileExtendSize, aVMDLDataLoaderConfigure.mFileExtendSizeKB);
        _setIntValue(this.mHandle, KeyIsSetMinAllowSpeed, aVMDLDataLoaderConfigure.mMinAllowSpeed);
        _setIntValue(this.mHandle, KeyIsSetEnableOwnVdpPreloadNotify, aVMDLDataLoaderConfigure.mEnableOwnVDPPreloadNotify);
        _setIntValue(this.mHandle, KeyIsEnableEarlyData, aVMDLDataLoaderConfigure.mEnableEarlyData);
        _setIntValue(this.mHandle, KeyIsEnableSpeedPredict, aVMDLDataLoaderConfigure.mEnableSpeedPredict);
        _setIntValue(this.mHandle, KeyIsEnableSpeedEngine, aVMDLDataLoaderConfigure.mEnableSpeedEngine);
        _setIntValue(this.mHandle, KeyIsEnableSpeedReport, aVMDLDataLoaderConfigure.mEnableSpeedReport);
        _setIntValue(this.mHandle, KeyIsEnableUseOriginalUrl, aVMDLDataLoaderConfigure.mEnableUseOriginalUrl);
        _setIntValue(this.mHandle, KeyIsEnableLoaderLogExtractUrls, aVMDLDataLoaderConfigure.mEnableLoaderLogExtractUrls);
        _setIntValue(this.mHandle, KeyIsMaxLoaderLogNum, aVMDLDataLoaderConfigure.mMaxLoaderLogNum);
        _setIntValue(this.mHandle, KeyIsCheckContentTypeMethod, aVMDLDataLoaderConfigure.mCheckContentTypeMethod);
        _setIntValue(this.mHandle, KeyIsThreadStackSizeLevel, aVMDLDataLoaderConfigure.mThreadStackSizeLevel);
        _setIntValue(this.mHandle, KeyIsEnableThreadPoolCheckIdle, aVMDLDataLoaderConfigure.mEnableThreadPoolCheckIdle);
        _setIntValue(this.mHandle, KeyIsThreadPoolIdleTTLSecond, aVMDLDataLoaderConfigure.mThreadPoolTTLSecond);
        _setIntValue(this.mHandle, KeyIsThreadPoolMinCount, aVMDLDataLoaderConfigure.mThreadPoolMinCount);
        _setIntValue(this.mHandle, KeyIsNonBlockRangeMode, aVMDLDataLoaderConfigure.mNonBlockRangeMode);
        int i14 = aVMDLDataLoaderConfigure.mNonBlockRangeMaxSizeKB;
        if (i14 > 0) {
            _setIntValue(this.mHandle, KeyIsNonBlockRangeMaxSizeKB, i14);
        }
        _setIntValue(this.mHandle, KeyIsNetUnreachableStopRetry, aVMDLDataLoaderConfigure.mNetUnreachableStopRetry);
        _setIntValue(this.mHandle, KeyIsEnableWaitNetReachable, aVMDLDataLoaderConfigure.mEnableWaitNetReachable);
        _setInt64Value(this.mHandle, KeyIsLoadMonitorMinAllowLoadSize, aVMDLDataLoaderConfigure.mMonitorMinAllowLoadSize);
        _setInt64Value(this.mHandle, KeyIsLoadMonitorTimeInternal, aVMDLDataLoaderConfigure.mMonitorTimeInternal);
        _setStringValue(this.mHandle, KeyIsSocketTrainingCenterConfigStr, aVMDLDataLoaderConfigure.mSocketTraingCenterConfigStr);
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mEnginePortraitStr)) {
            _setStringValue(this.mHandle, KeyIsEnginePortraitStr, aVMDLDataLoaderConfigure.mEnginePortraitStr);
        }
        _setStringValue(this.mHandle, KeyIsCacheDirListsStr, aVMDLDataLoaderConfigure.mCacheDirListsStr);
        _setStringValue(this.mHandle, KeyIsP2PConfigStr, aVMDLDataLoaderConfigure.mP2PConfigStr);
        _setIntValue(this.mHandle, KeyIsSetSocketRecvBuffer, aVMDLDataLoaderConfigure.mSocketRecvBufferSize);
        _setIntValue(this.mHandle, KeyIsEnableByteMediaNetLoader, aVMDLDataLoaderConfigure.mEnableByteMediaNetLoader);
        _setIntValue(this.mHandle, KeyIsByteMediaNetLoaderCronetBufSizeKB, aVMDLDataLoaderConfigure.mByteMediaNetLoaderCronetBufSizeKB);
        _setIntValue(this.mHandle, KeyIsEnableCellularUp, aVMDLDataLoaderConfigure.mEnableCellularUp);
        _setIntValue(this.mHandle, KeyIsCloseThreadPool, aVMDLDataLoaderConfigure.mCloseThreadPool);
        _setIntValue(this.mHandle, KeyIsMaxIpNum, aVMDLDataLoaderConfigure.mMaxIpNum);
        _setIntValue(this.mHandle, KeyIsIgnoreTextSpeedTest, aVMDLDataLoaderConfigure.mIgnoreTextSpeedTest);
        _setIntValue(this.mHandle, KeyIsEnableOptimizeRange, aVMDLDataLoaderConfigure.mEnableOptimizeRange);
        _setIntValue(this.mHandle, KeyIsCheckCacheDir, aVMDLDataLoaderConfigure.mCheckCacheDir);
        _setIntValue(this.mHandle, KeyIsEnableUseGroupId, aVMDLDataLoaderConfigure.mEnableUseGroupId);
        _setIntValue(this.mHandle, KeyIsEnableMissReasonRecord, aVMDLDataLoaderConfigure.mEnableMissReason);
        _setIntValue(this.mHandle, KeyIsPreloadInfoRecordMaxCnt, aVMDLDataLoaderConfigure.mPreloadInfoRecordMaxCnt);
        _setIntValue(this.mHandle, KeyIsEnableTraceidPreloadLog, aVMDLDataLoaderConfigure.mEnableTraceIdPreloadLog);
        int i15 = aVMDLDataLoaderConfigure.mCloseLocalServer;
        if (i15 > 0) {
            _setIntValue(this.mHandle, KeyIsCloseLocalServer, i15);
        }
        int i16 = aVMDLDataLoaderConfigure.mGetCookieTokenLevel;
        if (i16 > 0) {
            _setIntValue(this.mHandle, KeyIsGetCookieTokenLevel, i16);
        }
        _setIntValue(this.mHandle, KeyIsDisableRecentCache, aVMDLDataLoaderConfigure.mDisableRecentCache);
        _setIntValue(this.mHandle, KeyIsUpdateCacheFileInternal, aVMDLDataLoaderConfigure.mUpdateCacheFileInternal);
        _setIntValue(this.mHandle, KeyIsEnableCustomDirSearchAllPath, aVMDLDataLoaderConfigure.mEnableCustomDirSearchAllPath);
        _setIntValue(this.mHandle, 12001, aVMDLDataLoaderConfigure.mHlsTsFileKeyGenerateType);
        _setIntValue(this.mHandle, 12002, aVMDLDataLoaderConfigure.mEnableReportHeaders);
        _setStringValue(this.mHandle, KeyIsProtectCacheDirAvoidClear, aVMDLDataLoaderConfigure.mProtectCacheDirsStr);
        int i17 = aVMDLDataLoaderConfigure.mEnableEventInfo;
        if (i17 > 0) {
            _setIntValue(this.mHandle, KeyIsEnableEventInfo, i17);
        }
        int i18 = aVMDLDataLoaderConfigure.mDownLogMaxSize;
        if (i18 > 0) {
            _setIntValue(this.mHandle, KeyIsSetDownLogMaxSize, i18);
        }
        int i19 = aVMDLDataLoaderConfigure.mEnableStorageModule;
        if (i19 > 0) {
            _setIntValue(this.mHandle, 10000, i19);
            int i20 = aVMDLDataLoaderConfigure.mStoPlayDldWinSizeKBNM;
            if (i20 > 0) {
                _setIntValue(this.mHandle, 10001, i20);
            }
            int i21 = aVMDLDataLoaderConfigure.mStoPlayDldWinSizeKBLS;
            if (i21 > 0) {
                _setIntValue(this.mHandle, 10002, i21);
            }
            int i22 = aVMDLDataLoaderConfigure.mStoRingBufferSizeKB;
            if (i22 > 0) {
                _setIntValue(this.mHandle, 10003, i22);
            }
            int i23 = aVMDLDataLoaderConfigure.mStoIoWriteLimitKBTh1;
            if (i23 > 0) {
                _setIntValue(this.mHandle, 10004, i23);
            }
            int i24 = aVMDLDataLoaderConfigure.mStoMaxIdleTimeSec;
            if (i24 > 0) {
                _setIntValue(this.mHandle, 10006, i24);
            }
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mStoStrategyConfig)) {
            _setStringValue(this.mHandle, 10007, aVMDLDataLoaderConfigure.mStoStrategyConfig);
        }
        int i25 = aVMDLDataLoaderConfigure.mStoIoWriteLimitKBTh2;
        if (i25 > 0) {
            _setIntValue(this.mHandle, 10005, i25);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mP2PCostTag)) {
            _setStringValue(this.mHandle, KeyIsP2PCostTag, aVMDLDataLoaderConfigure.mP2PCostTag);
        }
        _setIntValue(this.mHandle, KeyIsIgnorePlayInfo, aVMDLDataLoaderConfigure.mIgnorePlayInfo);
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mSettingsDomain)) {
            _setStringValue(this.mHandle, KeyIsSetSettingsDomain, aVMDLDataLoaderConfigure.mSettingsDomain);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mDmDomain)) {
            _setStringValue(this.mHandle, KeyIsSetDMDomain, aVMDLDataLoaderConfigure.mDmDomain);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mForesightDomain)) {
            _setStringValue(this.mHandle, KeyIsSetForesightDomain, aVMDLDataLoaderConfigure.mForesightDomain);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mDomains)) {
            _setStringValue(this.mHandle, KeyIsSetDomains, aVMDLDataLoaderConfigure.mDomains);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mKeyDomain)) {
            _setStringValue(this.mHandle, KeyIsSetKeyDomain, aVMDLDataLoaderConfigure.mKeyDomain);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mKeyToken)) {
            _setStringValue(this.mHandle, KeyIsSetKeyToken, aVMDLDataLoaderConfigure.mKeyToken);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mDynamicPreconnectConfigStr)) {
            _setStringValue(this.mHandle, KeyIsDynamicPreconnectConfigStr, aVMDLDataLoaderConfigure.mDynamicPreconnectConfigStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mCustomUA)) {
            _setStringValue(this.mHandle, KeyIsCustomUA, aVMDLDataLoaderConfigure.mCustomUA);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mFileRingBufferOptStr)) {
            _setStringValue(this.mHandle, KeyIsFileRingBufferOptStr, aVMDLDataLoaderConfigure.mFileRingBufferOptStr);
        }
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mFileKeyRule)) {
            _setStringValue(this.mHandle, 12000, aVMDLDataLoaderConfigure.mFileKeyRule);
        }
        _setIntValue(this.mHandle, KeyIsEnableOkHttpLoader, aVMDLDataLoaderConfigure.mEnableOkHttpLoader);
        _setIntValue(this.mHandle, 11000, aVMDLDataLoaderConfigure.mEnableP2pUpload);
        _setIntValue(this.mHandle, 11002, aVMDLDataLoaderConfigure.mDevDiskSizeMB);
        _setIntValue(this.mHandle, 11004, aVMDLDataLoaderConfigure.mDevMemorySizeMB);
        if (!TextUtils.isEmpty(aVMDLDataLoaderConfigure.mVdpExtGlobalInfo)) {
            _setStringValue(this.mHandle, 11001, aVMDLDataLoaderConfigure.mVdpExtGlobalInfo);
        }
        _setIntValue(this.mHandle, KeyIsEnableMultiDownloadPath, aVMDLDataLoaderConfigure.mEnableMultiDownloadPath);
        _setIntValue(this.mHandle, KeyIsEnableFileMutexOptimize, aVMDLDataLoaderConfigure.mEnableFileMutexOptimize);
        _setIntValue(this.mHandle, KeyIsSkipCDNBeforeExpiredSec, aVMDLDataLoaderConfigure.mSkipCDNBeforeExpiredSec);
        _setIntValue(this.mHandle, KeyIsNetUnreachableTimeout, aVMDLDataLoaderConfigure.mNetUnreachableTimeout);
        int i26 = aVMDLDataLoaderConfigure.mDeviceScoreEx;
        if (i26 > 0) {
            _setIntValue(this.mHandle, KeyIsDeviceScoreEx, i26);
        }
        int i27 = aVMDLDataLoaderConfigure.mSessionCacheInterval;
        if (i27 > 0) {
            _setIntValue(this.mHandle, KeyIsSessionCacheInterval, i27);
        }
        int i28 = aVMDLDataLoaderConfigure.mFileManagerInterval;
        if (i28 > 0) {
            _setIntValue(this.mHandle, KeyIsFileManagerInterval, i28);
        }
        AVMDLDNSParser.setIntValue(0, this.mConfigure.mDNSMainType);
        AVMDLDNSParser.setIntValue(1, this.mConfigure.mDNSBackType);
        AVMDLDNSParser.setIntValue(2, this.mConfigure.mDefaultExpiredTime);
        AVMDLDNSParser.setIntValue(3, this.mConfigure.mMainToBackUpDelayedTime);
    }

    public static void setOkhttpClient(OkHttpClient okHttpClient) {
        AVMDLHttpExcutor.setOkHttpClient(okHttpClient);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startInternal() {
        this.mWriteLock.lock();
        try {
            if (this.mState != 1) {
                initLogThread(this);
                if (this.mHandle != 0) {
                    tryLoadP2pPluginInternal();
                    tryLoadQuicPluginInternal();
                    setConfigureInternal(this.mConfigure);
                    if (_start(this.mHandle) >= 0) {
                        this.mState = 1;
                    }
                }
            }
            this.mWriteLock.unlock();
            if (this.mConfigure.mEnableBenchMarkIOSpeed > 0) {
                int testFileIOSpeed = testFileIOSpeed();
                AVMDLLog.d("BENCHMARKIO", String.format(Locale.US, "test io average speed:%d", Integer.valueOf(testFileIOSpeed)));
                if (testFileIOSpeed > 0) {
                    setIntValue(1508, testFileIOSpeed);
                }
            }
            AVMDLStartCompleteListener aVMDLStartCompleteListener = this.mStartCompleteListener;
            if (aVMDLStartCompleteListener != null) {
                aVMDLStartCompleteListener.onStartComplete();
            }
            if (this.mState == 1 && this.mConfigure.mEnableCellularUp > 0) {
                AVMDLLog.d(TAG, "start try up cellular");
                AVMDLMultiNetwork.alwayUpCellular(getApplicationContext());
                AVMDLLog.d(TAG, "end try up cellular");
            }
            AVMDLMultiNetwork.registerNetworkChangeCallback(getApplicationContext());
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    private double testFileIO(String str, int i10, RandomAccessFile randomAccessFile) throws Exception {
        if (TextUtils.isEmpty(str)) {
            return -1.0d;
        }
        long currentTimeMillis = System.currentTimeMillis();
        randomAccessFile.seek(i10);
        byte[] bArr = new byte[4096];
        for (int i11 = 0; i11 < 200; i11++) {
            Thread.sleep(5);
            randomAccessFile.write(bArr, 0, 1024);
        }
        long currentTimeMillis2 = (System.currentTimeMillis() - currentTimeMillis) - 1000;
        if (currentTimeMillis2 <= 0) {
            return -1.0d;
        }
        AVMDLLog.d("BENCHMARKIO", String.format(Locale.US, "size:%d costtime:%d", 819200, Long.valueOf(currentTimeMillis2)));
        return 819200 / currentTimeMillis2;
    }

    private int testFileIOSpeed() {
        String format;
        double d10;
        if (TextUtils.isEmpty(this.mConfigure.mCacheDir)) {
            return -1;
        }
        String str = this.mConfigure.mCacheDir;
        if (str.charAt(str.length() - 1) == '/') {
            format = String.format(Locale.US, "%siospeed", this.mConfigure.mCacheDir);
        } else {
            format = String.format(Locale.US, "%s/iospeed", this.mConfigure.mCacheDir);
        }
        String str2 = format;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str2, "iospeed.cach");
        if (file2.exists()) {
            file2.delete();
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
            double d11 = 0.0d;
            double d12 = 0.0d;
            for (int i10 = 0; i10 < 30; i10++) {
                try {
                    d10 = testFileIO(str2, i10, randomAccessFile);
                } catch (Exception e10) {
                    e = e10;
                    d10 = 0.0d;
                }
                try {
                    AVMDLLog.d("BENCHMARKIO", String.format(Locale.US, "num:%d result:%f", Integer.valueOf(i10), Double.valueOf(d10)));
                } catch (Exception e11) {
                    e = e11;
                    AVMDLLog.d("BENCHMARKIO", "test fileio exception:" + e);
                    e.printStackTrace();
                    if (d10 > 0.0d) {
                        try {
                            d12 += d10;
                            d11 += 1.0d;
                        } catch (Exception unused) {
                        }
                    }
                }
                if (d10 > 0.0d && i10 >= 20) {
                    d12 += d10;
                    d11 += 1.0d;
                }
            }
            randomAccessFile.close();
            file2.delete();
            if (d11 > 0.0d) {
                return (int) (d12 / d11);
            }
            return 0;
        } catch (Exception e12) {
            AVMDLLog.d("BENCHMARKIO", "create accefile exception:" + e12);
            return -1;
        }
    }

    public static synchronized boolean tryLoadByteMediaNetLoaderPlugin() {
        boolean z10;
        synchronized (AVMDLDataLoader.class) {
            Log.e("ttmdljava", "do load bytemedianet");
            Log.e("ttmdljava", "end do load bytemedianet");
            z10 = mIsMdlByteMediaNetPluginLoaded;
        }
        return z10;
    }

    private void tryLoadP2pPluginInternal() {
        if (this.mPluginLibraryLoader != null) {
            try {
                AVMDLLog.e(TAG, "try to load p2p lib by mdl");
                AVMDLLog.e(TAG, String.format(Locale.US, "load p2p lib by mdl result:%d", Integer.valueOf(this.mPluginLibraryLoader.loadLibrary("avmdlp2p") ? 1 : 0)));
            } catch (UnsatisfiedLinkError e10) {
                Log.e(TAG, "Can't load p2p library: " + e10);
            } catch (Throwable th2) {
                Log.e(TAG, "Can't load p2p library: " + th2);
            }
        }
    }

    public static synchronized boolean tryLoadTTNetLoaderPlugin() {
        boolean z10;
        synchronized (AVMDLDataLoader.class) {
            z10 = mIsMdlTtnetPluginLoaded;
        }
        return z10;
    }

    public static boolean tryLoadVcnverifylib() {
        if (!VcnlibloadWrapper.tryLoadVcnlib()) {
            Log.e("ttmn", "Can't load vcn ");
            AVMDLLog.d("vcn", "load vcnverify fail");
            return false;
        }
        AVMDLLog.d("vcn", "load vcnverify suc");
        return true;
    }

    public void addDataSource(int i10, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        AVMDLLog.d(TAG, "addDataSource: id: " + i10 + ", queyr: " + str);
        this.mWriteLock.lock();
        try {
            _addDataSource(this.mHandle, i10, str);
        } catch (Exception | UnsatisfiedLinkError unused) {
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
        this.mWriteLock.unlock();
    }

    public int asyncCopyOperation(AVMDLCopyOperation aVMDLCopyOperation) {
        Handler handler;
        if (this.mState == 1 && (handler = this.mLogHandler) != null) {
            Message obtainMessage = handler.obtainMessage();
            obtainMessage.what = 23;
            obtainMessage.obj = aVMDLCopyOperation;
            obtainMessage.sendToTarget();
            return 0;
        }
        return -1;
    }

    public void cancel(String str) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _cancel(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void cancelAll() {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _cancelAll(j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void cancelAllPreloadWaitReqs() {
        if (this.mState != 1) {
            return;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _cancelAllPreloadWaitReqs(j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void cleanCacheDir(long j10) {
        if (this.mState != 1) {
            return;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    _cleanCacheDir(j11, j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void cleanSpecifiedCacheDir(String str, int i10) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _cleanSpecifiedCacheDir(j10, str, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void clearAllCaches() {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _clearAllCaches(j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void clearNetinfoCache() {
        if (this.mState != 1) {
            return;
        }
        IPCache.getInstance().clear();
        this.mWriteLock.lock();
        try {
            try {
                _clearNetinfoCache(this.mHandle);
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void close() {
        this.mWriteLock.lock();
        try {
            if (this.mState != 1) {
                return;
            }
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _close(j10);
                    this.mHandle = 0L;
                    this.mState = 5;
                    Handler handler = this.mHandler;
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                        this.mHandler = null;
                    }
                    Handler handler2 = this.mLogHandler;
                    if (handler2 != null) {
                        handler2.removeCallbacksAndMessages(null);
                        this.mLogHandler.getLooper().quit();
                        this.mLogHandler = null;
                        this.mMsgThread = null;
                    }
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            this.mWriteLock.unlock();
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public long copyFile(String str, String str2) {
        long j10 = -1;
        if (this.mState != 1) {
            return -1L;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _copyFile64(j11, str, str2);
                }
            } catch (UnsatisfiedLinkError e10) {
                long j12 = this.mHandle;
                if (j12 != 0) {
                    try {
                        j10 = _copyFile(j12, str, str2);
                    } catch (UnsatisfiedLinkError e11) {
                        e11.printStackTrace();
                    }
                }
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void doParseHosts(String[] strArr) {
        AVMDLDNSParser.getInstance().doParseHosts(strArr);
    }

    public void downloadResource(String str) {
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _downloadResource(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void forceClearAllCaches() {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _forceClearAllCaches(j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void forceRemoveFileCache(String str) {
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _forceRemoveCacheFile(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public long getAllCacheSize() {
        long j10 = -1;
        if (this.mState != 1) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValue(j11, 100);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public String getAuth(String str) {
        String str2 = null;
        if (this.mState != 1 || !this.isSupportGetAuth) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                str2 = _getAuth(this.mHandle, str);
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
                this.isSupportGetAuth = false;
            }
            return str2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public String getCDNLog(String str) {
        String str2 = null;
        if (this.mState != 1) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                str2 = _getCDNLog(this.mHandle, str);
            } catch (UnsatisfiedLinkError e10) {
                AVMDLLog.d(TAG, "not support get cdnlog," + e10.toString());
            }
            return str2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public AVMDLFileInfo getCacheInfo(String str) {
        AVMDLFileInfo aVMDLFileInfo = null;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    String _getStringValueByStr = _getStringValueByStr(j10, str, 101);
                    if (TextUtils.isEmpty(_getStringValueByStr)) {
                        this.mReadLock.unlock();
                        return null;
                    }
                    String[] split = _getStringValueByStr.split(",");
                    if (split.length >= 3) {
                        AVMDLFileInfo aVMDLFileInfo2 = new AVMDLFileInfo();
                        try {
                            aVMDLFileInfo2.mFilePath = split[2];
                            if (!TextUtils.isEmpty(split[0])) {
                                aVMDLFileInfo2.mCacheSize = Long.valueOf(split[0]).longValue();
                            }
                            if (!TextUtils.isEmpty(split[1])) {
                                aVMDLFileInfo2.mContentLenght = Long.valueOf(split[1]).longValue();
                            }
                            aVMDLFileInfo = aVMDLFileInfo2;
                        } catch (UnsatisfiedLinkError e10) {
                            e = e10;
                            aVMDLFileInfo = aVMDLFileInfo2;
                            e.printStackTrace();
                            this.mReadLock.unlock();
                            return aVMDLFileInfo;
                        }
                    }
                }
            } catch (UnsatisfiedLinkError e11) {
                e = e11;
            }
            this.mReadLock.unlock();
            return aVMDLFileInfo;
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public long getCacheSize(String str, String str2) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStrStr(j11, str, str2, 103);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    @Nullable
    public AVMDLDataLoaderConfigure getConfig() {
        if (this.mState != 1) {
            return null;
        }
        return this.mConfigure;
    }

    public long getContinueCacheSize(String str, int i10, long j10) {
        long j11 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j12 = this.mHandle;
                if (j12 != 0) {
                    j11 = _getContinueCacheSize(j12, str, i10, j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j11;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public long getDownloadCount(String str) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStr(j11, str, KeyIsGetDownloadCountByVid);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        if (com.ss.mediakit.utils.AVMDLDeviceUtil.isOverHeat(getApplicationContext()) != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003a, code lost:
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003c, code lost:
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0046, code lost:
        if (com.ss.mediakit.utils.AVMDLDeviceUtil.isPowerSaveMode(getApplicationContext()) != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long getInt64Value(int r7, long r8) {
        /*
            r6 = this;
            r0 = 8003(0x1f43, float:1.1215E-41)
            java.lang.String r1 = "ttmdljava"
            if (r7 == r0) goto Lb
            r0 = 8004(0x1f44, float:1.1216E-41)
            if (r7 != r0) goto L28
        Lb:
            com.ss.mediakit.medialoader.AVMDLDataLoaderListener r0 = r6.mLiveListener
            if (r0 == 0) goto L14
            long r7 = r0.getInt64Value(r7, r8)
            return r7
        L14:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "getInt64Value mLiveListener is nullptr, code: "
            r0.append(r2)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            com.ss.mediakit.medialoader.AVMDLLog.e(r1, r0)
        L28:
            r2 = 0
            r4 = 1
            switch(r7) {
                case 11007: goto L58;
                case 11008: goto L53;
                case 11009: goto L49;
                case 11010: goto L3e;
                case 11011: goto L30;
                default: goto L2f;
            }
        L2f:
            goto L5c
        L30:
            android.content.Context r8 = getApplicationContext()
            boolean r8 = com.ss.mediakit.utils.AVMDLDeviceUtil.isOverHeat(r8)
            if (r8 == 0) goto L3c
        L3a:
            r8 = r4
            goto L5c
        L3c:
            r8 = r2
            goto L5c
        L3e:
            android.content.Context r8 = getApplicationContext()
            boolean r8 = com.ss.mediakit.utils.AVMDLDeviceUtil.isPowerSaveMode(r8)
            if (r8 == 0) goto L3c
            goto L3a
        L49:
            android.content.Context r8 = getApplicationContext()
            int r8 = com.ss.mediakit.utils.AVMDLDeviceUtil.getBatteryPercentage(r8)
            long r8 = (long) r8
            goto L5c
        L53:
            long r8 = com.ss.mediakit.utils.AVMDLDeviceUtil.getTotalFreeStorageKB()
            goto L5c
        L58:
            long r8 = com.ss.mediakit.utils.AVMDLDeviceUtil.getTotalStorageSpaceKB()
        L5c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "getInt64Value code: "
            r0.append(r2)
            r0.append(r7)
            java.lang.String r7 = " defaultValue: "
            r0.append(r7)
            r0.append(r8)
            java.lang.String r7 = r0.toString()
            com.ss.mediakit.medialoader.AVMDLLog.d(r1, r7)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.medialoader.AVMDLDataLoader.getInt64Value(int, long):long");
    }

    public String getLocalAddr() {
        String str = null;
        if (this.mState != 1) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    str = _getStringValue(j10, 4);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return str;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public long getLongValue(int i10) {
        int i11;
        long j10 = -1;
        if (i10 != 7218 && i10 != 7390 && i10 != 9407 && i10 != 7402 && i10 != 7433) {
            if (this.mState != 1) {
                AVMDLLog.d("ttmdljava", "getLongValue key: " + i10 + " result: -1");
                return -1L;
            } else if (this.mConfigure == null) {
                AVMDLLog.d("ttmdljava", "getLongValue key: " + i10 + " result: -998");
                return -998L;
            } else {
                this.mReadLock.lock();
                try {
                    try {
                        switch (i10) {
                            case 8100:
                                i11 = this.mConfigure.mLiveLoaderEnable;
                                j10 = i11;
                                break;
                            case KeyIsLiveLoaderP2pEnable /* 8101 */:
                                i11 = this.mConfigure.mLiveP2pAllow;
                                j10 = i11;
                                break;
                            case KeyIsLiveEnableMdlProto /* 8102 */:
                                i11 = this.mConfigure.mLiveEnableMdlProto;
                                j10 = i11;
                                break;
                            case KeyIsLiveGetLoaderType /* 8103 */:
                                i11 = this.mConfigure.mLiveLoaderType;
                                j10 = i11;
                                break;
                            default:
                                long j11 = this.mHandle;
                                if (j11 != 0) {
                                    j10 = _getLongValue(j11, i10);
                                    break;
                                }
                                break;
                        }
                    } catch (UnsatisfiedLinkError e10) {
                        e10.printStackTrace();
                    }
                    this.mReadLock.unlock();
                    AVMDLLog.d("ttmdljava", "getLongValue key: " + i10 + " result: " + j10);
                    return j10;
                } catch (Throwable th2) {
                    this.mReadLock.unlock();
                    throw th2;
                }
            }
        }
        long j12 = this.mHandle;
        if (j12 == 0) {
            return -1L;
        }
        return _getLongValue(j12, i10);
    }

    public long getLongValueByStr(String str, int i10) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStr(j11, str, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public long getMissReason(String str, String str2) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStrStr(j11, str, str2, 112);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public String getStringCacheInfo(String str) {
        String str2 = null;
        if (this.mState == 1 && !TextUtils.isEmpty(str)) {
            this.mReadLock.lock();
            try {
                try {
                    long j10 = this.mHandle;
                    if (j10 != 0) {
                        str2 = _getStringValueByStr(j10, str, 101);
                    }
                } catch (UnsatisfiedLinkError e10) {
                    e10.printStackTrace();
                }
                return str2;
            } finally {
                this.mReadLock.unlock();
            }
        }
        return null;
    }

    public String getStringValue(int i10) {
        String str = null;
        if (this.mState != 1) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    str = _getStringValue(j10, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return str;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public String getStringValueByStr(String str, int i10) {
        String str2 = null;
        if (this.mState != 1) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    str2 = _getStringValueByStr(j10, str, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return str2;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public String getStringValueByStrkey(int i10, long j10, String str) {
        if (this.mState != 1) {
            return null;
        }
        if (i10 != 1503) {
            if (i10 != 1506 && i10 != 1509) {
                if (i10 != 3512) {
                    if (i10 != 11012) {
                        if ((i10 != 6401 && i10 != 6402) || this.mVodListener == null || TextUtils.isEmpty(str)) {
                            return null;
                        }
                        String stringValue = this.mVodListener.getStringValue(i10, j10, str);
                        AVMDLLog.d("ttmdljava", "what:" + i10 + ", code:" + j10 + ", key3" + str + ", result:" + stringValue);
                        return stringValue;
                    }
                    return AVMDLDeviceUtil.getDeviceModel();
                }
                return getProxyUrl();
            } else if (this.mVodListener == null || TextUtils.isEmpty(str)) {
                return null;
            } else {
                return this.mVodListener.getStringValue(i10, j10, str);
            }
        } else if (this.mVodListener == null || TextUtils.isEmpty(str)) {
            return null;
        } else {
            return this.mVodListener.getCheckSumInfo(str);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == 23) {
            AVMDLCopyOperation aVMDLCopyOperation = (AVMDLCopyOperation) message.obj;
            if (aVMDLCopyOperation != null) {
                copyInternal(aVMDLCopyOperation);
                return true;
            }
            return true;
        }
        if (i10 == 3 || i10 == 51) {
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = (AVMDLDataLoaderNotifyInfo) message.obj;
            if (this.mWaitingCopyItem.size() > 0 && aVMDLDataLoaderNotifyInfo != null) {
                handleCopyMsg(aVMDLDataLoaderNotifyInfo);
            }
        }
        if (i10 != 12 && i10 != 9) {
            if (i10 != 71 && i10 != 72 && i10 != 73 && i10 != 74) {
                return postMessage(this.mVodListener, message);
            }
            return postMessage(this.mEventListener, message);
        }
        return postMessage(this.mLiveListener, message);
    }

    public boolean isRunning() {
        if (this.mState == 1) {
            return true;
        }
        return false;
    }

    public void makeFileAutoDeleteFlag(String str, int i10) {
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _makeFileAutoDeleteFlag(j10, str, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public int onCellularAlwaysUp(long j10) {
        AVMDLLog.d(TAG, "start on cellular netId: " + j10);
        this.mWriteLock.lock();
        int i10 = -1;
        try {
            long j11 = this.mHandle;
            if (j11 != 0) {
                i10 = _onCellularAlwaysUp(j11, j10, Build.VERSION.SDK_INT);
            }
        } catch (Exception | UnsatisfiedLinkError unused) {
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
        this.mWriteLock.unlock();
        AVMDLLog.d(TAG, "end on cellular netId: " + j10 + " ret: " + i10);
        return i10;
    }

    public void onEventInfo(Object obj) {
        String str;
        if (this.mState == 1 && this.mLogHandler != null) {
            LoaderEventInfo loaderEventInfo = new LoaderEventInfo();
            loaderEventInfo.what = 74;
            try {
                HashMap hashMap = (HashMap) obj;
                if (hashMap.containsKey("what")) {
                    loaderEventInfo.what = ((Integer) hashMap.get("what")).intValue();
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains What" + loaderEventInfo.what);
                }
                if (hashMap.containsKey("taskType")) {
                    loaderEventInfo.taskType = ((Integer) hashMap.get("taskType")).intValue();
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains taskType" + loaderEventInfo.taskType);
                }
                if (hashMap.containsKey("off")) {
                    loaderEventInfo.off = ((Long) hashMap.get("off")).longValue();
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains off" + loaderEventInfo.off);
                }
                if (hashMap.containsKey("endOff")) {
                    loaderEventInfo.endOff = ((Long) hashMap.get("endOff")).longValue();
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains endOff" + loaderEventInfo.endOff);
                }
                if (hashMap.containsKey("fileHash")) {
                    loaderEventInfo.fileHash = String.valueOf(hashMap.get("fileHash"));
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains fileHash" + loaderEventInfo.fileHash);
                }
                if (hashMap.containsKey("bytesLoaded")) {
                    loaderEventInfo.bytesLoaded = ((Long) hashMap.get("bytesLoaded")).longValue();
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains bytesLoaded" + loaderEventInfo.bytesLoaded);
                }
                if (!hashMap.containsKey(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS)) {
                    str = "";
                } else {
                    str = String.valueOf(hashMap.get(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS));
                    AVMDLLog.d(TAG, "[debugUI] eventMap contains headers" + str);
                }
                if (str != "") {
                    for (String str2 : str.split("\r\n")) {
                        String[] split = str2.split(":");
                        loaderEventInfo.mHeaders.put(split[0], split[1]);
                    }
                } else {
                    AVMDLLog.d(TAG, "[debugUI] what" + loaderEventInfo.what);
                    AVMDLLog.d(TAG, "[debugUI]no headers");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            Message obtainMessage = this.mLogHandler.obtainMessage();
            obtainMessage.what = loaderEventInfo.what;
            obtainMessage.obj = loaderEventInfo;
            obtainMessage.sendToTarget();
        }
    }

    public int onInitMultiNetworkEnv() {
        AVMDLLog.d(TAG, "start on init multinetwork env");
        this.mWriteLock.lock();
        int i10 = -1;
        try {
            long j10 = this.mHandle;
            if (j10 != 0) {
                i10 = _onInitMultiNetworkEnv(j10, Build.VERSION.SDK_INT);
            }
        } catch (Exception | UnsatisfiedLinkError unused) {
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
        this.mWriteLock.unlock();
        AVMDLLog.d(TAG, "end on init multinetwork env");
        return i10;
    }

    public void onLogInfo(int i10, int i11, String str) {
        onLogInfo(i10, i11, -1, str);
    }

    public void onNotify(int i10, long j10, int i11) {
        if (this.mState == 1 && this.mHandler != null) {
            AVMDLDataLoaderNotifyInfo aVMDLDataLoaderNotifyInfo = new AVMDLDataLoaderNotifyInfo();
            aVMDLDataLoaderNotifyInfo.what = i10;
            aVMDLDataLoaderNotifyInfo.parameter = j10;
            aVMDLDataLoaderNotifyInfo.code = i11;
            Message obtainMessage = this.mHandler.obtainMessage();
            obtainMessage.obj = aVMDLDataLoaderNotifyInfo;
            obtainMessage.what = i10;
            obtainMessage.sendToTarget();
        }
    }

    public synchronized void onTaskEvent(int i10, String str, int i11, int i12, String str2) {
        JSONObject jSONObject;
        if (this.mTaskListener == null) {
            return;
        }
        if (!AVMDLTaskEventID.taskTypeIsValid(i11)) {
            return;
        }
        if (!AVMDLTaskEventID.eventTypeIsValid(i12)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!TextUtils.isEmpty(str2)) {
            try {
                jSONObject = new JSONObject(str2);
            } catch (Exception unused) {
            }
            this.mTaskListener.onTaskEventNotify(i10, str, i11, i12, jSONObject);
        }
        jSONObject = null;
        this.mTaskListener.onTaskEventNotify(i10, str, i11, i12, jSONObject);
    }

    public void preConnectByHost(String str, int i10) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                _preConnectByHost(this.mHandle, str, i10);
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void preloadGroupResource(String str, String str2, int i10, int i11) {
        if (this.mState == 1 && !TextUtils.isEmpty(str2) && i11 != 0) {
            this.mWriteLock.lock();
            try {
                try {
                    long j10 = this.mHandle;
                    if (j10 != 0) {
                        _preloadGroupResource(j10, str, str2, i10, i11);
                    }
                } catch (UnsatisfiedLinkError e10) {
                    e10.printStackTrace();
                }
            } finally {
                this.mWriteLock.unlock();
            }
        }
    }

    public void preloadResource(String str, int i10) {
        if (this.mState != 1 || TextUtils.isEmpty(str) || i10 == 0) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _preloadResource(j10, str, i10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public long quickQueryCacheSize(String str) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStr(j11, str, 113);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void removeFileCache(String str) {
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _removeCacheFile(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void resetPreloadTraceId(String str) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _resetPreloadTraceId(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void resumeFileWriteIO() {
        if (this.mState != 1) {
            return;
        }
        AVMDLLog.d(TAG, "resume file write io: ");
        this.mWriteLock.lock();
        try {
            if (this.mConfigure.mMaxFileMemCacheSize > 0) {
                _resumeFileWriteIO(this.mHandle);
                this.mConfigure.mMaxFileMemCacheSize = 0;
            }
        } catch (Exception | UnsatisfiedLinkError unused) {
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
        this.mWriteLock.unlock();
    }

    public void resumePreConnect() {
        setIntValue(KeyIsSetPreconnectState, 0);
    }

    public void setBackUpIp(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            IPCache.getInstance().putBackUpIp(str, new AVMDLDNSInfo(11, str, str2, 0L, (String) null));
        }
    }

    public void setConfigure(AVMDLDataLoaderConfigure aVMDLDataLoaderConfigure) {
        this.mWriteLock.lock();
        try {
            if (this.mState != 1) {
                this.mConfigure = aVMDLDataLoaderConfigure;
                aVMDLDataLoaderConfigure.ParseJsonConfig();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setEventListener(LoaderListener loaderListener) {
        this.mWriteLock.lock();
        try {
            this.mEventListener = loaderListener;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setInt64ValueByStrKey(int i10, String str, long j10) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    _setInt64ValueByStrKey(j11, i10, str, j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setIntValue(int i10, int i11) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _setIntValue(j10, i10, i11);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setListener(AVMDLDataLoaderListener aVMDLDataLoaderListener) {
        this.mWriteLock.lock();
        try {
            this.mVodListener = aVMDLDataLoaderListener;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setLongValue(int i10, long j10) {
        if (i10 == 7432) {
            long j11 = this.mHandle;
            if (j11 != 0) {
                _setInt64Value(j11, i10, j10);
            }
        } else if (this.mState != 1) {
        } else {
            this.mWriteLock.lock();
            try {
                try {
                    long j12 = this.mHandle;
                    if (j12 != 0) {
                        _setInt64Value(j12, i10, j10);
                    }
                } catch (UnsatisfiedLinkError e10) {
                    e10.printStackTrace();
                }
            } finally {
                this.mWriteLock.unlock();
            }
        }
    }

    public void setPluginLibraryLoader(IAVMDLLibraryLoader iAVMDLLibraryLoader) {
        this.mWriteLock.lock();
        try {
            this.mPluginLibraryLoader = iAVMDLLibraryLoader;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void setStartCompleteListener(AVMDLStartCompleteListener aVMDLStartCompleteListener) {
        this.mStartCompleteListener = aVMDLStartCompleteListener;
    }

    public void setStringValue(int i10, String str) {
        if (TextUtils.isEmpty(str) || this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _setStringValue(j10, i10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public synchronized void setTaskEventListener(AVMDLTaskEventListener aVMDLTaskEventListener) {
        this.mTaskListener = aVMDLTaskEventListener;
    }

    public int start() {
        if (this.mState == 1) {
            return 0;
        }
        initNativeHandle();
        new Thread(new Runnable() { // from class: com.ss.mediakit.medialoader.AVMDLDataLoader.2
            @Override // java.lang.Runnable
            public void run() {
                AVMDLDataLoader.this.startInternal();
            }
        }).start();
        return 0;
    }

    public void stop() {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _stop(j10);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void suspendDownload(String str) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _suspendedDownload(j10, str);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void suspendPreconnect() {
        setIntValue(KeyIsSetPreconnectState, 1);
    }

    public long tryQuickGetCacheSize(String str) {
        long j10 = -1;
        if (this.mState != 1 || TextUtils.isEmpty(str)) {
            return -1L;
        }
        this.mReadLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _getLongValueByStr(j11, str, 106);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public long tryToClearAndGetCachesByUsedTime(long j10, boolean z10) {
        long j11 = 0;
        if (this.mState != 1) {
            return 0L;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j12 = this.mHandle;
                if (j12 != 0) {
                    j11 = _clearAndGetCachesByUsedTime(j12, j10, z10 ? 1 : 0);
                }
            } catch (UnsatisfiedLinkError e10) {
                Log.e("testcacheinterface", "call exception" + e10.getMessage());
            }
            return j11;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public void tryToClearCachesByUsedTime(long j10) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            long j11 = this.mHandle;
            if (j11 != 0) {
                _clearCachesByUsedTime(j11, j10);
            }
        } catch (UnsatisfiedLinkError unused) {
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
        this.mWriteLock.unlock();
    }

    public void updateDNSInfo(String str, String str2, long j10, String str3, int i10) {
        if (this.mState != 1) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                _updateDNSInfo(this.mHandle, str, str2, j10, str3, i10);
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public int writeDataToFile(String str, long j10, long j11, int i10, byte[] bArr) {
        String str2;
        int i11;
        if (this.mState != 1) {
            return -1;
        }
        AVMDLLog.d(TAG, "start write data to file filekey:" + str + " off:" + j11 + " length:" + i10);
        this.mWriteLock.lock();
        try {
            try {
                long j12 = this.mHandle;
                str2 = TAG;
                try {
                    i11 = _writeDataToFile(j12, str, j10, j11, i10, bArr);
                } catch (Exception unused) {
                    this.mWriteLock.unlock();
                    i11 = -3;
                    AVMDLLog.d(str2, "end write data to file filekey:" + str + " off:" + j11 + " length:" + i10);
                    return i11;
                } catch (UnsatisfiedLinkError unused2) {
                    this.mWriteLock.unlock();
                    i11 = -2;
                    AVMDLLog.d(str2, "end write data to file filekey:" + str + " off:" + j11 + " length:" + i10);
                    return i11;
                }
            } finally {
                this.mWriteLock.unlock();
            }
        } catch (Exception unused3) {
            str2 = TAG;
        } catch (UnsatisfiedLinkError unused4) {
            str2 = TAG;
        }
        AVMDLLog.d(str2, "end write data to file filekey:" + str + " off:" + j11 + " length:" + i10);
        return i11;
    }

    /* JADX WARN: Removed duplicated region for block: B:96:0x01aa A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLogInfo(int r10, int r11, int r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.medialoader.AVMDLDataLoader.onLogInfo(int, int, int, java.lang.String):void");
    }

    public void setListener(int i10, AVMDLDataLoaderListener aVMDLDataLoaderListener) {
        this.mWriteLock.lock();
        if (i10 == 107) {
            try {
                this.mLiveListener = aVMDLDataLoaderListener;
            } finally {
                this.mWriteLock.unlock();
            }
        }
    }

    private boolean postMessage(LoaderListener loaderListener, Message message) {
        Object obj;
        LoaderEventInfo loaderEventInfo;
        if (loaderListener != null && (obj = message.obj) != null && (loaderEventInfo = (LoaderEventInfo) obj) != null) {
            int i10 = message.what;
            if (i10 == 71) {
                loaderListener.onLoaderTaskStart(loaderEventInfo);
                AVMDLLog.d("ttmdljava", "receive eventLog KeyIsLoaderEventStart");
            } else if (i10 == 72) {
                loaderListener.onLoaderTaskCancel(loaderEventInfo);
                AVMDLLog.d("ttmdljava", "receive eventLog KeyIsLoaderEventCancel");
            } else if (i10 == 73) {
                loaderListener.onLoaderTaskCompleted(loaderEventInfo);
                AVMDLLog.d("ttmdljava", "receive eventLog KeyIsLoaderEventCompleted");
            } else {
                AVMDLLog.d("ttmdljava", "receive eventLog fail");
            }
        }
        return true;
    }

    public String getStringCacheInfo(String str, String str2) {
        String str3 = null;
        if (this.mState != 1 || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        this.mReadLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    str3 = _getStringValueByStrStr(j10, str, str2, 101);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
            return str3;
        } finally {
            this.mReadLock.unlock();
        }
    }

    public void preloadResource(String str, int i10, int i11) {
        if (this.mState != 1 || TextUtils.isEmpty(str) || i11 == 0) {
            return;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j10 = this.mHandle;
                if (j10 != 0) {
                    _preloadResourceWithOffset(j10, str, i10, i11);
                }
            } catch (UnsatisfiedLinkError e10) {
                e10.printStackTrace();
            }
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public long getCacheSize(String str) {
        long j10 = -1;
        if (this.mState == 1 && !TextUtils.isEmpty(str)) {
            this.mReadLock.lock();
            try {
                try {
                    long j11 = this.mHandle;
                    if (j11 != 0) {
                        j10 = _getLongValueByStr(j11, str, 103);
                    }
                } catch (UnsatisfiedLinkError e10) {
                    e10.printStackTrace();
                }
                return j10;
            } finally {
                this.mReadLock.unlock();
            }
        }
        return -1L;
    }

    public long copyFile(String str, String str2, boolean z10) {
        long j10 = -1;
        if (this.mState != 1) {
            return -1L;
        }
        this.mWriteLock.lock();
        boolean z11 = false;
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _copyFileWithForceFlag64(j11, str, str2, z10 ? 1 : 0);
                }
            } catch (UnsatisfiedLinkError e10) {
                long j12 = this.mHandle;
                if (j12 != 0) {
                    try {
                        j10 = _copyFileWithForceFlag(j12, str, str2, z10 ? 1 : 0);
                    } catch (UnsatisfiedLinkError e11) {
                        e11.printStackTrace();
                        z11 = true;
                    }
                    if (z11 && !z10) {
                        j10 = copyFile(str, str2);
                    }
                }
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    private void tryLoadQuicPluginInternal() {
    }

    public long copyFile(String str, String str2, String str3) {
        long j10 = -1;
        if (this.mState != 1) {
            return -1L;
        }
        this.mWriteLock.lock();
        try {
            try {
                long j11 = this.mHandle;
                if (j11 != 0) {
                    j10 = _copyFileWithCustomDir64(j11, str, str2, str3);
                }
            } catch (UnsatisfiedLinkError e10) {
                long j12 = this.mHandle;
                if (j12 != 0) {
                    try {
                        j10 = _copyFileWithCustomDir(j12, str, str2, str3);
                    } catch (UnsatisfiedLinkError e11) {
                        e11.printStackTrace();
                    }
                }
                e10.printStackTrace();
            }
            return j10;
        } finally {
            this.mWriteLock.unlock();
        }
    }

    public static synchronized int init(boolean z10, boolean z11) {
        synchronized (AVMDLDataLoader.class) {
            try {
                if (mIsLibraryLoaded) {
                    return 0;
                }
                mIsLibraryLoaded = z10;
                if (!mIsLibraryLoaded) {
                    if (!BoringsslLoaderWrapper.loadBoringssl()) {
                        Log.e("ttmn", "load boringssl fail!");
                    }
                    if (!VcnlibloadWrapper.tryLoadVcnlib()) {
                        Log.e("ttmn", "Can't load vcn ");
                    }
                    loadAVMDLBaseLibrary();
                    try {
                        System.loadLibrary("avmdl");
                        mIsLibraryLoaded = true;
                    } catch (UnsatisfiedLinkError e10) {
                        mLoadFailMsg = "Can't load avmdl library: " + e10;
                        Log.e("ttmn", "Can't load avmdl library: " + e10);
                    } catch (Throwable th2) {
                        mLoadFailMsg = "other exception when loading avmdl library: " + th2;
                        Log.e("ttmn", "other exception when loading avmdl library: " + th2);
                    }
                    if (!VcnlibloadWrapper.tryLoadVcnverifylib()) {
                        Log.e("ttmn", "Can't load vcnverify lib ");
                    }
                    if (z11) {
                        Log.e("ttmn", "try to load pcdn lib");
                        try {
                            System.loadLibrary("avmdlp2p");
                        } catch (UnsatisfiedLinkError e11) {
                            Log.e("ttmn", "Can't load avmdlp2p library: " + e11);
                        } catch (Throwable th3) {
                            Log.e("ttmn", "other exception when loading avmdl library: " + th3);
                        }
                    }
                    tryLoadTTNetLoaderPlugin();
                    tryLoadByteMediaNetLoaderPlugin();
                }
                return !mIsLibraryLoaded ? -1 : 0;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }

    public static synchronized int init(boolean z10, boolean z11, boolean z12) {
        synchronized (AVMDLDataLoader.class) {
            try {
                if (mIsLibraryLoaded) {
                    return 0;
                }
                mIsLibraryLoaded = z10;
                if (!mIsLibraryLoaded) {
                    if (!BoringsslLoaderWrapper.loadBoringssl()) {
                        Log.e("ttmn", "load boringssl fail!");
                    }
                    if (!VcnlibloadWrapper.tryLoadVcnlib()) {
                        Log.e("ttmn", "Can't load vcn ");
                    }
                    loadAVMDLBaseLibrary();
                    if (z12) {
                        Log.e("ttmn", "try load avmdlv2");
                        try {
                            System.loadLibrary("avmdlv2");
                            mIsLibraryLoaded = true;
                            Log.e("ttmn", "load avmdlv2 suc");
                            if (z11) {
                                Log.e("ttmn", "try to load pcdn lib");
                            }
                        } catch (UnsatisfiedLinkError e10) {
                            Log.e("ttmn", "load avmdlv2 failed: " + e10);
                            Log.e("ttmn", "load avmdlv2 failed msg:" + e10.getMessage());
                        }
                    }
                    if (!mIsLibraryLoaded) {
                        try {
                            System.loadLibrary("avmdl");
                            mIsLibraryLoaded = true;
                        } catch (UnsatisfiedLinkError e11) {
                            mLoadFailMsg = "Can't load avmdl library: " + e11;
                            Log.e("ttmn", "Can't load avmdl library: " + e11);
                        } catch (Throwable th2) {
                            mLoadFailMsg = "other exception when loading avmdl library: " + th2;
                            Log.e("ttmn", "other exception when loading avmdl library: " + th2);
                        }
                        if (!VcnlibloadWrapper.tryLoadVcnverifylib()) {
                            Log.e("ttmn", "Can't load vcnverify lib ");
                        }
                        if (z11) {
                            Log.e("ttmn", "try to load pcdn lib");
                            try {
                                System.loadLibrary("avmdlp2p");
                            } catch (UnsatisfiedLinkError e12) {
                                Log.e("ttmn", "Can't load avmdlp2p library: " + e12);
                            } catch (Throwable th3) {
                                Log.e("ttmn", "other exception when loading avmdl library: " + th3);
                            }
                        }
                        tryLoadTTNetLoaderPlugin();
                        tryLoadByteMediaNetLoaderPlugin();
                    }
                }
                return !mIsLibraryLoaded ? -1 : 0;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }
}
