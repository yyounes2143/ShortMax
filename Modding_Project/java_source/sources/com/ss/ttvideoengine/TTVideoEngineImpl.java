package com.ss.ttvideoengine;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import android.webkit.URLUtil;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.ProxyConfig;
import com.bytedance.vcloud.abrmodule.ABRAudioStream;
import com.bytedance.vcloud.abrmodule.ABRBufferInfo;
import com.bytedance.vcloud.abrmodule.ABRConfig;
import com.bytedance.vcloud.abrmodule.ABRResult;
import com.bytedance.vcloud.abrmodule.ABRVideoStream;
import com.bytedance.vcloud.abrmodule.DefaultABRModule;
import com.bytedance.vcloud.abrmodule.IABRModule;
import com.bytedance.vcloud.abrmodule.IABRModuleSpeedRecord;
import com.bytedance.vcloud.abrmodule.IAudioStream;
import com.bytedance.vcloud.abrmodule.IBufferInfo;
import com.bytedance.vcloud.abrmodule.IPlayStateSupplier;
import com.bytedance.vcloud.abrmodule.ISegmentInfo;
import com.bytedance.vcloud.abrmodule.IVideoStream;
import com.bytedance.vcloud.networkpredictor.ISpeedPredictor;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.common.util.GmsVersion;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.TextureRenderConfig;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.texturerender.TextureRenderLog;
import com.ss.texturerender.TextureRenderManager;
import com.ss.texturerender.VideoSurface;
import com.ss.texturerender.effect.EffectConfig;
import com.ss.ttm.player.ABRStrategy;
import com.ss.ttm.player.AudioProcessor;
import com.ss.ttm.player.BufferProcessCallback;
import com.ss.ttm.player.BufferProcessProto;
import com.ss.ttm.player.FrameMetadataListener;
import com.ss.ttm.player.HLSChooseStreamInterface;
import com.ss.ttm.player.IMediaDataSource;
import com.ss.ttm.player.LoadControl;
import com.ss.ttm.player.MaskInfo;
import com.ss.ttm.player.MediaFormat;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.player.NativeAudioProcessor;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttm.player.SubInfo;
import com.ss.ttm.player.TTPlayerConfiger;
import com.ss.ttm.player.TraitObject;
import com.ss.ttvideoengine.TTVideoEngineMonitor;
import com.ss.ttvideoengine.VideoInfoCollector;
import com.ss.ttvideoengine.VideoModelCache;
import com.ss.ttvideoengine.abr.SegmentInfo;
import com.ss.ttvideoengine.configcenter.ConfigItemFactory;
import com.ss.ttvideoengine.configcenter.EngineConfig;
import com.ss.ttvideoengine.configcenter.IEngineConfig;
import com.ss.ttvideoengine.configcenter.OptionHolder;
import com.ss.ttvideoengine.configcenter.PlayerConfigExecutor;
import com.ss.ttvideoengine.database.VideoModelDBManager;
import com.ss.ttvideoengine.drm.DrmUtils;
import com.ss.ttvideoengine.fetcher.FetcherApiHelper;
import com.ss.ttvideoengine.fetcher.FetcherMaker;
import com.ss.ttvideoengine.fetcher.SubInfoFetcher;
import com.ss.ttvideoengine.fetcher.VideoInfoFetcher;
import com.ss.ttvideoengine.fetcher.mdlfethcer.FetcherMakerNew;
import com.ss.ttvideoengine.fetcher.mdlfethcer.MDLFetcherListener;
import com.ss.ttvideoengine.log.EngineInstanceHolder;
import com.ss.ttvideoengine.log.EventLoggerSource;
import com.ss.ttvideoengine.log.ExternVideoLoggerListener;
import com.ss.ttvideoengine.log.HeadsetStateMonitor;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.log.PortraitNetworkScore;
import com.ss.ttvideoengine.log.VideoEventBase;
import com.ss.ttvideoengine.log.VideoEventLoggerV2;
import com.ss.ttvideoengine.log.VideoEventManager;
import com.ss.ttvideoengine.log.VideoEventOneNoRender;
import com.ss.ttvideoengine.metrics.IMediaMetrics;
import com.ss.ttvideoengine.model.DubbedInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.IntertrustDrmHelper;
import com.ss.ttvideoengine.model.MediaBitrateFitterInfo;
import com.ss.ttvideoengine.model.VideoInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.model.VideoRef;
import com.ss.ttvideoengine.net.ChannelSelect;
import com.ss.ttvideoengine.net.DNSCompletionListener;
import com.ss.ttvideoengine.net.DNSParser;
import com.ss.ttvideoengine.net.NetUtils;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.playermetrcis.PlayerMetrics;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.preloader.TTAVPreloaderItem;
import com.ss.ttvideoengine.selector.gracie.GracieSelector;
import com.ss.ttvideoengine.selector.shift.SpeedShiftConfig;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.source.strategy.CodecStrategy;
import com.ss.ttvideoengine.source.strategy.CodecStrategyAdapter;
import com.ss.ttvideoengine.source.strategy.SmartUrlFetcher;
import com.ss.ttvideoengine.strategrycenter.StrategyCenter;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.strategy.StrategyManager;
import com.ss.ttvideoengine.strategy.refresh.TTVideoEngineSourceRefreshStrategy;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import com.ss.ttvideoengine.utils.DisplayMode;
import com.ss.ttvideoengine.utils.EngineException;
import com.ss.ttvideoengine.utils.EngineThreadPool;
import com.ss.ttvideoengine.utils.Error;
import com.ss.ttvideoengine.utils.FormatProvider;
import com.ss.ttvideoengine.utils.IPlayDurationManager;
import com.ss.ttvideoengine.utils.MDLExtraInfoHelper;
import com.ss.ttvideoengine.utils.PlayDurationManager;
import com.ss.ttvideoengine.utils.TTHelper;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import com.ss.ttvideoengine.utils.TTVideoEngineUtils;
import com.ss.ttvideoengine.utils.TimeService;
import com.vungle.ads.internal.model.AdPayload;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileReader;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class TTVideoEngineImpl extends TTVideoEngineInternal implements TTVideoEngineInterface {
    private static final String BASH_PREFIX_NAME = "mem://bash";
    private static final String ERROR_MSG_ENCRYPT_VIDEO_NOT_SUPPORT = "Player can't decode encryted video";
    private static final String EXO_PLAYER_VERSION = "5.0";
    private static final String HEADER_ENGINE_ID = "Engine-ID";
    private static final String HEADER_IS_FALLBACK_API_RETRY = "X-Tt-Fapi";
    private static final String HEADER_IS_FILE_SIZE = "X-VideoModel-FSize";
    private static final String HEADER_IS_FIRST_FRAME_SEC = "X-PCDN-FRange-Sec";
    private static final String HEADER_IS_FIRST_RANGE_SIZE = "X-PCDN-FRange-Size";
    private static final String HEADER_IS_HOST = "Host";
    private static final String HEADER_IS_KEY_TOKEN = "X-Key-Token";
    private static final String HEADER_IS_MDL_GROUP_ID = "X-Tt-GroupId";
    private static final String HEADER_IS_SPEEDTEST = "X-SpeedTest-TimeInternal";
    private static final String HEADER_IS_SUBTAG = "X-Tt-SubTag";
    private static final String HEADER_IS_TAG = "X-Tt-Tag";
    private static final String HEADER_IS_TRACEID = "X-Tt-Traceid";
    private static final String HEADER_IS_VDPDISK = "X-Tt-VdpIo";
    private static final String HLS_MEM_PREFIX_NAME = "mem://hls";
    private static final int MAX_LOG_LINE_LENGTH = 3900;
    private static final String OWN_LITE_PLAYER_VERSION = "4.0";
    private static final String OWN_PLAYER_VERSION = "3.0";
    private static final String OWN_PLAYER_VERSION_BETA = "3.0-beta";
    private static final String OWN_PLAYER_VERSION_PLAYER3 = "3.3";
    private static final int PLAY_TYPE_LIVE = 1;
    private static final int PLAY_TYPE_VIDEO = 0;
    private static final int PLAY_URL_EXPIRE_TIME = 2400;
    private static final String SDK_VERSION = "1.10.172.340-jzdrm-premium";
    private static final String SERVER_LOG_VERSION = "5.6";
    private static final String SYS_PLAYER_VERSION = "1.0";
    private static final String TAG = "TTVideoEngine";
    private static String mAppPath = null;
    private static boolean mIsFirstOpenEngine = true;
    private static Context mSettingConfig;
    private static FetcherMaker sFetcherMaker;
    private String currentHost;
    private Resolution currentResolution;
    private VideoInfo currentVideoInfo;
    private Map<Integer, String> dashAudioUrlMap;
    private Map<Resolution, String> dashVideoUrlMap;
    private Set<Integer> effectTypeSet;
    private Resolution expectedResolution;
    private Resolution lastResolution;
    private int mABR4GMaxResolutionIndex;
    private int mABR4GMaxResolutionMode;
    private String mABR4GMaxResolutionQuality;
    private float mABRBandwidthParameter;
    private int mABRCurrentDownloadedAudioBitrate;
    private int mABREnableAggressivePortraitLowBit;
    private IABRModule mABRModule;
    private int mABRProbeMode;
    private int mABRSpeedPredictOutType;
    private float mABRStallPenaltyParameter;
    private float mABRStartupBandwidthParameter;
    private float mABRSwitchPenaltyParameter;
    private int mABRWithSR;
    private MaskInfo mAIBarrageInfoInterface;
    AIBarrageSimpleCallback mAIBarrageInfoListener;
    private String mAIBarrageUrl;
    private String mAPIString;
    private int mAVsyncRefined;
    private int mAnRenderRefreshSurface;
    private boolean mAsyncInitSR;
    private int mAsyncManageResource;
    private MediaPlayer mAsyncPlayer;
    private int mAsyncSetWindow;
    private int mAudioCodecProfile;
    private int mAudioDecoderGraphMerged;
    private int mAudioGraphRefactor;
    private int mAudioPtsCalibrationType;
    private int mAudioUseDirectBuffer;
    private int mAutoAddMedia;
    private int mAutoDisconnectedCpu;
    private int mAutoRangeOffset;
    private int mBT601CloseCodecAsync;
    private String mBarrageMaskUrl;
    private HashMap<String, String> mBashDashDefaultMDLKeys;
    private boolean mBashRetryRestartPlayer;
    private long mBitrate;
    private BufferProcessCallback mBufferProcessCallback;
    CacheFilePathListener mCacheFilePathListener;
    private int mCalibrationAudioPts;
    private int mChangeRecBufferSpeed;
    private String mClassLoaderState;
    private int mClipHEAACV2FirstPtsPacket;
    private int mCloseCodecPool;
    private boolean mCloseRenderStartMsgOnSwitchResolutionDone;
    private int mCodecAndSurfaceReuse;
    private int mCodecHistoryLength;
    private int mCodecMaxUsedCount;
    private int mCodecPoolSupportDynamicExtend;
    private int mCodecPoolVersion;
    private CodecStrategyAdapter mCodecStrategyAdapter;
    private float mContainerFPS;
    private int mCreateAudioTrackEarly;
    private int mCurPosition;
    private DNSParser mDNSParser;
    private int mDangerBufferThreshold;
    private DataSource mDataSource;
    private int mDecoderRenderClearSurface;
    private int mDecoderRenderClearTextureRenderRef;
    private int mDecoderRenderContinueRetry;
    private int mDecoderRenderVC2RenderLatencyGeneral;
    private int mDecoderRenderVC2RenderLatencySR;
    private int mDisablePlayerStayAwake;
    private int mDisableSpiltVoiceWrite;
    private int mDiscardCodecStrategy1;
    private int mDiscardCodecStrategy2;
    private DisplayMode mDisplayMode;
    private int mDowngradeResolutionIndex;
    private String mDowngradeResolutionQuality;
    private int mDummySurfaceForbid;
    private VideoInfo mDynamicAudioInfo;
    private boolean mDynamicControlSR;
    private int mDynamicExtendCodecNums;
    private int mDynamicThreadPriorityValue;
    private VideoInfo mDynamicVideoInfo;
    private int mEnableAIBarrage;
    private int mEnableAIBarrageThread;
    private int mEnableAsyncDownload;
    private int mEnableAsyncProbe;
    private int mEnableAudioMemIntergration;
    private int mEnableAudioTrackSmoothClock;
    private int mEnableBarrageMask;
    private int mEnableBufferingLowerCapacity;
    private int mEnableCPPh265CodecOpt;
    private int mEnableCPPh266CodecOpt;
    private int mEnableCacheInfo;
    private int mEnableClearTextureRefAsync;
    private int mEnableClockResumeResetEof;
    private int mEnableCodecRecycle;
    private int mEnableDecoderRenderVC2RenderLatency;
    private int mEnableDemuxNonBlockRead;
    private int mEnableDowngradeAsyncCodec;
    private int mEnableFallbackInMaxInstanceErr;
    private int mEnableFastStop;
    private int mEnableHChipAdaptiveWorkAround;
    private int mEnableHEAACV2PtsMSCorrection;
    private boolean mEnableHeartBeat;
    private boolean mEnableLooperThread;
    private int mEnableMCRenderHandleSAR;
    private int mEnableMChipSkipAdaptiveWorkAround;
    private int mEnableMaskThread;
    private int mEnableMediaCodecDeathCheck;
    private int mEnableMediaCodecFairMutex;
    private int mEnableMediaCodecPipeline;
    private int mEnableMediaCodecRealtime;
    private int mEnableMediaCodecSyncClose;
    private int mEnableMp4Check;
    private int mEnableNativeYV12Render;
    private int mEnableNetLevel;
    private int mEnableOptInaccurateStart;
    private int mEnableOptSeekClk;
    private int mEnableOptSubSearch;
    private int mEnableOptimizeAsyncDownload;
    private int mEnableOptimizeDashSeek;
    private int mEnableOptimizeHWDec2SWDec;
    private int mEnableOptimizeIO;
    private int mEnableOptimizeMp4Abr;
    private int mEnableOptimizePrerender;
    private int mEnableOptimizeRadioMode;
    private boolean mEnableOutletDropLimit;
    private int mEnablePreRenderBufferingUpdate;
    private int mEnablePreloadGear;
    private int mEnableRangeOptimize;
    private int mEnableRecreateSubIfDetached;
    private int mEnableRefreshByTime;
    private int mEnableReportFirstAVSyncFrame;
    private boolean mEnableReportPreloadTraceId;
    private boolean mEnableSCABRStrategy;
    private int mEnableSeekBuffering;
    private boolean mEnableSetupMediaCodec;
    private boolean mEnableSourceRefreshStrategy;
    private boolean mEnableSpeedReport;
    private int mEnableStartPlaySync;
    private int mEnableSub;
    private int mEnableSubThread;
    private int mEnableTextureRenderNoRenderCheck;
    private int mEnableThreadPriority;
    private int mEnableTmpLog;
    private int mEnableVC1BlockList;
    private int mEnableVideoSecondFrame;
    private int mEnableVideoTimestampMonotonic;
    private int mEnableVodVideoRenderStall;
    private int mEnbalePreDemux;
    private String mEngineHash;
    private int mEngineRetryNotify;
    private TTVideoEngineMonitor mEngineStateMonitor;
    @NonNull
    private final TTVideoEngine mEngineWrapper;
    private boolean mErrorRetryOpt;
    private boolean mErrorThrowOptEnable;
    private String mExternLogKey;
    ExternVideoLoggerListener mExternVideoLoggerListener;
    private TTVideoEngineFFmpegProtocol mFFmpegProtocol;
    private String mFallbackAPI;
    private int mFeedPacketUntilEmpty;
    private boolean mFetchWithAbilityOption;
    private VideoInfoFetcher mFetcher;
    private List<String> mFileHashs;
    private int mFilePlayNoBuffering;
    private int mFlushWhenSetSurface;
    private int mForbidBufferingNotFinished;
    private int mForbidFallbackNativeRender;
    private int mForceCloseCodec;
    private String mForceCodec;
    private int mFrameCount;
    private int mFrameNumsInMediaCodec;
    private boolean mGetPositionSkipLooper;
    private int mGiveBackCodecEarly;
    private Handler mHandler;
    private int mHardwareCodecerFlushClose;
    private Map<String, String> mHeaders;
    private HeadsetStateMonitor mHeadsetMonitor;
    private int mHeartBeatInterval;
    private boolean mHeartBeatStarted;
    private int mHlsSubDemuxerProbeType;
    private int mIgnoreAudioRenderEOSDelayMs;
    private int mIgnoreDirectlyBuffering;
    private int mIgnoreSurfaceCreated;
    private String mInitialUrlBeforeMdlProxy;
    private IntertrustDrmHelper mIntertrustDrmHelper;
    private String mKeyseed;
    @NonNull
    ListenerCompact mListenerCompact;
    private int mLiveStartIndex;
    private LoadControl mLoadControlInterface;
    @NonNull
    private IVideoEventLogger mLogger;
    @NonNull
    private TTVideoEngineLooperThread2 mLooperThread;
    private int mMCMaxHeight;
    private int mMCMaxWidth;
    private MDLFetcherListener mMDLFetcherListener;
    private String mMDLGroupId;
    private String mMaskFileHash;
    private long mMaskFileSize;
    private MaskInfo mMaskInfoInterface;
    MaskInfoListener mMaskInfoListener;
    private int mMaxCodecNumsInPool;
    private int mMdlEnableSeekReopen;
    private int mMediaCodecAsyncModeEnable;
    private int mMediaCodecDeathCheckInterval;
    private int mMediaCodecDeathTimeout;
    private Map<String, Object> mMediaInfoMap;
    private int mMediacodecStopTimeout;
    private int mMetrcisAbility;
    private int mMetrcisInterVal;
    private int mNativeCallAbr;
    private int mNativeRenderRotationAdapt;
    private TTVNetClient mNetClient;
    private int mNetSpeedInterval;
    private float mNetworkSpeedReportSamplingRate;
    private int mNoBufferUpdate;
    private int mOnlyPlayAudioForBothStream;
    private int mOpenSubRetryTimes;
    private int mOptAudioRenderTimeReport;
    @NonNull
    private OptionHolder mOptionHolder;
    private int mOverlayMode;
    private boolean mPlayBackUsedSR;
    private boolean mPlayDurationExcludePlayerMethod;
    private long mPlayStartTimestamp;
    PlayerEventSimpleListener mPlayerEventListener;
    private int mPlayerViewHeight;
    private int mPlayerViewWidth;
    private int mPosUpdateInterval;
    private int mPreRenderBufferingUpdatePercentage;
    private int mPreciseCache;
    private long mPrecisePausePts;
    private int mPreferNearestMaxPosOffset;
    private ArrayList<String> mPrivCodecName;
    private int mQueryAdaptivePlayback;
    private int mQueryWinEnable;
    private boolean mQuickGetFileCache;
    private int mReadCacheMode;
    private int mRecBufferThresh;
    private int mRecBufferType;
    private boolean mRefreshSurfaceDone;
    private boolean mRefreshSurfaceFlag;
    private boolean mRefreshTextureSurface;
    private int mRenderStallThreshold;
    private int mReportFirstFrameFrameBufferOnly;
    private int mRetryErrCnt;
    private boolean mSRIgnoreRes;
    private int mSRNotUseReason;
    private int mScreenHeight;
    private int mScreenWidth;
    private int mSecureBufferThreshold;
    private long mSendEngineMsgTimeout;
    private int mSetSurfaceDirectly;
    private int mSetSurfaceRetryCount;
    private int mSetSurfaceRetryInterval;
    private int mSettingCodecName;
    private boolean mSkipStartWhenPrepared;
    private TTVideoEngineSourceRefreshStrategy mSourceRefreshStrategy;
    private SpeedShiftConfig mSpeedShiftConfig;
    private int mStartupMaxBitRateIndex;
    private String mStartupMaxBitRateQuality;
    private SubInfoFetcher mSubFetcher;
    SubInfoSimpleCallBack mSubInfoCallBack;
    private SubInfo mSubInfoInterface;
    SubInfoListener mSubInfoListener;
    private String mSubPathInfo;
    private Surface mSurfaceRecord;
    private TTTestSpeedListener mTTSpeedListener;
    private Handler mTestNetSpeedHandler;
    private TestNetSpeedListener mTestNetSpeedListener;
    private Runnable mTestNetSpeedRunable;
    private int mTextureRenderError;
    private TextureRenderManager mTextureRenderer;
    private String mTextureSRBinPath;
    private String mTextureSRDspModuleName;
    private String mTextureSROclModuleName;
    private VideoSurface mTextureSurface;
    private int mThreadName2CharSuffix;
    private int mThreadPriorityValue;
    private int mThreadSafeRefSwitcher;
    private int mTlsLog;
    protected String mTraceId;
    private String[] mURLs;
    private int mUnsupportedSampleRatesInBinary;
    private boolean mUseFallbackAPI;
    private boolean mUseSRTexture;
    private int mUseVdpDisk;
    private int mUserExitTimeMs;
    private int mVideoCodecProfile;
    private VideoEngineConfigResolutionListener mVideoEngineConfigResolutionListener;
    VideoEngineInfoListener mVideoEngineInfoListener;
    private String mVideoID;
    VideoInfoListener mVideoInfoListener;
    private IVideoModel mVideoModel;
    private VideoModelCache mVideoModelCache;
    private int mVideoModelVersion;
    private int mWaitingCodecMs;
    private int mWifiDefaultResolutionIndex;
    private String mWifiDefaultResolutionQuality;
    private int mh266NalsizeCheck;
    @NonNull
    private Map<String, IpInfo> urlIPMap;
    private Map<Resolution, Integer> urlIndexMap;
    private static Lock mCreatCacheFileLock = new ReentrantLock();
    private static TextureRenderLog.OnLogListenerExt mTextureLogListenerExt = null;
    private static boolean mHasRegisterMdlProto = false;
    private static boolean mHasRegisterMdlProtoForExo = false;
    private static final Map<Surface, Boolean> mSurfaceHashMap = new ConcurrentHashMap(15);
    private static String mChipBoardName = null;
    private Set<Integer> mSettedKeys = new HashSet();
    private int mTestNetSpeedDiff = 500;
    private int mTestNetSpeed = -1;
    private int mPlayerCache = 0;
    private boolean mHttpsEnabled = false;
    private String mCodecType = "h264";
    private boolean mDashEnabled = false;
    private boolean mBashEnabled = false;
    private boolean mHLSSeamlessSwitch = false;
    private int mHlsEnabled = 0;
    private int mEncryptEnabled = 0;
    private boolean mDirectUrlBashEnabled = false;
    private boolean mIsDashSource = false;
    private boolean mHasSetHardWare = false;
    private boolean mUseServerDecodingMode = false;
    private boolean mHasSetAESrcLoudness = false;
    private boolean mHasSetAESrcPeak = false;
    private boolean mAEForbidCompressor = false;
    private int mSeekEndEnabled = 0;
    private int mAVSyncInterruptEnable = 0;
    private int mEnhancementType = 0;
    private int mScaleType = 0;
    private int mLayoutType = 0;
    private int mRenderType = 3;
    private int mRotation = 0;
    private boolean mIsMirrorHorizontal = false;
    private boolean mIsMirrorVertical = false;
    private int mForbidh265SoftwareDecode = 1;
    private int mHardwareDropNonRef = 0;
    private int mP2PCDNType = 0;
    private int mForbidP2P = 0;
    private int mTestAction = 0;
    private int mDecoderType = 0;
    private int mOpenVoiceEarly = 0;
    private int mBufferDataMiliSeconds = 0;
    private int mNetworkTryCount = -1;
    private int mPlayAPIVersion = 0;
    private String mAuthorization = "";
    private String mSubAuthToken = "";
    private int mDisableAccurateStart = 0;
    private int mEnableSharp = 0;
    private int mEGLNeedWorkAround = 1;
    private int mOriginalRetry = 1;
    private int mStopCloseIO = 0;
    private int mAudioTrackContentType = -1;
    private int mMovPreferNearestSample = 0;
    private int mSkipFfmpegFindStreamInfo = 0;
    private int mMaxFps = 0;
    private int mEnableDynamicFrameDropping = 0;
    private int mFrameDroppingMultiple = 10;
    private int mFrameDroppingCheckPeriod = 300;
    private int mFrameDroppingCheckCount = 3;
    private int mHWMaxFps = 0;
    private int mHWEnableDynamicFrameDropping = 0;
    private int mHWFrameDroppingMultiple = 10;
    private int mHWFrameDroppingCheckPeriod = 300;
    private int mHWFrameDroppingCheckCount = 3;
    private int mEnableHWDropFrameWhenVOIsInDropState = 0;
    private int mEnableHWDropFrameWhenAVOutSyncing = 0;
    private int mCodecFramesDrop = -1;
    private int mFrameDropNum = 2;
    private int mKsyFrameWait = 1;
    private int mLoopReferVideo = 0;
    private int mSkipAudioGraph = 0;
    private int mMediaCodecRender = 1;
    private int mUseMediacodecAudio = 0;
    private int mNotifyBufferingDirectly = 0;
    private int mMediaCodecSkipNonRef = 0;
    private int mUseQcomLowLatency = 0;
    private int mUseQcomVpp = 0;
    private int mQcomVppLevel = -1;
    private int mEnableVolumeBalance = 0;
    private float mAEPreGain = 0.25f;
    private float mAEThreshold = -18.0f;
    private float mAERatio = 8.0f;
    private float mAEPredelay = 0.007f;
    private float mSrcLoudness = 0.0f;
    private float mSrcPeak = 0.0f;
    private float mTarLoudness = -16.0f;
    private float mReleaseTime = 200.0f;
    private float mLookAheadTime = 3.0f;
    private int mAEType = 0;
    private float mLuRange = 0.0f;
    private float mLuStart = 0.0f;
    private float mLuEnd = 0.0f;
    private float mMaxMomLu = 0.0f;
    private float mMaxShortermLu = 0.0f;
    private int mVolumInfoVer = 0;
    private int mDeviceAEPlayAbility = 0;
    private boolean mHasSetAEVolumeInfo = false;
    private String mAEConfigJson = "";
    private String mVolumeInfoJson = "";
    private String mAEGraphConfig = "";
    private boolean mClearShutDown = false;
    private int mAudioStreamType = -2;
    private int mAudioTrackSessionId = -1;
    private int mAudioChannelType = 0;
    private int mSeekMode = 0;
    private int mDisablePlayerTimeOut = 0;
    private int mEnableSeekInterrupt = 0;
    private int mMaxBufferDataMilliSeconds = 5000;
    private int mMediaCodecSyncMode = 0;
    private int mOutputLog = 0;
    private int mExposeSignal = 0;
    private int mBufferTimeout = 30;
    private int mFailTryAgain = 1;
    private int mNetworkTimeout = 5;
    private boolean mWaitForFetchInfoResult = true;
    private int mSpeedXDrop = 0;
    private float mSpeedXDropFPSLimit = 50.0f;
    private int mEnableLoadControlBufferingTimeout = 0;
    private int mEnableDebugUINotify = 0;
    private int mGetMasterClockByPts = 0;
    private int mAlwaysDoAVSync = 0;
    private int mEnableFallbackSWDec = 1;
    private int mAudioInfoId = -1;
    private int mEnableDeinterlace = 0;
    private int mTextureRenderForbidReuseVideoSurfaceTexture = 0;
    private int mTextureRenderForbidForbidReuseTexture = 0;
    private int mDecoderRenderVC2PreCreateRender = 0;
    private int mVC2LowerRenderCapacity = 0;
    private int mVC2LowerRenderCapacityNOSR = 0;
    private int mVC2DecodecLowLatency = 0;
    private int mVC2WppMode = 0;
    private int mVC2DynamicControl = 0;
    private int mAudioPtsMSCorrectionExtension = 0;
    private int mLowerAudioMemCapacity = 0;
    private int mVC2ThreadNum = 4;
    private int mSetPlayerSurfaceWithLock = 0;
    private int mEnableSurfaceHashmapJudgement = 0;
    private int mEnableTextureRenderNativeWindow = 0;
    private int mEnableFrameCallbackInRenderThread = 0;
    private int mEnableNotifyRenderException = 0;
    private boolean mHaveSetSpeedTest = false;
    private int mPlayType = 0;
    private SubDesInfoModelProvider mSubDesInfoModel = null;
    private VideoEngineGetInfoListener mVideoEngineGetInfoListener = null;
    private LinkedList<Pair<Surface, Integer>> mExtraSurfaceQueue = new LinkedList<>();
    private TTVideoEngineSurfaceCallback mSurfaceCallback = null;
    private long mPlayStartTime = -1;
    private long mRenderStartTime = -1;
    private long currentBitrate = -1;
    private int mStartupDowngradeType = 0;
    private Resolution mResolutionBeforeDowngrade = null;
    private String mQualityDescBeforeDowngrade = "";
    private long mLastSwitchResolutionTime = 0;
    private boolean mSeamSwitchingResolution = false;
    private boolean mResolutionSwitching = false;
    private long mResolutionSwitchingStartTime = 0;
    private boolean mHasFetchedSubtitle = false;
    private boolean mHasAudioFirstFrameShown = false;
    private int mStartTime = 0;
    private int mLoopStartTime = 0;
    private int mLoopEndTime = 0;
    private int mLoopCount = 0;
    private int mEnableOppoControl = 0;
    private int mReuseSocket = 0;
    private int mDrmType = 0;
    private int mDrmDowngrade = 0;
    private int mDrmCloseRootCheck = 0;
    private boolean mDrmRetry = true;
    private String mFileKey = null;
    private String mDecryptionKey = "";
    private String mSpadea = "";
    private String mTokenUrlTemplate = "";
    private String mGroupID = "";
    private boolean mIsPreloaderItem = false;
    private TTAVPreloaderItem mPreloaderItem = null;
    private String mSubLanIds = "";
    private String mSubIds = "";
    private String mSubFormat = "";
    private String mSubHostName = "";
    private String mSubVersions = "";
    private String mBufferProcessProtoName = null;
    private String mBufferProcessCovertOrder = null;
    private boolean mIsFeedInfo = false;
    private boolean mIsPlayItem = false;
    private TTVideoEnginePlayItem mPlayItem = null;
    private boolean mFirstURL = true;
    private boolean mFirstHost = true;
    private boolean mFirstIP = true;
    private boolean mFirstQuality = true;
    private boolean mFirstQualityType = true;
    private boolean mFirstResolution = true;
    private boolean mCacheControlEnabled = false;
    private boolean mIsPreDecodeAutoPause = true;
    private boolean mIsPrepareDecodeOnly = false;
    private boolean mOSPlayerIgnoreHeaders = false;
    private long mBufferingStartT = 0;
    private long mPauseStartT = 0;
    private FileDescriptor mPlayFd = null;
    private long mPipeOffset = 0;
    private long mPipeLength = 0;
    private IMediaDataSource mMediaDataSource = null;
    private boolean mUseDNSCache = false;
    private int mDNSExpiredTime = 0;
    private boolean mUseVideoModelCache = false;
    private boolean mUseVideoModelCacheForce = false;
    private int mIsUsePlayerDNS = -1;
    private boolean mIsFetchingInfo = false;
    private int mDataLoaderEnable = 0;
    private HashMap<String, Resolution> mResolutionMap = null;
    private boolean mIsUseBoe = false;
    private int mLimitMDLCacheSize = 0;
    private ArrayList<String> mUsingDataLoaderPlayTaskKeys = new ArrayList<>();
    private ArrayList<String> mUsingDataLoaderPlayFilePaths = new ArrayList<>();
    private String mUsingDataLoaderPlayRawKey = null;
    private boolean mAllowedExpiredModel = false;
    private int mIsDisableShortSeek = 0;
    private int mEnableStartTimeSkipAvSkipSerial = 0;
    private AudioProcessor mAudioProcessor = null;
    private int mAsyncSetAudioProcessor = 0;
    private TraitObjectManager mTraitObjManager = new TraitObjectManager();
    private TTVideoEnginePlayHLSChooseStreamCallback mHLSChooseStreamCb = null;
    private int mAsyncSetHLSChooseStream = 0;
    private int mUseTextureRender = 0;
    private int mCleanSurfaceWhenReset = 0;
    private int mFirstFrameOpenTexture = 0;
    private boolean mTextureFirstFrame = false;
    private boolean mPlayerFirstFrame = false;
    private String mTextureRenderErrorMsg = null;
    private boolean mDecodedVideoFirstFrame = false;
    private int mTextureSrOpen = 0;
    private TextureRenderStrategy mTRSrategy = new TextureRenderStrategy();
    private int mOldTextureAlgType = -1;
    private int mTextureAlgType = -1;
    private int mSrBackend = 0;
    private int mSrScaleType = 0;
    private int mSrPoolSize = 0;
    private String mProgramCacheDir = "";
    private int mUseBmfComponent = 0;
    private int mUseBmfDirectInvoke = 0;
    private Bundle mBmfInitConfigBundle = null;
    private Bundle mBmfSrProcessParam = null;
    private int mMaxTextureWidth = 0;
    private int mMaxTextureHeight = 0;
    private String mSRLibPath = "";
    private Bundle mLensBundle = null;
    private boolean mAsyncInitEffect = false;
    private boolean mEnableSRStrategy = false;
    private SRStrategy mSRStrategy = new SRStrategy();
    private int mEnableVideoFrameMetaCallback = 0;
    private int mNoAVSync = 0;
    private int mRenderHDR2SDR = 0;
    private int mSyncUpdateSurface = 0;
    private Queue<Bundle> mEffectBundle = new LinkedList();
    private Map<Integer, String> currentParams = null;
    private Map<Integer, String> expectedParams = null;
    private String mCurrentQuality = "";
    private String mCurrentQualityDesc = "";
    private int mCurrentQualityType = 0;
    private boolean mAsyncPlayHitVMCache = false;
    private boolean mIsUseServerDns = false;
    private int mUseAudioHWDec = 0;
    private int mDefaultRenderType = 3;
    private boolean mEnableHttps = false;
    private boolean mRetryEnableHttps = false;
    private boolean mCheckHijack = false;
    private boolean mHijackRetry = true;
    private int mHijackRetryCount = 0;
    private int mHijackRetryMainDNSType = 2;
    private int mHijackRetryBackupDNSType = 0;
    private String mCheckInfoString = null;
    private int mEnableFlushSeek = 0;
    private int mSoloPlayEnable = 1;
    private int mCurrentSubId = 0;
    private int mEnableOptSubLoadTime = 0;
    private int mEnableSubtitleSenseBuffering = 0;
    private int mEnableSubtitleLazyLoading = 0;
    private int mMaskDelayLoading = 0;
    private int mMaskEnableDataloader = 1;
    private int mMaskRangeOpt = 1;
    private int mMaskHeaderLen = 0;
    private int mEnablexHEAACSupport = 0;
    private int mDecodeAACThroughFDKAAC = 0;
    private int mEnableAudioSeekingNoAccurate = 0;
    private int mEnableSetPlayInfoToP2P = 1;
    private int mFirstRangeSize = 0;
    private int mNetSpeedLevel = -1;
    private int mSupportPlayWhenNoSurface = 0;
    private int mEnableGetPlayerReqOffset = 1;
    private boolean mShouldUseAudioRenderStart = false;
    private long mLastSetSurfaceNullTime = 0;
    private int mSetValidSurfaceTimeout = 0;
    private int mDelayBufferingUpdate = 0;
    private int mPostPrepare = 0;
    private int mStopSourceAsync = 0;
    private int mDisableHWDecSeamless = 0;
    private int mEnableVideoCodecPixelAlign = 0;
    private int mDisableMcReuse = 0;
    private int mCodecFrcLevel = 0;
    private int mPrepareCacheMs = 1000;
    private float mFirstFrameSecOffset = 0.0f;
    private int mEnableCacheTimeStamp = 0;
    private int mKeepFormatThreadAlive = 0;
    private int mSkipBufferTimeout = 0;
    private final long mSerial = System.currentTimeMillis();
    private int mCacheJFrameField = 0;
    private int mTimeBarPercentage = 0;
    private int mBestResolutionType = 0;
    private int mEnableIndexCache = 0;
    private int mEnableAsync = 0;
    private int mEnableFragRange = 0;
    private int mLazySeek = 1;
    private int mFFCodecerHeaacV2Compat = 0;
    private int mRangeMode = 0;
    private int mReadMode = 0;
    private int mUpdateTimestampMode = 1;
    private int mEnableOpenTimeout = 1;
    private int mSegmentFormatFlag = 2;
    private int mVideoRangeSize = 1048576;
    private int mAudioRangeSize = TTVideoEngineInterface.DEFAULT_AUDIO_RANGE_SIZE;
    private int mVideoRangeTime = 5000;
    private int mAudioRangeTime = 10000;
    private int mSeekExact = 0;
    private int mEnableDirectUrlCheck = 0;
    private int mFindStreamInfoProbeSize = GmsVersion.VERSION_LONGHORN;
    private int mFindStreamInfoProbDuration = 0;
    private int mNetworkReconnectCount = 0;
    private int mDummyAudioSleep = 1;
    private long mVVTime = 0;
    private long mVideoPreloadSize = 0;
    private URLInfo mURLInfo = new URLInfo();
    private int mIsTTHlsDrm = 0;
    private String mTTHlsDrmToken = "";
    private int mVoiceType = -1;
    private int mAccurateLayout = 0;
    private int mFallbackApiRetry = 0;
    private boolean mEnableForceDisableOESRender = false;
    private boolean mForceDisableOESRender = false;
    private int mResumeFileIOBlockThresMs = 0;
    private int mUseCodecPool = 0;
    private int mNeedAdaptiveWorkaround = 0;
    private int mEnableClearMDLCache = 0;
    private int mEglVersion = 2;
    private int mStartupSwitchCSModel = -1;
    private int mStartupModel = -1;
    private long mStartUpBitrate = -1;
    private long mPredictStartBitrate = -1;
    private long mUserExpectedBitrate = -1;
    private long mDowngradeBitrate = -1;
    private long mMaxCacheBitrate = -1;
    private long mAbrStartupBitrateBeforeFitScreen = -1;
    private float mAbrStartUpSpeed = -1.0f;
    private float mAbrStartUpPredictSpeed = -1.0f;
    private float mAbrStartUpAverageSpeed = -1.0f;
    private float mAbrUserQualitySensitivity = -1.0f;
    private int mAbrUserEnterFullScreen = -1;
    private String mAbrVer = null;
    private String mNetVer = null;
    String mStartUpResolution = "";
    private String mAbrSrInfo = "";
    private String mAbrStartupInfo = "";
    private int mGearStrategyEnabled = 0;
    private GearStrategyConfig mGearStrategyConfig = new GearStrategyConfig();
    private Map mGearStrategyEvent = new HashMap();
    private int mEnableABR = 0;
    private int mEnableHlsABR = 0;
    private boolean mABRUsed = false;
    private int mStandAlongAbrStartUp = 0;
    private int mABRTimerIntervalMilliseconds = 500;
    private int mABRSwitchMode = 0;
    private int mABRSwitchSensitivity = 0;
    private int mABRSwitchCSModel = 1;
    private int mABRStartupModel = 0;
    private int mABROnceType = 0;
    private int mABRFixedLevel = 2;
    private int mABRStartupSpeedType = 4;

    /* loaded from: classes6.dex */
    public static class DeleteBeforeDirFileRunnable implements Runnable {
        private Context context;

        public DeleteBeforeDirFileRunnable(Context context) {
            this.context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTHelper.deleteBeforeDirFiles(this.context);
        }
    }

    /* loaded from: classes6.dex */
    public class IpInfo {
        public String dns;

        /* renamed from: ip */
        public String f37055ip;
        public int isDNSCacheOpen;
        public int isServerDNSOpen;
        public String urlDesc;

        public IpInfo(String str, String str2, int i10, int i11, String str3) {
            TTVideoEngineImpl.this = r1;
            this.f37055ip = str;
            this.dns = str2;
            this.isDNSCacheOpen = i10;
            this.isServerDNSOpen = i11;
            this.urlDesc = str3;
        }
    }

    /* loaded from: classes6.dex */
    public static class MDLCacheSizeRunnable implements Runnable {
        private WeakReference<TTVideoEngineImpl> mVideoEngineRef;
        private ArrayList<String> temFilePaths;
        private ArrayList<String> temKeys;

        public MDLCacheSizeRunnable(TTVideoEngineImpl tTVideoEngineImpl, ArrayList<String> arrayList, ArrayList<String> arrayList2) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
            this.temKeys = arrayList;
            this.temFilePaths = arrayList2;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mState != 5) {
                String str = tTVideoEngineImpl.mVideoID;
                String str2 = tTVideoEngineImpl.mMDLGroupId;
                ArrayList<String> arrayList = this.temFilePaths;
                if (arrayList != null && arrayList.size() > 0) {
                    for (int i12 = 0; i12 < this.temFilePaths.size(); i12++) {
                        String str3 = this.temFilePaths.get(i12);
                        long cacheFileSizeByFilePath = TTVideoEngine.getCacheFileSizeByFilePath(str3);
                        if (cacheFileSizeByFilePath == 0) {
                            i11 = (int) TTVideoEngine.getMissReason(0, str3, str, str2);
                        } else {
                            i11 = 0;
                        }
                        if (tTVideoEngineImpl.mHandler != null) {
                            tTVideoEngineImpl.mHandler.sendMessage(Message.obtain(tTVideoEngineImpl.mHandler, 10, (int) cacheFileSizeByFilePath, i11, str3));
                        }
                    }
                    return;
                }
                ArrayList<String> arrayList2 = this.temKeys;
                if (arrayList2 != null && arrayList2.size() > 0) {
                    for (int i13 = 0; i13 < this.temKeys.size(); i13++) {
                        String str4 = this.temKeys.get(i13);
                        long cacheFileSize = TTVideoEngine.getCacheFileSize(str4);
                        if (cacheFileSize == 0) {
                            i10 = (int) TTVideoEngine.getMissReason(1, str4, str, str2);
                        } else {
                            i10 = 0;
                        }
                        if (tTVideoEngineImpl.mHandler != null) {
                            tTVideoEngineImpl.mHandler.sendMessage(Message.obtain(tTVideoEngineImpl.mHandler, 10, (int) cacheFileSize, i10, str4));
                        }
                    }
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class MyABRStrategy extends ABRStrategy {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        @Override // com.ss.ttm.player.ABRStrategy
        public int probeBitrate(int i10) {
            ABRResult predict;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || tTVideoEngineImpl.mABRModule == null || (predict = tTVideoEngineImpl.mABRModule.getPredict()) == null || predict.size() <= 0) {
                return -1;
            }
            int bitrate = (int) predict.get(0).getBitrate();
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.d(logcatTag, "[ABR] predict next segment bitrate:" + bitrate + "bps, this:" + tTVideoEngineImpl);
            return bitrate;
        }

        private MyABRStrategy(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttm.player.ABRStrategy
        public String probeBitrate(String str) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || tTVideoEngineImpl.mABRModule == null) {
                return null;
            }
            String predictByJsonParams = tTVideoEngineImpl.mABRModule.getPredictByJsonParams(str);
            if (!TextUtils.isEmpty(predictByJsonParams)) {
                String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                TTVideoEngineLog.d(logcatTag, "[ABR] predict next segment result:" + predictByJsonParams + ", this:" + tTVideoEngineImpl);
            }
            return predictByJsonParams;
        }
    }

    /* loaded from: classes6.dex */
    public static class MyDNSCompletionListener implements DNSCompletionListener {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        public MyDNSCompletionListener(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.net.DNSCompletionListener
        public void onCancelled() {
            TTVideoEngineLog.i(TTVideoEngineInternal.logcatTag(this.mVideoEngineRef.get()), "dns cancelled");
        }

        @Override // com.ss.ttvideoengine.net.DNSCompletionListener
        public void onCompletion(JSONObject jSONObject, Error error) {
            String str;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return;
            }
            if (tTVideoEngineImpl.mShouldStop) {
                TTVideoEngineLog.w(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "MyDNSCompletionListener should stop");
            } else if (error != null) {
                String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                TTVideoEngineLog.e(logcatTag, "dns failed:" + error.toString());
                tTVideoEngineImpl.receivedError(error);
            } else {
                if (jSONObject != null) {
                    str = jSONObject.optString(DNSParser.DNS_RESULT_IP);
                    long optLong = jSONObject.optLong(CrashHianalyticsData.TIME);
                    String optString = jSONObject.optString("dns_type");
                    if (tTVideoEngineImpl.mLogger != null) {
                        tTVideoEngineImpl.mLogger.setDNSEndTime(optLong);
                        tTVideoEngineImpl.mLogger.setStringOption(86, optString);
                    }
                } else {
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    tTVideoEngineImpl._parseDNSComplete(str);
                    return;
                }
                tTVideoEngineImpl.receivedError(new Error("", (int) Error.ResultEmpty, "DNS result empty"));
                TTVideoEngineLog.e(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "dns parse empty");
            }
        }

        @Override // com.ss.ttvideoengine.net.DNSCompletionListener
        public void onRetry(Error error) {
            if (error != null) {
                return;
            }
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.e(logcatTag, "fetcher should retry, error:" + error.toString());
            if (tTVideoEngineImpl == null) {
                return;
            }
            tTVideoEngineImpl.mLogger.firstDNSFailed(error);
        }
    }

    /* loaded from: classes6.dex */
    public static class MyDrmTokenProcessedListener implements IntertrustDrmHelper.IntertrustDrmHelperListener {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        public MyDrmTokenProcessedListener(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.model.IntertrustDrmHelper.IntertrustDrmHelperListener
        public void onError(Error error) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && error != null) {
                tTVideoEngineImpl.receivedError(error);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:72:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0085  */
        @Override // com.ss.ttvideoengine.model.IntertrustDrmHelper.IntertrustDrmHelperListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onTokenProcessed(com.ss.ttvideoengine.utils.Error r6) {
            /*
                r5 = this;
                r0 = 1
                r1 = 2
                java.lang.ref.WeakReference<com.ss.ttvideoengine.TTVideoEngineImpl> r2 = r5.mVideoEngineRef
                java.lang.Object r2 = r2.get()
                com.ss.ttvideoengine.TTVideoEngineImpl r2 = (com.ss.ttvideoengine.TTVideoEngineImpl) r2
                if (r2 != 0) goto Ld
                return
            Ld:
                boolean r3 = r2.mUserStopped
                if (r3 == 0) goto L12
                return
            L12:
                if (r6 == 0) goto L17
                r2.receivedError(r6)
            L17:
                com.ss.ttvideoengine.model.IVideoModel r6 = com.ss.ttvideoengine.TTVideoEngineImpl.access$5000(r2)
                if (r6 == 0) goto L74
                com.ss.ttvideoengine.model.IVideoModel r6 = com.ss.ttvideoengine.TTVideoEngineImpl.access$5000(r2)
                java.lang.String r6 = r6.getVType()
                r6.hashCode()
                r3 = -1
                int r4 = r6.hashCode()
                switch(r4) {
                    case 103407: goto L47;
                    case 108321: goto L3c;
                    case 3075986: goto L31;
                    default: goto L30;
                }
            L30:
                goto L51
            L31:
                java.lang.String r4 = "dash"
                boolean r6 = r6.equals(r4)
                if (r6 != 0) goto L3a
                goto L51
            L3a:
                r3 = r1
                goto L51
            L3c:
                java.lang.String r4 = "mpd"
                boolean r6 = r6.equals(r4)
                if (r6 != 0) goto L45
                goto L51
            L45:
                r3 = r0
                goto L51
            L47:
                java.lang.String r4 = "hls"
                boolean r6 = r6.equals(r4)
                if (r6 != 0) goto L50
                goto L51
            L50:
                r3 = 0
            L51:
                switch(r3) {
                    case 0: goto L75;
                    case 1: goto L74;
                    case 2: goto L74;
                    default: goto L54;
                }
            L54:
                java.lang.String r6 = com.ss.ttvideoengine.TTVideoEngineInternal.logcatTag(r2)
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r3 = "intertrust drm unsupported vtype:"
                r0.append(r3)
                com.ss.ttvideoengine.model.IVideoModel r3 = com.ss.ttvideoengine.TTVideoEngineImpl.access$5000(r2)
                java.lang.String r3 = r3.getVType()
                r0.append(r3)
                java.lang.String r0 = r0.toString()
                com.ss.ttvideoengine.utils.TTVideoEngineLog.w(r6, r0)
            L74:
                r0 = r1
            L75:
                com.ss.ttvideoengine.model.IntertrustDrmHelper r6 = com.ss.ttvideoengine.TTVideoEngineImpl.access$6900(r2)
                if (r6 != 0) goto L85
                java.lang.String r6 = com.ss.ttvideoengine.TTVideoEngineInternal.logcatTag(r2)
                java.lang.String r0 = "mIntertrustDrmHelper is null, return."
                com.ss.ttvideoengine.utils.TTVideoEngineLog.e(r6, r0)
                return
            L85:
                com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r1 = com.ss.ttvideoengine.TTVideoEngineImpl.access$7000(r2)
                java.lang.String r1 = r1.hostURL
                java.lang.String r6 = r6.makeUrl(r1, r0)
                boolean r0 = android.text.TextUtils.isEmpty(r6)
                if (r0 == 0) goto La2
                com.ss.ttvideoengine.utils.Error r6 = new com.ss.ttvideoengine.utils.Error
                java.lang.String r0 = "kTTVideoErrorDomainIntertrustDRM"
                r1 = -9936(0xffffffffffffd930, float:NaN)
                r6.<init>(r0, r1)
                r2.receivedError(r6)
                return
            La2:
                java.util.Map r0 = com.ss.ttvideoengine.TTVideoEngineImpl.access$7100(r2)
                com.ss.ttvideoengine.TTVideoEngineImpl.access$7200(r2, r6, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl.MyDrmTokenProcessedListener.onTokenProcessed(com.ss.ttvideoengine.utils.Error):void");
        }
    }

    /* loaded from: classes6.dex */
    public static class MyFetcherListener implements VideoInfoFetcher.FetcherListener {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        public MyFetcherListener(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onCompletion(VideoModel videoModel, Error error) {
            boolean onFetchedVideoInfo;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null) {
                tTVideoEngineImpl.mIsFetchingInfo = false;
                if (videoModel != null && error == null) {
                    tTVideoEngineImpl.mVideoModel = videoModel;
                    TTVideoEngineLog.i(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "fetch info success");
                    tTVideoEngineImpl._logFetchedVideoInfo(videoModel);
                    if (tTVideoEngineImpl.mEnableTmpLog == 1) {
                        tTVideoEngineImpl.showLongLog(tTVideoEngineImpl.mVideoModel.toMediaInfoJsonString());
                    }
                    tTVideoEngineImpl.mIsDashSource = videoModel.isDashSource();
                    tTVideoEngineImpl.mDashEnabled = tTVideoEngineImpl.mIsDashSource;
                    tTVideoEngineImpl.mEngineConfig.setIntOption(17, tTVideoEngineImpl.mIsDashSource ? 1 : 0);
                    if (tTVideoEngineImpl.mCodecStrategyAdapter.isCodecStrategyValid()) {
                        tTVideoEngineImpl.mCodecStrategyAdapter.correctStrategy(videoModel);
                    }
                    if (!tTVideoEngineImpl.mIsPreloaderItem) {
                        tTVideoEngineImpl.fetchedVideoInfo(videoModel);
                        if (tTVideoEngineImpl.mVideoInfoListener != null) {
                            if (tTVideoEngineImpl.mLooperThread.checkSendMainLooper()) {
                                if (tTVideoEngineImpl.getConfigInt(558, tTVideoEngineImpl.mWaitForFetchInfoResult ? 1 : 0) != 0) {
                                    tTVideoEngineImpl.mLooperThread.sendMainLooperMessage(411, 0, 0, tTVideoEngineImpl.mVideoModel);
                                    if (tTVideoEngineImpl.mLooperThread.mMainMsgRetValue.readInt() == 1) {
                                        onFetchedVideoInfo = true;
                                    }
                                } else {
                                    tTVideoEngineImpl.mLooperThread.postMainLooperMessage(411, 0, 0, tTVideoEngineImpl.mVideoModel);
                                }
                                onFetchedVideoInfo = false;
                            } else {
                                onFetchedVideoInfo = tTVideoEngineImpl.mVideoInfoListener.onFetchedVideoInfo(videoModel);
                            }
                            if (onFetchedVideoInfo) {
                                tTVideoEngineImpl.mLogger.fetchedAndLeaveByUser(1);
                                return;
                            }
                            tTVideoEngineImpl.mLogger.fetchedAndLeaveByUser(0);
                        }
                        if (tTVideoEngineImpl.mCodecStrategyAdapter.isFetchSmartUrl()) {
                            tTVideoEngineImpl.configResolution(CodecStrategy.SmartUrlVod.findTargetResolution(tTVideoEngineImpl.mVideoModel));
                        }
                        tTVideoEngineImpl._parseIPAddress(videoModel);
                        return;
                    }
                    return;
                }
                TTVideoEngineLog.e(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "fetch info failed:" + error.toString());
                if (error.parameters.containsKey("log_id")) {
                    tTVideoEngineImpl.mLogger.setStringOption(15, (String) error.parameters.get("log_id"));
                }
                tTVideoEngineImpl._logFetchedFailed(error);
                tTVideoEngineImpl.receivedError(error);
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onLog(String str) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            TTVideoEngineLog.i(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "fetcher cancelled");
            if (tTVideoEngineImpl != null) {
                tTVideoEngineImpl._logMessage(str);
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onRetry(Error error) {
            if (error == null) {
                return;
            }
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.e(logcatTag, "fetcher should retry, error:" + error.toString());
            if (tTVideoEngineImpl == null) {
                return;
            }
            tTVideoEngineImpl.mLogger.needRetryToFetch(error, tTVideoEngineImpl.mPlayAPIVersion);
        }

        @Override // com.ss.ttvideoengine.fetcher.VideoInfoFetcher.FetcherListener
        public void onStatusException(int i10, String str) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return;
            }
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.e(logcatTag, "video status exception:" + i10);
            tTVideoEngineImpl.mIsFetchingInfo = false;
            if (tTVideoEngineImpl.mLogger != null) {
                tTVideoEngineImpl.mLogger.movieFinish(i10, str);
            }
            if (tTVideoEngineImpl.mLooperThread.checkSendMainLooper()) {
                tTVideoEngineImpl.mLooperThread.postMainLooperMessage(410, i10, 0, null);
            } else {
                tTVideoEngineImpl.mListenerCompact.onVideoStatusException(i10);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class MyFrameMetadataListener implements FrameMetadataListener {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        @Override // com.ss.ttm.player.FrameMetadataListener
        public void onFrameAboutToBeRendered(int i10, long j10, long j11, Map<Integer, String> map) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mTextureSurface != null) {
                tTVideoEngineImpl.mTextureSurface.frameMetaCallback(j10, j11, map);
            }
            if (tTVideoEngineImpl.mLooperThread.checkSendMainLooper()) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", Integer.valueOf(i10));
                hashMap.put("pts", Long.valueOf(j10));
                hashMap.put("wallClockTime", Long.valueOf(j11));
                hashMap.put("frameData", map);
                tTVideoEngineImpl.mLooperThread.postMainLooperMessage(421, 0, 0, hashMap);
                return;
            }
            tTVideoEngineImpl.mListenerCompact.onFrameAboutToBeRendered(tTVideoEngineImpl.mEngineWrapper, i10, j10, j11, map);
        }

        private MyFrameMetadataListener(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttm.player.FrameMetadataListener
        public void receiveBinarySei(ByteBuffer byteBuffer) {
        }

        @Override // com.ss.ttm.player.FrameMetadataListener
        public void frameDTSNotify(int i10, long j10, long j11) {
        }

        @Override // com.ss.ttm.player.FrameMetadataListener
        public void updateFrameTerminatedDTS(int i10, long j10, long j11) {
        }
    }

    /* loaded from: classes6.dex */
    public static class MyHLSChooseStreamInterface extends HLSChooseStreamInterface {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        MyHLSChooseStreamInterface(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttm.player.HLSChooseStreamInterface
        public int chooseRenditionInfoId(int i10) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mHLSChooseStreamCb != null) {
                return tTVideoEngineImpl.mHLSChooseStreamCb.chooseRenditionInfoId(i10);
            }
            return -1;
        }

        @Override // com.ss.ttm.player.HLSChooseStreamInterface
        public int chooseVariantBandWidth() {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mHLSChooseStreamCb != null) {
                return tTVideoEngineImpl.mHLSChooseStreamCb.chooseVariantBandWidth();
            }
            return -1;
        }

        @Override // com.ss.ttm.player.HLSChooseStreamInterface
        public void streamInfos(HLSChooseStreamInterface.Variant[] variantArr) {
            TTVideoEngineMasterPlaylist convert = TTVideoEnginePlayHLSChooseStreamCallback.convert(variantArr);
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mHLSChooseStreamCb != null) {
                tTVideoEngineImpl.mHLSChooseStreamCb.streamInfos(convert);
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class MyLoggerDataSource implements EventLoggerSource {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        public MyLoggerDataSource(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public Map<String, Long> bytesInfo() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("vds", Long.valueOf(mediaPlayer.getLongOption(45, 0L)));
            hashMap.put("vps", Long.valueOf(mediaPlayer.getLongOption(46, 0L)));
            hashMap.put("download_speed", Long.valueOf(mediaPlayer.getLongOption(63, -1L)));
            hashMap.put("vlen", Long.valueOf(mediaPlayer.getLongOption(72, -1L)));
            hashMap.put("alen", Long.valueOf(mediaPlayer.getLongOption(73, -1L)));
            hashMap.put("vDecLen", Long.valueOf(mediaPlayer.getLongOption(602, -1L)));
            hashMap.put("aDecLen", Long.valueOf(mediaPlayer.getLongOption(603, -1L)));
            hashMap.put("vBaseLen", Long.valueOf(mediaPlayer.getLongOption(604, -1L)));
            hashMap.put("aBaseLen", Long.valueOf(mediaPlayer.getLongOption(605, -1L)));
            hashMap.put("avGap", Long.valueOf(mediaPlayer.getLongOption(606, -1L)));
            hashMap.put("single_vds", Long.valueOf(mediaPlayer.getLongOption(145, 0L)));
            hashMap.put("accu_vds", Long.valueOf(mediaPlayer.getLongOption(476, 0L)));
            return hashMap;
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public ArrayList forebackSwitchList() {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineGetInfoListener != null) {
                Object info = tTVideoEngineImpl.mVideoEngineGetInfoListener.getInfo(2);
                if (info instanceof ArrayList) {
                    return (ArrayList) info;
                }
            }
            return null;
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public float getLogValueFloat(int i10) {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1.0f;
            }
            if (i10 != 82) {
                if (i10 != 83) {
                    return -1.0f;
                }
                return mediaPlayer.getFloatOption(150, -1.0f);
            }
            return mediaPlayer.getFloatOption(151, -1.0f);
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public int getLogValueInt(int i10) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return -1;
            }
            switch (i10) {
                case 21:
                    return tTVideoEngineImpl.mPlaybackState;
                case 22:
                    return tTVideoEngineImpl.mLoadState;
                case 23:
                    return tTVideoEngineImpl.mState;
                case 24:
                    MediaPlayer mediaPlayer = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer == null) {
                        return -1;
                    }
                    if (tTVideoEngineImpl.mVideoCodecType < 0) {
                        tTVideoEngineImpl.mVideoCodecType = mediaPlayer.getIntOption(157, -1);
                    }
                    return tTVideoEngineImpl.mVideoCodecType;
                case 25:
                    MediaPlayer mediaPlayer2 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer2 == null) {
                        return -1;
                    }
                    if (tTVideoEngineImpl.mAudioCodecType < 0) {
                        tTVideoEngineImpl.mAudioCodecType = mediaPlayer2.getIntOption(158, -1);
                    }
                    return tTVideoEngineImpl.mAudioCodecType;
                case 26:
                    return (int) tTVideoEngineImpl.getVolume();
                case 27:
                    MediaPlayer mediaPlayer3 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer3 == null) {
                        return -1;
                    }
                    if (mediaPlayer3.isMute()) {
                        return 1;
                    }
                    return 0;
                case 30:
                    return tTVideoEngineImpl.mPlayAPIVersion;
                case 34:
                    return tTVideoEngineImpl.getConfigInt(203, tTVideoEngineImpl.mMovPreferNearestSample);
                case 35:
                    return tTVideoEngineImpl.mNetworkTimeout;
                case 36:
                    return tTVideoEngineImpl.getConfigInt(198, tTVideoEngineImpl.mIsDisableShortSeek);
                case 42:
                    MediaPlayer mediaPlayer4 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer4 == null) {
                        return -1;
                    }
                    return mediaPlayer4.getIntOption(221, -1);
                case 43:
                    MediaPlayer mediaPlayer5 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer5 == null) {
                        return -1;
                    }
                    return mediaPlayer5.getIntOption(222, -1);
                case 44:
                    MediaPlayer mediaPlayer6 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer6 == null) {
                        return -1;
                    }
                    return mediaPlayer6.getIntOption(245, -1);
                case 49:
                    MediaPlayer mediaPlayer7 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer7 == null) {
                        return -1;
                    }
                    return mediaPlayer7.getIntOption(44, -1);
                case 61:
                    MediaPlayer mediaPlayer8 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer8 == null) {
                        return -1;
                    }
                    return mediaPlayer8.getIntOption(53, -1);
                case 63:
                    if (tTVideoEngineImpl.mVideoCodecProfile != -1) {
                        return tTVideoEngineImpl.mVideoCodecProfile;
                    }
                    MediaPlayer mediaPlayer9 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer9 != null) {
                        tTVideoEngineImpl.mVideoCodecProfile = mediaPlayer9.getIntOption(403, -1);
                    }
                    return tTVideoEngineImpl.mVideoCodecProfile;
                case 64:
                    if (tTVideoEngineImpl.mAudioCodecProfile != -1) {
                        return tTVideoEngineImpl.mAudioCodecProfile;
                    }
                    MediaPlayer mediaPlayer10 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer10 != null) {
                        tTVideoEngineImpl.mAudioCodecProfile = mediaPlayer10.getIntOption(402, -1);
                    }
                    return tTVideoEngineImpl.mAudioCodecProfile;
                case 67:
                    if (tTVideoEngineImpl.mCurPosition > 0) {
                        return tTVideoEngineImpl.mCurPosition;
                    }
                    MediaPlayer mediaPlayer11 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer11 == null) {
                        return -1;
                    }
                    return mediaPlayer11.getCurrentPosition();
                case 69:
                    MediaPlayer mediaPlayer12 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer12 == null) {
                        return -1;
                    }
                    return mediaPlayer12.getIntOption(601, -1);
                case 77:
                    MediaPlayer mediaPlayer13 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer13 == null) {
                        return -1;
                    }
                    return mediaPlayer13.getIntOption(540, -1);
                case 79:
                    MediaPlayer mediaPlayer14 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer14 == null) {
                        return -1;
                    }
                    return mediaPlayer14.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE, -1);
                case 81:
                    MediaPlayer mediaPlayer15 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer15 == null) {
                        return -1;
                    }
                    return mediaPlayer15.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE, -1);
                case 84:
                    MediaPlayer mediaPlayer16 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer16 == null) {
                        return -1;
                    }
                    return mediaPlayer16.getIntOption(186, -1);
                case 85:
                    return EngineGlobalConfig.getInstance().getDnsCustomType();
                case 87:
                    if (tTVideoEngineImpl.mSurface == null) {
                        return 1;
                    }
                    return 0;
                case 88:
                    return tTVideoEngineImpl.mRadioModeEnable;
                case 89:
                    HeadsetStateMonitor headsetStateMonitor = tTVideoEngineImpl.mHeadsetMonitor;
                    if (headsetStateMonitor == null) {
                        return -1;
                    }
                    return headsetStateMonitor.isWiredConnected() ? 1 : 0;
                case 90:
                    HeadsetStateMonitor headsetStateMonitor2 = tTVideoEngineImpl.mHeadsetMonitor;
                    if (headsetStateMonitor2 == null) {
                        return -1;
                    }
                    return headsetStateMonitor2.isWirelessConnected() ? 1 : 0;
                case 94:
                    if (tTVideoEngineImpl.mVideoEngineGetInfoListener == null) {
                        return -1;
                    }
                    Object info = tTVideoEngineImpl.mVideoEngineGetInfoListener.getInfo(1);
                    if (!(info instanceof Integer)) {
                        return -1;
                    }
                    return ((Integer) info).intValue();
                case 97:
                    MediaPlayer mediaPlayer17 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer17 == null) {
                        return -1;
                    }
                    return mediaPlayer17.getIntOption(181, -1);
                case 100:
                    return tTVideoEngineImpl.mTextureRenderError;
                case 101:
                    return tTVideoEngineImpl.isplaybackUsedSR() ? 1 : 0;
                case 103:
                    MediaPlayer mediaPlayer18 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer18 == null) {
                        return -1;
                    }
                    return mediaPlayer18.getIntOption(24, -1);
                case 109:
                    IABRModule iABRModule = tTVideoEngineImpl.mABRModule;
                    if (iABRModule == null) {
                        return -1;
                    }
                    return (int) iABRModule.getLongOption(53, -1L);
                case 113:
                    int i11 = tTVideoEngineImpl.mSetValidSurfaceTimeout;
                    tTVideoEngineImpl.mSetValidSurfaceTimeout = 0;
                    return i11;
                case 114:
                    MediaPlayer mediaPlayer19 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer19 == null) {
                        return -1;
                    }
                    return mediaPlayer19.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_GET_NETWORK_CONNECT_COUNT, -1);
                case 121:
                    return TTVideoEngine.sEnableGloablMuteFeature;
                case 122:
                    return TTVideoEngine.sGlobalMute;
                case 142:
                    MediaPlayer mediaPlayer20 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer20 == null) {
                        return -1;
                    }
                    return mediaPlayer20.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED, -1);
                case 145:
                    MediaPlayer mediaPlayer21 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer21 == null) {
                        return 0;
                    }
                    return mediaPlayer21.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_BUFFERING_THRESHOLD_SIZE, 0);
                case 147:
                    MediaPlayer mediaPlayer22 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer22 == null) {
                        return -1;
                    }
                    return mediaPlayer22.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_FRAME_NUMS_IN_MEDIACODEC, -1);
                case 148:
                    return TTVideoEngine.sEnableEncryptBuryData;
                case 154:
                    MediaPlayer mediaPlayer23 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer23 == null) {
                        return -1;
                    }
                    return mediaPlayer23.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MCMONITOR_QUEUE_SIZE, -1);
                case 156:
                    MediaPlayer mediaPlayer24 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer24 == null) {
                        return -1;
                    }
                    return mediaPlayer24.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_COUNT, -1);
                default:
                    return -1;
            }
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public long getLogValueLong(int i10) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return -1L;
            }
            if (i10 != 95) {
                MediaPlayer mediaPlayer = tTVideoEngineImpl.mMediaPlayer;
                if (mediaPlayer == null) {
                    return -1L;
                }
                if (i10 != 91) {
                    if (i10 == 92) {
                        return tTVideoEngineImpl.mLastSwitchResolutionTime;
                    }
                    if (i10 != 137) {
                        if (i10 != 138) {
                            if (i10 != 140) {
                                if (i10 != 141) {
                                    int i11 = -1;
                                    switch (i10) {
                                        case 7:
                                            return mediaPlayer.getLongOption(68, -1L);
                                        case 10:
                                            return mediaPlayer.getLongOption(69, -1L);
                                        case 11:
                                            return mediaPlayer.getLongOption(70, -1L);
                                        case 12:
                                            return mediaPlayer.getLongOption(75, -1L);
                                        case 13:
                                            return mediaPlayer.getLongOption(76, -1L);
                                        case 14:
                                            return mediaPlayer.getLongOption(77, -1L);
                                        case 15:
                                            return mediaPlayer.getLongOption(78, -1L);
                                        case 16:
                                            return mediaPlayer.getLongOption(156, -1L);
                                        case 17:
                                            return mediaPlayer.getLongOption(155, -1L);
                                        case 18:
                                            return mediaPlayer.getLongOption(163, -1L);
                                        case 19:
                                            return mediaPlayer.getLongOption(162, -1L);
                                        case 45:
                                            return mediaPlayer.getLongOption(152, -1L);
                                        case 66:
                                            return mediaPlayer.getLongOption(517, -1L);
                                        case 68:
                                            return mediaPlayer.getLongOption(72, -1L);
                                        case 75:
                                            return mediaPlayer.getLongOption(171, -1L);
                                        case 96:
                                            return mediaPlayer.getLongOption(526, -1L);
                                        case 112:
                                            return tTVideoEngineImpl.mLastSetSurfaceNullTime;
                                        case 144:
                                            if (tTVideoEngineImpl.getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_GET_PLAYER_REQ_OFFSET, tTVideoEngineImpl.mEnableGetPlayerReqOffset) != 0) {
                                                i11 = -2;
                                            }
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAYER_REQ_OFFSET, i11);
                                        case 149:
                                            if (tTVideoEngineImpl.getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_GET_PLAYER_REQ_OFFSET, tTVideoEngineImpl.mEnableGetPlayerReqOffset) != 0) {
                                                i11 = -3;
                                            }
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAYER_REQ_OFFSET, i11);
                                        case 150:
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAYER_READ_STATE, -1L);
                                        case 152:
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_QUEUE_INPUTBUFFER_COUNT, -1L);
                                        case 153:
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_DEQUEUE_OUTPUTBUFFER_COUNT, -1L);
                                        default:
                                            switch (i10) {
                                                case 38:
                                                    return mediaPlayer.getLongOption(307, -1L);
                                                case 39:
                                                    return mediaPlayer.getLongOption(308, -1L);
                                                case 40:
                                                    return tTVideoEngineImpl.mPlayTime;
                                                case 41:
                                                    return tTVideoEngineImpl.mVVTime;
                                                default:
                                                    switch (i10) {
                                                        case 51:
                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, -1L);
                                                        case 52:
                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, -1L);
                                                        case 53:
                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, -1L);
                                                        case 54:
                                                            return mediaPlayer.getLongOption(606, -1L);
                                                        default:
                                                            switch (i10) {
                                                                case 56:
                                                                    return mediaPlayer.getLongOption(45, -1L);
                                                                case 57:
                                                                    return mediaPlayer.getLongOption(607, -1L);
                                                                case 58:
                                                                    return mediaPlayer.getLongOption(608, -1L);
                                                                default:
                                                                    switch (i10) {
                                                                        case 70:
                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DOWNLOAD_BYTES, -1L);
                                                                        case 71:
                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DOWNLOAD_BYTES, -1L);
                                                                        case 72:
                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN, -1L);
                                                                        case 73:
                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TOTAL_CACHED_LEN, -1L);
                                                                        default:
                                                                            switch (i10) {
                                                                                case 104:
                                                                                    return mediaPlayer.getLongOption(73, -1L);
                                                                                case 105:
                                                                                    return mediaPlayer.getLongOption(72, -1L);
                                                                                case 106:
                                                                                    return mediaPlayer.getLongOption(579, tTVideoEngineImpl.currentBitrate);
                                                                                case 107:
                                                                                    return mediaPlayer.getLongOption(577, tTVideoEngineImpl.currentBitrate);
                                                                                case 108:
                                                                                    return mediaPlayer.getLongOption(578, tTVideoEngineImpl.currentBitrate);
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 115:
                                                                                            return mediaPlayer.getLongOption(583, -1L);
                                                                                        case 116:
                                                                                            return mediaPlayer.getLongOption(588, -1L);
                                                                                        case 117:
                                                                                            return mediaPlayer.getLongOption(584, -1L);
                                                                                        case 118:
                                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRANS_OPEN_START_TIME, -1L);
                                                                                        case 119:
                                                                                            return mediaPlayer.getLongOption(585, -1L);
                                                                                        case 120:
                                                                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME, -1L);
                                                                                        default:
                                                                                            return -1L;
                                                                                    }
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                    }
                                }
                                return mediaPlayer.getLongOption(753, -1L);
                            }
                            return mediaPlayer.getLongOption(752, -1L);
                        }
                        return mediaPlayer.getLongOption(856, -1L);
                    }
                    return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DOWNLOAD_SIZE, -1L);
                }
                return tTVideoEngineImpl.mLastSwitchRadioModeTime;
            } else if (tTVideoEngineImpl.mVideoEngineGetInfoListener == null) {
                return -1L;
            } else {
                Object info = tTVideoEngineImpl.mVideoEngineGetInfoListener.getInfo(3);
                if (!(info instanceof Long)) {
                    return -1L;
                }
                return ((Long) info).longValue();
            }
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public Map<String, Object> getLogValueMap(int i10) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || i10 != 155 || tTVideoEngineImpl.mVideoEngineGetInfoListener == null) {
                return null;
            }
            return tTVideoEngineImpl.mVideoEngineGetInfoListener.getInfoMap(4);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public String getLogValueStr(int i10) {
            String str;
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            String str2 = "";
            if (tTVideoEngineImpl == null) {
                return "";
            }
            String str3 = "unknown_codec";
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 == 3) {
                            return tTVideoEngineImpl.mAPIString;
                        }
                        if (i10 != 4) {
                            if (i10 != 5) {
                                if (i10 != 110) {
                                    if (i10 != 111) {
                                        switch (i10) {
                                            case 29:
                                                return tTVideoEngineImpl.mAuthorization;
                                            case 37:
                                                return DataLoaderHelper.getDataLoader().getStringValue(6);
                                            case 46:
                                                if (tTVideoEngineImpl.mLogger == null) {
                                                    return "";
                                                }
                                                return tTVideoEngineImpl.mLogger.getExtraInfo();
                                            case 55:
                                                MediaPlayer mediaPlayer2 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer2 != null) {
                                                    return mediaPlayer2.getStringOption(609);
                                                }
                                                break;
                                            case 65:
                                                MediaPlayer mediaPlayer3 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer3 != null) {
                                                    return mediaPlayer3.getStringOption(516);
                                                }
                                                break;
                                            case 76:
                                                if (tTVideoEngineImpl.currentVideoInfo == null) {
                                                    return "";
                                                }
                                                return tTVideoEngineImpl.currentVideoInfo.getValueStr(7);
                                            case 78:
                                                MediaPlayer mediaPlayer4 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer4 != null) {
                                                    return mediaPlayer4.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_AVPTS_DIFF_LIST);
                                                }
                                                break;
                                            case 80:
                                                MediaPlayer mediaPlayer5 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer5 != null) {
                                                    return mediaPlayer5.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OUTFPS_LIST);
                                                }
                                                break;
                                            case 102:
                                                return tTVideoEngineImpl.mAbrVer;
                                            case 139:
                                                if (tTVideoEngineImpl.getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_REPORT_PRELOAD_TRACEID, tTVideoEngineImpl.mEnableReportPreloadTraceId ? 1 : 0) == 1) {
                                                    String str4 = tTVideoEngineImpl.mVideoID;
                                                    String str5 = tTVideoEngineImpl.mMDLGroupId;
                                                    DataLoaderHelper dataLoader = DataLoaderHelper.getDataLoader();
                                                    if (TextUtils.isEmpty(str5)) {
                                                        str = str4;
                                                    } else {
                                                        str = str5;
                                                    }
                                                    String preloadTraceId = dataLoader.getPreloadTraceId(str);
                                                    String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                                                    TTVideoEngineLog.i(logcatTag, "get preloadTraceId = " + preloadTraceId + ", groupId = " + str5 + ", videoID = " + str4 + ", engine = " + tTVideoEngineImpl);
                                                    if (!TextUtils.isEmpty(preloadTraceId)) {
                                                        DataLoaderHelper.getDataLoader().resetPreloadTraceId(str4);
                                                        String logcatTag2 = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                                                        TTVideoEngineLog.i(logcatTag2, "reset preloadTraceId = " + preloadTraceId);
                                                        return preloadTraceId;
                                                    }
                                                    return preloadTraceId;
                                                }
                                                return null;
                                            case 143:
                                                if (tTVideoEngineImpl.getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_PRELOAD_GEAR, tTVideoEngineImpl.mEnablePreloadGear) != 1 || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                                                    return "";
                                                }
                                                return mediaPlayer.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_PRELOAD_GEAR);
                                            case 146:
                                                MediaPlayer mediaPlayer6 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer6 != null) {
                                                    String stringOption = mediaPlayer6.getStringOption(479);
                                                    if (!TextUtils.isEmpty(stringOption)) {
                                                        str3 = stringOption;
                                                    }
                                                    String logcatTag3 = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                                                    TTVideoEngineLog.i(logcatTag3, "audio codec: " + str3);
                                                    return str3;
                                                }
                                                break;
                                            case 151:
                                                MediaPlayer mediaPlayer7 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer7 != null) {
                                                    return mediaPlayer7.getStringOption(481);
                                                }
                                                break;
                                            case 157:
                                                MediaPlayer mediaPlayer8 = tTVideoEngineImpl.mMediaPlayer;
                                                if (mediaPlayer8 != null) {
                                                    return mediaPlayer8.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST);
                                                }
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 31:
                                                        try {
                                                            return Build.BOARD;
                                                        } catch (Exception e10) {
                                                            TTVideoEngineLog.d(e10);
                                                            return "";
                                                        }
                                                    case 32:
                                                        try {
                                                            return Build.HARDWARE;
                                                        } catch (Exception e11) {
                                                            TTVideoEngineLog.d(e11);
                                                            return "";
                                                        }
                                                    case 33:
                                                        MediaPlayer mediaPlayer9 = tTVideoEngineImpl.mMediaPlayer;
                                                        if (mediaPlayer9 != null) {
                                                            return mediaPlayer9.getStringOption(200);
                                                        }
                                                        break;
                                                }
                                        }
                                    } else {
                                        if (TTVideoEngineImpl.mChipBoardName == null) {
                                            try {
                                                BufferedReader bufferedReader = new BufferedReader(new FileReader("proc/cpuinfo"));
                                                String readLine = bufferedReader.readLine();
                                                while (true) {
                                                    if (readLine == null) {
                                                        break;
                                                    } else if (readLine.contains("Hardware")) {
                                                        String[] split = readLine.split(":");
                                                        if (split.length > 1) {
                                                            str2 = split[1];
                                                        }
                                                    } else {
                                                        readLine = bufferedReader.readLine();
                                                    }
                                                }
                                                String unused = TTVideoEngineImpl.mChipBoardName = str2.trim();
                                            } catch (Exception e12) {
                                                TTVideoEngineLog.d(e12);
                                            }
                                        }
                                        return TTVideoEngineImpl.mChipBoardName;
                                    }
                                } else {
                                    MediaPlayer mediaPlayer10 = tTVideoEngineImpl.mMediaPlayer;
                                    if (mediaPlayer10 != null) {
                                        return mediaPlayer10.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_ERR_NO_VIDEO);
                                    }
                                }
                            } else {
                                MediaPlayer mediaPlayer11 = tTVideoEngineImpl.mMediaPlayer;
                                if (mediaPlayer11 != null) {
                                    return mediaPlayer11.getStringOption(71);
                                }
                            }
                        } else if (tTVideoEngineImpl.getNetClientSetByUser() == null) {
                            return "own";
                        } else {
                            return "user";
                        }
                    } else {
                        MediaPlayer mediaPlayer12 = tTVideoEngineImpl.mMediaPlayer;
                        if (mediaPlayer12 != null) {
                            return mediaPlayer12.getStringOption(5002);
                        }
                    }
                } else {
                    MediaPlayer mediaPlayer13 = tTVideoEngineImpl.mMediaPlayer;
                    if (mediaPlayer13 != null) {
                        int intOption = mediaPlayer13.getIntOption(139, -1);
                        if (intOption != 0) {
                            if (intOption == 1) {
                                return "nativewindow";
                            }
                        } else {
                            return "opengl";
                        }
                    }
                }
            } else {
                MediaPlayer mediaPlayer14 = tTVideoEngineImpl.mMediaPlayer;
                if (mediaPlayer14 != null) {
                    String stringOption2 = mediaPlayer14.getStringOption(478);
                    int intOption2 = tTVideoEngineImpl.mMediaPlayer.getIntOption(141, -1);
                    if (intOption2 == 1) {
                        stringOption2 = "h265";
                    } else if (intOption2 == 33) {
                        stringOption2 = "h266";
                    }
                    if (!tTVideoEngineImpl.isInHousePlayer() && intOption2 == 0) {
                        stringOption2 = "h264";
                    }
                    if (!TextUtils.isEmpty(stringOption2)) {
                        str3 = stringOption2;
                    }
                    String logcatTag4 = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                    TTVideoEngineLog.i(logcatTag4, "video codec: " + str3);
                    return str3;
                }
            }
            return "";
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public String getMediaLoaderInfo() {
            int i10;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.getConfigInt(160, tTVideoEngineImpl.mDataLoaderEnable) != 0) {
                return DataLoaderHelper.getDataLoader().getPlayLog(tTVideoEngineImpl.mTraceId);
            }
            if (tTVideoEngineImpl != null) {
                i10 = tTVideoEngineImpl.getConfigInt(160, tTVideoEngineImpl.mDataLoaderEnable);
            } else {
                i10 = 0;
            }
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.e(logcatTag, "videoEngine is:" + tTVideoEngineImpl + ", dataloader enable:" + i10);
            return null;
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public void onInfo(int i10, Map map) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            switch (i10) {
                case 0:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
                        videoEngineInfos.setKey(VideoEngineInfos.USING_BUFFERING_START_INFOS);
                        videoEngineInfos.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos, false);
                        return;
                    }
                    return;
                case 1:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos2 = new VideoEngineInfos();
                        videoEngineInfos2.setKey(VideoEngineInfos.USING_BUFFERING_END_INFOS);
                        videoEngineInfos2.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos2, false);
                        return;
                    }
                    return;
                case 2:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        JSONObject jSONObject = new JSONObject(map);
                        VideoEngineInfos videoEngineInfos3 = new VideoEngineInfos();
                        videoEngineInfos3.setKey(VideoEngineInfos.USING_FIRST_FRAME_SPLIT_INFOS);
                        videoEngineInfos3.setObject(jSONObject);
                        videoEngineInfos3.setGroupID(tTVideoEngineImpl.mGroupID);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos3, true);
                        return;
                    }
                    return;
                case 3:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos4 = new VideoEngineInfos();
                        videoEngineInfos4.setKey(VideoEngineInfos.USING_OUTSYNC_START_INFOS);
                        videoEngineInfos4.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos4, false);
                        return;
                    }
                    return;
                case 4:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos5 = new VideoEngineInfos();
                        videoEngineInfos5.setKey(VideoEngineInfos.USING_OUTSYNC_END_INFOS);
                        videoEngineInfos5.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos5, false);
                        return;
                    }
                    return;
                case 5:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos6 = new VideoEngineInfos();
                        videoEngineInfos6.setKey(VideoEngineInfos.USING_NO_RENDER_START_INFOS);
                        videoEngineInfos6.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos6, false);
                        return;
                    }
                    return;
                case 6:
                    if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoEngineInfoListener != null) {
                        VideoEngineInfos videoEngineInfos7 = new VideoEngineInfos();
                        videoEngineInfos7.setKey(VideoEngineInfos.USING_NO_RENDER_END_INFOS);
                        videoEngineInfos7.setObject(map);
                        tTVideoEngineImpl.notifyEngineInfo(videoEngineInfos7, false);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        @Override // com.ss.ttvideoengine.log.EventLoggerSource
        public Map<String, String> versionInfo() {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return null;
            }
            HashMap hashMap = new HashMap();
            String value = TTPlayerConfiger.getValue(14, "");
            int i10 = tTVideoEngineImpl.mPlayerType;
            if (i10 != 0 && i10 != 1) {
                if (i10 == 2) {
                    hashMap.put("sv", TTVideoEngineImpl.SERVER_LOG_VERSION);
                    hashMap.put("pv", "1.0");
                    hashMap.put("pc", MBridgeConstans.ENDCARD_URL_TYPE_PL);
                    hashMap.put("sdk_version", "1.10.172.340-jzdrm-premium");
                } else if (i10 == 5) {
                    hashMap.put("sv", TTVideoEngineImpl.SERVER_LOG_VERSION);
                    hashMap.put("pv", TTVideoEngineImpl.EXO_PLAYER_VERSION);
                    hashMap.put("pc", "5");
                    hashMap.put("sdk_version", "1.10.172.340-jzdrm-premium");
                } else {
                    hashMap.put("sv", TTVideoEngineImpl.SERVER_LOG_VERSION);
                    hashMap.put("pv", TTVideoEngineImpl.OWN_LITE_PLAYER_VERSION);
                    hashMap.put("pc", value);
                    hashMap.put("sdk_version", "1.10.172.340-jzdrm-premium");
                }
            } else {
                hashMap.put("sv", TTVideoEngineImpl.SERVER_LOG_VERSION);
                MediaPlayer mediaPlayer = tTVideoEngineImpl.mMediaPlayer;
                if (mediaPlayer != null) {
                    String stringOption = mediaPlayer.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_PLAYER_LIB_NAME);
                    String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                    TTVideoEngineLog.i(logcatTag, "playerLibName:" + stringOption);
                    if ("ttmplayerbeta" == stringOption) {
                        hashMap.put("pv", TTVideoEngineImpl.OWN_PLAYER_VERSION_BETA);
                    } else {
                        hashMap.put("pv", TTVideoEngineImpl.OWN_PLAYER_VERSION);
                    }
                } else {
                    hashMap.put("pv", TTVideoEngineImpl.OWN_PLAYER_VERSION);
                }
                hashMap.put("pc", value);
                hashMap.put("sdk_version", "1.10.172.340-jzdrm-premium");
            }
            hashMap.put("trv", TextureRenderConfig.getValue(24));
            try {
                int i11 = hd.a.f52813a;
                hashMap.put("ffv", (String) hd.a.class.getMethod("getFFmpegVersion", new Class[0]).invoke(null, new Object[0]));
            } catch (Throwable th2) {
                String logcatTag2 = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
                TTVideoEngineLog.w(logcatTag2, "get ffmpeg version error: " + th2.toString());
            }
            return hashMap;
        }
    }

    /* loaded from: classes6.dex */
    public static class MyPlayStateSupplier implements IPlayStateSupplier {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;
        private int mSidxVideoWindowSize = -1;
        private int mSidxAudioWindowSize = -1;

        public MyPlayStateSupplier(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public Map<String, IBufferInfo> getAudioBufferInfo() {
            List<VideoInfo> videoInfoList;
            HashMap hashMap = new HashMap();
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoModel != null && (videoInfoList = tTVideoEngineImpl.mVideoModel.getVideoInfoList()) != null && videoInfoList.size() != 0) {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null && videoInfo.getMediatype() == VideoRef.TYPE_AUDIO) {
                        ABRBufferInfo aBRBufferInfo = new ABRBufferInfo();
                        String valueStr = videoInfo.getValueStr(15);
                        aBRBufferInfo.setStreamId(valueStr);
                        aBRBufferInfo.setFileAvailSize(TTVideoEngine.getCacheFileSize(valueStr));
                        MediaBitrateFitterInfo bitrateFitterInfo = videoInfo.getBitrateFitterInfo();
                        if (bitrateFitterInfo != null) {
                            aBRBufferInfo.setHeadSize(bitrateFitterInfo.getHeaderSize());
                        }
                        hashMap.put("" + videoInfo.getValueInt(3), aBRBufferInfo);
                    }
                }
            }
            return hashMap;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public float getAverageDownloadSpeed(int i10, int i11, boolean z10) {
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            if (iSpeedPredictor != null) {
                return iSpeedPredictor.getAverageDownloadSpeed(i10, i11, z10);
            }
            return -1.0f;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getCurrentDownloadAudioBitrate() {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null) {
                return tTVideoEngineImpl.mABRCurrentDownloadedAudioBitrate;
            }
            return -1;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getCurrentDownloadAudioSegmentIndex() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return mediaPlayer.getIntOption(519, -1);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getCurrentDownloadVideoBitrate() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return mediaPlayer.getIntOption(601, -1);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getCurrentDownloadVideoSegmentIndex() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return mediaPlayer.getIntOption(520, -1);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getCurrentPlaybackTime() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return mediaPlayer.getCurrentPosition();
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public float getDownloadSpeed() {
            Map<String, String> downloadSpeed;
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            if (iSpeedPredictor != null && (downloadSpeed = iSpeedPredictor.getDownloadSpeed(VideoRef.TYPE_VIDEO)) != null && downloadSpeed.get("download_speed") != null) {
                return Float.parseFloat(downloadSpeed.get("download_speed"));
            }
            return -1.0f;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getLoaderType() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            try {
                return Integer.parseInt(mediaPlayer.getStringOption(200));
            } catch (Exception e10) {
                TTVideoEngineLog.d(e10);
                return -1;
            }
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getMaxCacheAudioTime() {
            MediaPlayer mediaPlayer;
            int intOption;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null || (intOption = mediaPlayer.getIntOption(24, -1)) <= 0) {
                return 30000;
            }
            return intOption * 1000;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getMaxCacheVideoTime() {
            MediaPlayer mediaPlayer;
            int intOption;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null || (intOption = mediaPlayer.getIntOption(24, -1)) <= 0) {
                return 30000;
            }
            return intOption * 1000;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public float getNetworkSpeed() {
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            if (iSpeedPredictor != null) {
                float predictSpeed = iSpeedPredictor.getPredictSpeed(0);
                String logcatTag = TTVideoEngineInternal.logcatTag(this.mVideoEngineRef.get());
                TTVideoEngineLog.d(logcatTag, "[ABR] get network speed:" + predictSpeed);
                return predictSpeed;
            }
            return -1.0f;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getNetworkState() {
            return TTNetWorkListener.getInstance().getCurrentAccessType();
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public float getPlaySpeed() {
            PlaybackParams playbackParams;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (playbackParams = tTVideoEngineImpl.mPlaybackParams) == null) {
                return 1.0f;
            }
            return playbackParams.getSpeed();
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getPlayerAudioCacheTime() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return (int) mediaPlayer.getLongOption(73, -1L);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public int getPlayerVideoCacheTime() {
            MediaPlayer mediaPlayer;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return -1;
            }
            return (int) mediaPlayer.getLongOption(72, -1L);
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public List<? extends ISegmentInfo> getSegmentInfoList(int i10, int i11) {
            MediaPlayer mediaPlayer;
            Object objectOption;
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null || (mediaPlayer = tTVideoEngineImpl.mMediaPlayer) == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            if (i10 != this.mSidxVideoWindowSize) {
                this.mSidxVideoWindowSize = i10;
                mediaPlayer.setIntOption(522, i10);
            }
            if (i11 != this.mSidxAudioWindowSize) {
                this.mSidxAudioWindowSize = i11;
                mediaPlayer.setIntOption(523, i11);
            }
            if ((mediaPlayer instanceof MediaPlayerWrapper) && (objectOption = ((MediaPlayerWrapper) mediaPlayer).getObjectOption(521)) != null) {
                for (Object obj : (Object[]) objectOption) {
                    arrayList.add(new SegmentInfo(obj));
                }
            }
            return arrayList;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public float getSpeedConfidence() {
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            if (iSpeedPredictor != null) {
                float lastPredictConfidence = iSpeedPredictor.getLastPredictConfidence();
                String logcatTag = TTVideoEngineInternal.logcatTag(this.mVideoEngineRef.get());
                TTVideoEngineLog.d(logcatTag, "[ABR] get network confidence:" + lastPredictConfidence);
                return lastPredictConfidence;
            }
            return -1.0f;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public Queue<IABRModuleSpeedRecord> getTimelineNetworkSpeed() {
            return null;
        }

        @Override // com.bytedance.vcloud.abrmodule.IPlayStateSupplier
        public Map<String, IBufferInfo> getVideoBufferInfo() {
            List<VideoInfo> videoInfoList;
            HashMap hashMap = new HashMap();
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl != null && tTVideoEngineImpl.mVideoModel != null && (videoInfoList = tTVideoEngineImpl.mVideoModel.getVideoInfoList()) != null && videoInfoList.size() != 0) {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null && videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                        ABRBufferInfo aBRBufferInfo = new ABRBufferInfo();
                        String valueStr = videoInfo.getValueStr(15);
                        aBRBufferInfo.setStreamId(valueStr);
                        aBRBufferInfo.setFileAvailSize(TTVideoEngine.getCacheFileSize(valueStr));
                        MediaBitrateFitterInfo bitrateFitterInfo = videoInfo.getBitrateFitterInfo();
                        if (bitrateFitterInfo != null) {
                            aBRBufferInfo.setHeadSize(bitrateFitterInfo.getHeaderSize());
                        }
                        hashMap.put("" + videoInfo.getValueInt(3), aBRBufferInfo);
                    }
                }
            }
            return hashMap;
        }
    }

    /* loaded from: classes6.dex */
    public static class MyReleaseRunnable implements Runnable {
        private IABRModule mABRModule;
        private WeakReference<TTVideoEngineImpl> mEngineRef;
        private MediaPlayer mPlayer;

        public MyReleaseRunnable(TTVideoEngineImpl tTVideoEngineImpl, MediaPlayer mediaPlayer, IABRModule iABRModule) {
            this.mEngineRef = new WeakReference<>(tTVideoEngineImpl);
            this.mPlayer = mediaPlayer;
            this.mABRModule = iABRModule;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mPlayer != null) {
                try {
                    TTVideoEngineLog.i(TTVideoEngineInternal.logcatTag(this.mEngineRef.get()), "MyReleaseRunnable release");
                    this.mPlayer.release();
                    this.mPlayer = null;
                    IABRModule iABRModule = this.mABRModule;
                    if (iABRModule != null) {
                        iABRModule.release();
                        this.mABRModule = null;
                    }
                } catch (Exception e10) {
                    TTVideoEngineLog.e(TTVideoEngineInternal.logcatTag(this.mEngineRef.get()), e10.toString());
                }
            }
        }
    }

    /* loaded from: classes6.dex */
    public static class MySubFetcherListener implements SubInfoFetcher.FetcherListener {
        private final WeakReference<TTVideoEngineImpl> mVideoEngineRef;

        public MySubFetcherListener(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mVideoEngineRef = new WeakReference<>(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.fetcher.SubInfoFetcher.FetcherListener
        public void onCompletion(String str, Error error) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mVideoEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return;
            }
            SubInfoListener subInfoListener = tTVideoEngineImpl.mSubInfoListener;
            SubInfoSimpleCallBack subInfoSimpleCallBack = tTVideoEngineImpl.mSubInfoCallBack;
            if (subInfoListener != null && tTVideoEngineImpl.mEnableSub > 0) {
                subInfoListener.onSubPathInfo(str, error);
            } else if (subInfoSimpleCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                subInfoSimpleCallBack.onSubPathInfo(str, error);
            } else {
                TTVideoEngineLog.e(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), "mSubInfoListener is null");
            }
            if (str != null && error == null) {
                if (tTVideoEngineImpl.mMediaPlayer != null && tTVideoEngineImpl.mLogger != null) {
                    tTVideoEngineImpl._setSubInfoToMediaPlayer(str);
                    return;
                }
                return;
            }
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.e(logcatTag, "sub fetch info failed:" + error.toString());
            if (tTVideoEngineImpl.mLogger != null) {
                tTVideoEngineImpl.mLogger.setSubtitleError(error.toString());
            }
        }

        @Override // com.ss.ttvideoengine.fetcher.SubInfoFetcher.FetcherListener
        public void onLog(String str) {
            TTVideoEngineLog.i(TTVideoEngineInternal.logcatTag(this.mVideoEngineRef.get()), "sub fetcher cancelled");
        }
    }

    /* loaded from: classes6.dex */
    public static class MyTextureLogListenerExt implements TextureRenderLog.OnLogListenerExt {
        private MyTextureLogListenerExt() {
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void d(String str, String str2) {
            TTVideoEngineLog.d(str, str2);
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void e(String str, String str2) {
            TTVideoEngineLog.e(str, str2);
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void i(String str, String str2) {
            TTVideoEngineLog.i(str, str2);
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void k(String str, String str2) {
            TTVideoEngineLog.k(str, str2);
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void t(String str, String str2) {
            TTVideoEngineLog.t(str, str2);
        }

        @Override // com.ss.texturerender.TextureRenderLog.OnLogListenerExt
        public void w(String str, String str2) {
            TTVideoEngineLog.w(str, str2);
        }
    }

    /* loaded from: classes6.dex */
    public static class RecursionDeleteFileRunnable implements Runnable {
        private File mNeedDeleteFile;

        public RecursionDeleteFileRunnable(File file) {
            this.mNeedDeleteFile = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTHelper.recursionDeleteFile(this.mNeedDeleteFile);
        }
    }

    /* loaded from: classes6.dex */
    public static class SmartUrlInfoCallback implements SmartUrlFetcher.Callback {
        private WeakReference<TTVideoEngineImpl> mEngineRef;
        private MyFetcherListener mListener;

        public SmartUrlInfoCallback(TTVideoEngineImpl tTVideoEngineImpl) {
            this.mEngineRef = new WeakReference<>(tTVideoEngineImpl);
            this.mListener = new MyFetcherListener(tTVideoEngineImpl);
        }

        @Override // com.ss.ttvideoengine.source.strategy.SmartUrlFetcher.Callback
        public void onComplete(@NonNull SmartUrlFetcher.RequestParams requestParams, int i10, @NonNull SmartUrlFetcher.Result result) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return;
            }
            String logcatTag = TTVideoEngineInternal.logcatTag(tTVideoEngineImpl);
            TTVideoEngineLog.d(logcatTag, "fetchSmartUrlInfo success " + result);
            IVideoEventLogger iVideoEventLogger = tTVideoEngineImpl.mLogger;
            int i11 = 1;
            if (i10 != 1) {
                i11 = 0;
            }
            iVideoEventLogger.setIsVideoModelCache(i11);
            if (result.isEncodeStream()) {
                this.mListener.onCompletion((VideoModel) result.videoModel, null);
            } else if (tTVideoEngineImpl.mCodecStrategyAdapter != null) {
                tTVideoEngineImpl.mCodecStrategyAdapter.fallbackToDirectUrl();
            }
        }

        @Override // com.ss.ttvideoengine.source.strategy.SmartUrlFetcher.Callback
        public void onError(@NonNull SmartUrlFetcher.RequestParams requestParams, @NonNull Error error) {
            TTVideoEngineImpl tTVideoEngineImpl = this.mEngineRef.get();
            if (tTVideoEngineImpl == null) {
                return;
            }
            TTVideoEngineLog.e(TTVideoEngineInternal.logcatTag(tTVideoEngineImpl), String.format("fetchSmartUrlInfo failed:%s", error.toString()));
            if (error.parameters.containsKey("log_id")) {
                tTVideoEngineImpl.mLogger.setStringOption(15, (String) error.parameters.get("log_id"));
            }
            tTVideoEngineImpl._logFetchedFailed(error);
            tTVideoEngineImpl.mCodecStrategyAdapter.fallbackToDirectUrl();
        }
    }

    /* loaded from: classes6.dex */
    public class TTVideoEngineLooperThread2 {
        public static final int INJECT_MSG_THREAD_NOTALLOW_DESTROY = 0;
        private static final String PARAM_COND = "msgCond";
        private static final String PARAM_OBJ = "paramObj";
        private static final String PARAM_OBJ1 = "paramObj1";
        private static final String PARAM_OBJ2 = "paramObj2";
        private static final String TAG = "TTVideoEngineLooperThread";
        static final long TIMEOUT_MSG_DEFAULT = 500;
        static final long TIMEOUT_MSG_NO_LIMIT = -1;
        private boolean isLastHandlerThreadNull;
        private List<Condition> mCondList;
        private TTVideoEngineImpl mEngine;
        private Lock mEngineMsgLock;
        Parcel mEngineMsgRetValue;
        private Lock mMainMsgLock;
        Parcel mMainMsgRetValue;
        private HandlerThread mMessageThread;
        private Handler mEngineMsgHandler = null;
        private Handler mMainLooperHandler = null;
        private boolean mIsHandlingMainMsg = false;
        boolean mInjectedMsgThread = false;
        boolean mInjectedMsgNotAllowDestroy = false;
        private String lastHandlerThreadStr = "";
        private String lastCallbackLooperStr = "";

        /* loaded from: classes6.dex */
        public class MyMainLooperHandler extends Handler {
            private WeakReference<TTVideoEngineImpl> mEngineRef;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public MyMainLooperHandler(TTVideoEngineImpl tTVideoEngineImpl, @NonNull Looper looper) {
                super(looper);
                TTVideoEngineLooperThread2.this = r1;
                this.mEngineRef = null;
                this.mEngineRef = new WeakReference<>(tTVideoEngineImpl);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Map map;
                Condition condition;
                Object obj;
                TTVideoEngineImpl tTVideoEngineImpl = this.mEngineRef.get();
                if (tTVideoEngineImpl == null) {
                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "engine is null, return.");
                    return;
                }
                Object obj2 = message.obj;
                String str = null;
                if (obj2 != null) {
                    map = (Map) obj2;
                    if (map.containsKey(TTVideoEngineLooperThread2.PARAM_COND)) {
                        condition = (Condition) map.get(TTVideoEngineLooperThread2.PARAM_COND);
                    } else {
                        condition = null;
                    }
                    if (map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ)) {
                        obj = map.get(TTVideoEngineLooperThread2.PARAM_OBJ);
                    } else {
                        obj = null;
                    }
                } else {
                    map = null;
                    condition = null;
                    obj = null;
                }
                int i10 = message.what;
                if (i10 != 600) {
                    boolean z10 = false;
                    switch (i10) {
                        case 400:
                            tTVideoEngineImpl.mListenerCompact.onPlaybackStateChanged(tTVideoEngineImpl.mEngineWrapper, message.arg1);
                            break;
                        case 401:
                            int i11 = message.arg1;
                            if (message.arg2 == 1 || i11 != 3) {
                                tTVideoEngineImpl.mListenerCompact.onLoadStateChanged(tTVideoEngineImpl.mEngineWrapper, i11);
                                break;
                            }
                            break;
                        case 402:
                            tTVideoEngineImpl.mListenerCompact.onVideoSizeChanged(tTVideoEngineImpl.mEngineWrapper, message.arg1, message.arg2);
                            break;
                        case 403:
                            tTVideoEngineImpl.mListenerCompact.onBufferingUpdate(tTVideoEngineImpl.mEngineWrapper, message.arg1);
                            break;
                        case 404:
                            tTVideoEngineImpl.mListenerCompact.onPrepare(tTVideoEngineImpl.mEngineWrapper);
                            break;
                        case 405:
                            tTVideoEngineImpl.mListenerCompact.onPrepared(tTVideoEngineImpl.mEngineWrapper);
                            break;
                        case 406:
                            if (obj instanceof String) {
                                String str2 = (String) obj;
                                if (!str2.equals(tTVideoEngineImpl.mTraceId)) {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "MSG_NOTIFY_RENDER_START engine:" + tTVideoEngineImpl + ", traceId not same, should be:" + str2 + ", now:" + tTVideoEngineImpl.mTraceId);
                                    break;
                                } else {
                                    tTVideoEngineImpl.mListenerCompact.onRenderStart(tTVideoEngineImpl.mEngineWrapper);
                                    break;
                                }
                            }
                            break;
                        case 407:
                            tTVideoEngineImpl.mListenerCompact.onStreamChanged(tTVideoEngineImpl.mEngineWrapper, message.arg1);
                            break;
                        case 408:
                            tTVideoEngineImpl.mListenerCompact.onCompletion(tTVideoEngineImpl.mEngineWrapper);
                            break;
                        case 409:
                            Error error = (Error) obj;
                            if (TTVideoEngineImpl.this.mVideoEngineConfigResolutionListener != null && TTVideoEngineImpl.this.mResolutionSwitching) {
                                TTVideoEngineImpl.this.mVideoEngineConfigResolutionListener.onError(error);
                                TTVideoEngineImpl.this.mVideoEngineConfigResolutionListener = null;
                            }
                            tTVideoEngineImpl.mListenerCompact.onError(error);
                            break;
                        case 410:
                            tTVideoEngineImpl.mListenerCompact.onVideoStatusException(message.arg1);
                            break;
                        case 411:
                            VideoModel videoModel = (VideoModel) obj;
                            VideoInfoListener videoInfoListener = tTVideoEngineImpl.mVideoInfoListener;
                            if (videoInfoListener != null) {
                                boolean onFetchedVideoInfo = videoInfoListener.onFetchedVideoInfo(videoModel);
                                TTVideoEngineLooperThread2.this.mMainMsgRetValue.setDataPosition(0);
                                TTVideoEngineLooperThread2.this.mMainMsgRetValue.writeInt(onFetchedVideoInfo ? 1 : 0);
                                break;
                            }
                            break;
                        case 412:
                            VideoEngineInfoListener videoEngineInfoListener = tTVideoEngineImpl.mVideoEngineInfoListener;
                            if (videoEngineInfoListener != null) {
                                videoEngineInfoListener.onVideoEngineInfos((VideoEngineInfos) obj);
                                break;
                            }
                            break;
                        case 413:
                            Error error2 = (Error) obj;
                            if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                str = (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1);
                            }
                            tTVideoEngineImpl.mListenerCompact.onVideoURLRouteFailed(error2, str);
                            break;
                        case 414:
                            if (message.arg1 == 1) {
                                z10 = true;
                            }
                            SeekCompletionListener seekCompletionListener = tTVideoEngineImpl.mSeekCompletionListener;
                            if (seekCompletionListener != null) {
                                seekCompletionListener.onCompletion(z10);
                                tTVideoEngineImpl.mSeekCompletionListener = null;
                                break;
                            }
                            break;
                        case 415:
                            if (obj instanceof Map) {
                                Map map2 = (Map) obj;
                                int intValue = ((Integer) map2.get("bufferStartAction")).intValue();
                                String str3 = (String) map2.get("traceid");
                                if (str3 != tTVideoEngineImpl.mTraceId) {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "MSG_NOTIFY_BUFFER_START engine:" + tTVideoEngineImpl + ", traceId not same, should be:" + str3 + ", now:" + tTVideoEngineImpl.mTraceId);
                                    break;
                                } else {
                                    tTVideoEngineImpl.mListenerCompact.onBufferStart(message.arg1, message.arg2, intValue);
                                    break;
                                }
                            }
                            break;
                        case 416:
                            tTVideoEngineImpl.mListenerCompact.onBufferEnd(message.arg1);
                            break;
                        case 417:
                            tTVideoEngineImpl.mListenerCompact.onVideoStreamBitrateChanged((Resolution) obj, message.arg1);
                            break;
                        case 418:
                            tTVideoEngineImpl.mListenerCompact.onSARChanged(message.arg1, message.arg2);
                            break;
                        case 419:
                            tTVideoEngineImpl.mListenerCompact.onReadyForDisplay(tTVideoEngineImpl.mEngineWrapper);
                            break;
                        case 420:
                            tTVideoEngineImpl.mListenerCompact.onAVBadInterlaced((Map) obj);
                            break;
                        case 421:
                            Map map3 = (Map) obj;
                            tTVideoEngineImpl.mListenerCompact.onFrameAboutToBeRendered(tTVideoEngineImpl.mEngineWrapper, ((Integer) map3.get("type")).intValue(), ((Long) map3.get("pts")).longValue(), ((Long) map3.get("wallClockTime")).longValue(), (HashMap) map3.get("frameData"));
                            break;
                        case 422:
                            if (obj instanceof String) {
                                String str4 = (String) obj;
                                if (!str4.equals(tTVideoEngineImpl.mTraceId)) {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "MSG_NOTIFY_VIDEO_SECOND_FRAME engine:" + tTVideoEngineImpl + ", traceId not same, should be:" + str4 + ", now:" + tTVideoEngineImpl.mTraceId);
                                    break;
                                } else {
                                    tTVideoEngineImpl.mListenerCompact.onVideoSecondFrame(tTVideoEngineImpl.mEngineWrapper);
                                    break;
                                }
                            }
                            break;
                        case 423:
                            tTVideoEngineImpl.mLogger.showedFirstAVSyncVideoFrame(((Long) obj).longValue());
                            tTVideoEngineImpl.mListenerCompact.onFirstAVSyncFrame(TTVideoEngineImpl.this.mEngineWrapper);
                            break;
                        case 424:
                            tTVideoEngineImpl.mListenerCompact.onRefreshSurface(TTVideoEngineImpl.this.mEngineWrapper);
                            break;
                        case 425:
                            ListenerCompact listenerCompact = tTVideoEngineImpl.mListenerCompact;
                            if (listenerCompact != null) {
                                listenerCompact.onCurrentPlaybackTimeUpdate(TTVideoEngineImpl.this.mEngineWrapper, message.arg1);
                                break;
                            }
                            break;
                        default:
                            TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "unknown message: " + message.what);
                            break;
                    }
                } else {
                    tTVideoEngineImpl.mListenerCompact.onABRPredictBitrate(message.arg1, message.arg2);
                }
                TTVideoEngineLooperThread2 tTVideoEngineLooperThread2 = TTVideoEngineLooperThread2.this;
                tTVideoEngineLooperThread2.notifyMsgComplete(tTVideoEngineLooperThread2.mMainMsgLock, condition);
            }
        }

        /* loaded from: classes6.dex */
        public class RunnableMsgHandler implements Runnable {
            Message msg;
            WeakReference<Handler> msgHandler;

            RunnableMsgHandler(Handler handler, Message message) {
                TTVideoEngineLooperThread2.this = r1;
                this.msgHandler = new WeakReference<>(handler);
                this.msg = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                Handler handler;
                WeakReference<Handler> weakReference = this.msgHandler;
                if (weakReference != null && (handler = weakReference.get()) != null) {
                    handler.handleMessage(this.msg);
                }
            }
        }

        TTVideoEngineLooperThread2(TTVideoEngineImpl tTVideoEngineImpl) {
            TTVideoEngineImpl.this = r1;
            this.mEngine = tTVideoEngineImpl;
        }

        private boolean isAsyncParaChanged(HandlerThread handlerThread, Looper looper) {
            boolean z10;
            String str;
            String str2 = "isAsyncParaChanged(" + handlerThread + "，" + looper + ") , ";
            if (looper == null) {
                if (Looper.myLooper() == null) {
                    looper = Looper.getMainLooper();
                } else {
                    looper = Looper.myLooper();
                }
            }
            boolean z11 = true;
            if (this.mMainLooperHandler.getLooper() != looper) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (handlerThread == null ? this.isLastHandlerThreadNull : this.mMessageThread == handlerThread) {
                z11 = z10;
            }
            String str3 = "last time AsyncPara:" + this.lastHandlerThreadStr + "，" + this.lastCallbackLooperStr;
            if (z11) {
                str = "，AsyncPara have changed！";
            } else {
                str = "，AsyncPara is same as last time！";
            }
            TTVideoEngineLog.i(TTVideoEngineImpl.this.logcatTag(), str2 + str3 + str + " ---TTVideoEnginePool");
            return z11;
        }

        boolean checkEngineLooperThread(boolean z10) {
            if (this.mIsHandlingMainMsg && z10) {
                String logcatTag = TTVideoEngineImpl.this.logcatTag();
                TTVideoEngineLog.i(logcatTag, "mIsHandlingMainMsg return false, thread:" + Looper.myLooper().getThread());
                return false;
            }
            Lock lock = this.mEngineMsgLock;
            if (lock != null) {
                lock.lock();
                if (this.mEngineMsgHandler != null && Looper.myLooper() != this.mEngineMsgHandler.getLooper()) {
                    this.mEngineMsgLock.unlock();
                    return true;
                }
                this.mEngineMsgLock.unlock();
            }
            return false;
        }

        boolean checkSendMainLooper() {
            Looper mainLooper;
            if (this.mEngineMsgHandler == null) {
                return false;
            }
            Handler handler = this.mMainLooperHandler;
            if (handler != null && handler.getLooper() != null && this.mMainLooperHandler.getLooper().getThread() != null && !this.mMainLooperHandler.getLooper().getThread().isAlive()) {
                TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "main looper thread is not alive, return false");
                return false;
            }
            if (Looper.myLooper() != null) {
                mainLooper = Looper.myLooper();
            } else {
                mainLooper = Looper.getMainLooper();
            }
            Handler handler2 = this.mMainLooperHandler;
            if (handler2 != null && handler2.getLooper() != mainLooper) {
                return true;
            }
            if (this.mMainLooperHandler != null) {
                String logcatTag = TTVideoEngineImpl.this.logcatTag();
                TTVideoEngineLog.d(logcatTag, "mainHandler looper:" + this.mMainLooperHandler.getLooper());
            }
            return false;
        }

        void closeEngineLooperThread() {
            String logcatTag = TTVideoEngineImpl.this.logcatTag();
            TTVideoEngineLog.d(logcatTag, " closeEngineLooperThread, handlerThread:" + this.mMessageThread + " ---TTVideoEnginePool");
            Lock lock = this.mEngineMsgLock;
            if (lock != null) {
                lock.lock();
                List<Condition> list = this.mCondList;
                if (list != null && !list.isEmpty()) {
                    for (int i10 = 0; i10 < this.mCondList.size(); i10++) {
                        this.mCondList.get(i10).signalAll();
                    }
                    this.mCondList.clear();
                }
                Handler handler = this.mEngineMsgHandler;
                if (handler != null) {
                    handler.removeCallbacksAndMessages(null);
                    Looper looper = this.mEngineMsgHandler.getLooper();
                    if (!this.mInjectedMsgThread || !this.mInjectedMsgNotAllowDestroy) {
                        looper.quit();
                    }
                    this.mEngineMsgHandler = null;
                }
                this.mEngineMsgLock.unlock();
            }
        }

        public boolean isStarted() {
            if (this.mEngineMsgHandler != null) {
                return true;
            }
            return false;
        }

        void notifyMsgComplete(Lock lock, Condition condition) {
            if (condition != null) {
                lock.lock();
                condition.signal();
                lock.unlock();
            }
        }

        void postEngineMessage(int i10) {
            postEngineMessage(i10, 0, 0, null);
        }

        void postEngineMessageDelay(int i10, int i11) {
            postEngineMessageDelay(i10, 0, 0, null, null, i11);
        }

        void postMainLooperMessage(int i10, int i11, int i12, Object obj) {
            postMainLooperMessage(i10, i11, i12, obj, null);
        }

        public void refreshAsyncPara(HandlerThread handlerThread, Looper looper) {
            if (isAsyncParaChanged(handlerThread, looper)) {
                closeEngineLooperThread();
                start(handlerThread, looper);
            }
        }

        void runOnLooperThread(Runnable runnable) {
            Handler handler;
            if (checkEngineLooperThread(false)) {
                if (this.mEngine.mState != 5 && (handler = this.mEngineMsgHandler) != null) {
                    handler.post(runnable);
                    return;
                }
                return;
            }
            runnable.run();
        }

        boolean sendEngineMessage(int i10, long j10) {
            return sendEngineMessage(i10, j10, 0, 0, null);
        }

        void sendMainLooperMessage(int i10, int i11, int i12, Object obj) {
            if (this.mMainLooperHandler != null) {
                HashMap hashMap = new HashMap();
                Condition newCondition = this.mMainMsgLock.newCondition();
                Message obtainMessage = this.mMainLooperHandler.obtainMessage(i10, i11, i12);
                hashMap.put(PARAM_OBJ, obj);
                hashMap.put(PARAM_COND, newCondition);
                try {
                    try {
                        this.mMainMsgLock.lock();
                        this.mIsHandlingMainMsg = true;
                        obtainMessage.obj = hashMap;
                        obtainMessage.sendToTarget();
                        newCondition.await();
                        this.mIsHandlingMainMsg = false;
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                } finally {
                    this.mMainMsgLock.unlock();
                }
            }
        }

        public void setIntValue(int i10, int i11) {
            boolean z10;
            if (i10 == 0) {
                if (i11 != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                this.mInjectedMsgNotAllowDestroy = z10;
            }
        }

        public void start(HandlerThread handlerThread, Looper looper) {
            String logcatTag = TTVideoEngineImpl.this.logcatTag();
            TTVideoEngineLog.i(logcatTag, "start, handlerThread:" + handlerThread);
            String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
            TTVideoEngineLog.d(logcatTag2, " start, handlerThread:" + handlerThread + " ---TTVideoEnginePool");
            StringBuilder sb2 = new StringBuilder();
            sb2.append(handlerThread);
            sb2.append("");
            this.lastHandlerThreadStr = sb2.toString();
            this.lastCallbackLooperStr = looper + "";
            this.mEngineMsgLock = new ReentrantLock();
            this.mCondList = new ArrayList();
            this.mEngineMsgRetValue = Parcel.obtain();
            if (handlerThread != null) {
                this.mMessageThread = handlerThread;
                this.mInjectedMsgThread = true;
                this.isLastHandlerThreadNull = false;
            } else {
                this.mMessageThread = new HandlerThread("engineMsgLooper");
                this.isLastHandlerThreadNull = true;
            }
            if (this.mMessageThread.getLooper() == null) {
                this.mMessageThread.start();
            }
            this.mEngineMsgHandler = new MessageHandler(this.mEngine, this.mMessageThread.getLooper());
            this.mMainMsgLock = new ReentrantLock();
            this.mMainMsgRetValue = Parcel.obtain();
            if (looper == null) {
                if (Looper.myLooper() == null) {
                    looper = Looper.getMainLooper();
                } else {
                    looper = Looper.myLooper();
                }
            }
            this.mMainLooperHandler = new MyMainLooperHandler(this.mEngine, looper);
            TTVideoEngineLog.i(TTVideoEngineImpl.this.logcatTag(), "enable engine looper thread");
        }

        void postEngineMessage(int i10, int i11) {
            postEngineMessage(i10, i11, 0, null);
        }

        void postEngineMessageDelay(int i10, int i11, int i12, Object obj, Object obj2, int i13) {
            Handler handler;
            if (this.mEngine.mState == 5 || (handler = this.mEngineMsgHandler) == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PARAM_OBJ, obj);
            if (obj2 != null) {
                hashMap.put(PARAM_OBJ1, obj2);
            }
            Message obtainMessage = handler.obtainMessage(i10, i11, i12);
            obtainMessage.obj = hashMap;
            handler.postDelayed(new RunnableMsgHandler(handler, obtainMessage), i13);
        }

        void postMainLooperMessage(int i10, int i11, int i12, Object obj, Object obj2) {
            if (this.mMainLooperHandler != null) {
                HashMap hashMap = new HashMap();
                hashMap.put(PARAM_OBJ, obj);
                if (obj2 != null) {
                    hashMap.put(PARAM_OBJ1, obj2);
                }
                Message obtainMessage = this.mMainLooperHandler.obtainMessage(i10, i11, i12);
                obtainMessage.obj = hashMap;
                obtainMessage.sendToTarget();
            }
        }

        boolean sendEngineMessage(int i10, long j10, int i11) {
            return sendEngineMessage(i10, j10, i11, 0, null);
        }

        /* loaded from: classes6.dex */
        public class MessageHandler extends Handler {
            private WeakReference<TTVideoEngineImpl> mEngineRef;

            public MessageHandler(TTVideoEngineImpl tTVideoEngineImpl) {
                TTVideoEngineLooperThread2.this = r1;
                this.mEngineRef = null;
                this.mEngineRef = new WeakReference<>(tTVideoEngineImpl);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Map map;
                Long l10;
                Condition condition;
                String str;
                String str2;
                TTVideoEngineImpl tTVideoEngineImpl = this.mEngineRef.get();
                if (tTVideoEngineImpl == null) {
                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "engine is null, return.");
                    return;
                }
                Object obj = message.obj;
                r2 = null;
                String str3 = null;
                r2 = null;
                String str4 = null;
                r2 = null;
                Map<Integer, String> map2 = null;
                if (obj != null) {
                    map = (Map) obj;
                    Condition condition2 = map.containsKey(TTVideoEngineLooperThread2.PARAM_COND) ? (Condition) map.get(TTVideoEngineLooperThread2.PARAM_COND) : null;
                    l10 = map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ) ? map.get(TTVideoEngineLooperThread2.PARAM_OBJ) : null;
                    condition = condition2;
                } else {
                    map = null;
                    l10 = null;
                    condition = null;
                }
                int i10 = message.what;
                if (i10 == 111) {
                    TTVideoEngineImpl.this._doSetTraitObject(message.arg1, (TraitObject) l10);
                } else if (i10 != 300) {
                    if (i10 != 301) {
                        switch (i10) {
                            case 1:
                                tTVideoEngineImpl._doPlay();
                                break;
                            case 2:
                                tTVideoEngineImpl._doPause();
                                break;
                            case 3:
                                tTVideoEngineImpl._doStop();
                                break;
                            case 4:
                                tTVideoEngineImpl._doRelease();
                                break;
                            case 5:
                                tTVideoEngineImpl._doReleaseAsync();
                                break;
                            case 6:
                                tTVideoEngineImpl._doSetLooping(message.arg1 == 1);
                                break;
                            case 7:
                                tTVideoEngineImpl._seekTo(message.arg1, false);
                                break;
                            case 8:
                                if (l10 != null) {
                                    Resolution resolution = (Resolution) l10;
                                    if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                        map2 = (Map) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1);
                                    }
                                    tTVideoEngineImpl._switchToResolution(resolution, map2);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_configResolution invalid param");
                                    break;
                                }
                            case 9:
                                if (l10 != null) {
                                    float floatValue = ((Float) l10).floatValue();
                                    if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                        tTVideoEngineImpl.setPlayerVolume(floatValue, ((Float) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1)).floatValue());
                                        break;
                                    } else {
                                        tTVideoEngineImpl.setPlayerVolume(floatValue, floatValue);
                                        break;
                                    }
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_setPlayerVolume invalid param");
                                    break;
                                }
                            case 10:
                                tTVideoEngineImpl._setPlayerMute(message.arg1 == 1);
                                break;
                            case 11:
                                tTVideoEngineImpl._pauseByInterruption();
                                break;
                            case 12:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetDataSource((FileDescriptor) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetDataSource invalid param");
                                    break;
                                }
                            case 13:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetDataSource((IMediaDataSource) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetDataSource invalid param");
                                    break;
                                }
                            case 14:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetVideoID((String) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetVideoID invalid param");
                                    break;
                                }
                            case 15:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetPreloaderItem((TTAVPreloaderItem) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetVideoID invalid param");
                                    break;
                                }
                            case 16:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetVideoModel((IVideoModel) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetVideoModel invalid param");
                                    break;
                                }
                            case 17:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetPlayItem((TTVideoEnginePlayItem) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetPlayItem invalid param");
                                    break;
                                }
                            case 18:
                                if (l10 != null) {
                                    tTVideoEngineImpl._doSetLocalURL((String) l10);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetLocalURL invalid param");
                                    break;
                                }
                            case 19:
                                if (l10 != null) {
                                    String str5 = (String) l10;
                                    if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                        tTVideoEngineImpl._doSetDirectURL(str5, (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1));
                                        break;
                                    } else {
                                        tTVideoEngineImpl._doSetDirectURL(str5, new String[]{str5});
                                        break;
                                    }
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetDirectURL invalid param");
                                    break;
                                }
                                break;
                            case 20:
                                if (l10 != null) {
                                    String[] strArr = (String[]) l10;
                                    if (map != null) {
                                        str = map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1) ? (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1) : null;
                                        str2 = map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ2) ? (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ2) : null;
                                    } else {
                                        str = null;
                                        str2 = null;
                                    }
                                    tTVideoEngineImpl._doSetDirectUrlUseDataLoader(strArr, str, str2, 0L, null);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "setDirectUrlUseDataLoader invalid param");
                                    break;
                                }
                            case 21:
                                if (l10 != null) {
                                    String str6 = (String) l10;
                                    if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                        str4 = (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1);
                                    }
                                    tTVideoEngineImpl.setDirectUrlUseDataLoaderByFilePath(new String[]{str6}, str4);
                                    break;
                                } else {
                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "setDirectUrlUseDataLoader invalid param");
                                    break;
                                }
                                break;
                            case 22:
                                tTVideoEngineImpl._doPrepare();
                                break;
                            case 23:
                                tTVideoEngineImpl._doStart();
                                break;
                            case 24:
                                tTVideoEngineImpl._doHeartBeatThings();
                                break;
                            default:
                                switch (i10) {
                                    case 26:
                                        if (l10 != null) {
                                            TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper setStrategySource");
                                            tTVideoEngineImpl.doSetStrategySource((StrategySource) l10);
                                            break;
                                        } else {
                                            TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "setStrategySource invalid param");
                                            break;
                                        }
                                    case 27:
                                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper forceDraw");
                                        tTVideoEngineImpl.doForceDraw();
                                        break;
                                    case 28:
                                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper setRotation " + message.arg1);
                                        tTVideoEngineImpl.doSetRotation(message.arg1);
                                        break;
                                    case 29:
                                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper setMirrorHorizontal " + message.arg1);
                                        tTVideoEngineImpl.doSetMirrorHorizontal(message.arg1 > 0);
                                        break;
                                    case 30:
                                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper setMirrorVertical " + message.arg1);
                                        tTVideoEngineImpl.doSetMirrorVertical(message.arg1 > 0);
                                        break;
                                    case 31:
                                        if (l10 != null) {
                                            TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "looper setPlayAuthToken");
                                            tTVideoEngineImpl.doSetPlayAuthToken((String) l10);
                                            break;
                                        } else {
                                            TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "doSetPlayAuthToken invalid param");
                                            break;
                                        }
                                    case 32:
                                        if (l10 != null) {
                                            DirectUrlItem directUrlItem = (DirectUrlItem) l10;
                                            tTVideoEngineImpl._doSetDirectUrlUseDataLoader(directUrlItem.allUrls(), directUrlItem.fileKey(), directUrlItem.vid(), directUrlItem.cdnExpiredTime(), directUrlItem.urlExpireTimes());
                                            break;
                                        } else {
                                            TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "setDirectUrlUseDataLoader invalid param");
                                            break;
                                        }
                                    case 33:
                                        tTVideoEngineImpl._doResetByPool();
                                        break;
                                    case 34:
                                        tTVideoEngineImpl._createPlayerAsync();
                                        break;
                                    case 35:
                                        tTVideoEngineImpl._doClearTextureRef();
                                        break;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                tTVideoEngineImpl._doSetAsyncInit(message.arg1 == 1, message.arg2);
                                                break;
                                            case 51:
                                                if (l10 != null) {
                                                    tTVideoEngineImpl._setUnSupportSampleRates((int[]) l10);
                                                    break;
                                                } else {
                                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_setUnSupportSampleRates invalid param");
                                                    break;
                                                }
                                            case 52:
                                                tTVideoEngineImpl._doSetTestSpeedEnable(message.arg1);
                                                break;
                                            case 53:
                                                if (l10 != null) {
                                                    tTVideoEngineImpl._doSetPlaybackParams((PlaybackParams) l10);
                                                    break;
                                                } else {
                                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetPlaybackParams invalid param");
                                                    break;
                                                }
                                            case 54:
                                                tTVideoEngineImpl.lambda$_setSurfaceSync$4((Surface) l10);
                                                break;
                                            case 55:
                                                tTVideoEngineImpl._doSetSurfaceHolder((SurfaceHolder) l10, message.arg1 == 1);
                                                break;
                                            case 56:
                                                tTVideoEngineImpl._doSetPlayerSurface((Surface) l10, message.arg1);
                                                break;
                                            case 57:
                                                String str7 = (String) l10;
                                                if (map != null && map.containsKey(TTVideoEngineLooperThread2.PARAM_OBJ1)) {
                                                    str3 = (String) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1);
                                                }
                                                tTVideoEngineImpl._doSetCustomHeader(str7, str3);
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 101:
                                                        tTVideoEngineImpl._doSetIntOption(message.arg1, message.arg2);
                                                        break;
                                                    case 102:
                                                        if (l10 != null) {
                                                            tTVideoEngineImpl._doSetLongOption(message.arg1, l10.longValue());
                                                            break;
                                                        } else {
                                                            TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetLongOption invalid param for key:" + message.arg1);
                                                            break;
                                                        }
                                                    case 103:
                                                        int _doGetIntOption = tTVideoEngineImpl._doGetIntOption(message.arg1);
                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(_doGetIntOption);
                                                        break;
                                                    case 104:
                                                        long _doGetLongOption = tTVideoEngineImpl._doGetLongOption(message.arg1);
                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeLong(_doGetLongOption);
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                            case 106:
                                                                float _doGetFloatOption = tTVideoEngineImpl._doGetFloatOption(message.arg1);
                                                                TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeFloat(_doGetFloatOption);
                                                                break;
                                                            case 107:
                                                                String _doGetStringOption = tTVideoEngineImpl._doGetStringOption(message.arg1);
                                                                TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeString(_doGetStringOption);
                                                                break;
                                                            case 108:
                                                                if (l10 != null) {
                                                                    tTVideoEngineImpl._doSetStringOption(message.arg1, (String) l10);
                                                                    break;
                                                                } else {
                                                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetStrungOption invalid param for key:" + message.arg1);
                                                                    break;
                                                                }
                                                            case 109:
                                                                if (l10 != null) {
                                                                    tTVideoEngineImpl._doSetObjectOption(message.arg1, l10);
                                                                    break;
                                                                } else {
                                                                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doSetObjectOption invalid param for key:" + message.arg1);
                                                                    break;
                                                                }
                                                            default:
                                                                switch (i10) {
                                                                    case 150:
                                                                        boolean _doIsSystemPlayer = tTVideoEngineImpl._doIsSystemPlayer();
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(_doIsSystemPlayer ? 1 : 0);
                                                                        break;
                                                                    case 151:
                                                                        int _doGetCurrentPlaybackTime = tTVideoEngineImpl._doGetCurrentPlaybackTime();
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(_doGetCurrentPlaybackTime);
                                                                        break;
                                                                    case 152:
                                                                        int videoWidth = tTVideoEngineImpl.getVideoWidth();
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(videoWidth);
                                                                        break;
                                                                    case 153:
                                                                        int videoHeight = tTVideoEngineImpl.getVideoHeight();
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(videoHeight);
                                                                        break;
                                                                    case 154:
                                                                        JSONObject _doGetPlayErrorInfo = tTVideoEngineImpl._doGetPlayErrorInfo();
                                                                        String jSONObject = _doGetPlayErrorInfo != null ? _doGetPlayErrorInfo.toString() : null;
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeValue(jSONObject);
                                                                        break;
                                                                    case 155:
                                                                        boolean _doIsMute = tTVideoEngineImpl._doIsMute();
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.setDataPosition(0);
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(_doIsMute ? 1 : 0);
                                                                        break;
                                                                    case 156:
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(tTVideoEngineImpl._doSupporth265Playback() ? 1 : 0);
                                                                        break;
                                                                    case 157:
                                                                        TTVideoEngineLooperThread2.this.mEngineMsgRetValue.writeInt(tTVideoEngineImpl._doSupporth266Playback() ? 1 : 0);
                                                                        break;
                                                                    default:
                                                                        TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "unknown message: " + message.what);
                                                                        break;
                                                                }
                                                        }
                                                }
                                        }
                                }
                        }
                    } else if (l10 != null) {
                        tTVideoEngineImpl._doParseIPAddress((IVideoModel) l10, map.get(TTVideoEngineLooperThread2.PARAM_OBJ1) != null ? (Error) map.get(TTVideoEngineLooperThread2.PARAM_OBJ1) : null);
                    } else {
                        TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doParseDNSComplete no model");
                    }
                } else if (l10 != null) {
                    tTVideoEngineImpl._doParseDNSComplete((String) l10);
                } else {
                    TTVideoEngineLog.w(TTVideoEngineImpl.this.logcatTag(), "_doParseDNSComplete invalid param");
                }
                TTVideoEngineLooperThread2 tTVideoEngineLooperThread2 = TTVideoEngineLooperThread2.this;
                tTVideoEngineLooperThread2.notifyMsgComplete(tTVideoEngineLooperThread2.mEngineMsgLock, condition);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public MessageHandler(TTVideoEngineImpl tTVideoEngineImpl, Looper looper) {
                super(looper);
                TTVideoEngineLooperThread2.this = r1;
                this.mEngineRef = null;
                this.mEngineRef = new WeakReference<>(tTVideoEngineImpl);
            }
        }

        void postEngineMessage(int i10, int i11, int i12) {
            postEngineMessage(i10, i11, i12, null);
        }

        boolean sendEngineMessage(int i10, long j10, int i11, int i12) {
            return sendEngineMessage(i10, j10, i11, i12, null);
        }

        void postEngineMessage(int i10, int i11, int i12, Object obj) {
            postEngineMessage(i10, i11, i12, obj, null);
        }

        boolean sendEngineMessage(int i10, long j10, int i11, int i12, Object obj) {
            return sendEngineMessage(i10, j10, i11, i12, obj, null);
        }

        void postEngineMessage(int i10, int i11, int i12, Object obj, Object obj2) {
            postEngineMessage(i10, i11, i12, obj, obj2, null);
        }

        boolean sendEngineMessage(int i10, long j10, int i11, int i12, Object obj, Object obj2) {
            return sendEngineMessage(i10, j10, i11, i12, obj, obj2, false);
        }

        void postEngineMessage(int i10, int i11, int i12, Object obj, Object obj2, Object obj3) {
            Handler handler;
            if (this.mEngine.mState == 5 || (handler = this.mEngineMsgHandler) == null) {
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put(PARAM_OBJ, obj);
            if (obj2 != null) {
                hashMap.put(PARAM_OBJ1, obj2);
            }
            if (obj3 != null) {
                hashMap.put(PARAM_OBJ2, obj3);
            }
            Message obtainMessage = handler.obtainMessage(i10, i11, i12);
            obtainMessage.obj = hashMap;
            obtainMessage.sendToTarget();
        }

        /* JADX WARN: Code restructure failed: missing block: B:88:0x00a1, code lost:
            if (r5.mEngine.mState == 5) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x00a4, code lost:
            r1 = r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x00a5, code lost:
            r5.mCondList.remove(r4);
            r5.mEngineMsgLock.unlock();
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x00b7, code lost:
            if (r5.mEngine.mState != 5) goto L27;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean sendEngineMessage(int r6, long r7, int r9, int r10, java.lang.Object r11, java.lang.Object r12, boolean r13) {
            /*
                r5 = this;
                com.ss.ttvideoengine.TTVideoEngineImpl r0 = r5.mEngine
                int r0 = r0.mState
                r1 = 0
                r2 = 5
                if (r0 != r2) goto L9
                return r1
            L9:
                android.os.Handler r0 = r5.mEngineMsgHandler
                if (r0 == 0) goto Lc9
                java.util.concurrent.locks.Lock r3 = r5.mEngineMsgLock
                if (r3 == 0) goto Lc9
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
                java.util.concurrent.locks.Lock r4 = r5.mEngineMsgLock
                java.util.concurrent.locks.Condition r4 = r4.newCondition()
                android.os.Message r9 = r0.obtainMessage(r6, r9, r10)
                java.lang.String r10 = "paramObj"
                r3.put(r10, r11)
                java.lang.String r10 = "msgCond"
                r3.put(r10, r4)
                if (r12 == 0) goto L31
                java.lang.String r10 = "paramObj1"
                r3.put(r10, r12)
            L31:
                r10 = 1
                java.util.concurrent.locks.Lock r11 = r5.mEngineMsgLock     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                r11.lock()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                com.ss.ttvideoengine.TTVideoEngineImpl r11 = r5.mEngine     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                int r11 = r11.mState     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                if (r11 != r2) goto L48
                java.util.List<java.util.concurrent.locks.Condition> r6 = r5.mCondList
                r6.remove(r4)
                java.util.concurrent.locks.Lock r6 = r5.mEngineMsgLock
                r6.unlock()
                return r1
            L48:
                java.util.List<java.util.concurrent.locks.Condition> r11 = r5.mCondList     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                r11.add(r4)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                r9.obj = r3     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                if (r13 == 0) goto L59
                r0.sendMessageAtFrontOfQueue(r9)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                goto L5c
            L55:
                r6 = move-exception
                goto Lba
            L57:
                r6 = move-exception
                goto Lb0
            L59:
                r9.sendToTarget()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
            L5c:
                r11 = 0
                int r9 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
                if (r9 <= 0) goto L9a
                java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                boolean r9 = r4.await(r7, r9)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
                if (r9 != 0) goto L9d
                boolean r11 = r0.hasMessages(r6)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                if (r11 == 0) goto L9d
                com.ss.ttvideoengine.TTVideoEngineImpl r10 = com.ss.ttvideoengine.TTVideoEngineImpl.this     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                java.lang.String r10 = r10.logcatTag()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                r11.<init>()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                java.lang.String r12 = "handle message "
                r11.append(r12)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                r11.append(r6)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                java.lang.String r12 = " timeout "
                r11.append(r12)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                r11.append(r7)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                java.lang.String r7 = r11.toString()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                com.ss.ttvideoengine.utils.TTVideoEngineLog.i(r10, r7)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                r0.removeMessages(r6)     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L97
                r10 = r1
                goto L9d
            L97:
                r6 = move-exception
                r10 = r9
                goto Lb0
            L9a:
                r4.await()     // Catch: java.lang.Throwable -> L55 java.lang.InterruptedException -> L57
            L9d:
                com.ss.ttvideoengine.TTVideoEngineImpl r6 = r5.mEngine
                int r6 = r6.mState
                if (r6 != r2) goto La4
                goto La5
            La4:
                r1 = r10
            La5:
                java.util.List<java.util.concurrent.locks.Condition> r6 = r5.mCondList
                r6.remove(r4)
                java.util.concurrent.locks.Lock r6 = r5.mEngineMsgLock
                r6.unlock()
                goto Lc9
            Lb0:
                r6.printStackTrace()     // Catch: java.lang.Throwable -> L55
                com.ss.ttvideoengine.TTVideoEngineImpl r6 = r5.mEngine
                int r6 = r6.mState
                if (r6 != r2) goto La4
                goto La5
            Lba:
                com.ss.ttvideoengine.TTVideoEngineImpl r7 = r5.mEngine
                int r7 = r7.mState
                java.util.List<java.util.concurrent.locks.Condition> r7 = r5.mCondList
                r7.remove(r4)
                java.util.concurrent.locks.Lock r7 = r5.mEngineMsgLock
                r7.unlock()
                throw r6
            Lc9:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl.TTVideoEngineLooperThread2.sendEngineMessage(int, long, int, int, java.lang.Object, java.lang.Object, boolean):boolean");
        }
    }

    /* loaded from: classes6.dex */
    public class URLInfo {
        public String hostURL;
        public String ipURL;
        public boolean isIp;

        private URLInfo() {
            TTVideoEngineImpl.this = r1;
            this.isIp = false;
        }

        public String getCurrentURL() {
            if (this.isIp) {
                return this.ipURL;
            }
            return this.hostURL;
        }

        public void reset() {
            this.hostURL = null;
            this.ipURL = null;
            this.isIp = false;
        }

        public void setHostURL(String str) {
            this.hostURL = str;
            this.isIp = false;
        }

        public void setIpURL(String str) {
            this.ipURL = str;
            this.isIp = true;
        }
    }

    public TTVideoEngineImpl(Context context, int i10, TTVideoEngine tTVideoEngine) {
        Resolution resolution = Resolution.Undefine;
        this.mABR4GMaxResolutionIndex = resolution.getIndex();
        Resolution resolution2 = Resolution.SuperHigh;
        this.mWifiDefaultResolutionIndex = resolution2.getIndex();
        this.mStartupMaxBitRateIndex = resolution2.getIndex();
        this.mABRWithSR = 1;
        this.mABR4GMaxResolutionQuality = null;
        this.mWifiDefaultResolutionQuality = null;
        this.mStartupMaxBitRateQuality = null;
        this.mClassLoaderState = null;
        this.mDowngradeResolutionIndex = resolution.getIndex();
        this.mDowngradeResolutionQuality = null;
        this.mNativeCallAbr = 0;
        this.mABR4GMaxResolutionMode = 0;
        this.mABRSpeedPredictOutType = 0;
        this.mABRStartupBandwidthParameter = 0.9f;
        this.mABRStallPenaltyParameter = 9.0f;
        this.mABRSwitchPenaltyParameter = 2.0f;
        this.mABRBandwidthParameter = 1.0f;
        this.mABRProbeMode = 0;
        this.mABREnableAggressivePortraitLowBit = 0;
        this.mScreenWidth = -1;
        this.mScreenHeight = -1;
        this.mPlayerViewWidth = -1;
        this.mPlayerViewHeight = -1;
        this.mDisablePlayerStayAwake = 0;
        this.mEnableSpeedReport = false;
        this.mNetworkSpeedReportSamplingRate = 0.0f;
        this.mEnableNativeYV12Render = 0;
        this.mForceCloseCodec = 0;
        this.mFilePlayNoBuffering = 0;
        this.mNoBufferUpdate = 0;
        this.mClipHEAACV2FirstPtsPacket = 0;
        this.mEnableVideoTimestampMonotonic = 0;
        this.mFeedPacketUntilEmpty = 0;
        this.mEnableDemuxNonBlockRead = 0;
        this.mEnableThreadPriority = 0;
        this.mThreadPriorityValue = 0;
        this.mEnableVodVideoRenderStall = 0;
        this.mRenderStallThreshold = 0;
        this.mEnableOptInaccurateStart = 0;
        this.mEnableOptSeekClk = 0;
        this.mEnableAudioTrackSmoothClock = 0;
        this.mDisableSpiltVoiceWrite = 0;
        this.mIgnoreDirectlyBuffering = 0;
        this.mDynamicThreadPriorityValue = 0;
        this.mEnableMediaCodecRealtime = 1;
        this.mEnablePreRenderBufferingUpdate = 0;
        this.mPreRenderBufferingUpdatePercentage = 0;
        this.mEnableHEAACV2PtsMSCorrection = 0;
        this.mEnableVC1BlockList = 1;
        this.mEnableHChipAdaptiveWorkAround = 0;
        this.mEnableMChipSkipAdaptiveWorkAround = 0;
        this.mEnableCPPh265CodecOpt = 0;
        this.mQuickGetFileCache = false;
        this.mReportFirstFrameFrameBufferOnly = 0;
        this.mEnbalePreDemux = 0;
        this.mEnableCPPh266CodecOpt = 0;
        this.mEnableAudioMemIntergration = 0;
        this.mEnableBufferingLowerCapacity = 0;
        this.mEnableDowngradeAsyncCodec = 0;
        this.mEnableMediaCodecSyncClose = 0;
        this.mEnableSeekBuffering = 0;
        this.mh266NalsizeCheck = 0;
        this.mHardwareCodecerFlushClose = 0;
        this.mOptAudioRenderTimeReport = 0;
        this.mBT601CloseCodecAsync = 0;
        this.mForbidFallbackNativeRender = 0;
        this.mDecoderRenderContinueRetry = 0;
        this.mDecoderRenderClearSurface = 0;
        this.mDecoderRenderClearTextureRenderRef = 0;
        this.mEnableDecoderRenderVC2RenderLatency = 0;
        this.mDecoderRenderVC2RenderLatencyGeneral = 0;
        this.mDecoderRenderVC2RenderLatencySR = 0;
        this.mTraceId = "";
        this.mEnableLooperThread = false;
        this.mBashDashDefaultMDLKeys = new HashMap<>();
        this.mSubPathInfo = null;
        this.mFileHashs = new ArrayList();
        this.mReadCacheMode = 0;
        this.mEnableBarrageMask = 0;
        this.mEnableMaskThread = 0;
        this.mEnableAIBarrageThread = 0;
        this.mEnableAIBarrage = 0;
        this.mLiveStartIndex = -3;
        this.mEnableRefreshByTime = 0;
        this.mEnableSub = 0;
        this.mEnableSubThread = 0;
        this.mOpenSubRetryTimes = -1;
        this.mEnableOptSubSearch = 0;
        this.mEnableRecreateSubIfDetached = 0;
        this.mCurPosition = -1;
        this.mPosUpdateInterval = 0;
        this.mAudioCodecProfile = -1;
        this.mVideoCodecProfile = -1;
        this.mBitrate = -1L;
        this.mContainerFPS = 0.0f;
        this.mThreadSafeRefSwitcher = 0;
        this.mEnableNetLevel = 0;
        this.mNetSpeedInterval = 0;
        this.mCloseRenderStartMsgOnSwitchResolutionDone = false;
        this.mEnableFastStop = 0;
        this.mEnableCodecRecycle = 0;
        this.mTlsLog = 0;
        this.mIntertrustDrmHelper = null;
        this.mFrameCount = 0;
        this.mHeartBeatStarted = false;
        this.mEnableHeartBeat = false;
        this.mGetPositionSkipLooper = false;
        this.mPlayDurationExcludePlayerMethod = false;
        this.mHeartBeatInterval = 300;
        this.mSRNotUseReason = 0;
        this.mSendEngineMsgTimeout = 0L;
        this.mMediacodecStopTimeout = 0;
        this.mQueryWinEnable = -1;
        this.mPreferNearestMaxPosOffset = -1;
        this.mMediaCodecAsyncModeEnable = -1;
        this.mSettingCodecName = -1;
        this.mPrivCodecName = new ArrayList<>();
        this.mAVsyncRefined = -1;
        this.mOnlyPlayAudioForBothStream = -1;
        this.mIgnoreSurfaceCreated = -1;
        this.mNativeRenderRotationAdapt = 0;
        this.mEnableOutletDropLimit = false;
        this.mPreciseCache = 0;
        this.mMediaInfoMap = new ConcurrentHashMap();
        this.mEnableClockResumeResetEof = 0;
        this.mMdlEnableSeekReopen = 0;
        this.mIgnoreAudioRenderEOSDelayMs = 0;
        this.mAutoAddMedia = 1;
        this.mEnableOptimizeMp4Abr = 0;
        this.mEnableMediaCodecFairMutex = 0;
        this.mEnableRangeOptimize = 0;
        this.mThreadName2CharSuffix = 0;
        this.mEnableOptimizePrerender = 0;
        this.mEnableAsyncDownload = 0;
        this.mEnablePreloadGear = 0;
        this.mEnableAsyncProbe = 0;
        this.mEnableOptimizeAsyncDownload = 0;
        this.mMetrcisAbility = 0;
        this.mMetrcisInterVal = 60;
        this.mEnableCacheInfo = 0;
        this.mEnableOptimizeRadioMode = 0;
        this.mEnableOptimizeIO = 0;
        this.mEnableOptimizeDashSeek = 0;
        this.mAnRenderRefreshSurface = 0;
        this.mSurfaceRecord = null;
        this.mFFmpegProtocol = null;
        this.mForceCodec = null;
        this.mSkipStartWhenPrepared = false;
        this.mEnableMp4Check = 0;
        this.mPrecisePausePts = 0L;
        this.mHlsSubDemuxerProbeType = -1;
        this.mEnableTmpLog = 0;
        this.mCodecAndSurfaceReuse = -1;
        this.mMCMaxWidth = -1;
        this.mMCMaxHeight = -1;
        this.mAsyncManageResource = -1;
        this.mAudioUseDirectBuffer = -1;
        this.mCloseCodecPool = -1;
        this.mMaxCodecNumsInPool = -1;
        this.mDummySurfaceForbid = -1;
        this.mCalibrationAudioPts = -1;
        this.mAudioPtsCalibrationType = -1;
        this.mSetSurfaceRetryCount = -1;
        this.mSetSurfaceRetryInterval = -1;
        this.mChangeRecBufferSpeed = -1;
        this.mEnableVideoSecondFrame = -1;
        this.mGiveBackCodecEarly = -1;
        this.mWaitingCodecMs = -1;
        this.mAsyncSetWindow = -1;
        this.mAutoDisconnectedCpu = -1;
        this.mRetryErrCnt = -1;
        this.mForbidBufferingNotFinished = -1;
        this.mUseVdpDisk = -1;
        this.mEnableReportFirstAVSyncFrame = 1;
        this.mQueryAdaptivePlayback = -1;
        this.mFlushWhenSetSurface = -1;
        this.mEnableMediaCodecDeathCheck = -1;
        this.mMediaCodecDeathCheckInterval = -1;
        this.mMediaCodecDeathTimeout = -1;
        this.mCodecPoolSupportDynamicExtend = -1;
        this.mDynamicExtendCodecNums = -1;
        this.mEnableOptimizeHWDec2SWDec = -1;
        this.mCreateAudioTrackEarly = -1;
        this.mEnableMediaCodecPipeline = -1;
        this.mFrameNumsInMediaCodec = -1;
        this.mEnableMCRenderHandleSAR = -1;
        this.mRecBufferThresh = -1;
        this.mRecBufferType = -1;
        this.mUserExitTimeMs = -1;
        this.mAudioGraphRefactor = -1;
        this.mAudioDecoderGraphMerged = -1;
        this.mCodecPoolVersion = -1;
        this.mDiscardCodecStrategy1 = -1;
        this.mDiscardCodecStrategy2 = -1;
        this.mCodecHistoryLength = -1;
        this.mCodecMaxUsedCount = -1;
        this.mEnableFallbackInMaxInstanceErr = -1;
        this.mSetSurfaceDirectly = -1;
        this.mEnableStartPlaySync = -1;
        this.mEnableClearTextureRefAsync = 0;
        this.mEnableSetupMediaCodec = false;
        this.mEnableSCABRStrategy = false;
        this.mRefreshSurfaceFlag = false;
        this.mRefreshSurfaceDone = false;
        this.mRefreshTextureSurface = false;
        this.effectTypeSet = new CopyOnWriteArraySet();
        this.mEnableReportPreloadTraceId = false;
        this.mErrorThrowOptEnable = false;
        this.mErrorRetryOpt = false;
        this.mMDLGroupId = null;
        this.mInitialUrlBeforeMdlProxy = null;
        this.mBashRetryRestartPlayer = false;
        this.mBufferProcessCallback = null;
        this.mEngineWrapper = tTVideoEngine;
        if (EngineGlobalConfig.getInstance().getLazyLoadVideodec() != 1) {
            TTVideoEngineLog.d(logcatTag(), "JniUtils.loadLibrary in TTVideoEngineImpl new");
            JniUtils.loadLibrary();
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "init, type:" + i10 + ", this:" + this + ", version:1.10.172.340-jzdrm-premium");
        initEngine(context, i10, null);
    }

    private void _ShutdownOldSource() {
        this.mIsLocal = false;
        this.mIsDirectURL = false;
        this.mIsPreloaderItem = false;
        this.mIsPlayItem = false;
        this.mIsFeedInfo = false;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 0) {
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
        _reset();
        _resetUrlIndexMap();
        this.mTraitObjManager.removeAll();
        this.mMediaDataSource = null;
        mdlFetcherRemove();
        this.mState = 0;
        this.currentVideoInfo = null;
        this.mDynamicAudioInfo = null;
        this.mDynamicVideoInfo = null;
        this.mVideoModel = null;
        this.mLocalURL = null;
        this.mVideoID = null;
        this.mPlayFd = null;
        this.mDirectURL = null;
        this.mTextureFirstFrame = false;
        this.mTexNotifyFirstFrame = false;
        this.mHasFirstFrameShown = false;
        this.mHasFetchedSubtitle = false;
        this.mHasAudioFirstFrameShown = false;
        this.mPlayDuration.reset();
        this.mIsPlayComplete = false;
        this.mDecodedVideoFirstFrame = false;
        this.mPlayStartTimestamp = 0L;
        this.mHasComplete = false;
        this.mPlayTime = 0L;
        this.mRetryingNotHandleError = false;
        this.dashAudioUrlMap.clear();
        this.mCurPosition = -1;
        this.mVideoCodecType = -1;
        this.mAudioCodecType = -1;
        this.mVideoCodecID = -1;
        this.mAudioCodecID = -1;
        this.mAudioCodecProfile = -1;
        this.mVideoCodecProfile = -1;
        this.mBitrate = -1L;
        this.mContainerFPS = 0.0f;
        this.mAudioProcessor = null;
        this.mHasSetAESrcPeak = false;
        this.mHasSetAESrcLoudness = false;
        this.mHasSetAEVolumeInfo = false;
        this.mSubDesInfoModel = null;
        this.mSeeking = false;
        this.mPrecisePausePts = 0L;
        this.mEngineConfig.remove(TTVideoEngineInterface.PLAYER_OPTION_SET_PRECISE_PAUSE_PTS);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setLoggerTimes(63);
        }
        this.mFileHashs.clear();
        this.urlIPMap.clear();
        this.mMDLGroupId = null;
    }

    private void _abnormalOccured(int i10) {
        int i11;
        if (this.mLogger != null) {
            OptionHolder optionHolder = this.mOptionHolder;
            int i12 = -1;
            if (optionHolder != null) {
                i12 = getConfigInt(42303, optionHolder.getIntOption(42303, 0));
                i11 = getConfigInt(42302, this.mOptionHolder.getIntOption(42302, -1));
            } else {
                i11 = -1;
            }
            this.mLogger.setIntOption(178, i10);
            this.mLogger.setIntOption(180, i12);
            this.mLogger.setIntOption(179, i11);
            TTVideoEngineLog.i(TAG, "abnormalOccured: " + i10 + " strategy: " + i12 + " interval: " + i11);
        }
    }

    private String _addThirdPartyProtocolHead(String str) {
        TTVideoEngineFFmpegProtocol tTVideoEngineFFmpegProtocol;
        if (str != null && (tTVideoEngineFFmpegProtocol = this.mFFmpegProtocol) != null) {
            String protocolName = tTVideoEngineFFmpegProtocol.getProtocolName();
            return protocolName + ":" + str;
        }
        return str;
    }

    private void _audioRenderStart() {
        PlayerEventSimpleListener playerEventSimpleListener;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_audioRenderStart,this:" + this);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (getConfigInt(664, this.mEnableDebugUINotify) != 0 && (playerEventSimpleListener = this.mPlayerEventListener) != null) {
            playerEventSimpleListener.onAudioRenderOpened(mediaPlayer.getIntOption(48, -1), mediaPlayer.getLongOption(156, -1L), mediaPlayer.getLongOption(163, -1L));
        }
        if (!this.mHasAudioFirstFrameShown) {
            this.mHasAudioFirstFrameShown = true;
            this.mLogger.setLongOption(77, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, -1L));
            if (this.mSurface == null && this.mSurfaceHolder == null && this.mRadioModeEnable == 0 && mediaPlayer.getIntOption(62, -100) != 0) {
                this.mLogger.setIntOption(111, 1);
            }
        }
        if (this.mHasFirstFrameShown && !this.mSeamSwitchingResolution) {
            return;
        }
        if (mediaPlayer.getIntOption(62, -100) == 0 || this.mRadioModeEnable != 0 || this.mShouldUseAudioRenderStart || (getConfigInt(707, this.mSupportPlayWhenNoSurface) == 1 && this.mSurface == null && this.mSurfaceHolder == null)) {
            _renderStart();
        }
    }

    @SuppressLint({"CI_DefaultLocale"})
    private void _bufferEnd(int i10) {
        IVideoEventLogger iVideoEventLogger;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "buffering end,this:" + this + ", code:" + i10);
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null && this.mPlaybackState == 1) {
            iPlayDurationManager.start();
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = this.mBufferingStartT;
        if (j10 > 0 && elapsedRealtime >= j10) {
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                iVideoEventLogger2.movieStallEnd(i10);
            }
            if (i10 == 0) {
                setPlayInfo(4, 1L);
            }
            int configInt = getConfigInt(668, this.mResumeFileIOBlockThresMs);
            if (configInt > 0 && elapsedRealtime - this.mBufferingStartT > configInt) {
                String logcatTag2 = logcatTag();
                TTVideoEngineLog.d(logcatTag2, "resume io thres:" + configInt + " cur block:" + (elapsedRealtime - this.mBufferingStartT));
            }
            this.mBufferingStartT = 0L;
        } else if (this.mNotifyBufferingDirectly == 1 && (iVideoEventLogger = this.mLogger) != null) {
            iVideoEventLogger.playbackBufferEnd();
        }
        this.mBufferingType = -1;
        notifyBufferEnd(i10);
        updateLoadState(1, i10);
        _updateTextureState(1);
        if (shouldStartTextureRenderCheck()) {
            this.mTextureSurface.setIntOption(33, 1);
        }
    }

    private void _bufferStart(int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "buffering start,this:" + this + ", code:" + i10);
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.stop();
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(33, 0);
        }
        boolean z10 = this.mTexNotifyFirstFrame;
        int bufferStartAction = getBufferStartAction();
        if (this.mNotifyBufferingDirectly == 1 && !this.mHasFirstFrameShown) {
            this.mLogger.playbackBufferStart();
        }
        if (this.mHasFirstFrameShown && !this.mSeeking && this.mLoadState != 3 && i10 == 0) {
            this.mLogger.reportBufferingMetrics();
        }
        notifyBufferStart(i10, z10 ? 1 : 0, bufferStartAction);
        StrategyManager.instance().bufferStart(this.mEngineWrapper);
        updateLoadState(2, i10);
        _updateTextureState(4);
    }

    private boolean _checkRefreshSurface() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISCONNECTED_CPU_TRACK, 0) != 1) {
            return false;
        }
        return true;
    }

    private void _clearSurface() {
        Surface surface;
        if (getConfigInt(520, this.mClearShutDown ? 1 : 0) == 0) {
            return;
        }
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null) {
            surface = surfaceHolder.getSurface();
        } else {
            surface = this.mSurface;
        }
        clearSurface(surface, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0156  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _configHardwareDecode() {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._configHardwareDecode():void");
    }

    private void _configNativeRenderRotationAdapt() {
        int vodInt = SettingsHelper.helper().getVodInt(Module.VodKey.NativeRenderRotationAdapt_Int, getConfigInt(566, this.mNativeRenderRotationAdapt));
        if (this.mConfigCenterVersion > 0) {
            this.mEngineConfig.setIntOption(566, vodInt);
        } else {
            this.mNativeRenderRotationAdapt = vodInt;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "native render rotation adapt: " + vodInt);
    }

    private void _configNativeYV12Render() {
        int vodInt = SettingsHelper.helper().getVodInt(Module.VodKey.NativeYV12_Int, getConfigInt(543, this.mEnableNativeYV12Render));
        if (this.mConfigCenterVersion > 0) {
            this.mEngineConfig.setIntOption(543, vodInt);
        } else {
            this.mEnableNativeYV12Render = vodInt;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "enabled native YV12: " + vodInt);
    }

    private void _configWithAppSettings() {
        if (!this.mSettedKeys.contains(11) && !this.mEngineConfig.isKeySet(11)) {
            this.mBufferTimeout = InfoWrapper.getBufferTimeOut();
            this.mEngineConfig.setIntOption(11, InfoWrapper.getBufferTimeOut());
            String logcatTag = logcatTag();
            TTVideoEngineLog.d(logcatTag, "==========mBufferTimeout:" + getConfigInt(11, this.mBufferTimeout));
        }
        int i10 = InfoWrapper.geth265SoftwareCapabilityEnable();
        int i11 = 1;
        if (!this.mSettedKeys.contains(7)) {
            this.mHardwareDecodeEnablePlayer2 = InfoWrapper.getHardwareEnable();
            if (i10 == 0 && !this.mCodecStrategyAdapter.isCodecStrategyValid() && this.mErrorCount <= 0) {
                this.mHardwareDecodeEnablePlayer2 = 1;
            }
            String logcatTag2 = logcatTag();
            TTVideoEngineLog.d(logcatTag2, "==========mHardwareDecodeEnablePlayer2:" + this.mHardwareDecodeEnablePlayer2);
        }
        if (i10 != 0) {
            i11 = 0;
        }
        this.mForbidh265SoftwareDecode = i11;
    }

    public void _createPlayerAsync() {
        TTVideoEngineLog.i(TAG, "create player async");
        if (this.mAsyncPlayer == null) {
            this.mAsyncPlayer = createMediaPlayer();
        }
    }

    private void _dataLoaderAddEngineRef() {
        DataLoaderHelper.getDataLoader()._addEngine(this.mEngineWrapper, this.mUsingDataLoaderPlayRawKey);
    }

    private void _dataLoaderRemoveEngineRef() {
        DataLoaderHelper.getDataLoader()._removeEngine(this.mEngineWrapper, this.mUsingDataLoaderPlayRawKey);
        if (this.mUsingDataLoaderPlayTaskKeys != null) {
            for (int i10 = 0; i10 < this.mUsingDataLoaderPlayTaskKeys.size(); i10++) {
                DataLoaderHelper.getDataLoader()._removePlayTask(this.mUsingDataLoaderPlayTaskKeys.get(i10));
            }
            for (int i11 = 0; i11 < this.mUsingDataLoaderPlayTaskKeys.size(); i11++) {
                String str = this.mUsingDataLoaderPlayTaskKeys.get(i11);
                TTVideoEngineAdapter.removePlayTask(str);
                TTVideoEngineAdapter.removePreConnectTask(str);
            }
        }
        _resetUsingDataLoaderField();
        this.mBashDashDefaultMDLKeys.clear();
    }

    private void _decoderStart(int i10) {
        PlayerEventSimpleListener playerEventSimpleListener;
        PlayerEventSimpleListener playerEventSimpleListener2;
        if (this.mMediaPlayer != null && getConfigInt(664, this.mEnableDebugUINotify) != 0) {
            if (i10 == 0 && (playerEventSimpleListener2 = this.mPlayerEventListener) != null) {
                playerEventSimpleListener2.onVideoDecoderOpened(this.mMediaPlayer.getIntOption(157, -1), this.mMediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, -1L), this.mMediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME, -1L));
                this.mPlayerEventListener.onVideoDecodedFirstFrame(this.mMediaPlayer.getLongOption(77, -1L));
            } else if (i10 == 1 && (playerEventSimpleListener = this.mPlayerEventListener) != null) {
                playerEventSimpleListener.onAudioDecoderOpened(this.mMediaPlayer.getIntOption(158, -1), this.mMediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, -1L), this.mMediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, -1L));
            }
        }
    }

    private void _doRecordSurface() {
        if (this.mSurfaceRecord != null) {
            Map<Surface, Boolean> map = mSurfaceHashMap;
            if (map.size() >= 15) {
                map.clear();
            }
            if (getIntOption(1071) == 1) {
                map.put(this.mSurfaceRecord, Boolean.TRUE);
            } else {
                map.put(this.mSurfaceRecord, Boolean.FALSE);
            }
        }
    }

    private void _fetchSubInfo() {
        String BuildHttpsApi = TTVideoEngineUtils.BuildHttpsApi(_getSubApiString());
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "start to fetch sub info:" + BuildHttpsApi);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setSubtitleRequestUrl(BuildHttpsApi);
        }
        SubInfoFetcher subInfoFetcher = new SubInfoFetcher(this.mContext, getNetClientSetByUser());
        this.mSubFetcher = subInfoFetcher;
        subInfoFetcher.setListener(new MySubFetcherListener(this));
        this.mSubFetcher.fetchInfo(BuildHttpsApi);
    }

    private void _fetchVideoInfo() {
        boolean z10;
        String str;
        VideoModelCache.VideoModelCacheInfo videoModelCacheInfo;
        Handler handler;
        this.mState = 1;
        _resetUrlIndexMap();
        this.mAPIString = TTVideoEngineUtils.BuildHttpsApi(getAPIString());
        TTVideoEngineLog.i(logcatTag(), "start to fetch video info:" + this.mAPIString);
        boolean z11 = false;
        if (getConfigInt(299, this.mUseVideoModelCacheForce ? 1 : 0) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.mVideoModelCache != null && !TextUtils.isEmpty(this.mVideoID) && this.mUseVideoModelCache) {
            boolean isNetAvailable = NetUtils.isNetAvailable(this.mContext);
            if ((this.mErrorCount <= 1 || !isNetAvailable) && (videoModelCacheInfo = this.mVideoModelCache.get(this.mVideoID, this.mAPIString)) != null && (!videoModelCacheInfo.isExpired || z10 || (!isNetAvailable && DataLoaderHelper.getDataLoader().isRunning() && getConfigInt(160, this.mDataLoaderEnable) > 0))) {
                TTVideoEngineLog.i(logcatTag(), "using videomodel cache");
                this.mLogger.setIsVideoModelCache(1);
                this.mVideoModel = videoModelCacheInfo.model;
                if (this.mCodecStrategyAdapter.isCodecStrategyValid()) {
                    this.mCodecStrategyAdapter.correctStrategy(this.mVideoModel);
                }
                _logFetchedVideoInfo(this.mVideoModel);
                fetchedVideoInfo(this.mVideoModel);
                if (this.mVideoInfoListener != null) {
                    if (this.mLooperThread.checkSendMainLooper()) {
                        if (getConfigInt(558, this.mWaitForFetchInfoResult ? 1 : 0) != 0) {
                            this.mLooperThread.sendMainLooperMessage(411, 0, 0, this.mVideoModel);
                            this.mLooperThread.mMainMsgRetValue.setDataPosition(0);
                            if (this.mLooperThread.mMainMsgRetValue.readInt() == 1) {
                                z11 = true;
                            }
                        } else {
                            this.mLooperThread.postMainLooperMessage(411, 0, 0, this.mVideoModel);
                        }
                    } else {
                        IVideoModel iVideoModel = this.mVideoModel;
                        if (iVideoModel instanceof VideoModel) {
                            z11 = this.mVideoInfoListener.onFetchedVideoInfo((VideoModel) iVideoModel);
                        }
                    }
                    if (z11) {
                        return;
                    }
                }
                if (getConfigInt(410, this.mAsyncPlayHitVMCache ? 1 : 0) == 1 && (handler = this.mHandler) != null) {
                    try {
                        handler.post(new Runnable() { // from class: com.ss.ttvideoengine.j
                            @Override // java.lang.Runnable
                            public final void run() {
                                TTVideoEngineImpl.this.lambda$_fetchVideoInfo$6();
                            }
                        });
                        return;
                    } catch (Exception e10) {
                        TTVideoEngineLog.e(logcatTag(), e10.toString());
                        _parseIPAddress(this.mVideoModel);
                        return;
                    }
                }
                _parseIPAddress(this.mVideoModel);
                return;
            }
        }
        if (this.mUseVideoModelCache) {
            this.mLogger.setIsVideoModelCache(0);
        }
        this.mIsFetchingInfo = true;
        VideoInfoFetcher videoInfoFetcher = new VideoInfoFetcher(this.mContext, getNetClientSetByUser(), this.mTag);
        this.mFetcher = videoInfoFetcher;
        videoInfoFetcher.setVideoID(this.mVideoID);
        this.mFetcher.setUseVideoModelCache(this.mUseVideoModelCache);
        this.mFetcher.setUseVideoModelCacheForce(z10);
        this.mFetcher.setPlayType(this.mPlayType);
        if (getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_USE_FALLBACK_API, this.mUseFallbackAPI ? 1 : 0) > 0 && this.mFallbackAPI != null) {
            this.mFetcher.setUseFallbakApi(Boolean.TRUE);
        }
        this.mFetcher.setListener(new MyFetcherListener(this));
        VideoInfoFetcher videoInfoFetcher2 = this.mFetcher;
        String str2 = this.mAPIString;
        int i10 = this.mPlayAPIVersion;
        if (i10 != 2 && i10 != 4) {
            str = this.mAuthorization;
        } else {
            str = null;
        }
        videoInfoFetcher2.fetchInfo(str2, str, i10, this.mKeyseed);
        this.mFetcher.setResolutionMap(this.mResolutionMap);
    }

    private void _firstAVSyncFrame() {
        TTVideoEngineLog.i(logcatTag(), "player callback first av sync frame");
        long currentTimeMillis = System.currentTimeMillis();
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(423, 0, 0, Long.valueOf(currentTimeMillis));
            return;
        }
        this.mLogger.showedFirstAVSyncVideoFrame(currentTimeMillis);
        this.mListenerCompact.onFirstAVSyncFrame(this.mEngineWrapper);
    }

    private void _formaterStart() {
        PlayerEventSimpleListener playerEventSimpleListener;
        if (getConfigInt(664, this.mEnableDebugUINotify) != 0 && (playerEventSimpleListener = this.mPlayerEventListener) != null && this.mMediaPlayer != null) {
            playerEventSimpleListener.onMediaOpened(getVideoFormatInfo(), this.mMediaPlayer.getLongOption(621, 0L), this.mMediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME, 0L));
        }
    }

    private String _generatePlayUrl(String str, Map<String, String> map) {
        return _generatePlayUrl(str, map, null);
    }

    private Map _getCommentInfo() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return null;
        }
        String stringOption = mediaPlayer.getStringOption(47);
        HashMap hashMap = new HashMap();
        if (stringOption != null) {
            for (String str : stringOption.replaceAll(" ", "").split(",")) {
                String[] split = str.split(":");
                if (split.length == 2) {
                    hashMap.put(split[0], split[1]);
                }
            }
        }
        return hashMap;
    }

    @Nullable
    private HashMap<String, Integer> _getMdlErrorInfo() {
        String playLog;
        JSONObject jSONObject = null;
        if (getConfigInt(160, this.mDataLoaderEnable) == 0) {
            return null;
        }
        HashMap<String, Integer> hashMap = new HashMap<>();
        synchronized (this) {
            playLog = DataLoaderHelper.getDataLoader().getPlayLog(this.mTraceId);
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "get mdl info: " + playLog);
        if (playLog != null && !TextUtils.isEmpty(playLog)) {
            try {
                jSONObject = new JSONObject(playLog);
            } catch (JSONException e10) {
                TTVideoEngineLog.e(logcatTag(), e10.toString());
            }
        }
        if (jSONObject != null) {
            try {
                if (!jSONObject.isNull("err_code")) {
                    hashMap.put("mdl_err_code", Integer.valueOf(((Number) jSONObject.get("err_code")).intValue()));
                }
                if (!jSONObject.isNull("sub_err_code")) {
                    hashMap.put("mdl_sub_err_code", Integer.valueOf(((Number) jSONObject.get("sub_err_code")).intValue()));
                }
            } catch (Exception e11) {
                TTVideoEngineLog.d(e11);
            }
        }
        return hashMap;
    }

    private int _getPlayerTime() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return 0;
        }
        return mediaPlayer.getCurrentPosition();
    }

    private String _getSubApiString() {
        String str = null;
        if (this.mVideoModel == null || this.currentVideoInfo == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        String valueStr = this.currentVideoInfo.getValueStr(28);
        if (valueStr == null) {
            valueStr = "";
        }
        getConfigString(531, this.mSubHostName);
        String configString = getConfigString(546, this.mSubIds);
        getConfigString(547, this.mSubFormat);
        if (!TextUtils.isEmpty(BaseAppInfo.mOpenApiHostName)) {
            if (!BaseAppInfo.mOpenApiHostName.startsWith("http://") && !BaseAppInfo.mOpenApiHostName.startsWith("https://")) {
                sb2.append(String.format("https://%s?%s&FileIds=%s", BaseAppInfo.mOpenApiHostName, this.mSubAuthToken, valueStr));
            } else {
                sb2.append(String.format("%s?%s&FileIds=%s", BaseAppInfo.mOpenApiHostName, this.mSubAuthToken, valueStr));
            }
        } else {
            if (TextUtils.isEmpty(null)) {
                if (this.mPlayAPIVersion == 2) {
                    JSONArray topHostArray = InfoWrapper.getTopHostArray();
                    if (!TTHelper.isEmpty(topHostArray)) {
                        str = (String) topHostArray.opt(0);
                    } else {
                        str = AppInfo.getDefaultVodTopHost();
                    }
                } else {
                    str = ChannelSelect.getInstance().selectNext(this.mPlayAPIVersion, null);
                    if (str == null) {
                        str = AppInfo.getDefaultVodTopHostV2();
                    }
                }
            }
            sb2.append(String.format("http://%s?%s&FileIds=%s", str, this.mSubAuthToken, valueStr));
        }
        if (!TextUtils.isEmpty(configString)) {
            sb2.append(String.format("&SubtitleIds=%s", configString));
        }
        return sb2.toString();
    }

    private IABRModule _initABRModule(IVideoModel iVideoModel) {
        boolean z10;
        float f10;
        float f11;
        float f12;
        float f13;
        DefaultABRModule defaultABRModule = null;
        if (iVideoModel != null && (this.mEnableABR != 0 || this.mEnableHlsABR != 0 || this.mStandAlongAbrStartUp != 0)) {
            if (!isSupportSeamlessSwitch(iVideoModel) && this.mStandAlongAbrStartUp <= 0) {
                return null;
            }
            if (this.mEnableABR != 1 && !this.mABRUsed) {
                z10 = false;
            } else {
                z10 = true;
            }
            this.mABRUsed = z10;
            TTVideoEngineLog.d(logcatTag(), "[ABR] init ABR, algorithm type:" + TTVideoEngine.sABRAlgorithmType);
            ABRConfig.setSwitchSensitivity(getConfigInt(501, this.mABRSwitchSensitivity));
            ABRConfig.setStallPenaltyParameter(getConfigFloat(TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER, this.mABRStallPenaltyParameter));
            ABRConfig.setSwitchPenaltyParameter(getConfigFloat(TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER, this.mABRSwitchPenaltyParameter));
            ABRConfig.setBandwidthParameter(getConfigFloat(TTVideoEngineInterface.PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER, this.mABRBandwidthParameter));
            defaultABRModule = new DefaultABRModule();
            defaultABRModule.init(new MyPlayStateSupplier(this));
            defaultABRModule.setIntOptionForKey(34, getConfigInt(334, this.mScreenWidth));
            defaultABRModule.setIntOptionForKey(35, getConfigInt(335, this.mScreenHeight));
            defaultABRModule.setIntOptionForKey(6, this.mPlayerViewWidth);
            defaultABRModule.setIntOptionForKey(7, this.mPlayerViewHeight);
            defaultABRModule.setLongOptionForKey(26, this.mPlayStartTimestamp);
            ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
            float f14 = 0.0f;
            if (iSpeedPredictor != null) {
                Map<String, String> downloadSpeed = iSpeedPredictor.getDownloadSpeed(VideoRef.TYPE_VIDEO);
                if (downloadSpeed != null && downloadSpeed.get("download_speed") != null) {
                    f14 = Float.parseFloat(downloadSpeed.get("download_speed"));
                }
                f12 = StrategyCenter.sNetAbrSpeedPredictor.getPredictSpeed(0);
                f13 = StrategyCenter.sNetAbrSpeedPredictor.getLastPredictConfidence();
                f11 = StrategyCenter.sNetAbrSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, 1, true);
                f10 = StrategyCenter.sNetAbrSpeedPredictor.getAverageDownloadSpeed(VideoRef.TYPE_VIDEO, this.mABRStartupSpeedType, false);
            } else {
                f10 = 0.0f;
                f11 = 0.0f;
                f12 = 0.0f;
                f13 = 0.0f;
            }
            defaultABRModule.setFloatOptionForKey(25, f14);
            defaultABRModule.setFloatOptionForKey(23, f12);
            defaultABRModule.setFloatOptionForKey(24, f13);
            defaultABRModule.setFloatOptionForKey(27, f11);
            defaultABRModule.setFloatOptionForKey(28, f10);
            defaultABRModule.setIntOptionForKey(21, TTNetWorkListener.getInstance().getCurrentAccessType());
            setMediaInfo2Abr(defaultABRModule, iVideoModel);
        }
        return defaultABRModule;
    }

    private boolean _initIntertrustDrm() {
        IntertrustDrmHelper intertrustDrmHelper = this.mIntertrustDrmHelper;
        if (intertrustDrmHelper != null) {
            intertrustDrmHelper.stop();
        } else {
            this.mIntertrustDrmHelper = new IntertrustDrmHelper();
        }
        int init = this.mIntertrustDrmHelper.init(this.mContext, getConfigInt(38, this.mDrmCloseRootCheck));
        if (init != 0) {
            if (init == -1000) {
                receivedError(new Error(Error.IntertrustDRM, Error.IntertrustDrmLibUnload));
                return false;
            } else if (init == -1) {
                receivedError(new Error(Error.IntertrustDRM, Error.IntertrustDrmInitializeFail));
                return false;
            } else if (init == -1002) {
                receivedError(new Error(Error.IntertrustDRM, Error.IntertrustDrmPluginUnload));
                return false;
            } else {
                receivedError(new Error(Error.IntertrustDRM, (int) Error.IntertrustDrmInitializeFail, init));
                return false;
            }
        } else if (this.mIntertrustDrmHelper.start() == -1) {
            receivedError(new Error(Error.IntertrustDRM, Error.IntertrustDrmInitializeFail));
            return false;
        } else {
            this.mIntertrustDrmHelper.setListener(new MyDrmTokenProcessedListener(this));
            if (!TextUtils.isEmpty(this.mTokenUrlTemplate)) {
                this.mIntertrustDrmHelper.setTokenUrlTemplate(this.mTokenUrlTemplate);
                return true;
            }
            return true;
        }
    }

    private void _initUsingHandle() {
        if (this.mHandler != null) {
            return;
        }
        this.mHandler = new Handler(TTHelper.getLooper()) { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.8
            {
                TTVideoEngineImpl.this = this;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String str;
                String str2;
                super.handleMessage(message);
                int i10 = message.what;
                if (i10 == 10) {
                    String str3 = (String) message.obj;
                    long j10 = message.arg1;
                    int i11 = message.arg2;
                    String str4 = (String) TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.get("video");
                    String str5 = (String) TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.get("audio");
                    if (TTVideoEngineImpl.this.mState == 5) {
                        return;
                    }
                    if (!TextUtils.isEmpty(str5) && str5.equals(str3)) {
                        if (TTVideoEngineImpl.this.mLogger != null) {
                            TTVideoEngineImpl.this.mLogger.setDashAudioCacheSize(j10);
                            TTVideoEngineImpl.this.mLogger.setIntOption(183, i11);
                        }
                    } else if (!TextUtils.isEmpty(str4) && str4.equals(str3) && TTVideoEngineImpl.this.mLogger != null) {
                        TTVideoEngineImpl.this.mLogger.setDashVideoCacheSize(j10);
                        TTVideoEngineImpl.this.mLogger.setIntOption(182, i11);
                    }
                    String str6 = "";
                    if (TTVideoEngineImpl.this.mUsingDataLoaderPlayFilePaths != null && TTVideoEngineImpl.this.mUsingDataLoaderPlayFilePaths.contains(str3)) {
                        TTVideoEngineImpl.this.mVideoPreloadSize += j10;
                        if (TTVideoEngineImpl.this.mLogger != null) {
                            TTVideoEngineImpl.this.mLogger.setVideoCacheSize(TTVideoEngineImpl.this.mVideoPreloadSize);
                            TTVideoEngineImpl.this.mLogger.setIntOption(181, i11);
                        }
                        String logcatTag = TTVideoEngineImpl.this.logcatTag();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("using mdl cache, key :");
                        sb2.append(str3);
                        sb2.append(" size = ");
                        sb2.append(j10);
                        sb2.append(" vid = ");
                        if (!TextUtils.isEmpty(TTVideoEngineImpl.this.mVideoID)) {
                            str2 = TTVideoEngineImpl.this.mVideoID;
                        } else {
                            str2 = "";
                        }
                        sb2.append(str2);
                        sb2.append(" groupid = ");
                        if (!TextUtils.isEmpty(TTVideoEngineImpl.this.mMDLGroupId)) {
                            str6 = TTVideoEngineImpl.this.mMDLGroupId;
                        }
                        sb2.append(str6);
                        sb2.append(" miss reason = ");
                        sb2.append(i11);
                        TTVideoEngineLog.i(logcatTag, sb2.toString());
                        if ((TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.size() < 2 || TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.containsValue(str3)) && TTVideoEngineImpl.this.mVideoEngineInfoListener != null) {
                            VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
                            videoEngineInfos.setKey(VideoEngineInfos.USING_MDL_FILEPATH_HIT_CACHE_SIZE);
                            videoEngineInfos.mUsingMDLPlayFilePath = str3;
                            videoEngineInfos.mHitCacheSize = j10;
                            TTVideoEngineImpl.this.notifyEngineInfo(videoEngineInfos, true);
                        }
                    } else if (TTVideoEngineImpl.this.mUsingDataLoaderPlayTaskKeys != null && TTVideoEngineImpl.this.mUsingDataLoaderPlayTaskKeys.contains(str3)) {
                        TTVideoEngineImpl.this.mVideoPreloadSize += j10;
                        if (TTVideoEngineImpl.this.mLogger != null) {
                            TTVideoEngineImpl.this.mLogger.setVideoCacheSize(TTVideoEngineImpl.this.mVideoPreloadSize);
                        }
                        String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("using mdl cache, key :");
                        sb3.append(str3);
                        sb3.append(" size = ");
                        sb3.append(j10);
                        sb3.append(" vid = ");
                        if (!TextUtils.isEmpty(TTVideoEngineImpl.this.mVideoID)) {
                            str = TTVideoEngineImpl.this.mVideoID;
                        } else {
                            str = "";
                        }
                        sb3.append(str);
                        sb3.append(" groupid = ");
                        if (!TextUtils.isEmpty(TTVideoEngineImpl.this.mMDLGroupId)) {
                            str6 = TTVideoEngineImpl.this.mMDLGroupId;
                        }
                        sb3.append(str6);
                        sb3.append(" miss reason = ");
                        sb3.append(i11);
                        TTVideoEngineLog.i(logcatTag2, sb3.toString());
                        if ((TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.size() < 2 || TTVideoEngineImpl.this.mBashDashDefaultMDLKeys.containsValue(str3)) && TTVideoEngineImpl.this.mVideoEngineInfoListener != null) {
                            VideoEngineInfos videoEngineInfos2 = new VideoEngineInfos();
                            videoEngineInfos2.setKey(VideoEngineInfos.USING_MDL_HIT_CACHE_SIZE);
                            videoEngineInfos2.mUsingMDLPlayTaskKey = str3;
                            videoEngineInfos2.mHitCacheSize = j10;
                            TTVideoEngineImpl.this.notifyEngineInfo(videoEngineInfos2, true);
                        }
                    }
                } else if (i10 == 33) {
                    TTVideoEngineImpl.this._doResetByPool();
                }
            }
        };
    }

    private boolean _isDashSource(VideoInfo videoInfo) {
        String valueStr = videoInfo.getValueStr(6);
        return !TextUtils.isEmpty(valueStr) && (valueStr.equals("dash") || valueStr.equals(TTVideoEngineInterface.FORMAT_TYPE_MPD));
    }

    private void _isEnableEffect(int i10, int i11) {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.d(logcatTag, "_isEnableEffect:" + i11 + ",type:" + i10);
            Bundle bundle = new Bundle();
            bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 19);
            bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, i10);
            bundle.putInt(TextureRenderKeys.KEY_IS_INT_VALUE, i11);
            videoSurface.setEffect(bundle);
        }
    }

    private boolean _isNeedNotifyMdlErrorCode(Error error) {
        if (getConfigInt(160, this.mDataLoaderEnable) == 0 || DataLoaderHelper.getDataLoader().getIntValue(DataLoaderHelper.DATALOADER_KEY_ENABLE_NOTIFY_ERROR) == 0) {
            return false;
        }
        if (DataLoaderHelper.getDataLoader().getIntValue(DataLoaderHelper.DATALOADER_KEY_STR_NOTIFY_NOT_ONLY_NETWORK_ERROR_CODES) == 0 && !DataLoaderHelper.getDataLoader().isNotifyNetworkErrorCodes(error.code)) {
            return false;
        }
        return true;
    }

    private boolean _isUrlExpired(VideoInfo videoInfo, IVideoModel iVideoModel) {
        if (videoInfo == null || iVideoModel == null || getConfigInt(450, this.mAllowedExpiredModel ? 1 : 0) > 0) {
            return false;
        }
        if (iVideoModel.getVideoRefLong(220) > 0 && TimeService.isUpdated() && TimeService.currentTimeMillis() - (iVideoModel.getVideoRefLong(220) * 1000) > -30000) {
            return true;
        }
        if (videoInfo.getValueLong(30) <= 0 || !TimeService.isUpdated() || TimeService.currentTimeMillis() - (videoInfo.getValueLong(30) * 1000) <= -30000) {
            return false;
        }
        return true;
    }

    private void _judgeSurfaceHashMap(Surface surface) {
        if (surface != null) {
            Map<Surface, Boolean> map = mSurfaceHashMap;
            if (map.get(surface) != null && map.get(surface).booleanValue()) {
                TTVideoEngineLog.i(TAG, "remain native render from surface hashmap");
                this.mRenderType = 5;
                MediaPlayer mediaPlayer = this.mMediaPlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.setIntOption(56, 5);
                }
            }
        }
    }

    private void _logBeginToPlay(String str) {
        if (this.mLogger != null) {
            long currentTimeMillis = System.currentTimeMillis();
            this.mPlayTime = currentTimeMillis;
            this.mLogger.setDnsMode(getConfigInt(110, this.mIsUsePlayerDNS));
            this.mLogger.beginToPlay(str, currentTimeMillis, BaseAppInfo.mDeviceId);
            this.mTraceId = this.mLogger.getTraceID();
        }
    }

    public void _logFetchedFailed(Error error) {
        this.mLogger.fetchInfoComplete((VideoModel) null, error);
    }

    public void _logFetchedVideoInfo(IVideoModel iVideoModel) {
        this.mLogger.fetchInfoComplete(iVideoModel, (Error) null);
    }

    private void _logFirstFrame() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (!this.mHasFirstFrameShown) {
            _updateLogTime();
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.showedFirstFrame();
            }
            this.mHasFirstFrameShown = true;
        } else if (mediaPlayer != null) {
            this.mVideoCodecID = mediaPlayer.getIntOption(141, -1);
            this.mAudioCodecProfile = mediaPlayer.getIntOption(402, -1);
            this.mVideoCodecProfile = mediaPlayer.getIntOption(403, -1);
        }
        if (mediaPlayer != null) {
            this.mVideoCodecType = mediaPlayer.getIntOption(157, -1);
            this.mAudioCodecType = mediaPlayer.getIntOption(158, -1);
            this.mAudioCodecID = mediaPlayer.getIntOption(140, -1);
            this.mBitrate = mediaPlayer.getLongOption(171, -1L);
            this.mContainerFPS = mediaPlayer.getFloatOption(151, 0.0f);
        }
    }

    private void _logFirstHost(String str) {
        if (this.mFirstHost) {
            this.mFirstHost = false;
            this.mLogger.setInitialHost(str);
        }
        this.mLogger.setCurHost(str);
    }

    private void _logFirstIP(String str) {
        if (this.mFirstIP) {
            this.mFirstIP = false;
            this.mLogger.setInitialIP(str);
        }
        this.mLogger.setCurIP(str);
    }

    private void _logFirstQuality(String str) {
        if (this.mFirstQuality) {
            this.mFirstQuality = false;
            this.mLogger.setInitialQuality(str);
        }
        this.mLogger.setCurQuality(str);
    }

    private void _logFirstQualityType(int i10) {
        if (this.mFirstQualityType) {
            this.mFirstQualityType = false;
            this.mLogger.setInitialQualityType(i10);
        }
    }

    private void _logFirstResolution(Resolution resolution) {
        boolean z10;
        String _resolutionToString = _resolutionToString(resolution);
        if (this.mFirstResolution) {
            if (resolution == Resolution.Auto) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.mFirstResolution = z10;
            this.mLogger.setInitialResolution(_resolutionToString);
        }
        this.mLogger.setCurResolution(_resolutionToString);
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _logFirstURL(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._logFirstURL(java.lang.String):void");
    }

    public void _logMessage(String str) {
        this.mLogger.logMessage(str);
    }

    private void _logRenderStartTime() {
        if (!this.mHasFirstFrameShown && this.mLogger != null) {
            this.mVVTime = System.currentTimeMillis();
            this.mRenderStartTime = SystemClock.elapsedRealtime();
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "mRenderStartTime:" + this.mRenderStartTime + ", curT:" + this.mVVTime);
            this.mLogger.showedOneFrame();
        }
    }

    @Nullable
    private String _mdlUrl(String str, String str2, long j10, String[] strArr, Resolution resolution, String str3, VideoInfo videoInfo, String str4, String str5, long j11, String[] strArr2, int i10) {
        boolean z10;
        boolean z11;
        boolean z12;
        String str6;
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null && iVideoModel.hasFormat(IVideoModel.Format.HLS)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.mPlayerType != 0 && (getConfigInt(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ENABLE_NATIVE_MDL, this.mExoEnableNativeMdl ? 1 : 0) == 0 || this.mPlayerType != 5)) {
            TTVideoEngineLog.i(logcatTag(), "force disable native mal because play type: " + this.mPlayerType);
            z11 = true;
        } else {
            z11 = false;
        }
        TTVideoEngineLog.d(logcatTag(), "cdn type is: " + this.mP2PCDNType);
        String addPCDNFlag = MDLExtraInfoHelper.addPCDNFlag(this.mP2PCDNType, str5);
        boolean _removeThirdPartyProtocolHead = _removeThirdPartyProtocolHead(strArr);
        if (this.mEnableSourceRefreshStrategy && TTVideoEngineSourceRefreshStrategy.isEnableM3u8Opt()) {
            z12 = true;
        } else {
            z12 = false;
        }
        DataLoaderHelper dataLoader = DataLoaderHelper.getDataLoader();
        String str7 = this.mTTHlsDrmToken;
        String str8 = this.mEngineHash;
        if (this.mBufferProcessCallback != null) {
            str6 = this.mBufferProcessProtoName;
        } else {
            str6 = null;
        }
        String _proxyUrl = dataLoader._proxyUrl(str, str2, j10, strArr, resolution, str3, videoInfo, str4, addPCDNFlag, z11, z10, str7, j11, strArr2, i10, str8, z12, str6, this.mBufferProcessCovertOrder);
        int mdlInvalidCode = DataLoaderHelper.getDataLoader().getMdlInvalidCode();
        if (mdlInvalidCode > 0) {
            this.mLogger.setIntOption(174, mdlInvalidCode);
            if (mdlInvalidCode == IVideoEventLogger.MdlInvalidCode.StateError.ordinal()) {
                loggerSetMdlInitializeState();
            }
        }
        if (_removeThirdPartyProtocolHead) {
            _proxyUrl = _addThirdPartyProtocolHead(_proxyUrl);
        }
        if (!TextUtils.isEmpty(_proxyUrl)) {
            String logcatTag = logcatTag();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("_mdlUrl get proxyUrl: key = ");
            sb2.append(str);
            sb2.append(", videoId = ");
            String str9 = str2;
            sb2.append(str9);
            TTVideoEngineLog.i(logcatTag, sb2.toString());
            if (this.mEnableTmpLog == 1) {
                showLongLog(_proxyUrl);
            }
            if (_proxyUrl.startsWith(DataLoaderHelper.MDL_PREFIX)) {
                this.mLogger.setEnableMDL(2);
                if (this.mFirstURL) {
                    this.mLogger.setIntOption(173, 2);
                }
            } else {
                this.mLogger.setEnableMDL(1);
                if (this.mFirstURL) {
                    this.mLogger.setIntOption(173, 1);
                }
            }
            this.mLogger.setProxyUrl(_proxyUrl);
            if (TextUtils.isEmpty(str2)) {
                str9 = str;
            }
            this.mUsingDataLoaderPlayRawKey = str9;
            if (!TextUtils.isEmpty(str4)) {
                this.mUsingDataLoaderPlayFilePaths.add(str4);
            }
            if (!TextUtils.isEmpty(str)) {
                this.mUsingDataLoaderPlayTaskKeys.add(str);
            }
            _dataLoaderAddEngineRef();
        }
        return _proxyUrl;
    }

    private void _notifyError(Error error) {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
            if (iPlayDurationManager != null) {
                iVideoEventLogger.addWatchedDuration(iPlayDurationManager.getPlayedDuration());
            }
            this.mSourceRefreshStrategy.recordLog();
            this.mLogger.movieFinish(error, this.mPlayAPIVersion);
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(33, 0);
        }
        this.mStarted = false;
        this.mIsStartPlayAutomatically = true;
        if (_isNeedNotifyMdlErrorCode(error)) {
            error.parameters.putAll(_getMdlErrorInfo());
        }
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(409, 0, 0, error);
        } else {
            VideoEngineConfigResolutionListener videoEngineConfigResolutionListener = this.mVideoEngineConfigResolutionListener;
            if (videoEngineConfigResolutionListener != null && this.mResolutionSwitching) {
                videoEngineConfigResolutionListener.onError(error);
                this.mVideoEngineConfigResolutionListener = null;
            }
            this.mListenerCompact.onError(error);
        }
        this.mErrorCount = 0;
        this.mAccumulatedErrorCount = 0;
        this.mErrorEnd = true;
        releaseAsync();
    }

    private void _onABRGetPredictResult(int i10) {
        if (this.mABRModule != null && i10 >= 0) {
            TTVideoEngineLog.d(logcatTag(), "[ABR] predict next segment bitrate:" + i10 + "bps, this:" + this);
            if (this.mLooperThread.checkSendMainLooper()) {
                this.mLooperThread.postMainLooperMessage(600, 0, i10, null);
            } else {
                this.mListenerCompact.onABRPredictBitrate(0, i10);
            }
            long j10 = this.currentBitrate;
            long j11 = i10;
            if (j10 != j11) {
                this.mLogger.abrEventStart(j10, j11);
                this.currentBitrate = j11;
            }
        }
    }

    private void _parseDNS(String str) {
        boolean z10;
        TTVideoEngineLog.i(logcatTag(), "hostnameURL:" + str);
        if (this.mShouldStop) {
            TTVideoEngineLog.w(logcatTag(), "_parseDNS should stop");
            return;
        }
        this.mState = 2;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        boolean z11 = false;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setDNSStartTime(System.currentTimeMillis(), 0);
        }
        try {
            DNSParser dNSParser = new DNSParser(this.mContext, new URL(str).getHost(), getNetClientSetByUser());
            this.mDNSParser = dNSParser;
            dNSParser.setCompletionListener(new MyDNSCompletionListener(this));
            if (this.mErrorCount != 0) {
                this.mDNSParser.setForceReparse();
            }
            DNSParser dNSParser2 = this.mDNSParser;
            if (getConfigInt(18, this.mUseDNSCache ? 1 : 0) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            dNSParser2.setIsUseDNSCache(z10);
            int configInt = getConfigInt(19, this.mDNSExpiredTime);
            if (configInt > 0) {
                this.mDNSParser.setDNSExpiredTimeInS(configInt);
            }
            if (getConfigInt(403, this.mIsUseServerDns ? 1 : 0) == 1) {
                z11 = true;
            }
            if (z11 && this.mVideoModel != null) {
                this.mDNSParser.setIsUseServerDNS(z11);
                this.mDNSParser.setDnsInfo(this.mVideoModel.getDnsInfo(), Long.valueOf(this.mVideoModel.getVideoRefLong(216)));
            }
            this.mDNSParser.start();
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
        }
    }

    public void _parseDNSComplete(String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(300, 0, 0, str);
        } else {
            _doParseDNSComplete(str);
        }
    }

    public void _parseIPAddress(IVideoModel iVideoModel) {
        _parseIPAddress(iVideoModel, null);
    }

    private void _pause() {
        TTVideoEngineLog.i(logcatTag(), "_pause");
        if (!this.mPrepared) {
            this.mPausedBeforePrepared = true;
            updatePlaybackState(2);
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            TTVideoEngineLog.d(logcatTag(), "player will pause");
            mediaPlayer.pause();
            updatePlaybackState(2);
            _updateTextureState(2);
        }
        IABRModule iABRModule = this.mABRModule;
        if (iABRModule != null) {
            iABRModule.stop();
            this.mLogger.setIsEnableABR(0);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:1074:0x07a5  */
    /* JADX WARN: Removed duplicated region for block: B:1090:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:1132:0x0886  */
    /* JADX WARN: Removed duplicated region for block: B:1147:0x08e5 A[Catch: all -> 0x08f8, TryCatch #1 {all -> 0x08f8, blocks: (B:1145:0x08c5, B:1147:0x08e5, B:1150:0x08fb, B:1152:0x08ff, B:1154:0x0908, B:1156:0x0910, B:1158:0x0914, B:1160:0x091a, B:1163:0x092a, B:1167:0x095c, B:1169:0x0960, B:1171:0x0968, B:1172:0x0971, B:1164:0x0946, B:1166:0x094a), top: B:1360:0x08c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1150:0x08fb A[Catch: all -> 0x08f8, TryCatch #1 {all -> 0x08f8, blocks: (B:1145:0x08c5, B:1147:0x08e5, B:1150:0x08fb, B:1152:0x08ff, B:1154:0x0908, B:1156:0x0910, B:1158:0x0914, B:1160:0x091a, B:1163:0x092a, B:1167:0x095c, B:1169:0x0960, B:1171:0x0968, B:1172:0x0971, B:1164:0x0946, B:1166:0x094a), top: B:1360:0x08c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:1175:0x0983  */
    /* JADX WARN: Removed duplicated region for block: B:1218:0x0b7f  */
    /* JADX WARN: Removed duplicated region for block: B:1221:0x0ba9  */
    /* JADX WARN: Removed duplicated region for block: B:1241:0x0c88  */
    /* JADX WARN: Removed duplicated region for block: B:1249:0x0ca2  */
    /* JADX WARN: Removed duplicated region for block: B:1251:0x0cac  */
    /* JADX WARN: Removed duplicated region for block: B:883:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:900:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:901:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:904:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:905:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:908:0x03cb  */
    /* JADX WARN: Removed duplicated region for block: B:926:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:964:0x04d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void _playInternal(java.lang.String r42, java.util.Map<java.lang.String, java.lang.String> r43) {
        /*
            Method dump skipped, instructions count: 3988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._playInternal(java.lang.String, java.util.Map):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:1131:0x09a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void _playInternal2(java.lang.String r43, java.util.Map<java.lang.String, java.lang.String> r44) {
        /*
            Method dump skipped, instructions count: 4038
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._playInternal2(java.lang.String, java.util.Map):void");
    }

    private void _playVideo(String str, String str2) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "start to play video, host:" + str + ", ip:" + str2);
        if (this.mShouldStop) {
            TTVideoEngineLog.w(logcatTag(), "_playVideo should stop");
        } else if (!TextUtils.isEmpty(str2)) {
            this.mURLInfo.setIpURL(str2);
            if (!TextUtils.isEmpty(str)) {
                this.currentHost = str;
                this.mHeaders.put(HEADER_IS_HOST, String.format(" %s", str));
            }
            _playInternal(this.mURLInfo.ipURL, this.mHeaders);
        } else {
            _playInternal(this.mURLInfo.hostURL, this.mHeaders);
        }
    }

    private void _preBuffering(int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "preBuffering start,this:" + this + ", code:" + i10);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.moviePreStalled(i10);
        }
    }

    private void _prepareToPlay() {
        String str;
        String str2;
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.clear();
        }
        this.mLogger.setTag(this.mTag);
        this.mLogger.setSubTag(this.mSubTag);
        if (this.mPlayStartTimestamp == 0) {
            this.mPlayStartTimestamp = System.currentTimeMillis();
        }
        if (this.mCodecStrategyAdapter.isFetchSmartUrl()) {
            fetchSmartUrlInfo();
            return;
        }
        if (!this.mIsLocal && !this.mIsDirectURL && this.mPlayFd == null && this.mMediaDataSource == null) {
            if (this.mIsPreloaderItem) {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                long j10 = this.mPreloaderItem.mUrlTime;
                if (j10 > 0 && currentTimeMillis - j10 > 2400) {
                    _fetchVideoInfo();
                }
                _logFirstURL(this.mPreloaderItem.mUrl);
                _logBeginToPlay(this.mPreloaderItem.mVideoID);
                _singleURLParseAndPlay(this.mPreloaderItem.mUrl, this.mHeaders);
            } else if (this.mIsPlayItem) {
                _logBeginToPlay(this.mVideoID);
                _logFirstURL(this.mPlayItem.playURL);
                _singleURLParseAndPlay(this.mPlayItem.playURL, this.mHeaders);
            } else if (this.mIsFeedInfo) {
                _logBeginToPlay(this.mVideoID);
                _parseIPAddress(this.mVideoModel);
            } else {
                _logBeginToPlay(this.mVideoID);
                _fetchVideoInfo();
            }
        } else {
            _logBeginToPlay(this.mVideoID);
            if (this.mIsLocal) {
                str = this.mLocalURL;
            } else {
                str = this.mDirectURL;
            }
            _logFirstURL(str);
            if (this.mIsLocal) {
                str2 = this.mLocalURL;
            } else {
                str2 = this.mDirectURL;
            }
            _singleURLParseAndPlay(str2, this.mHeaders);
        }
        if (this.mMediaPlayer != null && isPcdnNeedPlayInfo()) {
            setPlayInfo(5, 0L);
        }
    }

    private void _refreshSurface() {
        TTVideoEngineLog.i(logcatTag(), "refresh surface");
        if (this.mRefreshSurfaceDone) {
            return;
        }
        this.mRefreshSurfaceDone = true;
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            TTVideoEngineLooperThread2 tTVideoEngineLooperThread2 = this.mLooperThread;
            if (tTVideoEngineLooperThread2 != null && tTVideoEngineLooperThread2.checkSendMainLooper()) {
                this.mLooperThread.postMainLooperMessage(424, 0, 0, null);
                return;
            }
            ListenerCompact listenerCompact = this.mListenerCompact;
            if (listenerCompact != null) {
                listenerCompact.onRefreshSurface(this.mEngineWrapper);
                return;
            }
            return;
        }
        this.mRefreshTextureSurface = true;
        videoSurface.setIntOption(133, 1);
    }

    private boolean _removeThirdPartyProtocolHead(String[] strArr) {
        TTVideoEngineFFmpegProtocol tTVideoEngineFFmpegProtocol;
        if (strArr == null || (tTVideoEngineFFmpegProtocol = this.mFFmpegProtocol) == null) {
            return false;
        }
        String protocolName = tTVideoEngineFFmpegProtocol.getProtocolName();
        boolean z10 = false;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].substring(0, protocolName.length()).equals(protocolName)) {
                strArr[i10] = strArr[i10].substring(protocolName.length() + 1);
                z10 = true;
            }
        }
        return z10;
    }

    private void _renderSeekComplete(int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "render seek complete:" + i10);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.renderSeekCompleted(i10);
            this.mLogger.showedOneFrame();
        }
        if (this.mSeeking) {
            this.mSeeking = false;
            this.mSeekingStartTime = 0L;
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                iVideoEventLogger2.seekCompleted();
                this.mLogger.showedOneFrame();
            }
        }
        if (shouldStartTextureRenderCheck()) {
            this.mTextureSurface.setIntOption(33, 1);
        }
        if (this.mVideoEngineInfoListener != null) {
            String logcatTag2 = logcatTag();
            TTVideoEngineLog.i(logcatTag2, "render seek complete call back " + i10);
            VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
            videoEngineInfos.setKey(VideoEngineInfos.USING_RENDER_SEEK_COMPLETE);
            videoEngineInfos.setObject(Integer.valueOf(i10));
            notifyEngineInfo(videoEngineInfos, true);
        }
    }

    public void _renderStart() {
        int i10;
        boolean z10;
        TTVideoEngineLog.i(logcatTag(), "start to render,this:" + this);
        _logRenderStartTime();
        if (this.mShouldPlay) {
            updatePlaybackState(1);
        }
        _logFirstFrame();
        _setupSubtitleInfo();
        this.mTexNotifyFirstFrame = true;
        final boolean isPlaybackUseForEffect = this.mTRSrategy.isPlaybackUseForEffect(1);
        boolean z11 = this.mPlayBackUsedSR;
        if (z11 || isPlaybackUseForEffect) {
            if ((z11 && this.mAsyncInitSR) || (isPlaybackUseForEffect && this.mAsyncInitEffect && this.mTextureSurface == null)) {
                this.mSRNotUseReason = Error.AsyncIniting;
                EngineThreadPool.addExecuteTask(new Runnable() { // from class: com.ss.ttvideoengine.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        TTVideoEngineImpl.this.lambda$_renderStart$9(isPlaybackUseForEffect);
                    }
                });
            }
            if (this.mTextureSurface != null && this.mMediaPlayer != null) {
                float f10 = this.mContainerFPS;
                TTVideoEngineLog.d(logcatTag(), "[SRLog]open sr = " + this.mTextureSrOpen + ",open sr check fps: = " + f10);
                if (f10 > 0.0f && f10 < 31.0f) {
                    i10 = 0;
                } else {
                    this.mTextureSrOpen = 0;
                    i10 = Error.FPSNotSupport;
                }
                TTVideoEngineLog.d(logcatTag(), "[SRLog]open sr after first frame render open=" + this.mTextureSrOpen + " reason=" + i10);
                doOpenSR(this.mTextureSrOpen, i10);
                this.mTRSrategy.onRenderStart(f10, this.mTextureSurface, this.mHasFirstFrameShown);
                if (getConfigInt(4005, this.mEnableDecoderRenderVC2RenderLatency) > 0 && getConfigInt(588, this.mForceDisableOESRender ? 1 : 0) != 1) {
                    TTVideoEngineLog.i(logcatTag(), "general latency");
                    this.mMediaPlayer.setIntOption(4006, getConfigInt(4007, this.mDecoderRenderVC2RenderLatencyGeneral));
                }
            }
        }
        int i11 = this.mLoadState;
        updateLoadState(1, -1);
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.start();
        }
        final int i12 = this.mTestNetSpeedDiff;
        if (this.mTestNetSpeed >= 0 && this.mMediaPlayer != null && i12 > 0) {
            this.mTestNetSpeedHandler = new Handler();
            Runnable runnable = new Runnable() { // from class: com.ss.ttvideoengine.e
                @Override // java.lang.Runnable
                public final void run() {
                    TTVideoEngineImpl.this.lambda$_renderStart$10(i12);
                }
            };
            this.mTestNetSpeedRunable = runnable;
            this.mTestNetSpeedHandler.postDelayed(runnable, i12 + (i12 / 2));
        }
        if (this.mRetrying) {
            if (this.mLastPlaybackTime != 0 && !isInHousePlayer()) {
                _seekTo(this.mLastPlaybackTime, this.mRetrying);
            }
            this.mRetrying = false;
            this.mLogger.retryFinish();
        }
        if (this.mStartTime != 0 && !isInHousePlayer()) {
            _seekTo(this.mStartTime, this.mSeamSwitchingResolution);
        }
        this.mStartTime = 0;
        if (this.mSeamSwitchingResolution) {
            z10 = !this.mCloseRenderStartMsgOnSwitchResolutionDone;
            if (this.mLastPlaybackTime != 0 && !isInHousePlayer()) {
                _seekTo(this.mLastPlaybackTime, this.mSeamSwitchingResolution);
            } else {
                this.mSeamSwitchingResolution = false;
                changeResolutionSwitchingState(false);
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                if (iVideoEventLogger != null) {
                    iVideoEventLogger.switchResolutionEnd(true);
                }
            }
        } else {
            z10 = true;
        }
        this.mErrorCount = 0;
        this.mBestResolutionType = 0;
        this.mEngineConfig.setIntOption(419, 0);
        if (shouldStartTextureRenderCheck() && i11 != 2) {
            this.mTextureSurface.setIntOption(33, 1);
        }
        if (z10) {
            notifyRenderStart();
        }
        if (this.mEnableSurfaceHashmapJudgement > 0) {
            _doRecordSurface();
        }
        setPlayInfo(0, this.mDuration);
        _doRefreshCpu();
    }

    private void _replayOrResume() {
        String str;
        IpInfo ipInfo;
        if (shouldPrepare()) {
            if (!this.mIsLocal && !this.mIsDirectURL && this.mPlayFd == null && this.mMediaDataSource == null) {
                if (this.mIsPreloaderItem) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    long j10 = this.mPreloaderItem.mUrlTime;
                    if (j10 > 0 && currentTimeMillis - j10 > 2400) {
                        _fetchVideoInfo();
                    }
                    _logBeginToPlay(this.mPreloaderItem.mVideoID);
                    _singleURLParseAndPlay(this.mPreloaderItem.mUrl, this.mHeaders);
                    return;
                } else if (this.mIsPlayItem) {
                    _logBeginToPlay(this.mVideoID);
                    _singleURLParseAndPlay(this.mPlayItem.playURL, this.mHeaders);
                    return;
                } else {
                    _logBeginToPlay(this.mVideoID);
                    Map<String, IpInfo> map = this.urlIPMap;
                    if (map != null && (ipInfo = map.get(this.mURLInfo.hostURL)) != null) {
                        ipInfo.dns = "FromCache";
                        this.urlIPMap.put(this.mURLInfo.hostURL, ipInfo);
                        _updateVU();
                    }
                    _playInternal(this.mURLInfo.getCurrentURL(), this.mHeaders);
                    return;
                }
            }
            _logBeginToPlay(this.mVideoID);
            if (this.mIsLocal) {
                str = this.mLocalURL;
            } else {
                str = this.mDirectURL;
            }
            _singleURLParseAndPlay(str, this.mHeaders);
            return;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "_replayOrResume state:" + this.mPlaybackState + ", playtime:" + this.mPlayTime);
        if (this.mIsPlayComplete || (this.mPlaybackState == 0 && this.mPlayTime == 0)) {
            _sendUrlInfoMsg();
            _sendMdlCacheMsg();
            _logBeginToPlay(this.mVideoID);
            Map<String, String> map2 = this.mHeaders;
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (map2 != null && mediaPlayer != null) {
                map2.put(HEADER_IS_TRACEID, this.mTraceId);
                StringBuilder sb2 = new StringBuilder();
                for (Map.Entry<String, String> entry : map2.entrySet()) {
                    sb2.append(entry.getKey());
                    sb2.append(": ");
                    sb2.append(entry.getValue());
                    sb2.append("\r\n");
                }
                this.mMediaPlayer.setStringOption(20, sb2.toString());
            }
            IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
            if (iPlayDurationManager != null) {
                iPlayDurationManager.clear();
            }
        }
        _resumeVideo();
    }

    private void _reset() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "reset, this:" + this);
        this.mShouldPlay = false;
        this.mPrepared = false;
        this.mIsFetchingInfo = false;
        this.mABRUsed = false;
        TTTestSpeedListener tTTestSpeedListener = this.mTTSpeedListener;
        if (tTTestSpeedListener != null) {
            tTTestSpeedListener.mAverageDownloadSpeed = 0.0f;
            tTTestSpeedListener.mAveragePredictSpeed = 0.0f;
            tTTestSpeedListener.mSpeedAverageCount = 0;
        }
        this.mHeaders.clear();
        _stop(true, 6);
        if (this.mMediaPlayer != null) {
            if (this.mHardwareDecodeEnablePlayer2 == 1 && getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_CODEC_AND_SURFACE_REUSE, this.mCodecAndSurfaceReuse) == -1) {
                setSurfaceHook(null);
            }
            if (this.mTextureSrOpen == 1 && this.mPlayBackUsedSR && this.mTextureSurface != null) {
                String logcatTag2 = logcatTag();
                TTVideoEngineLog.i(logcatTag2, "disable sr while _ShutdownOldSource = " + this.mTextureSrOpen);
                doOpenSR(0, Error.SRReset);
            }
            this.mTRSrategy.reset(this.mTextureSurface, this.mHasFirstFrameShown);
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null) {
                videoSurface.pause(false);
            }
            this.mMediaPlayer.reset();
            _clearSurface();
        }
        this.mPlayerFirstFrame = false;
        this.mHasFirstFrameShown = false;
        this.mHasFetchedSubtitle = false;
        this.mHasAudioFirstFrameShown = false;
        this.mHttpsEnabled = false;
        this.mRetryEnableHttps = false;
        this.mKeyseed = null;
        this.mFallbackAPI = null;
        this.mHijackRetryCount = 0;
        this.mRetrying = false;
        this.mLogger.reset();
        this.mFirstResolution = true;
        this.mFirstGetWidthHeight = true;
        this.mSeamSwitchingResolution = false;
        this.mFrameCount = 0;
        this.mPlayStartTime = -1L;
        this.mRenderStartTime = -1L;
        this.mStartupSwitchCSModel = -1;
        this.mStartupModel = -1;
        this.mStartUpBitrate = -1L;
        this.mCheckInfoString = null;
        IABRModule iABRModule = this.mABRModule;
        if (iABRModule != null) {
            iABRModule.release();
            this.mABRModule = null;
        }
        this.mForceCodec = null;
        this.mShouldUseAudioRenderStart = false;
        this.mAudioInfoId = -1;
        this.mEngineConfig.remove(675);
        this.mLastSwitchRadioModeTime = 0L;
        this.mLastSwitchResolutionTime = 0L;
        this.mTextureRenderError = 0;
        this.mLastSetSurfaceNullTime = 0L;
        this.mMaskFileSize = 0L;
        this.effectTypeSet = new CopyOnWriteArraySet();
        if (!TTVideoEngineSourceRefreshStrategy.isEnable()) {
            this.mEnableSourceRefreshStrategy = false;
        }
        this.mSourceRefreshStrategy.reset();
    }

    private void _resetUrlIndexMap() {
        Resolution[] allResolutions;
        for (Resolution resolution : Resolution.getAllResolutions()) {
            this.urlIndexMap.put(resolution, 0);
            this.dashVideoUrlMap.put(resolution, "");
        }
    }

    private void _resetUsingDataLoaderField() {
        this.mUsingDataLoaderPlayTaskKeys.clear();
        this.mUsingDataLoaderPlayFilePaths.clear();
        this.mUsingDataLoaderPlayRawKey = null;
        this.mMediaInfoMap.clear();
    }

    private String _resolutionToString(Resolution resolution) {
        if (resolution == null) {
            return "nil";
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            return iVideoModel.resolutionToString(resolution);
        }
        return resolution.toString(VideoRef.TYPE_VIDEO);
    }

    private void _resumeVideo() {
        IVideoModel iVideoModel;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "resumed video, shouldplay:" + this.mShouldPlay + ", mediaplayer:" + this.mMediaPlayer + ", prepared:" + this.mPrepared);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && this.mShouldPlay) {
            mediaPlayer.setScreenOnWhilePlaying(true);
            if (this.mPrepared) {
                if (this.mPlaybackState == 0 || this.mIsPlayComplete) {
                    fetchedVideoInfo(this.mVideoModel);
                    if (!TextUtils.isEmpty(this.mVideoID) && !this.mIsFeedInfo && (iVideoModel = this.mVideoModel) != null) {
                        notifyFetchedVideoInfo(iVideoModel);
                    }
                }
                mediaPlayer.setIntOption(100, this.mStartTime);
                mediaPlayer.start();
                _dumpSurface("_renderVideo");
                _updateTextureState(1);
                if (this.mHasFirstFrameShown) {
                    IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
                    if (iPlayDurationManager != null) {
                        iPlayDurationManager.start();
                    }
                    updatePlaybackState(1);
                }
                if (this.mABRModule != null && ((this.mEnableABR > 0 || this.mEnableHlsABR > 0) && isSupportSeamlessSwitch(this.mVideoModel))) {
                    this.mABRModule.start(TTVideoEngine.sABRAlgorithmType, getConfigInt(500, this.mABRTimerIntervalMilliseconds));
                    this.mLogger.setIsEnableABR(1);
                }
                if (shouldStartTextureRenderCheck()) {
                    this.mTextureSurface.setIntOption(33, 1);
                    return;
                }
                return;
            }
            this.mPausedBeforePrepared = false;
        }
    }

    private void _retry(int i10, Error error) {
        String str;
        String str2;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 12 && !this.mCodecStrategyAdapter.interceptFallbackRetry(error)) {
                            _notifyError(error);
                            return;
                        }
                        return;
                    }
                    MediaPlayer mediaPlayer = this.mMediaPlayer;
                    if (mediaPlayer != null && mediaPlayer.getPlayerType() == 1 && getConfigInt(1130, this.mEngineRetryNotify) == 1) {
                        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENGINE_RETRY, 1);
                    }
                    boolean z10 = this.mIsLocal;
                    if (!z10 && !this.mIsDirectURL) {
                        boolean z11 = this.mIsPreloaderItem;
                        if (!z11 && !this.mIsPlayItem) {
                            _playInternal(this.mURLInfo.getCurrentURL(), this.mHeaders);
                            return;
                        }
                        if (z11) {
                            str2 = this.mPreloaderItem.mUrl;
                        } else {
                            str2 = this.mPlayItem.playURL;
                        }
                        _singleURLParseAndPlay(str2, this.mHeaders);
                        return;
                    }
                    if (z10) {
                        str = this.mLocalURL;
                    } else {
                        str = this.mDirectURL;
                    }
                    _singleURLParseAndPlay(str, this.mHeaders);
                    return;
                }
                MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                if (mediaPlayer2 != null && mediaPlayer2.getPlayerType() == 1 && getConfigInt(1130, this.mEngineRetryNotify) == 1) {
                    this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENGINE_RETRY, 1);
                }
                _tryNextURL(error);
                return;
            } else if (TextUtils.isEmpty(this.mAuthorization)) {
                _notifyError(error);
                return;
            } else {
                resetFallbackApi(error);
                MediaPlayer mediaPlayer3 = this.mMediaPlayer;
                if (mediaPlayer3 != null && mediaPlayer3.getPlayerType() == 1 && getConfigInt(1130, this.mEngineRetryNotify) == 1) {
                    this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENGINE_RETRY, 1);
                }
                _fetchVideoInfo();
                return;
            }
        }
        _notifyError(error);
    }

    private void _secondFrame() {
        TTVideoEngineLog.i(logcatTag(), "player callback the second frame");
        if (getConfigInt(661, this.mFirstFrameOpenTexture) == 0 && this.mTextureSurface == null) {
            if (this.mLooperThread.checkSendMainLooper()) {
                this.mLooperThread.postMainLooperMessage(422, 0, 0, this.mTraceId);
            } else {
                this.mListenerCompact.onVideoSecondFrame(this.mEngineWrapper);
            }
        }
    }

    private void _seekComplete(boolean z10) {
        long max;
        IVideoEventLogger iVideoEventLogger;
        TTVideoEngineLog.i(logcatTag(), "seek complete");
        if (z10 && (iVideoEventLogger = this.mLogger) != null) {
            iVideoEventLogger.setLoggerTimes(169);
        }
        if (!isInHousePlayer()) {
            this.mSeeking = false;
            this.mSeekingStartTime = 0L;
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                iVideoEventLogger2.seekCompleted();
                this.mLogger.showedOneFrame();
            }
        }
        if (this.mSeamSwitchingResolution) {
            this.mSeamSwitchingResolution = false;
            changeResolutionSwitchingState(false);
            IVideoEventLogger iVideoEventLogger3 = this.mLogger;
            if (iVideoEventLogger3 != null) {
                iVideoEventLogger3.switchResolutionEnd(true);
            }
        }
        if (shouldStartTextureRenderCheck()) {
            this.mTextureSurface.setIntOption(33, 1);
        }
        notifySeekCompletion(z10);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && isPcdnNeedPlayInfo()) {
            long longOption = mediaPlayer.getLongOption(73, -1L);
            long longOption2 = mediaPlayer.getLongOption(72, -1L);
            int intOption = mediaPlayer.getIntOption(62, 0);
            int intOption2 = mediaPlayer.getIntOption(61, 0);
            if (intOption == 1 && intOption2 == 1) {
                max = Math.max(0L, Math.min(longOption, longOption2));
            } else if (intOption2 == 1) {
                max = Math.max(0L, longOption);
            } else if (intOption == 1) {
                max = Math.max(0L, longOption2);
            } else {
                return;
            }
            setPlayInfo(5, max);
        }
    }

    private void _selectTrack(int i10, int i11) {
        MediaPlayer.TrackInfo[] trackInfo;
        int i12;
        int i13;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || (trackInfo = mediaPlayer.getTrackInfo()) == null) {
            return;
        }
        if (i11 == VideoRef.TYPE_VIDEO) {
            i12 = 1;
        } else {
            i12 = 2;
        }
        int length = trackInfo.length;
        int i14 = 0;
        while (true) {
            if (i14 < length) {
                MediaPlayer.TrackInfo trackInfo2 = trackInfo[i14];
                if (trackInfo2.getTrackType() == i12) {
                    MediaFormat format = trackInfo2.getFormat();
                    if (format.getInteger("bitrate") == i10) {
                        i13 = format.getInteger(MediaFormat.KEY_TRACK_ID);
                        break;
                    }
                }
                i14++;
            } else {
                i13 = -1;
                break;
            }
        }
        if (i13 != -1) {
            this.mMediaPlayer.selectTrack(i13);
        }
    }

    private void _sendMdlCacheMsg() {
        ArrayList arrayList;
        VideoInfo videoInfo;
        if (getConfigInt(160, this.mDataLoaderEnable) > 0) {
            ArrayList arrayList2 = new ArrayList(this.mUsingDataLoaderPlayFilePaths);
            this.mVideoPreloadSize = 0L;
            if (this.mBashDashDefaultMDLKeys.size() == 2) {
                arrayList = new ArrayList(this.mBashDashDefaultMDLKeys.values());
            } else if (!this.mIsLocal && !this.mIsPlayItem && !this.mIsPreloaderItem && !this.mIsDirectURL && (videoInfo = this.currentVideoInfo) != null && !TextUtils.isEmpty(videoInfo.getValueStr(15))) {
                arrayList = new ArrayList();
                arrayList.add(this.currentVideoInfo.getValueStr(15));
            } else {
                arrayList = new ArrayList(this.mUsingDataLoaderPlayTaskKeys);
            }
            EngineThreadPool.addExecuteTask(new MDLCacheSizeRunnable(this, arrayList, arrayList2));
        }
    }

    private void _sendUrlInfoMsg() {
        String str;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel == null) {
            str = "";
        } else {
            str = iVideoModel.getDynamicType();
        }
        VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
        if (this.mConfigCenterVersion > 0) {
            if (this.mEngineConfig.getIntOption(17) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = this.mDashEnabled;
        }
        if (z10 && !TextUtils.isEmpty(str) && str.equals(TTVideoEngineInterface.DYNAMIC_TYPE_SEGMENTBASE)) {
            VideoInfo _videoInfoForResolution = _videoInfoForResolution(this.currentResolution, VideoRef.TYPE_VIDEO, this.currentParams);
            Map<Integer, String> map = this.currentParams;
            if (map == null) {
                map = new HashMap<>();
            }
            int i10 = this.mAudioInfoId;
            if (i10 == -1) {
                i10 = this.mVideoModel.getVideoRefInt(230);
            }
            if (i10 >= 0) {
                map.put(42, "" + i10);
            }
            VideoInfo _videoInfoForResolution2 = _videoInfoForResolution(this.currentResolution, VideoRef.TYPE_AUDIO, map);
            if (_videoInfoForResolution != null) {
                arrayList.add(_videoInfoForResolution);
                String valueStr = _videoInfoForResolution.getValueStr(15);
                if (valueStr != null) {
                    this.mBashDashDefaultMDLKeys.put("video", valueStr);
                }
                this.mDynamicVideoInfo = _videoInfoForResolution;
            }
            if (_videoInfoForResolution2 != null) {
                arrayList.add(_videoInfoForResolution2);
                String valueStr2 = _videoInfoForResolution2.getValueStr(15);
                if (valueStr2 != null) {
                    this.mBashDashDefaultMDLKeys.put("audio", valueStr2);
                }
                this.mABRCurrentDownloadedAudioBitrate = _videoInfoForResolution2.getValueInt(3);
                this.mDynamicAudioInfo = _videoInfoForResolution2;
            }
            videoEngineInfos.setKey(VideoEngineInfos.USING_URL_INFOS);
            videoEngineInfos.setUrlInfos(arrayList);
            notifyEngineInfo(videoEngineInfos, true);
            return;
        }
        VideoInfo videoInfo = this.currentVideoInfo;
        if (videoInfo != null) {
            arrayList.add(videoInfo);
            videoEngineInfos.setKey(VideoEngineInfos.USING_URL_INFOS);
            videoEngineInfos.setUrlInfos(arrayList);
            notifyEngineInfo(videoEngineInfos, true);
        }
    }

    private void _setDataSource(String str, Map<String, String> map) throws IOException {
        String str2;
        if (this.mEnableTmpLog == 1) {
            showLongLog("setDatasource before url:" + str);
        }
        String _generatePlayUrl = _generatePlayUrl(str, map);
        if (this.mRetryEnableHttps) {
            _generatePlayUrl = TTHelper.buildHttpsUrl(_generatePlayUrl);
        }
        if (this.mEnableTmpLog == 1) {
            showLongLog("setDatasource after url:" + _generatePlayUrl);
        }
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setCustomP2PCDNType(this.mP2PCDNType);
        }
        if (!this.mPrepared) {
            long currentTimeMillis = System.currentTimeMillis();
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                this.mTraceId = iVideoEventLogger2.getTraceID();
            } else {
                this.mTraceId = TTHelper.genTrackID(BaseAppInfo.mDeviceId, currentTimeMillis);
            }
            if (!TextUtils.isEmpty(this.mTraceId)) {
                map.put(HEADER_IS_TRACEID, this.mTraceId);
                this.mHeaders.put(HEADER_IS_TRACEID, this.mTraceId);
                TTVideoEngineLog.i(logcatTag(), "X-Tt-Traceid:" + this.mTraceId);
            }
            if (!TextUtils.isEmpty(this.mMDLGroupId)) {
                map.put(HEADER_IS_MDL_GROUP_ID, this.mMDLGroupId);
                this.mLogger.setStringOption(156, this.mMDLGroupId);
                TTVideoEngineLog.i(logcatTag(), "X-Tt-GroupId:" + this.mMDLGroupId);
            }
            if (this.mEnableSourceRefreshStrategy) {
                this.mHeaders.put(HEADER_IS_FALLBACK_API_RETRY, String.valueOf(1));
                this.mHeaders.put(HEADER_ENGINE_ID, String.valueOf(this.mEngineHash));
            }
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SOURCE_REFRESH, Integer.valueOf(this.mEnableSourceRefreshStrategy ? 1 : 0));
            int configInt = getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_NET_SPEED_UPDATE_INTERVAL, this.mNetSpeedInterval);
            int i10 = TTVideoEngine.sABRSpeedPredictInputType;
            if (i10 == 1) {
                TTVideoEngineLog.d(logcatTag(), "HEADER_IS_SPEEDTEST single data, interval:" + TTVideoEngine.sTestSpeedInterval);
                this.mHeaders.put(HEADER_IS_SPEEDTEST, String.valueOf(TTVideoEngine.sTestSpeedInterval));
            } else if (i10 == 0 && this.mEnableNetLevel > 0 && configInt > 0) {
                TTVideoEngineLog.d(logcatTag(), "enableNetLevel, interval: " + configInt);
                this.mHeaders.put(HEADER_IS_SPEEDTEST, String.valueOf(configInt));
            }
            Map<String, String> map2 = this.mHeaders;
            if (TextUtils.isEmpty(this.mTag)) {
                str2 = DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
            } else {
                str2 = this.mTag;
            }
            map2.put(HEADER_IS_TAG, str2);
            int i11 = this.mUseVdpDisk;
            if (this.mConfigCenterVersion > 0) {
                i11 = this.mEngineConfig.getIntOption(801);
                if (i11 == 1) {
                    i11 = 0;
                } else if (i11 == 0) {
                    i11 = 1;
                }
            }
            if (i11 == 0 || i11 == 1) {
                this.mHeaders.put(HEADER_IS_VDPDISK, String.valueOf(i11));
            }
            if (!TextUtils.isEmpty(this.mSubTag)) {
                this.mHeaders.put(HEADER_IS_SUBTAG, this.mSubTag);
            }
        }
        if (map != null) {
            TTVideoEngineLog.i(logcatTag(), "setDataSource X-Tt-Traceid:" + map.get(HEADER_IS_TRACEID));
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() == 0 && getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_OSPLAYER_IGNORE_HEADERS, this.mOSPlayerIgnoreHeaders ? 1 : 0) != 0) {
            map.clear();
        }
        this.mMediaPlayer.setDataSource(this.mContext, Uri.parse(_generatePlayUrl), map);
    }

    private void _setExtraSurface() {
        if (this.mTextureSurface != null) {
            while (this.mExtraSurfaceQueue.peek() != null) {
                Pair<Surface, Integer> poll = this.mExtraSurfaceQueue.poll();
                this.mTextureSurface.setExtraRenderSurface((Surface) poll.first, ((Integer) poll.second).intValue());
            }
        }
    }

    private void _setHDRInfoToTexturerender(MediaPlayer mediaPlayer, int i10) {
        boolean z10;
        VideoSurface videoSurface = this.mTextureSurface;
        if (mediaPlayer != null && videoSurface != null) {
            videoSurface.setIntOption(8, i10);
            if (TTVideoEngineConfig.setEGLBitDepth > 8) {
                int intOption = mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_BIT_DEPTH, -1);
                TTVideoEngineLog.d(logcatTag(), "bitDepth:" + intOption);
                videoSurface.setIntOption(130, intOption);
            }
            if (getConfigInt(652, this.mRenderHDR2SDR) == 1) {
                if (i10 != 1 && i10 != 2) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                Bundle bundle = new Bundle();
                bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 4);
                if (z10) {
                    bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 21);
                    bundle.putInt(TextureRenderKeys.KEY_IS_HDR_TYPE, i10);
                    bundle.putInt(TextureRenderKeys.KEY_IS_USE_EFFECT, 1);
                } else {
                    bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 19);
                    bundle.putInt(TextureRenderKeys.KEY_IS_USE_EFFECT, 0);
                }
                videoSurface.setEffect(bundle);
            }
        }
    }

    private void _setLoggerOptions() {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger == null) {
            return;
        }
        iVideoEventLogger.setIntOption(97, this.mEnableOutletDropLimit ? 1 : 0);
        this.mLogger.setIntOption(93, this.mEnableAudioTrackSmoothClock);
        this.mLogger.setIntOption(94, this.mDisableSpiltVoiceWrite);
        this.mLogger.setIntOption(55, this.mEnableNativeYV12Render);
        this.mLogger.setIntOption(96, StrategyHelper.helper().isRunning() ? 1 : 0);
        int enableCPPh265CodecOpt = EngineGlobalConfig.getInstance().getEnableCPPh265CodecOpt();
        int i10 = this.mEnableCPPh265CodecOpt;
        if (i10 > 0 || enableCPPh265CodecOpt > 0) {
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (i10 > 0) {
                enableCPPh265CodecOpt = i10;
            }
            iVideoEventLogger2.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_h265_DECODER_OPTIMIZE, Integer.valueOf(enableCPPh265CodecOpt));
        }
        int i11 = this.mOpenVoiceEarly;
        if (i11 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SET_OPEN_VOICE_EARLY, Integer.valueOf(i11));
        }
        int i12 = this.mMaskDelayLoading;
        if (i12 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MASK_DELAY_LOADING, Integer.valueOf(i12));
        }
        int i13 = this.mMaskRangeOpt;
        if (i13 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MASK_ENABLE_RANGE_REQUEST, Integer.valueOf(i13));
        }
        int i14 = this.mEnablePreloadGear;
        if (i14 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRELOAD_GEAR, Integer.valueOf(i14));
        }
        if (this.mIsPrepareDecodeOnly) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PREPARE_DECODE_ONLY, 1);
        }
        int i15 = this.mAsyncManageResource;
        if (i15 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ASYNC_MANAGE_RESOURCE, Integer.valueOf(i15));
        }
        int i16 = this.mAudioUseDirectBuffer;
        if (i16 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AUDIO_USE_DIRECTBUFFER, Integer.valueOf(i16));
        }
        int i17 = this.mAutoDisconnectedCpu;
        if (i17 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AUTO_DISCONNECTED_CPU, Integer.valueOf(i17));
        }
        int i18 = this.mEnableVideoSecondFrame;
        if (i18 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_VIDEO_SECOND_FRAME, Integer.valueOf(i18));
        }
        int i19 = this.mGiveBackCodecEarly;
        if (i19 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_GIVEBACK_CODEC_EARLY, Integer.valueOf(i19));
        }
        int i20 = this.mQueryAdaptivePlayback;
        if (i20 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_QUERY_ADAPTIVE_PLAYBACK, Integer.valueOf(i20));
        }
        int i21 = this.mCodecPoolSupportDynamicExtend;
        if (i21 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CODECPOOL_SUPPORT_DYNAMIC_EXTEND, Integer.valueOf(i21));
        }
        int i22 = this.mEnableOptimizeHWDec2SWDec;
        if (i22 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_OPTIMIZE_HWDEC2SWDEC, Integer.valueOf(i22));
        }
        int i23 = this.mCodecAndSurfaceReuse;
        if (i23 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CODEC_AND_SURFACE_REUSE, Integer.valueOf(i23));
        }
        if (this.mEnableDynamicFrameDropping > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DECODER_DROP, 2);
        } else if (this.mMaxFps > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DECODER_DROP, 1);
        }
        if (1 == this.mHWEnableDynamicFrameDropping) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 3);
        } else if (1 == this.mEnableHWDropFrameWhenVOIsInDropState) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 1);
        } else if (1 == this.mEnableHWDropFrameWhenAVOutSyncing) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 2);
        }
        int i24 = this.mSkipAudioGraph;
        if (i24 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SKIP_AUDIO_OUT, Integer.valueOf(i24));
        }
        int i25 = this.mEnableAIBarrageThread;
        if (i25 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AI_BARRAGE, Integer.valueOf(i25));
        }
        if (this.mPrecisePausePts > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRECISE_PAUSE, 1);
        }
        if (this.mEnbalePreDemux > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRE_DEMUX, 1);
        }
        int i26 = this.mEnableDemuxNonBlockRead;
        if (i26 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DEMUX_NONBLOCK_READ, Integer.valueOf(i26));
        }
        int i27 = this.mEnableMp4Check;
        if (i27 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AV_INTERLACED_CHECK, Integer.valueOf(i27));
        }
        int i28 = this.mEnableClearMDLCache;
        if (i28 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CLEAR_MDL_CACHE, Integer.valueOf(i28));
        }
        int i29 = this.mEnablexHEAACSupport;
        if (i29 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_xHEAAC, Integer.valueOf(i29));
        }
        int i30 = this.mNoBufferUpdate;
        if (i30 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_NO_BUFFER_UPDATE, Integer.valueOf(i30));
        }
        int i31 = this.mQueryWinEnable;
        if (i31 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_QUERY_WIN, Integer.valueOf(i31));
        }
        int i32 = this.mMediaCodecAsyncModeEnable;
        if (i32 > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MEDIACODEC_ASYNC, Integer.valueOf(i32));
        }
        if (this.mEnableForceDisableOESRender && this.mForceDisableOESRender) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_FORCE_DISABLE_OES_RENDER, 1);
        }
        if (this.mEnableCPPh266CodecOpt > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_CPPh266CODEC_OPT, 1);
        }
        if (this.mEnableAudioMemIntergration > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_AUDIOMEM_INTERGRATION, 1);
        }
        if (this.mEnableBufferingLowerCapacity > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_BUFFERING_LOWERCAPACITY, 1);
        }
        if (this.mEnableDowngradeAsyncCodec > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_DOWNGRADE_ASYNCCODEC, 1);
        }
        if (this.mEnableMediaCodecSyncClose > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_MEDIACODEC_SYNC_CLOSE, 1);
        }
        if (this.mEnableSeekBuffering > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_SEEK_BUFFERING, 1);
        }
        if (this.mAsyncSetWindow > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ASYNC_SET_SURFACE, 1);
        }
        int i33 = this.mPlayerCache;
        if (i33 > 0) {
            this.mLogger.addFeature("cache", Integer.valueOf(i33));
        }
        OptionHolder optionHolder = this.mOptionHolder;
        if (optionHolder != null && optionHolder.getIntOption(42027, 0) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_OUT_THREAD_OPTIMIZE, 1);
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null && iVideoModel.getVideoRefBool(253)) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MULTI_BITRATE_REFACTOR, 1);
        }
        if (this.mEnableSourceRefreshStrategy) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SOURCE_REFRESH, 1);
        }
    }

    private void _setLoggerOptions2() {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger == null) {
            return;
        }
        iVideoEventLogger.setIntOption(97, this.mEnableOutletDropLimit ? 1 : 0);
        this.mLogger.setIntOption(93, this.mEngineConfig.getIntOption(564));
        this.mLogger.setIntOption(94, this.mEngineConfig.getIntOption(565));
        this.mLogger.setIntOption(55, this.mEngineConfig.getIntOption(543));
        this.mLogger.setIntOption(96, StrategyHelper.helper().isRunning() ? 1 : 0);
        int enableCPPh265CodecOpt = EngineGlobalConfig.getInstance().getEnableCPPh265CodecOpt();
        int intOption = this.mEngineConfig.getIntOption(581);
        if (intOption > 0 || enableCPPh265CodecOpt > 0) {
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (intOption > 0) {
                enableCPPh265CodecOpt = intOption;
            }
            iVideoEventLogger2.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_h265_DECODER_OPTIMIZE, Integer.valueOf(enableCPPh265CodecOpt));
        }
        if (this.mEngineConfig.getIntOption(371) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SET_OPEN_VOICE_EARLY, Integer.valueOf(this.mEngineConfig.getIntOption(371)));
        }
        if (this.mEngineConfig.getIntOption(1300) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MASK_DELAY_LOADING, Integer.valueOf(this.mEngineConfig.getIntOption(1300)));
        }
        if (this.mEngineConfig.getIntOption(1302) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MASK_ENABLE_RANGE_REQUEST, Integer.valueOf(this.mEngineConfig.getIntOption(1302)));
        }
        if (this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_PRELOAD_GEAR) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRELOAD_GEAR, Integer.valueOf(this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_PRELOAD_GEAR)));
        }
        if (this.mEngineConfig.getIntOption(984) != 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PREPARE_DECODE_ONLY, 1);
        }
        if (this.mEngineConfig.getIntOption(981) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ASYNC_MANAGE_RESOURCE, Integer.valueOf(this.mEngineConfig.getIntOption(981)));
        }
        if (this.mEngineConfig.getIntOption(983) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AUDIO_USE_DIRECTBUFFER, Integer.valueOf(this.mEngineConfig.getIntOption(983)));
        }
        if (this.mEngineConfig.getIntOption(991) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AUTO_DISCONNECTED_CPU, Integer.valueOf(this.mEngineConfig.getIntOption(991)));
        }
        if (this.mEngineConfig.getIntOption(992) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_VIDEO_SECOND_FRAME, Integer.valueOf(this.mEngineConfig.getIntOption(992)));
        }
        if (this.mEngineConfig.getIntOption(993) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_GIVEBACK_CODEC_EARLY, Integer.valueOf(this.mEngineConfig.getIntOption(993)));
        }
        if (this.mEngineConfig.getIntOption(998) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_QUERY_ADAPTIVE_PLAYBACK, Integer.valueOf(this.mEngineConfig.getIntOption(998)));
        }
        if (this.mEngineConfig.getIntOption(1114) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CODECPOOL_SUPPORT_DYNAMIC_EXTEND, Integer.valueOf(this.mEngineConfig.getIntOption(1114)));
        }
        if (this.mEngineConfig.getIntOption(1117) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_OPTIMIZE_HWDEC2SWDEC, Integer.valueOf(this.mEngineConfig.getIntOption(1117)));
        }
        if (this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_CODEC_AND_SURFACE_REUSE) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CODEC_AND_SURFACE_REUSE, Integer.valueOf(this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_CODEC_AND_SURFACE_REUSE)));
        }
        if (this.mEngineConfig.getIntOption(850) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DECODER_DROP, 2);
        } else if (this.mEngineConfig.getIntOption(205) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DECODER_DROP, 1);
        }
        if (1 == this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_HW_ENABLE_DYNAMIC_FRAME_DROPPING)) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 3);
        } else if (1 == this.mEngineConfig.getIntOption(854)) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 1);
        } else if (1 == this.mEngineConfig.getIntOption(855)) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_HW_DECODER_DROP, 2);
        }
        if (this.mEngineConfig.getIntOption(214) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_SKIP_AUDIO_OUT, Integer.valueOf(this.mEngineConfig.getIntOption(214)));
        }
        if (this.mEngineConfig.getIntOption(511) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AI_BARRAGE, Integer.valueOf(this.mEngineConfig.getIntOption(511)));
        }
        if (this.mEngineConfig.getLongOption(TTVideoEngineInterface.PLAYER_OPTION_SET_PRECISE_PAUSE_PTS) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRECISE_PAUSE, 1);
        }
        if (this.mEngineConfig.getIntOption(586) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_PRE_DEMUX, 1);
        }
        if (this.mEngineConfig.getIntOption(561) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_DEMUX_NONBLOCK_READ, Integer.valueOf(this.mEngineConfig.getIntOption(561)));
        }
        if (this.mEngineConfig.getIntOption(705) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_AV_INTERLACED_CHECK, Integer.valueOf(this.mEngineConfig.getIntOption(705)));
        }
        if (this.mEngineConfig.getIntOption(603) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CLEAR_MDL_CACHE, Integer.valueOf(this.mEngineConfig.getIntOption(603)));
        }
        if (this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_xHEAAC, Integer.valueOf(this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT)));
        }
        if (this.mEngineConfig.getIntOption(552) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_NO_BUFFER_UPDATE, Integer.valueOf(this.mEngineConfig.getIntOption(552)));
        }
        if (this.mEngineConfig.getIntOption(953) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_QUERY_WIN, Integer.valueOf(this.mEngineConfig.getIntOption(953)));
        }
        if (this.mEngineConfig.getIntOption(955) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MEDIACODEC_ASYNC, Integer.valueOf(this.mEngineConfig.getIntOption(955)));
        }
        if (this.mEngineConfig.getIntOption(587) == 1 && this.mEngineConfig.getIntOption(588) == 1) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_FORCE_DISABLE_OES_RENDER, 1);
        }
        if (this.mEngineConfig.getIntOption(591) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_CPPh266CODEC_OPT, 1);
        }
        if (this.mEngineConfig.getIntOption(683) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_AUDIOMEM_INTERGRATION, 1);
        }
        if (this.mEngineConfig.getIntOption(685) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_BUFFERING_LOWERCAPACITY, 1);
        }
        if (this.mEngineConfig.getIntOption(686) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_DOWNGRADE_ASYNCCODEC, 1);
        }
        if (this.mEngineConfig.getIntOption(687) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_MEDIACODEC_SYNC_CLOSE, 1);
        }
        if (this.mEngineConfig.getIntOption(688) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_SEEK_BUFFERING, 1);
        }
        if (this.mEngineConfig.getIntOption(1100) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ASYNC_SET_SURFACE, 1);
        }
        if (this.mEngineConfig.getIntOption(0) > 0) {
            this.mLogger.addFeature("cache", Integer.valueOf(this.mEngineConfig.getIntOption(0)));
        }
        if (getConfigInt(42027, 0) > 0) {
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_ENABLE_OUT_THREAD_OPTIMIZE, 1);
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel == null || !iVideoModel.getVideoRefBool(253)) {
            return;
        }
        this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MULTI_BITRATE_REFACTOR, 1);
    }

    public void _setSubInfoToMediaPlayer(String str) {
        this.mSubPathInfo = str;
        if (!TextUtils.isEmpty(str) && this.mEnableSubThread > 0) {
            this.mMediaPlayer.setIntOption(618, this.mEnableSub);
            this.mMediaPlayer.setStringOption(617, this.mSubPathInfo);
            this.mLogger.setLongOption(83, System.currentTimeMillis());
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "sub option: " + this.mEnableSub + "sub thread: " + this.mEnableSubThread + " url:" + this.mSubPathInfo);
    }

    private void _setSurfaceSync(final Surface surface, long j10, boolean z10) {
        if (surface == null) {
            this.mLastSetSurfaceNullTime = System.currentTimeMillis();
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            if (!this.mLooperThread.sendEngineMessage(54, j10, 0, 0, surface) && surface != null) {
                this.mSetValidSurfaceTimeout = 1;
            }
        } else if (z10) {
            EngineThreadPool.addExecuteTaskSync(new Runnable() { // from class: com.ss.ttvideoengine.m
                @Override // java.lang.Runnable
                public final void run() {
                    TTVideoEngineImpl.this.lambda$_setSurfaceSync$4(surface);
                }
            }, j10);
        } else {
            lambda$_setSurfaceSync$4(surface);
        }
    }

    private void _settingBufferProcessProto() {
        if (!isInHousePlayer()) {
            return;
        }
        BufferProcessCallback bufferProcessCallback = this.mBufferProcessCallback;
        if (bufferProcessCallback == null) {
            this.mMediaPlayer.setTraitObject(8, null);
            return;
        }
        bufferProcessCallback.setProtoName(this.mBufferProcessProtoName);
        this.mMediaPlayer.setTraitObject(8, new BufferProcessProto(this.mBufferProcessCallback));
    }

    private void _settingThirdPartyProtocol() {
        if (this.mFFmpegProtocol != null && isInHousePlayer()) {
            String stringOption = this.mMediaPlayer.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_NAME);
            String protocolName = this.mFFmpegProtocol.getProtocolName();
            if (stringOption != null && !stringOption.equals(protocolName)) {
                this.mMediaPlayer.setLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_PTR, this.mFFmpegProtocol.getURLProtocol());
            }
            this.mMediaPlayer.setLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR, this.mFFmpegProtocol.getAVDictionary());
        }
    }

    private void _setupMediaCodec(MediaPlayer mediaPlayer) {
        TTVideoEngineLog.i(TAG, "start to setup mediacodec");
        if (!this.mEnableSetupMediaCodec) {
            TTVideoEngineLog.d(TAG, "disable setup mediacodec");
        } else if (mediaPlayer == null) {
            TTVideoEngineLog.i(TAG, "async player is null");
        } else if (this.mHardwareDecodeEnablePlayer2 <= 0) {
            TTVideoEngineLog.d(TAG, "not be hardware decoder");
        } else if (getConfigInt(332, this.mUseCodecPool) <= 0) {
            TTVideoEngineLog.d(TAG, "codec pool is not used");
        } else if (getConfigInt(1125, this.mCodecPoolVersion) != 2) {
            TTVideoEngineLog.d(TAG, "codec pool version is not 2.0");
        } else {
            mediaPlayer.setIntOption(59, 1);
            mediaPlayer.setIntOption(400, 1);
            mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODECPOOL_VERSION, 2);
            mediaPlayer.setIntOption(181, 1);
            mediaPlayer.setIntOption(182, this.mCodecId);
            mediaPlayer.setIntOption(88, getConfigInt(215, this.mMediaCodecRender));
            mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_FRC_LEVEL, this.mCodecFrcLevel));
            mediaPlayer.setIntOption(574, getConfigInt(578, this.mEnableVC1BlockList));
            mediaPlayer.setIntOption(575, getConfigInt(579, this.mEnableHChipAdaptiveWorkAround));
            mediaPlayer.setIntOption(576, getConfigInt(580, this.mEnableMChipSkipAdaptiveWorkAround));
            mediaPlayer.setIntOption(164, getConfigInt(572, this.mEnableMediaCodecRealtime));
            mediaPlayer.setIntOption(254, getConfigInt(333, this.mNeedAdaptiveWorkaround));
            mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENVOISINDROPSTATE, getConfigInt(854, this.mEnableHWDropFrameWhenVOIsInDropState));
            mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENAVOUTSYNCING, getConfigInt(855, this.mEnableHWDropFrameWhenAVOutSyncing));
            mediaPlayer.setIntOption(1072, getConfigInt(1210, this.mEnableMediaCodecFairMutex));
            if (getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_HEIGHT, this.mMCMaxHeight) <= 0 || getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_WIDTH, this.mMCMaxWidth) <= 0) {
                this.mEngineConfig.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_HEIGHT, 1080);
                this.mEngineConfig.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_WIDTH, 1920);
            }
            mediaPlayer.setIntOption(1009, getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_HEIGHT, this.mMCMaxHeight));
            mediaPlayer.setIntOption(1008, getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_MC_MAX_WIDTH, this.mMCMaxWidth));
            if (this.mMaxCodecNumsInPool != -1 || this.mEngineConfig.isKeySet(986)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_CODEC_NUMS_IN_POOL, getConfigInt(986, this.mMaxCodecNumsInPool));
            }
            if (this.mDiscardCodecStrategy1 != -1 || this.mEngineConfig.isKeySet(1126)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY1, getConfigInt(1126, this.mDiscardCodecStrategy1));
            }
            if (this.mDiscardCodecStrategy2 != -1 || this.mEngineConfig.isKeySet(1127)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY2, getConfigInt(1127, this.mDiscardCodecStrategy2));
            }
            if (this.mCodecHistoryLength != -1 || this.mEngineConfig.isKeySet(1128)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_HISTORY_LENGTH, getConfigInt(1128, this.mCodecHistoryLength));
            }
            if (this.mCodecMaxUsedCount != -1 || this.mEngineConfig.isKeySet(1129)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_MAX_USED_COUNT, getConfigInt(1129, this.mCodecMaxUsedCount));
            }
            if (this.mDummySurfaceForbid != -1 || this.mEngineConfig.isKeySet(TTVideoEngineInterface.PLAYER_OPTION_DUMMYSURFACE_FORBID)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DUMMYSURFACE_FORBID, getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_DUMMYSURFACE_FORBID, this.mDummySurfaceForbid));
            }
            if (this.mSettingCodecName != -1 || this.mEngineConfig.isKeySet(956)) {
                mediaPlayer.setIntOption(1003, getConfigInt(956, this.mSettingCodecName));
                for (int i10 = 0; i10 < this.mPrivCodecName.size(); i10++) {
                    try {
                        mediaPlayer.setStringOption(1002, this.mPrivCodecName.get(i10));
                    } catch (IndexOutOfBoundsException unused) {
                        TTVideoEngineLog.w(TAG, "failed to set codec name");
                        mediaPlayer.setIntOption(1003, 0);
                    }
                }
            }
            if (this.mMediaCodecAsyncModeEnable != -1 || this.mEngineConfig.isKeySet(955)) {
                mediaPlayer.setIntOption(1000, getConfigInt(955, this.mMediaCodecAsyncModeEnable));
            }
            if (this.mCodecFramesDrop != -1 || this.mEngineConfig.isKeySet(856)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_CODECFRAMESDROP, getConfigInt(856, this.mCodecFramesDrop));
            }
            if (this.mEnableMediaCodecDeathCheck != -1 || this.mEngineConfig.isKeySet(1111)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_MEDIA_CODEC_DEATH_CHECK, getConfigInt(1111, this.mEnableMediaCodecDeathCheck));
            }
            if (this.mMediaCodecDeathCheckInterval != -1 || this.mEngineConfig.isKeySet(1112)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_CHECK_INTERVAL_MS, getConfigInt(1112, this.mMediaCodecDeathCheckInterval));
            }
            if (this.mMediaCodecDeathTimeout != -1 || this.mEngineConfig.isKeySet(1113)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_TIMEOUT_MS, getConfigInt(1113, this.mMediaCodecDeathTimeout));
            }
            if (this.mEnableMediaCodecPipeline != -1 || this.mEngineConfig.isKeySet(1118)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_MEDIACODEC_PIPELINE_CTL, getConfigInt(1118, this.mEnableMediaCodecPipeline));
            }
            if (this.mFrameNumsInMediaCodec != -1 || this.mEngineConfig.isKeySet(1119)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_NUMS_IN_MEDIACODEC, getConfigInt(1119, this.mFrameNumsInMediaCodec));
            }
            if (this.mQueryAdaptivePlayback != -1 || this.mEngineConfig.isKeySet(998)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK, getConfigInt(998, this.mQueryAdaptivePlayback));
            }
            int i11 = this.mUseQcomVpp;
            if (i11 == 1) {
                mediaPlayer.setIntOption(212, i11);
                mediaPlayer.setIntOption(213, this.mQcomVppLevel);
            }
            if (this.mEnableVideoCodecPixelAlign == 1 || this.mEngineConfig.isKeySet(339)) {
                mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, getConfigInt(339, this.mEnableVideoCodecPixelAlign));
            }
            OptionHolder optionHolder = this.mOptionHolder;
            if (optionHolder != null) {
                mediaPlayer.setIntOption(TTVideoEngineInterface.PLAYER_OPTION_INT_ENABLE_MC_MONITOR, getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_INT_ENABLE_MC_MONITOR, optionHolder.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_INT_ENABLE_MC_MONITOR, 0)));
            }
            ((MediaPlayerWrapper) mediaPlayer).setupMediaCodec();
            this.mEnableSetupMediaCodec = false;
            TTVideoEngineLog.i(logcatTag(), "success to setup mediacodec");
        }
    }

    private void _setupSubtitleInfo() {
        SubDesInfoModelProvider subDesInfoModelProvider;
        IVideoModel iVideoModel = this.mVideoModel;
        int i10 = 0;
        if (iVideoModel != null && iVideoModel.getSubInfoList() != null && this.mEnableSubThread > 0) {
            int size = this.mVideoModel.getSubInfoList().size();
            TTVideoEngineLog.d(logcatTag(), "subtitle num: " + size);
            if (!TextUtils.isEmpty(getConfigString(546, this.mSubIds))) {
                String[] split = getConfigString(546, this.mSubIds).split(",");
                if (TextUtils.isEmpty(this.mSubLanIds) || TextUtils.isEmpty(this.mSubVersions)) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (com.ss.ttvideoengine.model.SubInfo subInfo : this.mVideoModel.getSubInfoList()) {
                        if (subInfo != null) {
                            for (String str : split) {
                                if (!TextUtils.isEmpty(str) && str.equals(Integer.toString(subInfo.getValueInt(0)))) {
                                    arrayList.add(Integer.toString(subInfo.getValueInt(1)));
                                    arrayList2.add(subInfo.getValueStr(3));
                                }
                            }
                        }
                    }
                    this.mSubLanIds = TextUtils.join(",", arrayList);
                    this.mSubVersions = TextUtils.join(",", arrayList2);
                }
            }
            i10 = size;
        }
        TTVideoEngineLog.d(logcatTag(), "_setup subtitle info in");
        int i11 = this.mEnableSubThread;
        if (i11 > 0 && (subDesInfoModelProvider = this.mSubDesInfoModel) != null) {
            String subDesInfoModelProvider2 = subDesInfoModelProvider.toString();
            if (subDesInfoModelProvider2 == null || subDesInfoModelProvider2.length() <= 0 || this.mSubDesInfoModel.subtitleCount() <= 0) {
                return;
            }
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.setSubtitleIdsCount(i10);
            }
            TTVideoEngineLog.d(logcatTag(), "using subtitle description info for setup subtitle");
            _setSubInfoToMediaPlayer(subDesInfoModelProvider2);
        } else if (i11 > 0 && !this.mHasFetchedSubtitle && i10 > 0) {
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                iVideoEventLogger2.setSubtitleIdsCount(i10);
            }
            TTVideoEngineLog.d(logcatTag(), "start fetch subtitle info");
            _fetchSubInfo();
            this.mHasFetchedSubtitle = true;
        }
    }

    private void _singleURLParseAndPlay(String str, Map<String, String> map) {
        this.mURLInfo.setHostURL(str);
        boolean _isDashSource = _isDashSource(str);
        this.mIsDashSource = _isDashSource;
        this.mDashEnabled = _isDashSource;
        this.mEngineConfig.setIntOption(17, _isDashSource ? 1 : 0);
        if (!_usePlayerDNS(true) && !this.mIsLocal) {
            if (TTHelper.isIP(str)) {
                _playInternal(str, map);
                return;
            } else if (str.indexOf(ProxyConfig.MATCH_HTTP) == 0) {
                this.urlIPMap.put(this.mURLInfo.hostURL, new IpInfo("", "", getConfigInt(18, this.mUseDNSCache ? 1 : 0), getConfigInt(403, this.mIsUseServerDns ? 1 : 0), "single"));
                this.mURLs = new String[]{str};
                _updateVU();
                _parseDNS(str);
                return;
            } else {
                _playInternal(str, map);
                return;
            }
        }
        _playInternal(str, map);
    }

    private void _stop(boolean z10, int i10) {
        IPlayDurationManager iPlayDurationManager;
        IPlayDurationManager iPlayDurationManager2;
        IPlayDurationManager iPlayDurationManager3;
        if (getConfigInt(982, this.mPlayDurationExcludePlayerMethod ? 1 : 0) == 1 && (iPlayDurationManager3 = this.mPlayDuration) != null) {
            iPlayDurationManager3.stop();
        }
        resetTexture();
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_stop, mState:" + this.mState + ", this:" + this);
        int i11 = this.mState;
        if (i11 != 0) {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 == 4) {
                            this.mUserStopped = true;
                            VideoInfoFetcher videoInfoFetcher = this.mFetcher;
                            if (videoInfoFetcher != null) {
                                videoInfoFetcher.cancel();
                            }
                            DNSParser dNSParser = this.mDNSParser;
                            if (dNSParser != null) {
                                dNSParser.cancel();
                            }
                        }
                    } else {
                        this.mUserStopped = true;
                    }
                } else {
                    this.mUserStopped = true;
                    DNSParser dNSParser2 = this.mDNSParser;
                    if (dNSParser2 != null) {
                        dNSParser2.cancel();
                    }
                }
            } else {
                this.mUserStopped = true;
                VideoInfoFetcher videoInfoFetcher2 = this.mFetcher;
                if (videoInfoFetcher2 != null) {
                    videoInfoFetcher2.cancel();
                }
            }
        } else {
            this.mUserStopped = true;
        }
        _updateLogger();
        if (mediaPlayer != null && z10 && (mediaPlayer.getPlayerType() != 0 || (mediaPlayer.getPlayerType() == 0 && this.mPrepared))) {
            mediaPlayer.stop();
        }
        if (getConfigInt(982, this.mPlayDurationExcludePlayerMethod ? 1 : 0) != 1 && (iPlayDurationManager2 = this.mPlayDuration) != null) {
            iPlayDurationManager2.stop();
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(33, 0);
        }
        IntertrustDrmHelper intertrustDrmHelper = this.mIntertrustDrmHelper;
        if (intertrustDrmHelper != null) {
            intertrustDrmHelper.stop();
        }
        if (this.mLogger != null) {
            if (mediaPlayer != null) {
                int currentPosition = mediaPlayer.getCurrentPosition();
                _updateCurrentPlaybackPosition(currentPosition, false);
                this.mLogger.curPlayBackTime(currentPosition);
                if (this.mState == 3) {
                    this.mLogger.setHijackCode(mediaPlayer.getIntOption(204, -1));
                }
            }
            if (this.mPlaybackState != 0 && (iPlayDurationManager = this.mPlayDuration) != null) {
                this.mLogger.addWatchedDuration(iPlayDurationManager.getPlayedDuration());
            }
            this.mLogger.stop(i10);
        }
        updatePlaybackState(0);
        this.mHasFirstFrameShown = false;
        this.mHasFetchedSubtitle = false;
        this.mRenderStartTime = -1L;
        this.mPlayStartTime = -1L;
        this.mHasAudioFirstFrameShown = false;
        this.mPlayTime = 0L;
        this.mDecodedVideoFirstFrame = false;
        this.mPlayerFirstFrame = false;
        this.mTextureFirstFrame = false;
        this.mSeeking = false;
        if (i10 != 6) {
            TTVideoEngineSurfaceCallback tTVideoEngineSurfaceCallback = this.mSurfaceCallback;
            if (tTVideoEngineSurfaceCallback != null) {
                SurfaceHolder surfaceHolder = this.mSurfaceHolder;
                if (surfaceHolder != null) {
                    surfaceHolder.removeCallback(tTVideoEngineSurfaceCallback);
                }
                String logcatTag2 = logcatTag();
                TTVideoEngineLog.i(logcatTag2, "remove surface callback:" + this.mSurfaceCallback);
                this.mSurfaceCallback.reset();
                this.mSurfaceCallback = null;
            }
            this.mSkipStartWhenPrepared = false;
            this.mEngineConfig.remove(681);
            _updateTextureState(3);
            _isEnableEffect(8, 0);
            this.mEnableTextureRenderNativeWindow = 0;
            this.mEnableFrameCallbackInRenderThread = 0;
        }
    }

    private void _streamChanged(int i10) {
        int intOption;
        int i11;
        PlayerEventSimpleListener playerEventSimpleListener;
        TTVideoEngineLog.i(logcatTag(), "stream " + i10 + " changed, state:" + this.mPlaybackState + ", mPrepared:" + (this.mPrepared ? 1 : 0) + ", mLoadState:" + this.mLoadState);
        int i12 = 0;
        if (this.mSeeking) {
            this.mSeeking = false;
            this.mSeekingStartTime = 0L;
        }
        if (getConfigInt(664, this.mEnableDebugUINotify) != 0 && (playerEventSimpleListener = this.mPlayerEventListener) != null && this.mMediaPlayer != null) {
            if (i10 == 0) {
                playerEventSimpleListener.onVideoInputFormatChanged(getVideoFormatInfo());
            } else if (i10 == 1) {
                playerEventSimpleListener.onAudioInputFormatChanged(getVideoFormatInfo());
            }
        }
        if (i10 == 0 && !this.mDecodedVideoFirstFrame) {
            this.mDecodedVideoFirstFrame = true;
        }
        if (this.mPrepared && this.mPlaybackState != 0 && this.mLoadState != 0) {
            notifyStreamChanged(i10);
            if (i10 == 0 && this.mMediaPlayer != null && this.mTextureSurface != null) {
                if ((getConfigInt(4009, this.mTextureRenderForbidReuseVideoSurfaceTexture) > 0 || getConfigInt(4010, this.mTextureRenderForbidForbidReuseTexture) > 0) && (intOption = this.mMediaPlayer.getIntOption(157, -1)) > 0) {
                    if (getConfigInt(4009, this.mTextureRenderForbidReuseVideoSurfaceTexture) > 0) {
                        VideoSurface videoSurface = this.mTextureSurface;
                        if (intOption != 2) {
                            i11 = 1;
                        } else {
                            i11 = 0;
                        }
                        videoSurface.setIntOption(116, i11);
                    }
                    if (getConfigInt(4010, this.mTextureRenderForbidForbidReuseTexture) > 0) {
                        VideoSurface videoSurface2 = this.mTextureSurface;
                        if (intOption != 2) {
                            i12 = 1;
                        }
                        videoSurface2.setIntOption(117, i12);
                    }
                }
            }
        }
    }

    private void _syncPlayInfoToMdl() {
        long max;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            if (isPcdnNeedPlayInfo() || DataLoaderHelper.getDataLoader().isNeedPlayInfo()) {
                if (!this.mIsPlayComplete && !this.mErrorEnd) {
                    long longOption = mediaPlayer.getLongOption(73, -1L);
                    long longOption2 = mediaPlayer.getLongOption(72, -1L);
                    int intOption = mediaPlayer.getIntOption(62, 0);
                    int intOption2 = mediaPlayer.getIntOption(61, 0);
                    if (intOption == 1 && intOption2 == 1) {
                        max = Math.max(0L, Math.min(longOption, longOption2));
                    } else if (intOption2 == 1) {
                        max = Math.max(0L, longOption);
                    } else if (intOption == 1) {
                        max = Math.max(0L, longOption2);
                    } else {
                        return;
                    }
                    setPlayInfo(5, max);
                    return;
                }
                TTVideoEngineLog.d(logcatTag(), "_syncPlayInfoToMdl complete");
            }
        }
    }

    private void _tryNextURL(Error error) {
        Integer num;
        Map<Resolution, Integer> map = this.urlIndexMap;
        if (map != null && (num = map.get(this.currentResolution)) != null) {
            this.urlIndexMap.put(this.currentResolution, Integer.valueOf(num.intValue() + 1));
            _parseIPAddress(this.mVideoModel, error);
        }
    }

    private void _tryRegisterMdlHandle(MediaPlayer mediaPlayer) {
        boolean z10;
        TTVideoEngineLog.i(logcatTag(), "_tryRegisterMdlHandle, player type:" + mediaPlayer.getPlayerType());
        boolean z11 = true;
        if ((!mHasRegisterMdlProto && mediaPlayer.getPlayerType() == 1) || (getConfigInt(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ENABLE_NATIVE_MDL, this.mExoEnableNativeMdl ? 1 : 0) != 0 && !mHasRegisterMdlProtoForExo && mediaPlayer.getPlayerType() == 5)) {
            long longValue = DataLoaderHelper.getDataLoader().getLongValue(1003);
            if (longValue != -1) {
                DataLoaderHelper.getDataLoader().setIntValue(1004, (int) mediaPlayer.setLongOption(500, longValue));
                if (mediaPlayer.getPlayerType() == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                mHasRegisterMdlProto = z10;
                if (mediaPlayer.getPlayerType() != 5) {
                    z11 = false;
                }
                mHasRegisterMdlProtoForExo = z11;
            }
            TTVideoEngineLog.i(logcatTag(), "get handle: " + longValue);
        }
    }

    private void _updateCurrentPlaybackPosition(int i10, boolean z10) {
        if (getConfigInt(602, this.mPosUpdateInterval) > 0 && this.mCurPosition != i10 && i10 >= 0) {
            this.mCurPosition = i10;
            ListenerCompact listenerCompact = this.mListenerCompact;
            if (z10 && listenerCompact != null) {
                if (this.mLooperThread.checkSendMainLooper()) {
                    this.mLooperThread.postMainLooperMessage(425, i10, 0, null);
                } else {
                    listenerCompact.onCurrentPlaybackTimeUpdate(this.mEngineWrapper, i10);
                }
            }
        }
    }

    private void _updateEffectLog() {
        if (this.mTextureSurface != null) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (Integer num : this.effectTypeSet) {
                float floatOption = this.mTextureSurface.getFloatOption(124, num.intValue());
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("type", num);
                linkedHashMap.put("avrtime", Float.valueOf(floatOption));
                arrayList.add(linkedHashMap.toString());
                int intOption = this.mTextureSurface.getIntOption(126, num.intValue());
                if (intOption > 0) {
                    String stringOption = this.mTextureSurface.getStringOption(127, num.intValue());
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.put("type", num);
                    linkedHashMap2.put("errc", Integer.valueOf(intOption));
                    linkedHashMap2.put("errmsg", stringOption);
                    arrayList2.add(linkedHashMap2.toString());
                }
            }
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.setFloatOption(162, this.mTextureSurface.getFloatOption(120));
                this.mLogger.setStringOption(163, arrayList.toString());
                this.mLogger.setFloatOption(164, this.mTextureSurface.getFloatOption(125));
                if (!arrayList2.isEmpty()) {
                    this.mLogger.setStringOption(165, arrayList2.toString());
                }
                float floatOption2 = this.mTextureSurface.getFloatOption(131);
                float floatOption3 = this.mTextureSurface.getFloatOption(132);
                this.mLogger.setFloatOption(167, floatOption2);
                this.mLogger.setFloatOption(166, floatOption3);
            }
        }
    }

    private void _updateLogTime() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (this.mLogger != null && mediaPlayer != null && !this.mHasFirstFrameShown) {
            if (getConfigInt(1301, this.mMaskEnableDataloader) > 0) {
                this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MASK_ENABLE_DATALOADER, Integer.valueOf(getConfigInt(1301, this.mMaskEnableDataloader)));
            }
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CHANGE_REC_BUFFER_SPEED, Integer.valueOf(getConfigInt(990, this.mChangeRecBufferSpeed)));
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_REUSE_CODEC_FROM_POOL, Integer.valueOf(mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_FROM_POOL, -1)));
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_MC_MONITOR, Integer.valueOf(getConfigInt(1111, this.mEnableMediaCodecDeathCheck)));
            this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_CREATE_AUDIO_TRACK_EARLY, Integer.valueOf(getConfigInt(1110, this.mCreateAudioTrackEarly)));
            long longOption = mediaPlayer.getLongOption(68, -1L);
            this.mLogger.setDNSParseTime(longOption, 1);
            this.mLogger.setTranConnectTime(mediaPlayer.getLongOption(69, -1L));
            this.mLogger.setTranFirstPacketTime(mediaPlayer.getLongOption(70, -1L));
            this.mLogger.setAudioDNSParseTime(mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME, -1L), 1);
            this.mLogger.setAudioTranConnectTime(mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME, -1L));
            this.mLogger.setAudioTranFirstPacketTime(mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, -1L));
            this.mLogger.setReceiveFirstVideoFrameTime(mediaPlayer.getLongOption(75, -1L));
            this.mLogger.setReceiveFirstAudioFrameTime(mediaPlayer.getLongOption(76, -1L));
            this.mLogger.setDecodeFirstVideoFrameTime(mediaPlayer.getLongOption(77, -1L));
            this.mLogger.setDecodeFirstAudioFrameTime(mediaPlayer.getLongOption(78, -1L));
            this.mLogger.setPlayerHostAddr(mediaPlayer.getStringOption(71));
            this.mLogger.deviceStartTime(1, mediaPlayer.getLongOption(156, -1L));
            this.mLogger.deviceStartTime(0, mediaPlayer.getLongOption(155, -1L));
            this.mLogger.devicedOpenedTime(1, mediaPlayer.getLongOption(163, -1L));
            this.mLogger.devicedOpenedTime(0, mediaPlayer.getLongOption(162, -1L));
            long longOption2 = mediaPlayer.getLongOption(210, -1L);
            this.mLogger.setFirstPlayerFirstFrameTime(longOption2);
            if (longOption > 0) {
                this.mLogger.setDNSEndTime(longOption);
            }
            long longOption3 = mediaPlayer.getLongOption(622, -1L);
            if (longOption3 > 0) {
                this.mLogger.setDNSStartTime(longOption3, 1);
            }
            long longOption4 = mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DNS_START_TIME, -1L);
            if (longOption4 > 0) {
                this.mLogger.setLongOption(66, longOption4);
            }
            this.mLogger.setLongOption(67, mediaPlayer.getLongOption(620, -1L));
            this.mLogger.setLongOption(68, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME, -1L));
            this.mLogger.setLongOption(78, mediaPlayer.getLongOption(621, -1L));
            this.mLogger.setLongOption(69, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME, -1L));
            this.mLogger.setLongOption(70, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_DEC_CREATE_TIME, -1L));
            this.mLogger.setLongOption(71, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME, -1L));
            this.mLogger.setLongOption(72, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME, -1L));
            this.mLogger.setLongOption(73, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, -1L));
            this.mLogger.setLongOption(74, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME, -1L));
            this.mLogger.setLongOption(75, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME, -1L));
            this.mLogger.setLongOption(76, longOption2);
            this.mLogger.setLongOption(77, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME, -1L));
            this.mLogger.setLongOption(87, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_RES_FINSIH_TIME, -1L));
            this.mLogger.setLongOption(88, mediaPlayer.getLongOption(307, -1L));
            this.mLogger.setLongOption(120, mediaPlayer.getLongOption(583, -1L));
            this.mLogger.setLongOption(121, mediaPlayer.getLongOption(588, -1L));
            this.mLogger.setLongOption(122, mediaPlayer.getLongOption(584, -1L));
            this.mLogger.setLongOption(123, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_TRANS_OPEN_START_TIME, -1L));
            this.mLogger.setLongOption(124, mediaPlayer.getLongOption(585, -1L));
            this.mLogger.setLongOption(125, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME, -1L));
        }
    }

    private void _updateLogger() {
        int i10;
        float f10;
        float f11;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            String str = "";
            int i11 = -1;
            if (mediaPlayer != null) {
                iVideoEventLogger.curVideoOutputFps(mediaPlayer.getFloatOption(150, -1.0f));
                this.mLogger.containerFps(mediaPlayer.getFloatOption(151, -1.0f));
                this.mLogger.curVideoDecoderFps(mediaPlayer.getIntOption(186, -1));
                this.mLogger.clockDiff(mediaPlayer.getLongOption(152, -1L));
                this.mLogger.dropCount(mediaPlayer.getIntOption(153, -1));
                this.mLogger.enableSharp(mediaPlayer.getIntOption(189, -1));
                this.mLogger.curVideoDecodeError(mediaPlayer.getIntOption(221, -1));
                this.mLogger.curAudioDecodeError(mediaPlayer.getIntOption(222, -1));
                this.mLogger.curVideoRenderError(mediaPlayer.getIntOption(245, -1));
                if (this.mHardwareDecodeEnablePlayer2 > 0) {
                    this.mLogger.hwCodecName(mediaPlayer.getStringOption(187));
                    this.mLogger.hwCodecException(mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION, -1));
                }
                if (this.mPlaybackState != 0) {
                    this.mLogger.setAudioBufferLength(mediaPlayer.getLongOption(73, -1L));
                    this.mLogger.setVideoBufferLength(mediaPlayer.getLongOption(72, -1L));
                }
                this.mLogger.setTextureRenderError(this.mTextureRenderErrorMsg);
                this.mLogger.setLongOption(21, mediaPlayer.getLongOption(171, -1L));
                this.mLogger.setLongOption(56, mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE, -1L));
                this.mLogger.setLongOption(82, mediaPlayer.getLongOption(850, -1L));
                this.mLogger.setLongOption(84, mediaPlayer.getLongOption(851, -1L));
                this.mLogger.setLongOption(85, mediaPlayer.getLongOption(852, -1L));
                int intOption = mediaPlayer.getIntOption(62, -1);
                int intOption2 = mediaPlayer.getIntOption(61, -1);
                if (intOption == 0) {
                    this.mLogger.setIntOption(12, 1);
                } else {
                    this.mLogger.setIntOption(12, 0);
                }
                if (intOption2 == 0) {
                    this.mLogger.setIntOption(13, 1);
                } else {
                    this.mLogger.setIntOption(13, 0);
                }
                this.mLogger.setIntOption(89, mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_COLOR_TRC, -1));
                _updateLogTime();
                HashMap hashMap = new HashMap();
                hashMap.put("abrv", this.mAbrVer);
                ISpeedPredictor iSpeedPredictor = StrategyCenter.sNetAbrSpeedPredictor;
                if (iSpeedPredictor != null) {
                    this.mNetVer = iSpeedPredictor.getVersion();
                }
                hashMap.put("netv", this.mNetVer);
                hashMap.put("used", Integer.valueOf(this.mABRUsed ? 1 : 0));
                hashMap.put("pcnt", Integer.valueOf(mediaPlayer.getIntOption(179, 0)));
                hashMap.put("scnt", Integer.valueOf(mediaPlayer.getIntOption(173, 0)));
                hashMap.put("apbr", Integer.valueOf(mediaPlayer.getIntOption(174, 0)));
                hashMap.put("apsp", Float.valueOf(mediaPlayer.getFloatOption(175, 0.0f)));
                hashMap.put("adbr", Integer.valueOf(mediaPlayer.getIntOption(610, 0)));
                TTTestSpeedListener tTTestSpeedListener = this.mTTSpeedListener;
                if (tTTestSpeedListener == null) {
                    f10 = 0.0f;
                } else {
                    f10 = tTTestSpeedListener.mAverageDownloadSpeed;
                }
                hashMap.put("npad", Float.valueOf(f10));
                TTTestSpeedListener tTTestSpeedListener2 = this.mTTSpeedListener;
                if (tTTestSpeedListener2 == null) {
                    f11 = 0.0f;
                } else {
                    f11 = tTTestSpeedListener2.mAveragePredictSpeed;
                }
                hashMap.put("npap", Float.valueOf(f11));
                hashMap.put("adob", Integer.valueOf(mediaPlayer.getIntOption(615, 0)));
                hashMap.put("aplb", Integer.valueOf(mediaPlayer.getIntOption(614, 0)));
                hashMap.put("avbl", Float.valueOf(mediaPlayer.getFloatOption(616, 0.0f)));
                hashMap.put("iast", Integer.valueOf(this.mStandAlongAbrStartUp));
                hashMap.put("acsm", Integer.valueOf(this.mStartupSwitchCSModel));
                hashMap.put("stbr", Long.valueOf(this.mStartUpBitrate));
                hashMap.put("uebr", Long.valueOf(this.mUserExpectedBitrate));
                hashMap.put("stre", this.mStartUpResolution);
                hashMap.put("dgbt", Long.valueOf(this.mDowngradeBitrate));
                this.mLogger.setAbrInfo(hashMap);
                if (this.mABRUsed || this.mStandAlongAbrStartUp > 0 || getConfigInt(583, this.mGearStrategyEnabled) > 0) {
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("adtp", Integer.valueOf(TTVideoEngine.sABRAlgorithmType));
                    hashMap2.put("sptp", Integer.valueOf(TTVideoEngine.sNetSpeedAbrPredictType));
                    hashMap2.put("astp", Integer.valueOf(this.mStartupModel));
                    hashMap2.put("mcbr", Long.valueOf(this.mMaxCacheBitrate));
                    hashMap2.put("stsp", Float.valueOf(this.mAbrStartUpSpeed));
                    hashMap2.put("spsp", Float.valueOf(this.mAbrStartUpPredictSpeed));
                    hashMap2.put("sasp", Float.valueOf(this.mAbrStartUpAverageSpeed));
                    hashMap2.put("stfs", Long.valueOf(this.mAbrStartupBitrateBeforeFitScreen));
                    hashMap2.put("suqs", Float.valueOf(this.mAbrUserQualitySensitivity));
                    hashMap2.put("suef", Integer.valueOf(this.mAbrUserEnterFullScreen));
                    hashMap2.put("srif", this.mAbrSrInfo);
                    hashMap2.put("stif", this.mAbrStartupInfo);
                    IABRModule iABRModule = this.mABRModule;
                    if (iABRModule != null) {
                        hashMap2.put("abif", iABRModule.getStringOption(81, ""));
                    }
                    ArrayList arrayList = new ArrayList();
                    IVideoModel iVideoModel = this.mVideoModel;
                    if (iVideoModel != null) {
                        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
                        if (videoInfoList == null) {
                            videoInfoList = Collections.emptyList();
                        }
                        for (VideoInfo videoInfo : videoInfoList) {
                            if (videoInfo != null) {
                                HashMap hashMap3 = new HashMap();
                                hashMap3.put("br", Integer.valueOf(videoInfo.getValueInt(3)));
                                String valueStr = videoInfo.getValueStr(32);
                                if (!TextUtils.isEmpty(valueStr)) {
                                    hashMap3.put("def", valueStr);
                                } else {
                                    hashMap3.put("def", _resolutionToString(videoInfo.getResolution()));
                                }
                                arrayList.add(hashMap3);
                            }
                        }
                    }
                    if (arrayList.size() > 0) {
                        hashMap2.put("brs", arrayList.toArray());
                    }
                    this.mLogger.setAbrGeneralInfo(hashMap2);
                }
            }
            this.mLogger.setIntOption(11, this.mRadioModeEnable);
            this.mLogger.setIntOption(79, isplaybackUsedSR() ? 1 : 0);
            this.mLogger.setIntOption(80, this.mReadCacheMode);
            this.mLogger.setIntOption(81, this.mAutoRangeOffset);
            this.mLogger.setIntOption(133, this.mEnableSRStrategy ? 1 : 0);
            SRStrategy sRStrategy = this.mSRStrategy;
            sRStrategy.setStrategyInfo("ss", Integer.valueOf(sRStrategy.getSRStatus()));
            this.mSRStrategy.setStrategyInfo(SRStrategy.KEY_ENABLE_SR_STRATEGY, Integer.valueOf(this.mEnableSRStrategy ? 1 : 0));
            this.mSRStrategy.setStrategyInfo(SRStrategy.KEY_ENABLE_ABR_SR, Integer.valueOf(getConfigInt(571, this.mABRWithSR)));
            SRStrategy sRStrategy2 = this.mSRStrategy;
            Resolution resolution = this.currentResolution;
            if (resolution != null) {
                i10 = resolution.getIndex();
            } else {
                i10 = -1;
            }
            sRStrategy2.setStrategyInfo(SRStrategy.KEY_CURRENT_RESOLUTION, Integer.valueOf(i10));
            SRStrategy sRStrategy3 = this.mSRStrategy;
            String str2 = this.mCurrentQualityDesc;
            if (str2 == null) {
                str2 = "";
            }
            sRStrategy3.setStrategyInfo(SRStrategy.KEY_CURRENT_QUALITY_DESC, str2);
            SRStrategy sRStrategy4 = this.mSRStrategy;
            Resolution resolution2 = this.mResolutionBeforeDowngrade;
            if (resolution2 != null) {
                i11 = resolution2.getIndex();
            }
            sRStrategy4.setStrategyInfo(SRStrategy.KEY_ORIGIN_RESOLUTION, Integer.valueOf(i11));
            SRStrategy sRStrategy5 = this.mSRStrategy;
            String str3 = this.mQualityDescBeforeDowngrade;
            if (str3 != null) {
                str = str3;
            }
            sRStrategy5.setStrategyInfo(SRStrategy.KEY_ORIGIN_QUALITY_DESC, str);
            this.mLogger.setSRStrategyInfo(this.mSRStrategy);
            this.mLogger.setGearStrategyEvent(this.mGearStrategyEvent);
            this.mSourceRefreshStrategy.recordLog();
        }
        _updateEffectLog();
    }

    private void _updateTextureState(int i10) {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(1, i10);
        }
    }

    private void _updateVU() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, IpInfo> entry : this.urlIPMap.entrySet()) {
            String key = entry.getKey();
            IpInfo value = entry.getValue();
            if (key != null && value != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("url", key);
                hashMap.put(DNSParser.DNS_RESULT_IP, value.f37055ip);
                hashMap.put("dns", value.dns);
                hashMap.put("dns_cache_open", Integer.valueOf(value.isDNSCacheOpen));
                hashMap.put("server_dns_open", Integer.valueOf(value.isServerDNSOpen));
                hashMap.put("url_desc", value.urlDesc);
                if (this.mIsDirectURL && !TextUtils.isEmpty(this.mGroupID)) {
                    hashMap.put("gid", this.mGroupID);
                }
                arrayList.add(hashMap);
            }
        }
        if (!this.mIsDirectURL) {
            this.mLogger.setVUArray(arrayList);
        }
    }

    private boolean _usePlayerDNS(boolean z10) {
        IVideoEventLogger iVideoEventLogger;
        int configInt = getConfigInt(110, this.mIsUsePlayerDNS);
        if ((configInt == 1 || z10) && (iVideoEventLogger = this.mLogger) != null) {
            iVideoEventLogger.setStringOption(86, IVideoEventLogger.LOGGER_DNS_TYPE_LOCAL);
        }
        if (configInt == 1) {
            return true;
        }
        if (configInt == 0) {
            return false;
        }
        return z10;
    }

    private boolean _validateVideo() {
        boolean z10;
        if (this.mPlayAPIVersion >= 2) {
            return true;
        }
        try {
            String videoRefStr = this.mVideoModel.getVideoRefStr(105);
            if (!TextUtils.isEmpty(videoRefStr) && !MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(videoRefStr) && !isOSPlayer()) {
                z10 = !this.mVideoID.equals(_getCommentInfo().get("vid"));
            } else {
                z10 = false;
            }
            if (z10) {
                this.mLogger.validateVideoMetaInfoFail(new Error(Error.VideoOwnPlayer, (int) Error.VideoValiateFail, "header meta validate failed"));
            }
        } catch (NullPointerException unused) {
            TTVideoEngineLog.e(logcatTag(), "fetcher video model null");
        }
        return true;
    }

    private void _videoBitrateChanged(int i10) {
        Resolution resolution = Resolution.Undefine;
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null && iVideoModel.hasData()) {
            Resolution[] allResolutions = Resolution.getAllResolutions();
            int i11 = 0;
            while (true) {
                if (i11 < allResolutions.length) {
                    VideoInfo videoInfo = this.mVideoModel.getVideoInfo(allResolutions[i11], VideoRef.TYPE_VIDEO, (Map<Integer, String>) null);
                    if (videoInfo != null && videoInfo.getValueInt(3) == i10) {
                        resolution = allResolutions[i11];
                        this.lastResolution = this.currentResolution;
                        this.currentBitrate = i10;
                        this.currentResolution = resolution;
                        this.mCurrentQualityDesc = videoInfo.getValueStr(32);
                        _logFirstResolution(this.currentResolution);
                        this.mLogger.configResolution(_resolutionToString(this.currentResolution), _resolutionToString(this.lastResolution));
                        this.mLogger.setCurrentQualityDesc(this.mCurrentQualityDesc);
                        break;
                    }
                    i11++;
                } else {
                    break;
                }
            }
        }
        TTVideoEngineLog.i(logcatTag(), "video bitrate changed:" + i10 + ", resoluton:" + resolution.toString(VideoRef.TYPE_VIDEO));
        if (this.mPlaybackState == 2 && this.mSeamSwitchingResolution) {
            this.mSeamSwitchingResolution = false;
            changeResolutionSwitchingState(false);
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.switchResolutionEnd(true);
            }
        } else {
            if (this.mResolutionSwitching) {
                this.mLogger.switchResolutionEnd(false);
            }
            changeResolutionSwitchingState(false);
        }
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(417, i10, 0, resolution);
        } else {
            this.mListenerCompact.onVideoStreamBitrateChanged(resolution, i10);
        }
        if (this.mEnableABR == 1 || this.mEnableHlsABR == 1) {
            this.mLogger.abrEventEnd(i10);
        }
    }

    private VideoInfo _videoInfoForResolution(Resolution resolution, int i10, Map<Integer, String> map) {
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null && iVideoModel.hasData()) {
            VideoInfo videoInfo = this.mVideoModel.getVideoInfo(resolution, i10, map, true);
            if (videoInfo != null) {
                int videoRefInt = this.mVideoModel.getVideoRefInt(7);
                if (videoRefInt == VideoRef.TYPE_AUDIO && videoInfo.getMediatype() == VideoRef.TYPE_AUDIO) {
                    this.currentResolution = videoInfo.getResolution();
                    this.mCurrentQualityDesc = videoInfo.getValueStr(32);
                } else if (videoRefInt == VideoRef.TYPE_VIDEO && videoInfo.getMediatype() == VideoRef.TYPE_VIDEO) {
                    this.currentResolution = videoInfo.getResolution();
                    this.mCurrentQualityDesc = videoInfo.getValueStr(32);
                }
                this.mLogger.setCurrentQualityDesc(this.mCurrentQualityDesc);
                this.mLogger.configResolution(_resolutionToString(this.currentResolution), "");
            }
            return videoInfo;
        }
        return null;
    }

    private void _videoRenderStartNotify() {
        MediaPlayer mediaPlayer;
        PlayerEventSimpleListener playerEventSimpleListener;
        if (getConfigInt(664, this.mEnableDebugUINotify) != 0 && (mediaPlayer = this.mMediaPlayer) != null && (playerEventSimpleListener = this.mPlayerEventListener) != null) {
            playerEventSimpleListener.onVideoRenderOpened(mediaPlayer.getIntOption(139, -1), this.mMediaPlayer.getLongOption(155, -1L), this.mMediaPlayer.getLongOption(162, -1L));
        }
    }

    static /* synthetic */ int access$308(TTVideoEngineImpl tTVideoEngineImpl) {
        int i10 = tTVideoEngineImpl.mFrameCount;
        tTVideoEngineImpl.mFrameCount = i10 + 1;
        return i10;
    }

    private String[] addMdlFlag(String[] strArr, String str) {
        if (getConfigInt(302, this.mForbidP2P) == 0) {
            return strArr;
        }
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (!TextUtils.isEmpty(strArr[i10])) {
                strArr[i10] = TTHelper.appendQueryString(strArr[i10], "p2p=0");
            }
        }
        return strArr;
    }

    private void changeResolutionSwitchingState(boolean z10) {
        if (z10) {
            this.mResolutionSwitching = true;
            this.mResolutionSwitchingStartTime = SystemClock.currentThreadTimeMillis();
            return;
        }
        this.mResolutionSwitching = false;
        this.mResolutionSwitchingStartTime = 0L;
    }

    private int clearByErrcode(Error error, boolean z10) {
        switch (error.code) {
            case Error.AVErrorInvalidData /* -1094995529 */:
            case MediaPlayer.MEDIA_PLAYER_INVALID_INPUT_DATA_ERROR /* -499985 */:
            case MediaPlayer.MEDIA_PLAYER_AUDIO_DECODER_WRITE_ERROR /* -499978 */:
            case MediaPlayer.MEDIA_PLAYER_VIDEO_DECODER_WRITE_ERROR /* -499977 */:
                if (getConfigInt(603, this.mEnableClearMDLCache) > 0) {
                    clearMdlCache();
                }
                return 11;
            case MediaPlayer.MEDIA_PLAYER_HIJACK_VID_ERROR /* -499972 */:
            case MediaPlayer.MEDIA_PLAYER_HIJACK_MEDIA_TYPE_ERROR /* -499970 */:
                return clearHijackIpCacheByErrcode(error, z10);
            default:
                return 11;
        }
    }

    private int clearHijackIpCacheByErrcode(Error error, boolean z10) {
        IVideoModel iVideoModel;
        if (getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_HIJACK_RETRY, this.mHijackRetry ? 1 : 0) != 1) {
            _notifyError(error);
            return 10;
        }
        this.mLogger.setHijackCode(error.code);
        int configInt = getConfigInt(424, this.mHijackRetryMainDNSType);
        int configInt2 = getConfigInt(425, this.mHijackRetryBackupDNSType);
        TTVideoEngine.setDNSType(configInt, configInt2);
        TTVideoEngine.removeCacheFile(this.mVideoModel);
        DataLoaderHelper.getDataLoader().clearNetinfoCache();
        DataLoaderHelper.getDataLoader().setIntValue(90, configInt);
        DataLoaderHelper.getDataLoader().setIntValue(91, configInt2);
        if (this.mHijackRetryCount == 0 && !z10 && (iVideoModel = this.mVideoModel) != null && iVideoModel.getVideoRefBool(106)) {
            this.mHijackRetryCount++;
            this.mRetryEnableHttps = true;
            return 2;
        }
        this.mHijackRetryCount = 0;
        _notifyError(error);
        return 10;
    }

    private int clearMdlCache() {
        for (String str : this.mFileHashs) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "clear mdl cache by filekey: " + str);
            TTVideoEngine.forceRemoveCacheFile(str);
        }
        return 0;
    }

    private void createDefaultCacheFileDirectory() {
        if (mCreatCacheFileLock.tryLock()) {
            if (!mIsFirstOpenEngine) {
                mCreatCacheFileLock.unlock();
                return;
            }
            mIsFirstOpenEngine = false;
            String defaultCacheFileDirPath = getDefaultCacheFileDirPath();
            File file = new File(defaultCacheFileDirPath);
            if (file.exists()) {
                if (file.list() != null) {
                    File file2 = new File(defaultCacheFileDirPath + "tem");
                    file.renameTo(file2);
                    file.mkdirs();
                    EngineThreadPool.addExecuteTask(new RecursionDeleteFileRunnable(file2));
                }
            } else {
                file.mkdirs();
            }
            EngineThreadPool.addExecuteTask(new DeleteBeforeDirFileRunnable(this.mContext.getApplicationContext()));
            mCreatCacheFileLock.unlock();
        }
    }

    private boolean deleteCacheFile() {
        String filePath = getFilePath();
        if (filePath == null || filePath.length() == 0) {
            return true;
        }
        File file = new File(filePath);
        try {
            if (file.isFile()) {
                if (file.delete()) {
                    return true;
                }
                return false;
            }
            return false;
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return false;
        }
    }

    public void doForceDraw() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "forceDraw " + this.mTextureSurface);
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(25, 1);
        }
    }

    private boolean doOpenSR(int i10, int i11) {
        TTVideoEngineLog.i(logcatTag(), "[SRLog]doOpenSR open=" + i10 + " reason=" + i11 + " mTextureSurface=" + this.mTextureSurface + " mHasFirstFrameShown=" + this.mHasFirstFrameShown);
        this.mTextureSrOpen = i10;
        if (i10 == 0) {
            this.mSRNotUseReason = i11;
        }
        VideoSurface videoSurface = this.mTextureSurface;
        boolean z10 = false;
        if (videoSurface == null) {
            return false;
        }
        try {
            if (1 == i10) {
                if (!this.mHasFirstFrameShown) {
                    return false;
                }
                videoSurface.setSuperResolutionMode(i10);
            } else {
                videoSurface.setSuperResolutionMode(i10);
            }
            z10 = true;
            return true;
        } catch (Exception e10) {
            TTVideoEngineLog.i(logcatTag(), "[SRLog]doOpenSR catch exception e=" + e10);
            return z10;
        }
    }

    /* renamed from: doSetDisplayMode */
    public void lambda$setDisplayMode$0(View view, int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setDisplayMode " + i10);
        _doSetIntOption(4, i10);
        DisplayMode displayMode = this.mDisplayMode;
        if (displayMode != null) {
            displayMode.setDisplayView(view);
            displayMode.setDisplayMode(i10);
        }
    }

    public void doSetMirrorHorizontal(boolean z10) {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            return;
        }
        this.mIsMirrorHorizontal = z10;
        videoSurface.setIntOption(30, z10 ? 1 : 0);
    }

    public void doSetMirrorVertical(boolean z10) {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            return;
        }
        this.mIsMirrorVertical = z10;
        videoSurface.setIntOption(31, z10 ? 1 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doSetPlayAuthToken(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r0 = com.ss.ttvideoengine.utils.TTHelper.base64Decode(r4)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L2e
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L20
            r1.<init>(r0)     // Catch: org.json.JSONException -> L20
            java.lang.String r2 = "GetPlayInfoToken"
            java.lang.String r2 = r1.optString(r2)     // Catch: org.json.JSONException -> L20
            r3.mAuthorization = r2     // Catch: org.json.JSONException -> L20
            boolean r2 = android.text.TextUtils.isEmpty(r2)     // Catch: org.json.JSONException -> L20
            if (r2 == 0) goto L22
            r3.mAuthorization = r0     // Catch: org.json.JSONException -> L20
            goto L22
        L20:
            r1 = move-exception
            goto L29
        L22:
            java.lang.String r2 = "TokenVersion"
            java.lang.String r0 = r1.optString(r2)     // Catch: org.json.JSONException -> L20
            goto L30
        L29:
            r1.printStackTrace()
            r3.mAuthorization = r0
        L2e:
            java.lang.String r0 = ""
        L30:
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L42
            java.lang.String r1 = "V2"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L42
            r0 = 4
            r3.mPlayAPIVersion = r0
            goto L45
        L42:
            r0 = 2
            r3.mPlayAPIVersion = r0
        L45:
            java.lang.String r0 = r3.logcatTag()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "setPlayAuthToken "
            r1.append(r2)
            r1.append(r4)
            java.lang.String r2 = " version = "
            r1.append(r2)
            int r2 = r3.mPlayAPIVersion
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.d(r0, r1)
            com.ss.ttvideoengine.log.IVideoEventLogger r0 = r3.mLogger
            if (r0 == 0) goto L71
            int r1 = r3.mPlayAPIVersion
            r0.setPlayAPIVersion(r1, r4)
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl.doSetPlayAuthToken(java.lang.String):void");
    }

    public void doSetRotation(int i10) {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            return;
        }
        if (i10 != 0 && i10 != 90 && i10 != 180 && i10 != 270) {
            i10 = 0;
        }
        this.mRotation = i10;
        videoSurface.setIntOption(29, i10);
    }

    public void doSetStrategySource(StrategySource strategySource) {
        _ShutdownOldSource();
        try {
            this.mCodecStrategyAdapter.setStrategySource(strategySource);
        } catch (EngineException e10) {
            e10.printStackTrace();
        }
    }

    private void fallbackOSPlayer() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && mediaPlayer.getPlayerType() != 0) {
            this.mMediaPlayer.releaseAsync();
            this.mMediaPlayer = null;
        }
        MediaPlayer mediaPlayer2 = this.mAsyncPlayer;
        if (mediaPlayer2 != null && mediaPlayer2.getPlayerType() != 0) {
            this.mAsyncPlayer.releaseAsync();
            this.mAsyncPlayer = null;
        }
        TTVideoEngineLog.d(logcatTag(), "license invalid fallback to os player");
        this.mPlayerType = 2;
    }

    private void fetchSmartUrlInfo() {
        this.mState = 1;
        this.mIsFetchingInfo = true;
        TTVideoEngineLog.d(logcatTag(), "start to fetch smart url info.");
        _resetUrlIndexMap();
        CodecStrategyAdapter codecStrategyAdapter = this.mCodecStrategyAdapter;
        if (codecStrategyAdapter != null) {
            codecStrategyAdapter.fetchSmartUrlInfo(new SmartUrlInfoCallback(this));
        }
    }

    public void fetchedVideoInfo(IVideoModel iVideoModel) {
        VideoInfo videoInfo;
        if (iVideoModel != null && (videoInfo = iVideoModel.getVideoInfo(this.currentResolution, (Map<Integer, String>) null)) != null) {
            setDisplayVideoSize(videoInfo.getValueInt(1), videoInfo.getValueInt(2));
        }
    }

    private static HashMap<String, Object> generateCrosstalkMap(String str, String str2, int i10, String str3) {
        HashMap<String, Object> hashMap = new HashMap<>();
        if (!TextUtils.isEmpty(str)) {
            hashMap.put(ITTVideoEngineEventSource.KEY_TAG, str);
        }
        if (!TextUtils.isEmpty(str2)) {
            hashMap.put(ITTVideoEngineEventSource.KEY_SUBTAG, str2);
        }
        hashMap.put("islive", Integer.valueOf(i10));
        if (!TextUtils.isEmpty(str3)) {
            hashMap.put("enginehash", str3);
        }
        return hashMap;
    }

    private static String generateCrosstalkStr(Map map) {
        try {
            return new JSONObject(map).toString();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private int getBufferStartAction() {
        boolean z10 = this.mSeeking;
        if (z10 && this.mResolutionSwitching) {
            if (this.mSeekingStartTime <= this.mResolutionSwitchingStartTime) {
                return 2;
            }
            return 1;
        } else if (z10) {
            return 1;
        } else {
            if (this.mResolutionSwitching) {
                return 2;
            }
            return 0;
        }
    }

    private String getDefaultCacheFileDirPath() {
        String appFilesPath = TTHelper.getAppFilesPath(this.mContext);
        if (appFilesPath != null) {
            return appFilesPath + File.separator + "mediattmp";
        }
        return null;
    }

    private String getFilePath() {
        if (this.mIsLocal || this.mIsPlayItem || this.mIsPreloaderItem || !this.mIsDirectURL) {
            return null;
        }
        return this.mFileKey;
    }

    private String getMediaFileKey() {
        String str;
        String str2;
        String str3;
        long j10;
        if (!this.mIsLocal && !this.mIsPlayItem && !this.mIsPreloaderItem) {
            if (this.mIsDirectURL) {
                return this.mFileKey;
            }
            if (this.mVideoModel == null) {
                return null;
            }
            VideoInfo videoInfo = this.currentVideoInfo;
            if (videoInfo != null) {
                str = videoInfo.getValueStr(26);
                j10 = this.currentVideoInfo.getValueLong(12);
                str2 = this.currentVideoInfo.getValueStr(5);
                str3 = this.currentVideoInfo.getValueStr(15);
            } else {
                str = null;
                str2 = null;
                str3 = null;
                j10 = 0;
            }
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3) && j10 != 0) {
                if (!TextUtils.isEmpty(str2)) {
                    return String.format("%s_%s_%s_%d_%s", this.mVideoID, str, str3, Long.valueOf(j10), TTHelper.customBase64Encode(str2));
                }
                return String.format("%s_%s_%s_%d", this.mVideoID, str, str3, Long.valueOf(j10));
            }
        }
        return null;
    }

    private void initEngine(Context context, int i10, Map map) {
        boolean z10;
        Looper looper;
        boolean z11;
        boolean z12;
        super.initEngine(context, i10);
        this.mOutputLog = TTVideoEngine.getPlayerOutputLog();
        this.mFirstURL = true;
        this.mFirstIP = true;
        this.mFirstHost = true;
        this.mUseFallbackAPI = true;
        this.currentResolution = Resolution.Standard;
        this.expectedResolution = Resolution.Auto;
        this.urlIndexMap = new HashMap();
        this.dashVideoUrlMap = new HashMap();
        this.dashAudioUrlMap = new HashMap();
        _resetUrlIndexMap();
        this.urlIPMap = new HashMap();
        this.mHeaders = new ConcurrentHashMap();
        this.mTextureFirstFrame = false;
        this.mPlayerFirstFrame = false;
        this.mSendEngineMsgTimeout = 500L;
        int i11 = TTVideoEngine.sUseConfigCenter;
        this.mConfigCenterVersion = i11;
        if (i11 > 0) {
            if (TTVideoEngine.sConfigCenterCheckDiff > 0) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.mEngineConfig = new EngineConfig(z11, new ConcurrentHashMap());
            if (this.mConfigCenterVersion > 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            this.mPlayerConfigExecutor = new PlayerConfigExecutor(z12);
            TTVideoEngineLog.i(logcatTag(), "ConfigCenter is used, cc Version:" + this.mConfigCenterVersion);
        } else {
            this.mEngineConfig = IEngineConfig.EMPTY;
            this.mPlayerConfigExecutor = PlayerConfigExecutor.EMPTY;
        }
        this.mDataLoaderEnable = EngineGlobalConfig.getInstance().isOnlyUseMediaLoader() ? 1 : 0;
        this.mEngineConfig.setIntOption(160, EngineGlobalConfig.getInstance().isOnlyUseMediaLoader() ? 1 : 0);
        TTVideoEngineLog.d(logcatTag(), "DataLoaderEnable is: " + getConfigInt(160, this.mDataLoaderEnable));
        if (i10 == 3) {
            TTVideoEngine.setForceUseLitePlayer(true);
        }
        this.mListenerCompact = new ListenerCompact();
        this.mHeadsetMonitor = HeadsetStateMonitor.getInstance(context);
        this.mLogger = new VideoEventLoggerV2(context, new MyLoggerDataSource(this), this.mHeadsetMonitor);
        TTVideoEngineMonitor tTVideoEngineMonitor = TTVideoEngineMonitor.getInstance(context);
        this.mEngineStateMonitor = tTVideoEngineMonitor;
        if (tTVideoEngineMonitor != null) {
            tTVideoEngineMonitor.startObserve(hashCode(), this.mEngineWrapper);
        }
        this.mLogger.setUploadLogEnabled(true);
        this.mLogger.configResolution(_resolutionToString(this.currentResolution), "");
        this.mLogger.setIntOption(132, hashCode());
        if (!EngineGlobalConfig.getInstance().isOnlyUseMediaLoader()) {
            createDefaultCacheFileDirectory();
        }
        this.mPlayDuration = new PlayDurationManager(this.mHeadsetMonitor);
        if (!TimeService.isUpdated()) {
            TimeService.updateTimeFromNTP(this.mContext);
        }
        EngineThreadPool.addExecuteTask(new VideoInfoCollector.myVideoCollectorRegister(this.mEngineWrapper, this.mSerial));
        this.mLooperThread = new TTVideoEngineLooperThread2(this);
        if (SettingsHelper.helper().getVodInt(Module.VodKey.EngineEnableLooper_Int, 0) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.mEnableLooperThread = z10;
        HandlerThread handlerThread = null;
        if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_CALLBACK_LOOPER)) {
            looper = (Looper) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_CALLBACK_LOOPER);
        } else {
            looper = null;
        }
        if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_ENABLE_LOOPER)) {
            this.mEnableLooperThread = ((Boolean) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_ENABLE_LOOPER)).booleanValue();
        }
        if (StrategyManager.instance().enableEngineLooper()) {
            this.mEnableLooperThread = true;
        }
        if (this.mEnableLooperThread) {
            if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD)) {
                handlerThread = (HandlerThread) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD);
            }
            if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD_NOT_ALLOW_DESTROY)) {
                this.mLooperThread.setIntValue(0, ((Integer) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD_NOT_ALLOW_DESTROY)).intValue());
            }
            this.mLooperThread.start(handlerThread, looper);
        }
        this.mDisplayMode = new DisplayMode();
        StrategyManager.instance().engineCreate(this);
        VideoEventManager.instance.setContext(context);
        initMDLFetcher(context);
        this.mEngineHash = String.valueOf(hashCode());
        this.mCodecStrategyAdapter = new CodecStrategyAdapter(this);
        this.mSourceRefreshStrategy = new TTVideoEngineSourceRefreshStrategy(this.mEngineHash, this.mEngineWrapper);
        this.mOptionHolder = new OptionHolder();
        EngineInstanceHolder.getInstance().add(this.mEngineWrapper);
        TTVideoEngineLog.i(logcatTag(), "initEngine, engine hash:" + this.mEngineHash);
    }

    private void initSr(VideoSurface videoSurface) {
        Bundle bundle;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "initSr,mTextureAlgType:" + this.mTextureAlgType);
        if (this.mTextureAlgType != -1 && videoSurface != null) {
            if (this.mLensBundle != null) {
                bundle = new Bundle(this.mLensBundle);
            } else {
                bundle = new Bundle();
            }
            bundle.putInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE, 5);
            bundle.putInt(TextureRenderKeys.KEY_IS_ACTION, 21);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_TYPE, this.mTextureAlgType);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_MAX_SIZE_WIDTH, this.mMaxTextureWidth);
            bundle.putInt(TextureRenderKeys.KEY_SR_ALG_MAX_SIZE_HEIGHT, this.mMaxTextureHeight);
            bundle.putInt(TextureRenderKeys.KEY_IS_ENABLE_BMF, EngineGlobalConfig.getInstance().getEnableBmf());
            bundle.putInt(TextureRenderKeys.KEY_SR_BMF_BACKEND, this.mSrBackend);
            bundle.putInt(TextureRenderKeys.KEY_BMF_SCALE_TYPE, this.mSrScaleType);
            bundle.putInt("pool_size", this.mSrPoolSize);
            bundle.putString(TextureRenderKeys.KEY_KERNEL_BIN_PATH, this.mTextureSRBinPath);
            bundle.putString(TextureRenderKeys.KEY_OCL_MODLE_NAME, this.mTextureSROclModuleName);
            bundle.putString(TextureRenderKeys.KEY_DSP_MODLE_NAME, this.mTextureSRDspModuleName);
            bundle.putString(TextureRenderKeys.KEY_MODULE_NAME, FeatureManager.getModuleName());
            bundle.putString(TextureRenderKeys.KEY_BMF_PROGRAM_CACHE_DIR, this.mProgramCacheDir);
            bundle.putInt(TextureRenderKeys.KEY_IS_USE_BMF_COMPONENT, this.mUseBmfComponent);
            bundle.putString(TextureRenderKeys.KEY_SR_LIB_PATH, this.mSRLibPath);
            bundle.putInt(TextureRenderKeys.KEY_IS_USE_BMF_DIRECTINVOKE, this.mUseBmfDirectInvoke);
            bundle.putBundle(TextureRenderKeys.KEY_IS_EFFECT_INIT_CONFIG_BUNDLE, this.mBmfInitConfigBundle);
            bundle.putBundle(TextureRenderKeys.KEY_IS_PROCESS_CONFIG_BUNDLE, this.mBmfSrProcessParam);
            videoSurface.setEffect(bundle);
        }
    }

    private VideoSurface initTextureRender(boolean z10) {
        int i10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "use sr tex = " + z10);
        TextureRenderManager textureRenderManager = this.mTextureRenderer;
        if (textureRenderManager == null) {
            return null;
        }
        if (getConfigInt(650, this.mOverlayMode) != 0) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        EffectConfig effectConfig = new EffectConfig();
        effectConfig.setEffectOpen(5, z10 ? 1 : 0);
        if (this.mTRSrategy.isInitForEffect(1)) {
            effectConfig.setEffectOpen(1, 1);
        }
        effectConfig.setEGLBitDepth(TTVideoEngineConfig.setEGLBitDepth);
        VideoSurface genAvaiableSurface = textureRenderManager.genAvaiableSurface(effectConfig, i10);
        if (genAvaiableSurface != null) {
            if (z10) {
                initSr(genAvaiableSurface);
            }
            this.mTRSrategy.didInitTextureRender(genAvaiableSurface);
            genAvaiableSurface.setIntOption(26, this.mLayoutType);
        }
        return genAvaiableSurface;
    }

    private boolean isPcdnNeedPlayInfo() {
        if (EngineGlobalConfig.getInstance().getPcdnAuto() == 1) {
            if (this.mEnableSetPlayInfoToP2P != 1) {
                return false;
            }
            return true;
        } else if (this.mP2PCDNType <= 0) {
            return false;
        } else {
            return true;
        }
    }

    private boolean isPlayerSupportSeekMode() {
        if (!isPlayerType(0) && !isPlayerType(1) && !isPlayerType(3) && !isPlayerType(4)) {
            return false;
        }
        return true;
    }

    private boolean isSupportBash(int i10) {
        return ((getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_SEGMENT_FORMAT_FLAG, this.mSegmentFormatFlag) >> i10) & 1) == 1;
    }

    private boolean isSupportFileCache(String str, IVideoModel iVideoModel) {
        if (iVideoModel != null && (iVideoModel.hasFormat(IVideoModel.Format.DASH) || iVideoModel.getSource() == IVideoModel.Source.LIVE)) {
            return false;
        }
        if (!TextUtils.isEmpty(str)) {
            if (FormatProvider.FormatProviderHolder.isM3u8(str) || FormatProvider.FormatProviderHolder.isMpd(str)) {
                return false;
            }
            return true;
        }
        return true;
    }

    private boolean isSupportHLSSeamlessSwitch(IVideoModel iVideoModel) {
        if (iVideoModel == null || !iVideoModel.hasFormat(IVideoModel.Format.HLS)) {
            return false;
        }
        return iVideoModel.isSupportHLSSeamlessSwitch();
    }

    private static boolean isSupportSeamlessSwitch(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        return lowerCase.startsWith(BASH_PREFIX_NAME) || lowerCase.startsWith(HLS_MEM_PREFIX_NAME) || FormatProvider.FormatProviderHolder.isM3u8(str) || FormatProvider.FormatProviderHolder.isMpd(str);
    }

    public /* synthetic */ void lambda$_fetchVideoInfo$6() {
        _parseIPAddress(this.mVideoModel);
    }

    public /* synthetic */ void lambda$_playInternal$7(Looper looper) {
        setupTextureRender();
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setLooper(looper);
        }
        TTVideoEngineLog.d(logcatTag(), "[SRLog]setupTextureRender in child thread");
    }

    public /* synthetic */ void lambda$_playInternal2$8(Looper looper) {
        setupTextureRender();
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setLooper(looper);
        }
        TTVideoEngineLog.d(logcatTag(), "[SRLog]setupTextureRender in child thread");
    }

    public /* synthetic */ void lambda$_renderStart$10(int i10) {
        TestNetSpeedListener testNetSpeedListener;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            long longOption = mediaPlayer.getLongOption(63, 0L);
            int i11 = (longOption > 0L ? 1 : (longOption == 0L ? 0 : -1));
            if (i11 >= 0 && (testNetSpeedListener = this.mTestNetSpeedListener) != null) {
                testNetSpeedListener.onSpeedReceive(longOption);
            }
            int i12 = this.mTestNetSpeed;
            if ((i12 == 1 || (i12 == 0 && i11 < 0)) && i10 > 0) {
                this.mTestNetSpeedHandler.postDelayed(this.mTestNetSpeedRunable, i10);
            }
        }
    }

    public /* synthetic */ void lambda$_renderStart$9(boolean z10) {
        this.mTRSrategy.setIsInitForEffect(1, z10);
        VideoSurface initTextureRender = initTextureRender(true);
        if (initTextureRender != null) {
            initTextureRender.release();
        }
        this.mAsyncInitSR = false;
        this.mAsyncInitEffect = false;
    }

    public /* synthetic */ void lambda$saveEvent$5() {
        int i10 = this.mState;
        if (i10 != 0 && i10 != 4 && i10 != 5) {
            _updateLogger();
            this.mLogger.addWatchedDuration(this.mPlayDuration.getPlayedDuration());
            this.mLogger.saveEvent();
            return;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.e(logcatTag, "invalid state: " + this.mState);
    }

    public /* synthetic */ void lambda$setSubDesInfoModel$3(SubDesInfoModelProvider subDesInfoModelProvider) {
        this.mSubDesInfoModel = subDesInfoModelProvider;
    }

    public /* synthetic */ void lambda$setupTextureRender$1(int i10) {
        int i11;
        this.mTextureRenderError = i10;
        if (getConfigInt(1504, this.mEnableNotifyRenderException) > 0) {
            Error error = new Error(Error.TextureRender, (int) Error.RenderException, i10);
            if (this.mLooperThread.checkSendMainLooper()) {
                this.mLooperThread.postMainLooperMessage(409, 0, 0, error);
            } else {
                this.mListenerCompact.onError(error);
            }
        }
        if (i10 == 1 || i10 == 2) {
            if (i10 == 1) {
                i11 = Error.InitFail;
            } else {
                i11 = Error.ExecuteFail;
            }
            this.mSRStrategy.onSRStatus(2, i11);
        }
    }

    public /* synthetic */ int lambda$setupTextureRender$2(VideoSurface videoSurface, Surface surface) {
        ListenerCompact listenerCompact = this.mListenerCompact;
        if (listenerCompact != null) {
            return listenerCompact.onSetSurface(this.mEngineWrapper, videoSurface, surface);
        }
        return 0;
    }

    public static /* synthetic */ int lambda$snapshot$d0aa4498$1(SnapshotListener snapshotListener, ByteBuffer byteBuffer, int i10, int i11) {
        if (byteBuffer == null) {
            snapshotListener.onSnapShot(null, 0, 0);
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            createBitmap.copyPixelsFromBuffer(byteBuffer);
            snapshotListener.onSnapShot(createBitmap, i10, i11);
        }
        return 0;
    }

    private void loggerSetMdlInitializeState() {
        int mdlInitializeState = DataLoaderHelper.getDataLoader().getMdlInitializeState();
        if (mdlInitializeState == IVideoEventLogger.MdlInitializeState.InitializeError.ordinal()) {
            this.mLogger.setStringOption(176, DataLoaderHelper.getDataLoader().getMdlInitializeErrorString());
        }
        this.mLogger.setIntOption(175, mdlInitializeState);
    }

    private void mdlFetcherRemove() {
        FetcherMaker.remove(this.mVideoID);
        try {
            FetcherMakerNew.removeListener(this.mMDLFetcherListener);
        } catch (Throwable th2) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "fetcherMakerNew exception " + th2);
        }
        this.mMDLFetcherListener = null;
    }

    private void mdlFetcherStore() {
        FetcherMaker.store(this.mVideoID, this.mKeyseed, this.mFallbackAPI, this.mVideoModelVersion);
        if (this.mMDLFetcherListener == null) {
            this.mMDLFetcherListener = new EngineMDLFetcherListener(this.mEngineWrapper);
        }
        try {
            FetcherMakerNew.storeListener(this.mMDLFetcherListener);
        } catch (Throwable th2) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "fetcherMakerNew exception " + th2);
        }
    }

    private String produceUserAgentString() {
        String str;
        int i10 = BaseAppInfo.mAppID;
        String traceID = this.mLogger.getTraceID();
        if (TextUtils.isEmpty(traceID)) {
            traceID = "null";
        }
        String str2 = VideoEventBase.appSessionId;
        if (TextUtils.isEmpty(this.mTag)) {
            str = DataLoaderHelper.PRELOAD_DEFAULT_SCENE;
        } else {
            str = this.mTag;
        }
        return String.format("appId:%d,os:Android,traceId:%s,appSessionId:%s,tag:%s", Integer.valueOf(i10), traceID, str2, str);
    }

    private void releaseTextureRenderRef() {
        if (this.mTextureRenderer == null) {
            return;
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "release video surface : " + videoSurface);
            doOpenSR(0, Error.SRReset);
            videoSurface.release();
            this.mTextureSurface = null;
        }
        this.mTextureRenderer = null;
        this.mRenderHDR2SDR = 0;
        this.mEngineConfig.remove(652);
        this.mSyncUpdateSurface = 0;
        this.mTextureRenderError = 0;
        TTVideoEngineLog.i(logcatTag(), "mTextureRenderer become to null");
    }

    private void resetFallbackApi(Error error) {
        String str = this.mFallbackAPI;
        if (str != null && "dash".equals(TTHelper.getParam(str, "format_type")) && (-9993 == error.code || !isInHousePlayer())) {
            this.mFallbackAPI = TTHelper.overrideUrlParam(this.mFallbackAPI, "format_type", TTVideoEngineInterface.FORMAT_TYPE_MP4);
        }
        if (this.mFallbackAPI != null) {
            if (-9993 == error.code || !isInHousePlayer()) {
                this.mFallbackAPI = TTHelper.overrideUrlParam(this.mFallbackAPI, TTVideoEngineInterface.PLAY_API_KEY_CODEC, MBridgeConstans.ENDCARD_URL_TYPE_PL);
            }
        }
    }

    private void resetMediaPlayerOptions2() {
        int i10;
        super.resetMediaPlayerOptions();
        this.mPlayerConfigExecutor.execute(this.mEngineConfig.getItemMap(), 1);
        this.mMediaPlayer.setIntOption(59, this.mHardwareDecodeEnablePlayer2);
        if (this.mEngineConfig.getIntOption(329) == 1) {
            this.mMediaPlayer.setFloatOption(303, this.mEngineConfig.getFloatOption(325));
            this.mMediaPlayer.setFloatOption(304, this.mEngineConfig.getFloatOption(326));
            this.mMediaPlayer.setFloatOption(306, this.mEngineConfig.getFloatOption(328));
            this.mMediaPlayer.setFloatOption(305, this.mEngineConfig.getFloatOption(327));
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE, this.mEngineConfig.getIntOption(343));
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, this.mEngineConfig.getFloatOption(345));
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, this.mEngineConfig.getFloatOption(344));
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK, this.mEngineConfig.getFloatOption(346));
            this.mMediaPlayer.setFloatOption(1151, this.mEngineConfig.getFloatOption(348));
            this.mMediaPlayer.setFloatOption(1152, this.mEngineConfig.getFloatOption(349));
            this.mMediaPlayer.setFloatOption(1153, this.mEngineConfig.getFloatOption(TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG));
            this.mMediaPlayer.setFloatOption(1154, this.mEngineConfig.getFloatOption(351));
            this.mMediaPlayer.setFloatOption(1155, this.mEngineConfig.getFloatOption(352));
            this.mMediaPlayer.setFloatOption(1156, this.mEngineConfig.getFloatOption(353));
            this.mMediaPlayer.setFloatOption(1157, this.mEngineConfig.getFloatOption(354));
            this.mMediaPlayer.setIntOption(1159, this.mEngineConfig.getIntOption(356));
            this.mMediaPlayer.setIntOption(1160, this.mEngineConfig.getIntOption(357));
            this.mMediaPlayer.setStringOption(1158, this.mEngineConfig.getStringOption(355));
            this.mMediaPlayer.setStringOption(1161, this.mEngineConfig.getStringOption(360));
            this.mMediaPlayer.setStringOption(1162, this.mEngineConfig.getStringOption(361));
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        int i11 = 0;
        if (this.mIsStartPlayAutomatically && this.mIsPreDecodeAutoPause) {
            i10 = 0;
        } else {
            i10 = 1;
        }
        mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, i10);
        TTVideoEngineLog.i(logcatTag(), "pre decode auto pause : " + this.mIsPreDecodeAutoPause);
        TTVideoEngineLog.i(logcatTag(), "read cache mode : " + this.mIsStartPlayAutomatically + "start time skip: " + this.mEnableStartTimeSkipAvSkipSerial);
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        if (!this.mIsStartPlayAutomatically) {
            i11 = this.mReadCacheMode;
        }
        mediaPlayer2.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, i11);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET, this.mAutoRangeOffset);
        this.mMediaPlayer.setIntOption(1013, this.mEnableStartTimeSkipAvSkipSerial);
        if (this.mDangerBufferThreshold > 0) {
            TTVideoEngineLog.i(logcatTag(), "buffer threshold enable");
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, 1);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, this.mDangerBufferThreshold);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD, this.mSecureBufferThreshold);
        }
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_BYTEVC1_SW_FORBIDDEN, this.mForbidh265SoftwareDecode);
        this.mMediaPlayer.setStringOption(462, DrmUtils.getEngineUniqueId(this.mContext));
        long drmExpireTime = DrmUtils.getDrmExpireTime(this.mAuthorization);
        if (drmExpireTime > 0) {
            this.mMediaPlayer.setLongOption(471, drmExpireTime);
        }
        ListenerCompact listenerCompact = this.mListenerCompact;
        if (listenerCompact != null) {
            String encryptedLocalTime = listenerCompact.getEncryptedLocalTime();
            if (!TextUtils.isEmpty(encryptedLocalTime)) {
                this.mMediaPlayer.setStringOption(472, encryptedLocalTime);
            }
        }
    }

    private void resetTexture() {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            return;
        }
        videoSurface.setIntOption(29, 0);
        this.mTextureSurface.setIntOption(31, 0);
        this.mTextureSurface.setIntOption(30, 0);
        setTextureLayoutMode(this.mLayoutType);
        if (this.mRotation != 0 || this.mIsMirrorVertical || this.mIsMirrorHorizontal) {
            this.mTextureSurface.setIntOption(25, 1);
        }
    }

    private void setDisplayVideoSize(int i10, int i11) {
        DisplayMode displayMode = this.mDisplayMode;
        if (displayMode != null && this.mUseTextureRender == 0 && i10 > 0 && i11 > 0) {
            displayMode.setVideoSize(i10, i11);
        }
    }

    private void setFloatOption2(int i10, float f10) {
        if (i10 != 359) {
            if (i10 != 526) {
                if (i10 != 535) {
                    if (i10 != 651) {
                        if (i10 != 722) {
                            if (i10 != 723) {
                                super.setFloatOption(i10, f10);
                            } else {
                                IVideoEventLogger iVideoEventLogger = this.mLogger;
                                if (iVideoEventLogger != null) {
                                    iVideoEventLogger.setVrDisplayFrameRate(f10);
                                }
                            }
                        } else {
                            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
                            if (iVideoEventLogger2 != null) {
                                iVideoEventLogger2.setVrDisplayDistance(f10);
                            }
                        }
                    } else {
                        VideoSurface videoSurface = this.mTextureSurface;
                        if (videoSurface != null) {
                            videoSurface.setFloatOption(4, f10);
                        }
                    }
                } else {
                    this.mNetworkSpeedReportSamplingRate = f10;
                    this.mLogger.setFloatOption(20, f10);
                }
            } else {
                this.mABRStartupBandwidthParameter = f10;
            }
        } else {
            this.mSpeedXDropFPSLimit = f10;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set float option key:" + i10 + ",value:" + f10);
    }

    private void setMediaBuffer2Abr(IABRModule iABRModule, IVideoModel iVideoModel) {
        List<VideoInfo> videoInfoList;
        long cacheFileSize;
        if (iVideoModel != null) {
            if ((this.mStandAlongAbrStartUp != 0 || this.mEnableABR != 0 || this.mEnableHlsABR != 0) && (videoInfoList = iVideoModel.getVideoInfoList()) != null && videoInfoList.size() != 0) {
                for (VideoInfo videoInfo : videoInfoList) {
                    if (videoInfo != null) {
                        String valueStr = videoInfo.getValueStr(15);
                        if (getConfigInt(584, this.mQuickGetFileCache ? 1 : 0) == 1) {
                            cacheFileSize = TTVideoEngine.quickGetCacheFileSize(valueStr);
                        } else {
                            cacheFileSize = TTVideoEngine.getCacheFileSize(valueStr);
                        }
                        iABRModule.addBufferInfo(videoInfo.getMediatype(), valueStr, videoInfo.getValueInt(3), cacheFileSize, videoInfo.getValueInt(38));
                    }
                }
                iABRModule.setIntOptionForKey(34, getConfigInt(334, this.mScreenWidth));
                iABRModule.setIntOptionForKey(35, getConfigInt(335, this.mScreenHeight));
                iABRModule.setIntOptionForKey(6, this.mPlayerViewWidth);
                iABRModule.setIntOptionForKey(7, this.mPlayerViewHeight);
                iABRModule.setStringOptionForKey(75, this.mTag);
                iABRModule.setStringOptionForKey(76, this.mSubTag);
                JSONObject vodJsonObject = SettingsHelper.helper().getVodJsonObject("abr_params");
                if (vodJsonObject != null) {
                    this.mAbrUserQualitySensitivity = (float) vodJsonObject.optDouble(PortraitEngine.LABEL_USER_QUALITY_SENSITIVITY);
                    this.mAbrUserEnterFullScreen = vodJsonObject.optInt("user_enter_full_screen");
                    iABRModule.setFloatOptionForKey(72, this.mAbrUserQualitySensitivity);
                    iABRModule.setIntOptionForKey(73, this.mAbrUserEnterFullScreen);
                    String logcatTag = logcatTag();
                    TTVideoEngineLog.i(logcatTag, "standalong abr start up set mAbrUserQualitySensitivity=" + this.mAbrUserQualitySensitivity + " mAbrUserEnterFullScreen=" + this.mAbrUserEnterFullScreen);
                }
            }
        }
    }

    private void setMediaInfo2Abr(IABRModule iABRModule, IVideoModel iVideoModel) {
        HashMap hashMap;
        VideoInfo videoInfo;
        HashMap hashMap2;
        VideoInfo videoInfo2;
        VideoInfo videoInfo3;
        List<VideoInfo> videoInfoList = iVideoModel.getVideoInfoList();
        if (videoInfoList != null && videoInfoList.size() != 0) {
            List<IVideoStream> arrayList = new ArrayList<>();
            List<IAudioStream> arrayList2 = new ArrayList<>();
            for (VideoInfo videoInfo4 : videoInfoList) {
                if (videoInfo4 != null) {
                    if (videoInfo4.getMediatype() == VideoRef.TYPE_VIDEO) {
                        ABRVideoStream aBRVideoStream = new ABRVideoStream();
                        String valueStr = videoInfo4.getValueStr(15);
                        aBRVideoStream.setStreamId(valueStr);
                        aBRVideoStream.setBandWidth(videoInfo4.getValueInt(3));
                        aBRVideoStream.setCodec(videoInfo4.getValueStr(8));
                        aBRVideoStream.setRealBitrate(videoInfo4.getValueInt(44));
                        int valueInt = videoInfo4.getValueInt(1);
                        int valueInt2 = videoInfo4.getValueInt(2);
                        aBRVideoStream.setWidth(valueInt);
                        aBRVideoStream.setHeight(valueInt2);
                        aBRVideoStream.setFrameRate(-1);
                        aBRVideoStream.setSegmentDuration(5000);
                        if (!TextUtils.isEmpty(valueStr)) {
                            arrayList.add(aBRVideoStream);
                        }
                        boolean booleanValue = this.mSRStrategy.videoInfoSupportSR(videoInfo4, videoInfoList).booleanValue();
                        int resolutionIndex = SRStrategy.getResolutionIndex(videoInfo4);
                        aBRVideoStream.setSupportSR(booleanValue ? 1 : 0);
                        aBRVideoStream.setResolution(resolutionIndex);
                    } else {
                        ABRAudioStream aBRAudioStream = new ABRAudioStream();
                        String valueStr2 = videoInfo4.getValueStr(15);
                        aBRAudioStream.setStreamId(valueStr2);
                        aBRAudioStream.setBandWidth(videoInfo4.getValueInt(3));
                        aBRAudioStream.setCodec(videoInfo4.getValueStr(8));
                        aBRAudioStream.setRealBitrate(videoInfo4.getValueInt(44));
                        aBRAudioStream.setSampleRate(-1);
                        aBRAudioStream.setSegmentDuration(5000);
                        if (!TextUtils.isEmpty(valueStr2)) {
                            arrayList2.add(aBRAudioStream);
                        }
                    }
                }
            }
            iABRModule.setMediaInfo(arrayList, arrayList2);
            String configString = getConfigString(538, this.mABR4GMaxResolutionQuality);
            Resolution valueOf = Resolution.valueOf(getConfigInt(502, this.mABR4GMaxResolutionIndex));
            HashMap hashMap3 = null;
            if (valueOf != null || !TextUtils.isEmpty(configString)) {
                if (!TextUtils.isEmpty(configString)) {
                    hashMap = new HashMap();
                    hashMap.put(32, configString);
                } else {
                    hashMap = null;
                }
                if (iVideoModel.getVideoInfo(valueOf, (Map<Integer, String>) hashMap, true) != null) {
                    iABRModule.setLongOptionForKey(2, videoInfo.getValueInt(3));
                }
            }
            Resolution valueOf2 = Resolution.valueOf(getConfigInt(536, this.mWifiDefaultResolutionIndex));
            String configString2 = getConfigString(539, this.mWifiDefaultResolutionQuality);
            if (valueOf2 != null || !TextUtils.isEmpty(configString2)) {
                if (!TextUtils.isEmpty(configString2)) {
                    hashMap2 = new HashMap();
                    hashMap2.put(32, configString2);
                } else {
                    hashMap2 = null;
                }
                if (iVideoModel.getVideoInfo(valueOf2, (Map<Integer, String>) hashMap2, true) != null) {
                    iABRModule.setLongOptionForKey(12, videoInfo2.getValueInt(3));
                }
            }
            Resolution valueOf3 = Resolution.valueOf(getConfigInt(537, this.mStartupMaxBitRateIndex));
            String configString3 = getConfigString(540, this.mStartupMaxBitRateQuality);
            if (valueOf3 != null || !TextUtils.isEmpty(configString3)) {
                if (!TextUtils.isEmpty(configString3)) {
                    hashMap3 = new HashMap();
                    hashMap3.put(32, configString3);
                }
                if (iVideoModel.getVideoInfo(valueOf3, (Map<Integer, String>) hashMap3, true) != null) {
                    iABRModule.setLongOptionForKey(13, videoInfo3.getValueInt(3));
                }
            }
            iABRModule.setIntOptionForKey(66, iVideoModel.getVideoRefInt(3));
            String videoRefStr = iVideoModel.getVideoRefStr(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS);
            if (!TextUtils.isEmpty(videoRefStr)) {
                iABRModule.setStringOptionForKey(69, videoRefStr);
            }
            iABRModule.setIntOptionForKey(82, this.mABREnableAggressivePortraitLowBit);
        }
    }

    private void setMediaPlayerOptions2() {
        super.setMediaPlayerOptions();
        _configNativeRenderRotationAdapt();
        _configNativeYV12Render();
        this.mPlayerConfigExecutor.execute(this.mEngineConfig.getItemMap(), 0);
        this.mMediaPlayer.setIntOption(619, this.mCurrentSubId);
        this.mMediaPlayer.setIntOption(82, this.mFailTryAgain);
        this.mMediaPlayer.setIntOption(81, this.mEngineConfig.getIntOption(11));
        this.mMediaPlayer.setIntOption(110, this.mEngineConfig.getIntOption(202));
        this.mMediaPlayer.setIntOption(36, this.mLayoutType);
        this.mMediaPlayer.setIntOption(9, this.mNetworkTimeout * TTVideoEngineInterface.PLAYER_TIME_BASE);
        this.mMediaPlayer.setIntOption(111, this.mUnsupportedSampleRatesInBinary);
        this.mMediaPlayer.setIntOption(79, this.mTestNetSpeed);
        this.mMediaPlayer.setIntOption(66, this.mTestNetSpeedDiff);
        this.mMediaPlayer.setIntOption(133, this.mDisableAccurateStart);
        int intOption = this.mEngineConfig.getIntOption(0);
        if (intOption != 0 && this.mCacheControlEnabled) {
            this.mMediaPlayer.setIntOption(24, intOption);
        }
        int renderType = EngineGlobalConfig.getInstance().getRenderType();
        if (renderType != -1) {
            this.mMediaPlayer.setIntOption(56, renderType);
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "set renderType from static context, renderType:" + renderType);
        } else {
            this.mMediaPlayer.setIntOption(56, this.mRenderType);
        }
        this.mMediaPlayer.setIntOption(211, this.mNotifyBufferingDirectly);
        if (EngineGlobalConfig.getInstance().getALogWriteAddr() > 0) {
            this.mMediaPlayer.setLongOption(231, EngineGlobalConfig.getInstance().getALogWriteAddr());
        }
        this.mMediaPlayer.setIntOption(223, this.mOutputLog);
        if (EngineGlobalConfig.getInstance().getOutputLogLevelPercise() >= 0) {
            this.mMediaPlayer.setIntOption(1501, EngineGlobalConfig.getInstance().getOutputLogLevelPercise());
            String logcatTag2 = logcatTag();
            TTVideoEngineLog.d(logcatTag2, "set media Player percise loglever:" + EngineGlobalConfig.getInstance().getOutputLogLevelPercise());
        } else {
            this.mMediaPlayer.setIntOption(984, EngineGlobalConfig.getInstance().getOutputLogLevel());
            String logcatTag3 = logcatTag();
            TTVideoEngineLog.d(logcatTag3, "set media Player loglever:" + EngineGlobalConfig.getInstance().getOutputLogLevel());
        }
        AudioProcessor audioProcessor = this.mAudioProcessor;
        if (audioProcessor != null) {
            ((MediaPlayerWrapper) this.mMediaPlayer).setAudioProcessor(audioProcessor);
        }
        if (this.mHLSChooseStreamCb != null) {
            this.mMediaPlayer.setTraitObject(7, new MyHLSChooseStreamInterface(this));
        }
        for (Map.Entry<Integer, TraitObject> entry : this.mTraitObjManager.getAll().entrySet()) {
            ((MediaPlayerWrapper) this.mMediaPlayer).setTraitObject(entry.getKey().intValue(), entry.getValue());
        }
        this.mMediaPlayer.setIntOption(48, this.mVoiceType);
        int i10 = this.mHardwareDropNonRef;
        if (i10 > 0) {
            this.mMediaPlayer.setIntOption(252, i10);
        }
        this.mMediaPlayer.setIntOption(149, this.mEnableOutletDropLimit ? 1 : 0);
        int enableCPPh265CodecOpt = EngineGlobalConfig.getInstance().getEnableCPPh265CodecOpt();
        if (enableCPPh265CodecOpt > 0) {
            this.mMediaPlayer.setIntOption(580, enableCPPh265CodecOpt);
        } else {
            this.mMediaPlayer.setIntOption(580, this.mEngineConfig.getIntOption(581));
        }
        if (this.mHardwareDecodeEnablePlayer2 == 1) {
            this.mMediaPlayer.setIntOption(254, this.mEngineConfig.getIntOption(333));
            this.mMediaPlayer.setIntOption(400, this.mEngineConfig.getIntOption(332));
            this.mMediaPlayer.setIntOption(90, this.mEngineConfig.getIntOption(120));
            this.mMediaPlayer.setIntOption(215, this.mEngineConfig.getIntOption(324));
            this.mMediaPlayer.setIntOption(216, this.mEngineConfig.getIntOption(323));
            int i11 = this.mUseQcomVpp;
            if (i11 == 1) {
                this.mMediaPlayer.setIntOption(212, i11);
                this.mMediaPlayer.setIntOption(213, this.mQcomVppLevel);
            }
            if (this.mEngineConfig.getIntOption(401) == 1) {
                this.mMediaPlayer.setIntOption(184, 1);
            }
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS));
            if (this.mEngineConfig.getIntOption(339) == 1) {
                this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, this.mEngineConfig.getIntOption(339));
            }
            this.mMediaPlayer.setIntOption(401, this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_DISABLE_MC_REUSE));
        }
        if (this.mHardwareDecodeEnablePlayer2 <= 0) {
            this.mMediaPlayer.setIntOption(4007, this.mEngineConfig.getIntOption(120));
        }
        int intOption2 = this.mEngineConfig.getIntOption(675);
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (intOption2 == -1) {
                intOption2 = iVideoModel.getVideoRefInt(230);
            }
            mediaPlayer.setIntOption(662, intOption2);
        } else {
            this.mMediaPlayer.setIntOption(662, intOption2);
        }
        if (this.mEngineConfig.getIntOption(956) != -1) {
            this.mMediaPlayer.setIntOption(1003, this.mEngineConfig.getIntOption(956));
            for (int i12 = 0; i12 < this.mPrivCodecName.size(); i12++) {
                this.mMediaPlayer.setStringOption(1002, this.mPrivCodecName.get(i12));
            }
        }
        int intOption3 = this.mEngineConfig.getIntOption(650);
        if ((intOption3 == 2 || intOption3 == 4) && this.mTextureSurface != null) {
            this.mEngineConfig.setIntOption(620, 1);
            this.mEngineConfig.setIntOption(613, 1);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 1);
            this.mMediaPlayer.setIntOption(333, 1);
            if (intOption3 == 4) {
                this.mIsMute = true;
            }
        }
        this.mMediaPlayer.setIntOption(333, this.mEngineConfig.getIntOption(613));
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        if (mediaPlayer2 instanceof MediaPlayerWrapper) {
            ((MediaPlayerWrapper) mediaPlayer2).setFrameMetadataListener(new MyFrameMetadataListener());
        }
        _setLoggerOptions2();
    }

    public static void setNativeMDLRegister() {
        mHasRegisterMdlProto = true;
    }

    private void setSRInitConfigWithBundle(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int i10 = bundle.getInt(TextureRenderKeys.KEY_SR_ALG_TYPE);
        String string = bundle.getString(TextureRenderKeys.KEY_KERNEL_BIN_PATH);
        String string2 = bundle.getString(TextureRenderKeys.KEY_OCL_MODLE_NAME);
        String string3 = bundle.getString(TextureRenderKeys.KEY_DSP_MODLE_NAME);
        int i11 = bundle.getInt(TextureRenderKeys.KEY_SR_BMF_BACKEND);
        int i12 = bundle.getInt(TextureRenderKeys.KEY_BMF_SCALE_TYPE);
        int i13 = bundle.getInt("pool_size");
        String string4 = bundle.getString(TextureRenderKeys.KEY_BMF_PROGRAM_CACHE_DIR);
        int i14 = bundle.getInt(TextureRenderKeys.KEY_IS_USE_BMF_COMPONENT);
        String string5 = bundle.getString(TextureRenderKeys.KEY_SR_LIB_PATH);
        int i15 = bundle.getInt(TextureRenderKeys.KEY_IS_USE_BMF_DIRECTINVOKE);
        Bundle bundle2 = bundle.getBundle(TextureRenderKeys.KEY_IS_EFFECT_INIT_CONFIG_BUNDLE);
        Bundle bundle3 = bundle.getBundle(TextureRenderKeys.KEY_IS_PROCESS_CONFIG_BUNDLE);
        this.mOldTextureAlgType = this.mTextureAlgType;
        this.mTextureAlgType = i10;
        this.mTextureSRBinPath = string;
        this.mTextureSROclModuleName = string2;
        this.mTextureSRDspModuleName = string3;
        this.mSrBackend = i11;
        this.mSrScaleType = i12;
        this.mSrPoolSize = i13;
        this.mProgramCacheDir = string4;
        this.mUseBmfComponent = i14;
        this.mSRLibPath = string5;
        this.mUseBmfDirectInvoke = i15;
        this.mBmfInitConfigBundle = bundle2;
        this.mBmfSrProcessParam = bundle3;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setSrAlgorithm(i10);
            this.mLogger.setSrScaleType(i12);
            this.mLogger.setEnableBmfSr(EngineGlobalConfig.getInstance().getEnableBmf());
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]sr init config = " + this.mTextureAlgType + "," + this.mTextureSRBinPath + "," + this.mTextureSROclModuleName + ", " + this.mTextureSRDspModuleName);
    }

    private void setSpeedTest() {
        if (this.mHaveSetSpeedTest) {
            return;
        }
        this.mTTSpeedListener = new TTTestSpeedListener(this.mEngineWrapper, StrategyCenter.sNetSpeedPredictor, StrategyCenter.sNetAbrSpeedPredictor);
        DataLoaderHelper.getDataLoader().setTestSpeedListener(this.mTTSpeedListener);
        this.mHaveSetSpeedTest = true;
        this.mLogger.setIntOption(17, TTVideoEngine.sTestSpeedSampleInterval);
        this.mLogger.setIntOption(18, TTVideoEngine.sIsReportTestSpeedInfo);
        this.mLogger.setIntOption(19, TTVideoEngine.sReportSpeedInfoMaxWindowSize);
        this.mLogger.setSpeedPredictorAlgoType(TTVideoEngine.sNetSpeedAbrPredictType);
    }

    private void setSurfaceDimensionsToTextureRender() {
        VideoSurface videoSurface = this.mTextureSurface;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        if (surfaceHolder != null && videoSurface != null) {
            Rect surfaceFrame = surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                TTVideoEngineLog.i(TAG, "setSurfaceDimensionsToTextureRender vs:" + videoSurface);
            }
            videoSurface.setSurfaceDimensions(surfaceFrame.right - surfaceFrame.left, surfaceFrame.bottom - surfaceFrame.top);
        }
    }

    private void setSurfaceHook(Surface surface) {
        setSurfaceHookTimeOut(surface, 0);
    }

    private void setSurfaceHookTimeOut(Surface surface, int i10) {
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setSurfaceHook, player:" + mediaPlayer + ", surface:" + surface + ", texturesurface:" + this.mTextureSurface + ", this:" + this + ", timeoutMs:" + i10);
        if (this.mEnableSurfaceHashmapJudgement > 0) {
            _judgeSurfaceHashMap(surface);
        }
        if (mediaPlayer != null) {
            this.mLogger.setSurfaceSourceType(IVideoEventLogger.SET_SURFACE_TYPE_EXTERNAL);
            this.mLogger.setSurfaceBegin();
            if ((getConfigInt(661, this.mFirstFrameOpenTexture) == 1 && this.mSurfaceHolder == null && !this.mPlayerFirstFrame) || (getConfigInt(587, this.mEnableForceDisableOESRender ? 1 : 0) == 1 && getConfigInt(588, this.mForceDisableOESRender ? 1 : 0) == 1)) {
                _doSetPlayerSurfaceTimeOut(surface, 1, i10);
            } else {
                String logcatTag2 = logcatTag();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("set surface to player = ");
                Surface surface2 = this.mTextureSurface;
                if (surface2 == null) {
                    surface2 = surface;
                }
                sb2.append(surface2);
                TTVideoEngineLog.i(logcatTag2, sb2.toString());
                Surface surface3 = this.mTextureSurface;
                if (surface3 == null) {
                    surface3 = surface;
                }
                _doSetPlayerSurfaceTimeOut(surface3, 0, i10);
                VideoSurface videoSurface = this.mTextureSurface;
                if (videoSurface != null && this.mTextureRenderer != null) {
                    videoSurface.updateRenderSurface(surface);
                    this.mLogger.useTextureRender(1);
                }
            }
            if (this.mEnableSurfaceHashmapJudgement > 0 && surface != null) {
                this.mSurfaceRecord = surface;
            }
            this.mLogger.setSurfaceEnd();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x000c, code lost:
        if (r4 != 2) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void setTextureLayoutMode(int r4) {
        /*
            r3 = this;
            com.ss.texturerender.VideoSurface r0 = r3.mTextureSurface
            if (r0 != 0) goto L5
            return
        L5:
            r1 = 0
            if (r4 == 0) goto L10
            r2 = 1
            if (r4 == r2) goto Lf
            r2 = 2
            if (r4 == r2) goto Lf
            goto L10
        Lf:
            r1 = r2
        L10:
            r4 = 26
            r0.setIntOption(r4, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl.setTextureLayoutMode(int):void");
    }

    private void setupTextureRender() {
        int i10;
        int i11;
        TTVideoEngineLog.i(logcatTag(), "[SRLog]setupTextureRender");
        int i12 = 0;
        this.mTextureRenderError = 0;
        this.mTextureRenderer = TextureRenderManager.getManager();
        TTVideoEngineLog.i(logcatTag(), "get texture renderer start");
        TextureRenderManager textureRenderManager = this.mTextureRenderer;
        if (textureRenderManager == null) {
            this.mUseTextureRender = 0;
            TTVideoEngineLog.e(logcatTag(), "couldn't get rendererManager");
            return;
        }
        textureRenderManager.setContext(this.mContext);
        if (mTextureLogListenerExt == null) {
            MyTextureLogListenerExt myTextureLogListenerExt = new MyTextureLogListenerExt();
            mTextureLogListenerExt = myTextureLogListenerExt;
            TextureRenderLog.setOnLogListenerExt(0, myTextureLogListenerExt);
        }
        boolean z10 = this.mUseSRTexture;
        this.mPlayBackUsedSR = z10;
        EffectConfig effectConfig = new EffectConfig();
        TextureRenderStrategy textureRenderStrategy = this.mTRSrategy;
        if (textureRenderStrategy != null) {
            this.mAsyncInitEffect = textureRenderStrategy.getAsyncEffect(effectConfig);
        }
        if (this.mEffectBundle.isEmpty() && this.mAsyncInitEffect) {
            if (z10 && this.mAsyncInitSR) {
                effectConfig.setEffectOpen(5, 1);
            }
            if (!this.mTextureRenderer.isEffectAvailable(effectConfig, 0)) {
                if (z10) {
                    this.mUseSRTexture = false;
                    return;
                }
                return;
            }
        } else if (this.mEffectBundle.isEmpty() && z10 && this.mAsyncInitSR && !this.mTextureRenderer.isSRRenderAvaiable(0)) {
            TTVideoEngineLog.i(TAG, "sr instance not exist, useSR:" + z10 + ", asyncInitSR:" + this.mAsyncInitSR);
            this.mUseSRTexture = false;
            this.mSRStrategy.onSRStatus(2, Error.SRInstanceNotExist);
            return;
        }
        this.mAsyncInitSR = false;
        this.mAsyncInitEffect = false;
        if (this.mTextureRenderer.isSRRenderAvaiable(0) && (this.mUseSRTexture || this.mPlayBackUsedSR)) {
            this.mPlayBackUsedSR = true;
            z10 = true;
        }
        VideoSurface initTextureRender = initTextureRender(z10);
        if (initTextureRender == null) {
            this.mUseTextureRender = 0;
            this.mTextureRenderErrorMsg = this.mTextureRenderer.getTextureError();
            TTVideoEngineLog.e(logcatTag(), "genOffscreenSurface failed = " + this.mTextureRenderErrorMsg);
            return;
        }
        initTextureRender.ignoreSRResolutionCheck(this.mSRIgnoreRes);
        initTextureRender.setOnDrawFrameListener(new VideoSurface.OnDrawFrameListener() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.1
            private int mUsingSr = 0;
            private int mUsingSharpe = 0;

            {
                TTVideoEngineImpl.this = this;
            }

            @Override // com.ss.texturerender.VideoSurface.OnDrawFrameListener
            public void onDraw(long j10) {
                if (TTVideoEngineImpl.this.mDecodedVideoFirstFrame) {
                    TTVideoEngineImpl.access$308(TTVideoEngineImpl.this);
                    if (TTVideoEngineImpl.this.mTextureSurface != null) {
                        int intOption = TTVideoEngineImpl.this.mTextureSurface.getIntOption(6);
                        int intOption2 = TTVideoEngineImpl.this.mTextureSurface.getIntOption(15);
                        if (this.mUsingSr != intOption || this.mUsingSharpe != intOption2) {
                            String logcatTag = TTVideoEngineImpl.this.logcatTag();
                            TTVideoEngineLog.d(logcatTag, "[SRLog]using sr:" + intOption + " frameCount:" + TTVideoEngineImpl.this.mFrameCount + "usingSharpe:" + intOption2);
                            this.mUsingSr = intOption;
                            this.mUsingSharpe = intOption2;
                            TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                            if (tTVideoEngineImpl.getConfigInt(4005, tTVideoEngineImpl.mEnableDecoderRenderVC2RenderLatency) > 0) {
                                if (this.mUsingSr <= 0 && this.mUsingSharpe <= 0) {
                                    TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "non sr latency mode");
                                    TTVideoEngineImpl.this.setIntOption(4006, 1);
                                } else {
                                    TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "sr latency mode");
                                    TTVideoEngineImpl.this.setIntOption(4006, 0);
                                }
                            }
                            TTVideoEngineImpl.this.mSRStrategy.onSRStatus(intOption, 0);
                        }
                    }
                    TTVideoEngineImpl tTVideoEngineImpl2 = TTVideoEngineImpl.this;
                    ListenerCompact listenerCompact = tTVideoEngineImpl2.mListenerCompact;
                    if (listenerCompact != null) {
                        listenerCompact.onFrameDraw(tTVideoEngineImpl2.mFrameCount, null);
                    }
                }
                if (!TTVideoEngineImpl.this.mTextureFirstFrame && TTVideoEngineImpl.this.mDecodedVideoFirstFrame) {
                    TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "recive first frame render from texture");
                    TTVideoEngineImpl.this.mTextureFirstFrame = true;
                }
                if (TTVideoEngineImpl.this.mPlayerFirstFrame) {
                    TTVideoEngineImpl tTVideoEngineImpl3 = TTVideoEngineImpl.this;
                    if (!tTVideoEngineImpl3.mTexNotifyFirstFrame && tTVideoEngineImpl3.mShouldPlay && tTVideoEngineImpl3.getConfigInt(661, tTVideoEngineImpl3.mFirstFrameOpenTexture) != 1) {
                        String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
                        TTVideoEngineLog.d(logcatTag2, "render start by texture, state =" + TTVideoEngineImpl.this.mPlaybackState);
                        TTVideoEngineImpl.this._renderStart();
                    }
                }
            }
        });
        initTextureRender.setOnErrorListener(new VideoSurface.OnErrorListener() { // from class: com.ss.ttvideoengine.k
            @Override // com.ss.texturerender.VideoSurface.OnErrorListener
            public final void onError(int i13) {
                TTVideoEngineImpl.this.lambda$setupTextureRender$1(i13);
            }
        });
        initTextureRender.setIntOption(34, this.mEnableTextureRenderNoRenderCheck);
        if (getConfigInt(4009, this.mTextureRenderForbidReuseVideoSurfaceTexture) > 0) {
            if (this.mHardwareDecodeEnablePlayer2 <= 0) {
                i11 = 1;
            } else {
                i11 = 0;
            }
            initTextureRender.setIntOption(116, i11);
        }
        if (getConfigInt(4010, this.mTextureRenderForbidForbidReuseTexture) > 0) {
            if (this.mHardwareDecodeEnablePlayer2 <= 0) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            initTextureRender.setIntOption(117, i10);
        }
        initTextureRender.setNoRenderListener(new VideoSurface.OnNoRenderListener() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.2
            {
                TTVideoEngineImpl.this = this;
            }

            @Override // com.ss.texturerender.VideoSurface.OnNoRenderListener
            public void onNoRenderEnd(int i13) {
                if (TTVideoEngineImpl.this.mLogger != null) {
                    TTVideoEngineImpl.this.mLogger.AVNoRenderEnd(0);
                }
            }

            @Override // com.ss.texturerender.VideoSurface.OnNoRenderListener
            public void onNoRenderStart(int i13) {
                if (TTVideoEngineImpl.this.mLogger != null) {
                    TTVideoEngineImpl.this.mLogger.AVNoRenderStart(0, VideoEventOneNoRender.unifyReason(i13));
                }
            }
        });
        initTextureRender.setOnSetSurfaceListener(new VideoSurface.OnSetSurfaceListener() { // from class: com.ss.ttvideoengine.l
            @Override // com.ss.texturerender.VideoSurface.OnSetSurfaceListener
            public final int onSetSurface(VideoSurface videoSurface, Surface surface) {
                int lambda$setupTextureRender$2;
                lambda$setupTextureRender$2 = TTVideoEngineImpl.this.lambda$setupTextureRender$2(videoSurface, surface);
                return lambda$setupTextureRender$2;
            }
        });
        initTextureRender.setIntOption(3, 1);
        if (getConfigInt(650, this.mOverlayMode) == 2) {
            i12 = 1;
        }
        initTextureRender.setIntOption(2, i12);
        initTextureRender.setIntOption(150, this.mEnableTextureRenderNativeWindow);
        initTextureRender.setIntOption(149, this.mEnableFrameCallbackInRenderThread);
        while (!this.mEffectBundle.isEmpty()) {
            initTextureRender.setEffect(this.mEffectBundle.poll());
        }
        TTVideoEngineLog.i(logcatTag(), "get a surface = " + initTextureRender);
        this.mTextureSurface = initTextureRender;
        String stringOption = initTextureRender.getStringOption(119);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setStringOption(161, stringOption);
        }
        if (shouldStartTextureRenderCheck()) {
            initTextureRender.setIntOption(33, 1);
        }
        setSurfaceDimensionsToTextureRender();
        resetTexture();
    }

    private boolean shouldStartTextureRenderCheck() {
        if (this.mTextureSurface != null && this.mRadioModeEnable != 1 && this.mEnableTextureRenderNoRenderCheck == 1 && !this.mSeeking && !this.mSeamSwitchingResolution && this.mLoadState == 1 && this.mPlaybackState == 1) {
            return true;
        }
        return false;
    }

    public void showLongLog(String str) {
        if (this.mEnableTmpLog != 1) {
            return;
        }
        if (str != null) {
            int length = str.length();
            int i10 = MAX_LOG_LINE_LENGTH;
            if (length > MAX_LOG_LINE_LENGTH) {
                int length2 = str.length();
                int i11 = 0;
                while (i10 < length2) {
                    TTVideoEngineLog.d(logcatTag(), str.substring(i11, i10));
                    i11 += MAX_LOG_LINE_LENGTH;
                    i10 = Math.min(i10 + MAX_LOG_LINE_LENGTH, length2);
                }
                TTVideoEngineLog.i(logcatTag(), str.substring(i11, i10));
                return;
            }
        }
        TTVideoEngineLog.i(logcatTag(), str);
    }

    void _configResolution(Resolution resolution, Map<Integer, String> map) {
        int i10;
        int i11;
        int i12;
        Map<Integer, String> map2;
        Resolution resolution2 = Resolution.Auto;
        if (resolution == resolution2 && !FeatureManager.hasPermission("abr")) {
            return;
        }
        if (this.mSRStrategy.getSRStrategyMode() == 0 && this.mHasFirstFrameShown) {
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null) {
                i12 = videoSurface.getIntOption(6);
            } else {
                i12 = 0;
            }
            if (this.currentResolution != resolution || ((((map2 = this.currentParams) != null || map != null) && (map2 == null || !map2.equals(map))) || 1 == i12)) {
                this.mSRStrategy.updateConfig(SRStrategyConfig.newConfig().resolutionChanged(true));
                this.mTextureSrOpen = 0;
                this.mSRNotUseReason = Error.ResolutionChanged;
                doOpenSR(0, Error.ResolutionChanged);
            }
        }
        if (getConfigInt(503, this.mABRSwitchMode) == 0 && this.mState == 3) {
            if (resolution == resolution2) {
                i10 = 1;
            } else {
                i10 = 0;
            }
            setIntOption(1001, i10);
            if (resolution == resolution2) {
                i11 = 1;
            } else {
                i11 = 0;
            }
            setIntOption(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR, i11);
        }
        if (resolution != resolution2) {
            int i13 = this.mState;
            if (i13 != 0 && i13 != 1 && !this.mIsPlayComplete) {
                if (i13 == 3) {
                    if (this.mLooperThread.checkEngineLooperThread(false)) {
                        this.mLooperThread.postEngineMessage(8, 0, 0, resolution, map);
                        return;
                    } else {
                        _switchToResolution(resolution, map);
                        return;
                    }
                }
                return;
            }
            this.lastResolution = resolution;
            this.currentResolution = resolution;
            this.currentParams = map;
            if (TextUtils.isEmpty(this.mDirectURL) && TextUtils.isEmpty(this.mLocalURL)) {
                this.mLogger.configResolution(_resolutionToString(resolution), _resolutionToString(resolution));
            }
        }
    }

    void _doClearTextureRef() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setSurface(null);
        }
        releaseTextureRenderRef();
    }

    void _doEnableABR() {
        if (this.mEnableABR != 1 && this.mEnableHlsABR != 1) {
            IABRModule iABRModule = this.mABRModule;
            if (iABRModule != null) {
                iABRModule.stop();
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                if (iVideoEventLogger != null) {
                    iVideoEventLogger.setIsEnableABR(0);
                    return;
                }
                return;
            }
            return;
        }
        if (this.mABRModule == null) {
            this.mABRModule = _initABRModule(this.mVideoModel);
        }
        if (this.mABRModule != null && isSupportSeamlessSwitch(this.mVideoModel)) {
            this.mABRModule.start(TTVideoEngine.sABRAlgorithmType, this.mABRTimerIntervalMilliseconds);
            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
            if (iVideoEventLogger2 != null) {
                iVideoEventLogger2.setIsEnableABR(1);
            }
        }
    }

    int _doGetCurrentPlaybackTime() {
        int i10;
        if (!this.mSeamSwitchingResolution && (this.mSeekMode != 0 || !this.mSeeking)) {
            i10 = _getPlayerTime();
        } else {
            i10 = this.mLastPlaybackTime;
        }
        _updateCurrentInfoToMDL(i10);
        return i10;
    }

    float _doGetFloatOption(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        try {
            if (i10 != 70) {
                if (i10 != 71) {
                    if (i10 != 474) {
                        return super.getFloatOption(i10);
                    }
                    TTTestSpeedListener tTTestSpeedListener = this.mTTSpeedListener;
                    if (tTTestSpeedListener == null) {
                        return 0.0f;
                    }
                    return tTTestSpeedListener.mAverageDownloadSpeed;
                } else if (mediaPlayer == null) {
                    return 0.0f;
                } else {
                    return mediaPlayer.getFloatOption(150, 0.0f);
                }
            }
            if (this.mContainerFPS <= 0.0f && mediaPlayer != null) {
                this.mContainerFPS = mediaPlayer.getFloatOption(151, 0.0f);
            }
            return this.mContainerFPS;
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return 0.0f;
        }
    }

    int _doGetIntOption(int i10) {
        long wiredPlayedDuration;
        int i11;
        VideoInfo videoInfo;
        if (this.mConfigCenterVersion > 0) {
            return _doGetIntOption2(i10);
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        try {
            if (i10 != 0) {
                if (i10 != 4) {
                    if (i10 != 58) {
                        if (i10 != 59) {
                            if (i10 != 83) {
                                if (i10 != 84) {
                                    if (i10 != 301) {
                                        if (i10 != 302) {
                                            if (i10 != 424) {
                                                if (i10 != 425) {
                                                    if (i10 != 700) {
                                                        if (i10 != 701) {
                                                            switch (i10) {
                                                                case 4:
                                                                    break;
                                                                case 26:
                                                                    return this.mReuseSocket;
                                                                case 29:
                                                                case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR /* 494 */:
                                                                    return this.mEnableABR;
                                                                case 33:
                                                                    return this.mBashEnabled ? 1 : 0;
                                                                case 52:
                                                                    if (this.mSeamSwitchingResolution) {
                                                                        return this.mLastPlaybackTime;
                                                                    }
                                                                    return _getPlayerTime();
                                                                case 160:
                                                                    return this.mDataLoaderEnable;
                                                                case 199:
                                                                    return this.mUseTextureRender;
                                                                case 313:
                                                                    return this.mCheckHijack ? 1 : 0;
                                                                case 343:
                                                                    if (mediaPlayer == null) {
                                                                        return -1;
                                                                    }
                                                                    return mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE, 0);
                                                                case 371:
                                                                    if (mediaPlayer == null) {
                                                                        return -1;
                                                                    }
                                                                    return mediaPlayer.getIntOption(540, -1);
                                                                case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_BARRAGE_MASK /* 499 */:
                                                                    return this.mEnableBarrageMask;
                                                                case 512:
                                                                    return this.mEnableAIBarrage;
                                                                case 525:
                                                                    return this.mABRSpeedPredictOutType;
                                                                case 530:
                                                                    return this.mCurrentSubId;
                                                                case 533:
                                                                    return this.mEnableSub;
                                                                case 596:
                                                                    return this.mSeekMode;
                                                                case 650:
                                                                    return this.mOverlayMode;
                                                                case 655:
                                                                    if (mediaPlayer == null) {
                                                                        return -1;
                                                                    }
                                                                    return mediaPlayer.getIntOption(541, 0);
                                                                case 660:
                                                                    i11 = this.mSRNotUseReason;
                                                                    if (i11 >= 0) {
                                                                        VideoSurface videoSurface = this.mTextureSurface;
                                                                        if (videoSurface == null) {
                                                                            if (this.mStarted) {
                                                                                i11 = Error.TextureRenderNotInit;
                                                                            } else {
                                                                                i11 = Error.PlayNotCall;
                                                                            }
                                                                        } else if (videoSurface.getIntOption(10) != 1) {
                                                                            TextureRenderManager textureRenderManager = this.mTextureRenderer;
                                                                            if (textureRenderManager != null && textureRenderManager.isSRRenderAvaiable(0)) {
                                                                                return Error.InitedUseOtherRender;
                                                                            }
                                                                            return Error.NotInit;
                                                                        } else if (this.mTextureSurface.getIntOption(6) == 1) {
                                                                            return 0;
                                                                        } else {
                                                                            i11 = Error.UserNotCallOpen;
                                                                        }
                                                                    }
                                                                    return i11;
                                                                case 667:
                                                                    IVideoModel iVideoModel = this.mVideoModel;
                                                                    if (iVideoModel != null && (videoInfo = iVideoModel.getVideoInfo(this.currentResolution, 0, (Map<Integer, String>) null)) != null) {
                                                                        i11 = videoInfo.getValueInt(41);
                                                                        return i11;
                                                                    }
                                                                    return 0;
                                                                case 1001:
                                                                    return this.mEnableHlsABR;
                                                                case 1071:
                                                                    if (this.mTextureSurface != null) {
                                                                        return 0;
                                                                    }
                                                                    if (mediaPlayer == null) {
                                                                        return -1;
                                                                    }
                                                                    return mediaPlayer.getIntOption(139, -1);
                                                                case TTVideoEngineInterface.PLAYER_OPTION_GET_FORMAT_TYPE /* 1403 */:
                                                                    IVideoEventLogger iVideoEventLogger = this.mLogger;
                                                                    if (iVideoEventLogger == null) {
                                                                        return -1;
                                                                    }
                                                                    return iVideoEventLogger.getIntOption(49);
                                                                case TTVideoEngineInterface.PLAYER_OPTION_INT_ALLOW_ALL_EXTENSIONS /* 1405 */:
                                                                    return this.mAllowAllExtensions;
                                                                case TTVideoEngineInterface.PLAYER_OPTION_INT_ENABLE_SOURCE_REFRESH_STRATEGY /* 1420 */:
                                                                    return this.mEnableSourceRefreshStrategy ? 1 : 0;
                                                                default:
                                                                    switch (i10) {
                                                                        case 40:
                                                                            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
                                                                            if (iVideoEventLogger2 == null) {
                                                                                return -1;
                                                                            }
                                                                            return iVideoEventLogger2.getCurDecoderBufferCount();
                                                                        case 41:
                                                                            IVideoEventLogger iVideoEventLogger3 = this.mLogger;
                                                                            if (iVideoEventLogger3 == null) {
                                                                                return -1;
                                                                            }
                                                                            wiredPlayedDuration = iVideoEventLogger3.getCurDecoderBufferAccuT();
                                                                            break;
                                                                        case 42:
                                                                            if (mediaPlayer == null) {
                                                                                return -1;
                                                                            }
                                                                            return mediaPlayer.getIntOption(153, -1);
                                                                        case 43:
                                                                            if (this.mVideoCodecType < 0 && mediaPlayer != null) {
                                                                                this.mVideoCodecType = mediaPlayer.getIntOption(157, -1);
                                                                            }
                                                                            return this.mVideoCodecType;
                                                                        case 44:
                                                                            if (this.mAudioCodecType < 0 && mediaPlayer != null) {
                                                                                this.mAudioCodecType = mediaPlayer.getIntOption(158, -1);
                                                                            }
                                                                            return this.mAudioCodecType;
                                                                        case 45:
                                                                            if (this.mVideoCodecID < 0 && mediaPlayer != null) {
                                                                                this.mVideoCodecID = mediaPlayer.getIntOption(141, -1);
                                                                            }
                                                                            return this.mVideoCodecID;
                                                                        case 46:
                                                                            if (this.mAudioCodecID < 0 && mediaPlayer != null) {
                                                                                this.mAudioCodecID = mediaPlayer.getIntOption(140, -1);
                                                                            }
                                                                            return this.mAudioCodecID;
                                                                        default:
                                                                            switch (i10) {
                                                                                case 256:
                                                                                    if (mediaPlayer == null) {
                                                                                        return -1;
                                                                                    }
                                                                                    return mediaPlayer.getIntOption(989, 0);
                                                                                case 257:
                                                                                    return this.mEnablePlaySpeedExtend;
                                                                                case 258:
                                                                                    return this.mEnableMasterM3u8Optimize;
                                                                                default:
                                                                                    return super.getIntOption(i10);
                                                                            }
                                                                    }
                                                            }
                                                        } else if (mediaPlayer == null) {
                                                            return -1;
                                                        } else {
                                                            return mediaPlayer.getIntOption(569, -1);
                                                        }
                                                    } else if (mediaPlayer == null) {
                                                        return -1;
                                                    } else {
                                                        return mediaPlayer.getIntOption(961, -1);
                                                    }
                                                } else {
                                                    return this.mHijackRetryBackupDNSType;
                                                }
                                            } else {
                                                return this.mHijackRetryMainDNSType;
                                            }
                                        } else {
                                            return this.mForbidP2P;
                                        }
                                    } else {
                                        return this.mP2PCDNType;
                                    }
                                } else {
                                    IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
                                    if (iPlayDurationManager == null) {
                                        return -1;
                                    }
                                    wiredPlayedDuration = iPlayDurationManager.getWirelessPlayedDuration(this.mContext);
                                }
                            } else {
                                IPlayDurationManager iPlayDurationManager2 = this.mPlayDuration;
                                if (iPlayDurationManager2 == null) {
                                    return -1;
                                }
                                wiredPlayedDuration = iPlayDurationManager2.getWiredPlayedDuration();
                            }
                            return (int) wiredPlayedDuration;
                        }
                        if (this.mAudioCodecProfile == -1 && mediaPlayer != null) {
                            this.mAudioCodecProfile = mediaPlayer.getIntOption(402, -1);
                        }
                        return this.mAudioCodecProfile;
                    }
                    if (this.mVideoCodecProfile == -1 && mediaPlayer != null) {
                        this.mVideoCodecProfile = mediaPlayer.getIntOption(403, -1);
                    }
                    return this.mVideoCodecProfile;
                }
                return this.mLayoutType;
            } else if (mediaPlayer == null) {
                return -1;
            } else {
                return mediaPlayer.getIntOption(24, -1);
            }
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return -1;
        }
    }

    int _doGetIntOption2(int i10) {
        long wiredPlayedDuration;
        int i11;
        VideoInfo videoInfo;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        try {
            if (i10 != 0) {
                if (i10 != 4) {
                    if (i10 != 58) {
                        if (i10 != 59) {
                            if (i10 != 83) {
                                if (i10 != 84) {
                                    if (i10 != 700) {
                                        if (i10 != 701) {
                                            switch (i10) {
                                                case 4:
                                                    break;
                                                case 29:
                                                case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR /* 494 */:
                                                    return this.mEnableABR;
                                                case 52:
                                                    if (this.mSeamSwitchingResolution) {
                                                        return this.mLastPlaybackTime;
                                                    }
                                                    return _getPlayerTime();
                                                case 199:
                                                    return this.mUseTextureRender;
                                                case 256:
                                                    if (mediaPlayer == null) {
                                                        return -1;
                                                    }
                                                    return mediaPlayer.getIntOption(989, 0);
                                                case 301:
                                                    return this.mP2PCDNType;
                                                case 343:
                                                    if (mediaPlayer == null) {
                                                        return -1;
                                                    }
                                                    return mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE, 0);
                                                case 371:
                                                    if (mediaPlayer == null) {
                                                        return -1;
                                                    }
                                                    return mediaPlayer.getIntOption(540, -1);
                                                case 530:
                                                    return this.mCurrentSubId;
                                                case 533:
                                                    return this.mEnableSub;
                                                case 596:
                                                    return this.mSeekMode;
                                                case 655:
                                                    if (mediaPlayer == null) {
                                                        return -1;
                                                    }
                                                    return mediaPlayer.getIntOption(541, 0);
                                                case 660:
                                                    i11 = this.mSRNotUseReason;
                                                    if (i11 >= 0) {
                                                        VideoSurface videoSurface = this.mTextureSurface;
                                                        if (videoSurface == null) {
                                                            if (this.mStarted) {
                                                                i11 = Error.TextureRenderNotInit;
                                                            } else {
                                                                i11 = Error.PlayNotCall;
                                                            }
                                                        } else if (videoSurface.getIntOption(10) != 1) {
                                                            TextureRenderManager textureRenderManager = this.mTextureRenderer;
                                                            if (textureRenderManager != null && textureRenderManager.isSRRenderAvaiable(0)) {
                                                                return Error.InitedUseOtherRender;
                                                            }
                                                            return Error.NotInit;
                                                        } else if (this.mTextureSurface.getIntOption(6) == 1) {
                                                            return 0;
                                                        } else {
                                                            i11 = Error.UserNotCallOpen;
                                                        }
                                                    }
                                                    return i11;
                                                case 667:
                                                    IVideoModel iVideoModel = this.mVideoModel;
                                                    if (iVideoModel != null && (videoInfo = iVideoModel.getVideoInfo(this.currentResolution, 0, (Map<Integer, String>) null)) != null) {
                                                        i11 = videoInfo.getValueInt(41);
                                                        return i11;
                                                    }
                                                    return 0;
                                                case 1001:
                                                    return this.mEnableHlsABR;
                                                case 1071:
                                                    if (this.mTextureSurface != null) {
                                                        return 0;
                                                    }
                                                    if (mediaPlayer == null) {
                                                        return -1;
                                                    }
                                                    return mediaPlayer.getIntOption(139, -1);
                                                case TTVideoEngineInterface.PLAYER_OPTION_GET_FORMAT_TYPE /* 1403 */:
                                                    IVideoEventLogger iVideoEventLogger = this.mLogger;
                                                    if (iVideoEventLogger == null) {
                                                        return -1;
                                                    }
                                                    return iVideoEventLogger.getIntOption(49);
                                                default:
                                                    switch (i10) {
                                                        case 40:
                                                            IVideoEventLogger iVideoEventLogger2 = this.mLogger;
                                                            if (iVideoEventLogger2 == null) {
                                                                return -1;
                                                            }
                                                            return iVideoEventLogger2.getCurDecoderBufferCount();
                                                        case 41:
                                                            IVideoEventLogger iVideoEventLogger3 = this.mLogger;
                                                            if (iVideoEventLogger3 == null) {
                                                                return -1;
                                                            }
                                                            wiredPlayedDuration = iVideoEventLogger3.getCurDecoderBufferAccuT();
                                                            break;
                                                        case 42:
                                                            if (mediaPlayer == null) {
                                                                return -1;
                                                            }
                                                            return mediaPlayer.getIntOption(153, -1);
                                                        case 43:
                                                            if (this.mVideoCodecType < 0 && mediaPlayer != null) {
                                                                this.mVideoCodecType = mediaPlayer.getIntOption(157, -1);
                                                            }
                                                            return this.mVideoCodecType;
                                                        case 44:
                                                            if (this.mAudioCodecType < 0 && mediaPlayer != null) {
                                                                this.mAudioCodecType = mediaPlayer.getIntOption(158, -1);
                                                            }
                                                            return this.mAudioCodecType;
                                                        case 45:
                                                            if (this.mVideoCodecID < 0 && mediaPlayer != null) {
                                                                this.mVideoCodecID = mediaPlayer.getIntOption(141, -1);
                                                            }
                                                            return this.mVideoCodecID;
                                                        case 46:
                                                            if (this.mAudioCodecID < 0 && mediaPlayer != null) {
                                                                this.mAudioCodecID = mediaPlayer.getIntOption(140, -1);
                                                            }
                                                            return this.mAudioCodecID;
                                                        default:
                                                            return super.getIntOption(i10);
                                                    }
                                            }
                                        } else if (mediaPlayer == null) {
                                            return -1;
                                        } else {
                                            return mediaPlayer.getIntOption(569, -1);
                                        }
                                    } else if (mediaPlayer == null) {
                                        return -1;
                                    } else {
                                        return mediaPlayer.getIntOption(961, -1);
                                    }
                                } else {
                                    IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
                                    if (iPlayDurationManager == null) {
                                        return -1;
                                    }
                                    wiredPlayedDuration = iPlayDurationManager.getWirelessPlayedDuration(this.mContext);
                                }
                            } else {
                                IPlayDurationManager iPlayDurationManager2 = this.mPlayDuration;
                                if (iPlayDurationManager2 == null) {
                                    return -1;
                                }
                                wiredPlayedDuration = iPlayDurationManager2.getWiredPlayedDuration();
                            }
                            return (int) wiredPlayedDuration;
                        }
                        if (this.mAudioCodecProfile == -1 && mediaPlayer != null) {
                            this.mAudioCodecProfile = mediaPlayer.getIntOption(402, -1);
                        }
                        return this.mAudioCodecProfile;
                    }
                    if (this.mVideoCodecProfile == -1 && mediaPlayer != null) {
                        this.mVideoCodecProfile = mediaPlayer.getIntOption(403, -1);
                    }
                    return this.mVideoCodecProfile;
                }
                return this.mLayoutType;
            } else if (mediaPlayer == null) {
                return -1;
            } else {
                return mediaPlayer.getIntOption(24, -1);
            }
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return -1;
        }
    }

    long _doGetLongOption(int i10) {
        if (this.mConfigCenterVersion > 0) {
            return _doGetLongOption2(i10);
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        try {
            if (i10 != 81) {
                if (i10 != 315) {
                    if (i10 != 461) {
                        if (i10 != 950) {
                            if (i10 != 614) {
                                if (i10 != 615) {
                                    switch (i10) {
                                        case 60:
                                            if (this.mBitrate < 0 && mediaPlayer != null) {
                                                this.mBitrate = mediaPlayer.getLongOption(171, 0L);
                                            }
                                            return this.mBitrate;
                                        case 61:
                                            if (mediaPlayer == null) {
                                                return -1L;
                                            }
                                            return mediaPlayer.getLongOption(73, 0L);
                                        case 62:
                                            if (mediaPlayer == null) {
                                                return -1L;
                                            }
                                            return mediaPlayer.getLongOption(72, 0L);
                                        case 63:
                                            if (mediaPlayer == null) {
                                                return -1L;
                                            }
                                            return mediaPlayer.getLongOption(63, -1L);
                                        case 64:
                                            if (mediaPlayer == null) {
                                                return -1L;
                                            }
                                            return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE, -1L);
                                        default:
                                            return super.getLongOption(i10);
                                    }
                                }
                                long j10 = this.mRenderStartTime;
                                String logcatTag = logcatTag();
                                TTVideoEngineLog.i(logcatTag, "get mRenderStartTime:" + j10);
                                return j10;
                            }
                            long j11 = this.mPlayStartTime;
                            String logcatTag2 = logcatTag();
                            TTVideoEngineLog.i(logcatTag2, "get mPlayStartTime:" + j11);
                            return j11;
                        }
                        return this.mSendEngineMsgTimeout;
                    }
                    return this.mVideoPreloadSize;
                } else if (mediaPlayer == null) {
                    return -1L;
                } else {
                    return mediaPlayer.getLongOption(46, 0L);
                }
            } else if (mediaPlayer == null) {
                return -1L;
            } else {
                long longOption = mediaPlayer.getLongOption(240, 0L);
                String logcatTag3 = logcatTag();
                TTVideoEngineLog.i(logcatTag3, "get value of KeyIsLastBufferSizeU64: " + longOption);
                return longOption;
            }
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return -1L;
        }
    }

    long _doGetLongOption2(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        try {
            if (i10 != 81) {
                if (i10 != 315) {
                    if (i10 != 461) {
                        if (i10 != 614) {
                            if (i10 != 615) {
                                switch (i10) {
                                    case 60:
                                        if (this.mBitrate < 0 && mediaPlayer != null) {
                                            this.mBitrate = mediaPlayer.getLongOption(171, 0L);
                                        }
                                        return this.mBitrate;
                                    case 61:
                                        if (mediaPlayer == null) {
                                            return -1L;
                                        }
                                        return mediaPlayer.getLongOption(73, 0L);
                                    case 62:
                                        if (mediaPlayer == null) {
                                            return -1L;
                                        }
                                        return mediaPlayer.getLongOption(72, 0L);
                                    case 63:
                                        if (mediaPlayer == null) {
                                            return -1L;
                                        }
                                        return mediaPlayer.getLongOption(63, -1L);
                                    case 64:
                                        if (mediaPlayer == null) {
                                            return -1L;
                                        }
                                        return mediaPlayer.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RATE, -1L);
                                    default:
                                        return super.getLongOption(i10);
                                }
                            }
                            long j10 = this.mRenderStartTime;
                            String logcatTag = logcatTag();
                            TTVideoEngineLog.i(logcatTag, "get mRenderStartTime:" + j10);
                            return j10;
                        }
                        long j11 = this.mPlayStartTime;
                        String logcatTag2 = logcatTag();
                        TTVideoEngineLog.i(logcatTag2, "get mPlayStartTime:" + j11);
                        return j11;
                    }
                    return this.mVideoPreloadSize;
                } else if (mediaPlayer == null) {
                    return -1L;
                } else {
                    return mediaPlayer.getLongOption(46, 0L);
                }
            } else if (mediaPlayer == null) {
                return -1L;
            } else {
                long longOption = mediaPlayer.getLongOption(240, 0L);
                String logcatTag3 = logcatTag();
                TTVideoEngineLog.i(logcatTag3, "get value of KeyIsLastBufferSizeU64: " + longOption);
                return longOption;
            }
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return -1L;
        }
    }

    JSONObject _doGetPlayErrorInfo() {
        String str;
        try {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null && mediaPlayer.getIntOption(5000, 0) != 0) {
                JSONObject jSONObject = new JSONObject();
                String stringOption = this.mMediaPlayer.getStringOption(5001);
                if (this.mMediaPlayer.getIntOption(26, 1) == 1) {
                    str = "breakpad crash";
                } else {
                    str = "simple crash";
                }
                jSONObject.put(str, stringOption);
                return jSONObject;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    String _doGetStringOption(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        String str = "";
        try {
            if (i10 != 80) {
                if (i10 != 82) {
                    if (i10 != 462) {
                        if (i10 != 477) {
                            if (i10 != 716) {
                                if (i10 != 957) {
                                    return super.getStringOption(i10);
                                }
                                if (mediaPlayer == null) {
                                    return "";
                                }
                                return mediaPlayer.getStringOption(1002);
                            } else if (mediaPlayer == null) {
                                return "";
                            } else {
                                return mediaPlayer.getStringOption(473);
                            }
                        }
                        IVideoEventLogger iVideoEventLogger = this.mLogger;
                        if (iVideoEventLogger == null) {
                            return "";
                        }
                        return iVideoEventLogger.getStringOption(47);
                    }
                    Map<String, IpInfo> map = this.urlIPMap;
                    if (map == null) {
                        return "";
                    }
                    for (Map.Entry<String, IpInfo> entry : map.entrySet()) {
                        String key = entry.getKey();
                        IpInfo value = entry.getValue();
                        if (key != null && value != null) {
                            HashMap hashMap = new HashMap();
                            hashMap.put(DNSParser.DNS_RESULT_IP, value.f37055ip);
                            hashMap.put("dns", value.dns);
                            hashMap.put("dns_cache_open", Integer.valueOf(value.isDNSCacheOpen));
                            hashMap.put("server_dns_open", Integer.valueOf(value.isServerDNSOpen));
                            hashMap.put("url_desc", value.urlDesc);
                            str = hashMap.toString();
                        }
                    }
                    return str;
                } else if (TTVideoEngine.isForceUsePluginPlayer()) {
                    return MediaPlayerWrapper.getPluginVersion();
                } else {
                    return TTPlayerConfiger.getValue(14, "");
                }
            } else if (mediaPlayer == null) {
                return "";
            } else {
                return mediaPlayer.getStringOption(142);
            }
        } catch (Throwable th2) {
            TTVideoEngineLog.d(th2);
            return "";
        }
    }

    void _doHeartBeatThings() {
        _syncPlayInfoToMdl();
        if (getConfigInt(160, this.mDataLoaderEnable) > 0) {
            DataLoaderHelper.getDataLoader().updateCurrentNetStatus();
        }
        this.mLooperThread.postEngineMessageDelay(24, getConfigInt(657, this.mHeartBeatInterval));
    }

    boolean _doIsMute() {
        return super.isMute();
    }

    boolean _doIsSystemPlayer() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            int i10 = this.mPlayerType;
            if (i10 == 2 || i10 == 5) {
                return true;
            }
            return false;
        } else if (mediaPlayer.isOSPlayer() || mediaPlayer.getPlayerType() == 5) {
            return true;
        } else {
            return false;
        }
    }

    void _doMetrics() {
        int configInt;
        if ((!TTVideoEngine.sColdStartOptimize || this.mIsColdStart != 1) && (configInt = getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_METRICS_ABILITY, this.mMetrcisAbility)) > 0) {
            PlayerMetrics playerMetrics = PlayerMetrics.getInstance();
            playerMetrics.setMetricsAbilityOption(configInt);
            playerMetrics.setMetricsIntervalOption(getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_METRICS_INTERVAL, this.mMetrcisInterVal));
            playerMetrics.startMetric(this.mContext);
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.addFeature("metrics", 1);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void _doParseDNSComplete(java.lang.String r13) {
        /*
            r12 = this;
            boolean r0 = r12.mShouldStop
            if (r0 == 0) goto Le
            java.lang.String r13 = r12.logcatTag()
            java.lang.String r0 = "_doParseDNSComplete should stop"
            com.ss.ttvideoengine.utils.TTVideoEngineLog.w(r13, r0)
            return
        Le:
            com.ss.ttvideoengine.log.IVideoEventLogger r0 = r12.mLogger
            if (r0 == 0) goto L1a
            long r1 = java.lang.System.currentTimeMillis()
            r3 = 0
            r0.setDNSParseTime(r1, r3)
        L1a:
            com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r0 = r12.mURLInfo
            java.lang.String r0 = r0.hostURL
            android.net.Uri r0 = android.net.Uri.parse(r0)
            java.lang.String r0 = r0.getHost()
            java.lang.String r1 = r12.logcatTag()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "dns success, host:"
            r2.append(r3)
            r2.append(r0)
            java.lang.String r3 = ", ip:"
            r2.append(r3)
            r2.append(r13)
            java.lang.String r2 = r2.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.i(r1, r2)
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            java.lang.String r2 = ""
            if (r1 != 0) goto L65
            com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r1 = r12.mURLInfo     // Catch: java.lang.Exception -> L59
            java.lang.String r1 = r1.hostURL     // Catch: java.lang.Exception -> L59
            if (r1 == 0) goto L65
            java.lang.String r1 = r1.replaceFirst(r0, r13)     // Catch: java.lang.Exception -> L59
            goto L66
        L59:
            r1 = move-exception
            java.lang.String r3 = r12.logcatTag()
            java.lang.String r1 = r1.toString()
            com.ss.ttvideoengine.utils.TTVideoEngineLog.e(r3, r1)
        L65:
            r1 = r2
        L66:
            com.ss.ttvideoengine.net.DNSParser r3 = r12.mDNSParser
            if (r3 == 0) goto L6e
            java.lang.String r2 = r3.getTypeStr()
        L6e:
            r6 = r2
            java.util.Map<java.lang.String, com.ss.ttvideoengine.TTVideoEngineImpl$IpInfo> r2 = r12.urlIPMap
            com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r3 = r12.mURLInfo
            java.lang.String r3 = r3.hostURL
            java.lang.Object r2 = r2.get(r3)
            com.ss.ttvideoengine.TTVideoEngineImpl$IpInfo r2 = (com.ss.ttvideoengine.TTVideoEngineImpl.IpInfo) r2
            if (r2 == 0) goto L82
            r2.f37055ip = r13
            r2.dns = r6
            goto La1
        L82:
            java.util.Map<java.lang.String, com.ss.ttvideoengine.TTVideoEngineImpl$IpInfo> r2 = r12.urlIPMap
            com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r3 = r12.mURLInfo
            java.lang.String r10 = r3.hostURL
            com.ss.ttvideoengine.TTVideoEngineImpl$IpInfo r11 = new com.ss.ttvideoengine.TTVideoEngineImpl$IpInfo
            com.ss.ttvideoengine.net.DNSParser r3 = r12.mDNSParser
            boolean r7 = r3.getIsUseDNSCache()
            com.ss.ttvideoengine.net.DNSParser r3 = r12.mDNSParser
            boolean r8 = r3.getIsUseServerDNS()
            java.lang.String r9 = ""
            r3 = r11
            r4 = r12
            r5 = r13
            r3.<init>(r5, r6, r7, r8, r9)
            r2.put(r10, r11)
        La1:
            r12._updateVU()
            com.ss.ttvideoengine.TTVideoEngineImpl$URLInfo r2 = r12.mURLInfo
            java.lang.String r2 = r2.hostURL
            r12._logFirstURL(r2)
            r12._logFirstHost(r0)
            r12._logFirstIP(r13)
            r12._playVideo(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._doParseDNSComplete(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:1002:0x0cd4  */
    /* JADX WARN: Removed duplicated region for block: B:1011:0x0d23  */
    /* JADX WARN: Removed duplicated region for block: B:1033:0x0dda  */
    /* JADX WARN: Removed duplicated region for block: B:1062:0x0e8f  */
    /* JADX WARN: Removed duplicated region for block: B:1063:0x0e97  */
    /* JADX WARN: Removed duplicated region for block: B:1065:0x0ea0  */
    /* JADX WARN: Removed duplicated region for block: B:1072:0x0eb7  */
    /* JADX WARN: Removed duplicated region for block: B:1199:0x11e7 A[LOOP:6: B:1197:0x11e4->B:1199:0x11e7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:1207:0x1253  */
    /* JADX WARN: Removed duplicated region for block: B:1209:0x1262  */
    /* JADX WARN: Removed duplicated region for block: B:1257:0x0b2b A[EDGE_INSN: B:1257:0x0b2b->B:931:0x0b2b ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:914:0x0ae5  */
    /* JADX WARN: Removed duplicated region for block: B:942:0x0b4b  */
    /* JADX WARN: Removed duplicated region for block: B:943:0x0b54  */
    /* JADX WARN: Removed duplicated region for block: B:947:0x0b6e  */
    /* JADX WARN: Removed duplicated region for block: B:950:0x0b90  */
    /* JADX WARN: Removed duplicated region for block: B:953:0x0baf  */
    /* JADX WARN: Removed duplicated region for block: B:965:0x0c66  */
    /* JADX WARN: Removed duplicated region for block: B:971:0x0c7e  */
    /* JADX WARN: Removed duplicated region for block: B:972:0x0c81  */
    /* JADX WARN: Removed duplicated region for block: B:975:0x0c85  */
    /* JADX WARN: Removed duplicated region for block: B:999:0x0cce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void _doParseIPAddress(com.ss.ttvideoengine.model.IVideoModel r51, com.ss.ttvideoengine.utils.Error r52) {
        /*
            Method dump skipped, instructions count: 4832
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._doParseIPAddress(com.ss.ttvideoengine.model.IVideoModel, com.ss.ttvideoengine.utils.Error):void");
    }

    void _doPause() {
        this.mShouldPlay = false;
        this.mLogger.pause();
        _pause();
        this.mPauseStartT = SystemClock.elapsedRealtime();
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.stop();
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(33, 0);
        }
    }

    void _doPlay() {
        _initUsingHandle();
        boolean z10 = true;
        this.mShouldPlay = true;
        this.mShouldStop = false;
        this.mUserStopped = false;
        this.mAccumulatedErrorCount = 0;
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            iVideoModel.setUpResolution(this.mResolutionMap);
        }
        if (this.mHasComplete) {
            this.mLogger.setIntOption(14, 1);
            this.mHasComplete = false;
        }
        EngineInstanceHolder.getInstance().add(this.mEngineWrapper);
        if (!this.mIsStartPlayAutomatically && this.mPlayTime <= 0 && !this.mPrepared) {
            z10 = false;
        }
        _play(z10);
        this.mIsPlayComplete = false;
    }

    void _doPrepare() {
        this.mIsStartPlayAutomatically = false;
        this.mShouldPlay = false;
        this.mShouldStop = false;
        this.mUserStopped = false;
        this.mAccumulatedErrorCount = 0;
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            iVideoModel.setUpResolution(this.mResolutionMap);
        }
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setLoggerTimes(65);
        }
        _play(false);
        this.mIsPlayComplete = false;
    }

    void _doRefreshCpu() {
        if ((!TTVideoEngine.sColdStartOptimize || this.mIsColdStart != 1) && getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_METRICS_ABILITY, this.mMetrcisAbility) > 0) {
            PlayerMetrics playerMetrics = PlayerMetrics.getInstance();
            playerMetrics.setMetricsAbilityOption(getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_METRICS_ABILITY, this.mMetrcisAbility));
            playerMetrics.setMetricsIntervalOption(getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_METRICS_INTERVAL, this.mMetrcisInterVal));
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                playerMetrics.beginCpuRefresh(mediaPlayer.getStringOption(MediaPlayer.MEDIA_PLAYER_OPTION_THREAD_TIDS));
                playerMetrics.refreshWhenBegin();
            }
        }
    }

    void _doRelease() {
        EngineThreadPool.addExecuteTask(new VideoInfoCollector.myVideoCollectorUnregister(this.mSerial));
        this.mShouldPlay = false;
        _stop(false, 1);
        releaseTextureRenderRef();
        this.mSourceRefreshStrategy.release();
        this.mCodecStrategyAdapter.release();
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.release();
            } catch (Exception unused) {
            } catch (Throwable th2) {
                this.mMediaPlayer = null;
                throw th2;
            }
            this.mMediaPlayer = null;
            _clearSurface();
        }
        IABRModule iABRModule = this.mABRModule;
        if (iABRModule != null) {
            iABRModule.release();
            this.mABRModule = null;
        }
        _doReleaseCommon();
    }

    void _doReleaseAsync() {
        if (!isInHousePlayer()) {
            release();
            return;
        }
        EngineThreadPool.addExecuteTask(new VideoInfoCollector.myVideoCollectorUnregister(this.mSerial));
        this.mShouldPlay = false;
        _stop(false, 2);
        if (this.mMediaPlayer != null) {
            if (getConfigInt(951, this.mSurfaceHolderByKernel) != 0) {
                if (this.mSurfaceHolder != null) {
                    this.mMediaPlayer.setDisplay(null);
                }
                if (this.mSurface != null) {
                    setSurfaceHook(null);
                }
            } else if (this.mSurfaceHolder != null || this.mSurface != null) {
                setSurfaceHook(null);
            }
            releaseTextureRenderRef();
        }
        this.mSourceRefreshStrategy.release();
        this.mCodecStrategyAdapter.release();
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
            this.mAsyncPlayer = null;
        }
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        IABRModule iABRModule = this.mABRModule;
        this.mMediaPlayer = null;
        this.mABRModule = null;
        if (mediaPlayer2 != null) {
            EngineThreadPool.addExecuteTask(new MyReleaseRunnable(this, mediaPlayer2, iABRModule));
        }
        _doReleaseCommon();
    }

    void _doReleaseCommon() {
        TTVideoEngineMonitor tTVideoEngineMonitor = this.mEngineStateMonitor;
        if (tTVideoEngineMonitor != null) {
            tTVideoEngineMonitor.stopObserve(hashCode());
        }
        EngineInstanceHolder.getInstance().remove(this.mEngineWrapper);
        NetUtils.release(this.mContext);
        mdlFetcherRemove();
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.release();
        }
        this.mTraitObjManager.removeAll();
        this.mAudioProcessor = null;
        this.mPreloaderItem = null;
        this.mIsPreloaderItem = false;
        this.mFileKey = null;
        this.mMaskInfoInterface = null;
        this.mAIBarrageInfoInterface = null;
        this.mSubInfoInterface = null;
        this.mSubPathInfo = null;
        this.mHasSetAESrcPeak = false;
        this.mHasSetAESrcLoudness = false;
        this.mHasSetAEVolumeInfo = false;
        this.mSRNotUseReason = 0;
        this.mDisplayMode = null;
        _dataLoaderRemoveEngineRef();
        IntertrustDrmHelper intertrustDrmHelper = this.mIntertrustDrmHelper;
        if (intertrustDrmHelper != null) {
            intertrustDrmHelper.release();
            this.mIntertrustDrmHelper = null;
        }
        this.mState = 5;
        this.mLooperThread.closeEngineLooperThread();
    }

    void _doResetByPool() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_doResetByPool, Engine:" + this.mEngineWrapper);
        _ShutdownOldSource();
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setIntOption(1302, 0);
        }
        TTVideoEngineLog.i(logcatTag(), "templog:resetWhenReuse");
        resetAllOptions();
        TTVideoEngineMonitor tTVideoEngineMonitor = this.mEngineStateMonitor;
        if (tTVideoEngineMonitor != null) {
            tTVideoEngineMonitor.stopObserve(hashCode());
        }
        TTVideoEnginePool.getInstance().resetFinish(this.mEngineWrapper);
    }

    void _doSetAsyncInit(boolean z10, int i10) {
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        this.mAsyncInitEnable = z10 ? 1 : 0;
        if (this.mVideoModel != null) {
            i10 = -1;
        }
        this.mCodecId = i10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setAsyncInit enable:" + this.mAsyncInitEnable + " codecid:" + this.mCodecId);
        if (mediaPlayer != null && this.mHardwareDecodeEnablePlayer2 == 1) {
            mediaPlayer.setIntOption(181, this.mAsyncInitEnable);
            mediaPlayer.setIntOption(182, this.mCodecId);
            this.mLogger.useAsyncInit(this.mAsyncInitEnable, this.mCodecId);
        }
    }

    void _doSetCustomHeader(String str, String str2) {
        Map<String, String> map;
        if (!TextUtils.isEmpty(str) && (map = this.mHeaders) != null) {
            map.put(str.substring(0, 1).toUpperCase() + str.substring(1), str2);
        }
    }

    void _doSetDataSource(FileDescriptor fileDescriptor) {
        _ShutdownOldSource();
        this.mPlayFd = fileDescriptor;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setSourceType(6, null);
        }
    }

    void _doSetDirectURL(String str, String[] strArr) {
        if (!Arrays.equals(this.mOriginalUrls, strArr) && (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 1L) || this.mEngineHasUsed)) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "set direct url:" + str);
            _ShutdownOldSource();
            this.mState = 0;
            this.mFirstURL = true;
            this.mFirstIP = true;
            this.mFirstHost = true;
            this.mUserStopped = false;
            this.mLastPlaybackTime = 0;
            this.mAPIString = null;
        }
        this.mEngineHasUsed = true;
        this.mStarted = false;
        this.mIsDirectURL = true;
        this.mDirectURL = str;
        this.mDirectUrlSrc = str;
        this.mOriginalUrls = strArr;
        this.mBufferingStartT = 0L;
        this.mFileKey = null;
        Resolution resolution = Resolution.Undefine;
        this.currentResolution = resolution;
        this.mLogger.configResolution(_resolutionToString(resolution), "");
        this.mLogger.setSourceType(1, "");
    }

    void _doSetDirectUrlUseDataLoader(String[] strArr, String str, @Nullable String str2, long j10, String[] strArr2) {
        String str3;
        if (strArr != null && strArr.length != 0 && !TextUtils.isEmpty(strArr[0])) {
            this.mInitialUrlBeforeMdlProxy = strArr[0];
            if (TextUtils.isEmpty(str)) {
                _doSetDirectURL(strArr[0], strArr);
                this.mLogger.setIntOption(174, IVideoEventLogger.MdlInvalidCode.EmptyKey.ordinal());
            } else if (getConfigInt(160, this.mDataLoaderEnable) == 0) {
                _doSetDirectURL(strArr[0], strArr);
                this.mLogger.setIntOption(174, IVideoEventLogger.MdlInvalidCode.OptionNotSet.ordinal());
            } else {
                _resetUsingDataLoaderField();
                TTVideoEngineLog.i(logcatTag(), "setDirectUrlUseDataLoader key = " + str + ", videoId = " + str2);
                String _mdlUrl = _mdlUrl(str, str2, (long) getConfigInt(161, this.mLimitMDLCacheSize), strArr, Resolution.Undefine, this.mDecryptionKey, null, null, null, j10, strArr2, this.mRetryErrCnt);
                if (!this.mFileHashs.contains(str)) {
                    this.mFileHashs.add(str);
                }
                if (TextUtils.isEmpty(_mdlUrl)) {
                    _doSetDirectURL(strArr[0], strArr);
                    str3 = str2;
                } else {
                    str3 = str2;
                    this.mVideoID = str3;
                    if (getConfigInt(606, this.mEnableDirectUrlCheck) == 1) {
                        for (String str4 : strArr) {
                            if (!URLUtil.isValidUrl(str4)) {
                            }
                        }
                        TTVideoEngineLog.e(logcatTag(), "invalid urls list, all url invalid");
                        receivedError(new Error(Error.VideoOwnPlayer, (int) Error.InvalidUrl, "Direct url is invalid url."));
                        return;
                    }
                    _doSetDirectURL(_mdlUrl, strArr);
                    StrategyHelper.buildMediaInfo(this.mMediaInfoMap, str3, str, strArr);
                }
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                if (iVideoEventLogger != null) {
                    iVideoEventLogger.setProxyUrl(_mdlUrl);
                }
                this.mVideoID = str3;
                return;
            }
            str3 = str2;
            this.mVideoID = str3;
            return;
        }
        TTVideoEngineLog.e(logcatTag(), "invalid urls list, it is empty");
    }

    /* JADX WARN: Removed duplicated region for block: B:2129:0x0d6a  */
    /* JADX WARN: Removed duplicated region for block: B:2342:0x10ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void _doSetIntOption(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 6686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._doSetIntOption(int, int):void");
    }

    void _doSetIntOption2(int i10, int i11) {
        boolean z10;
        int i12 = i11;
        boolean z11 = true;
        boolean z12 = true;
        boolean z13 = true;
        boolean z14 = true;
        boolean z15 = true;
        boolean z16 = true;
        int i13 = 1;
        boolean z17 = true;
        boolean z18 = true;
        switch (i10) {
            case 4:
                this.mLayoutType = i12;
                if (this.mTextureSurface != null) {
                    setTextureLayoutMode(i12);
                    break;
                } else {
                    MediaPlayer mediaPlayer = this.mMediaPlayer;
                    if (mediaPlayer != null) {
                        mediaPlayer.setIntOption(36, i12);
                        break;
                    }
                }
                break;
            case 5:
                if ((i12 == 1 || i12 == 2) && !FeatureManager.hasPermission("vr_panorama")) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mRenderType = i12;
                MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                if (mediaPlayer2 != null) {
                    mediaPlayer2.setIntOption(56, i12);
                    break;
                }
                break;
            case 6:
                if (i12 != 0) {
                    _doSetStringOption2(1000, "h265");
                    break;
                }
                break;
            case 7:
                this.mHasSetHardWare = true;
                MediaPlayer mediaPlayer3 = this.mAsyncPlayer;
                if (mediaPlayer3 == null) {
                    mediaPlayer3 = this.mMediaPlayer;
                }
                this.mHardwareDecodeEnablePlayer2 = i12;
                this.mSettedKeys.add(Integer.valueOf(i10));
                TTVideoEngineLog.i(logcatTag(), "hardware enable = " + this.mHardwareDecodeEnablePlayer2);
                if (mediaPlayer3 != null) {
                    mediaPlayer3.setIntOption(59, i12);
                    break;
                }
                break;
            case 12:
                if (DataLoaderHelper.getDataLoader().getIntValue(12) == 200) {
                    i12 = 0;
                }
                this.mNetworkTimeout = i12;
                MediaPlayer mediaPlayer4 = this.mMediaPlayer;
                if (mediaPlayer4 != null) {
                    mediaPlayer4.setIntOption(9, TTVideoEngineInterface.PLAYER_TIME_BASE * i12);
                }
                this.mLogger.setIntOption(25, i12);
                break;
            case 20:
                this.mDisableAccurateStart = i12;
                this.mLogger.setDisableAccurateStart(i12);
                MediaPlayer mediaPlayer5 = this.mMediaPlayer;
                if (mediaPlayer5 != null) {
                    mediaPlayer5.setIntOption(133, i12);
                    break;
                }
                break;
            case 21:
                if (i12 == 1) {
                    this.mUseVideoModelCache = true;
                    this.mVideoModelCache = VideoModelCache.getInstance();
                    VideoModelDBManager.getInstance(this.mContext);
                    break;
                } else {
                    this.mUseVideoModelCache = false;
                    break;
                }
            case 22:
                VideoModelCache videoModelCache = this.mVideoModelCache;
                if (videoModelCache != null) {
                    videoModelCache.setTimeOutInSec(i12);
                    break;
                }
                break;
            case 23:
                VideoModelCache videoModelCache2 = this.mVideoModelCache;
                if (videoModelCache2 != null) {
                    videoModelCache2.setCacheNb(i12);
                    break;
                }
                break;
            case 29:
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR /* 494 */:
                if (!FeatureManager.hasPermission("abr")) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mEnableABR = i12;
                _doEnableABR();
                MediaPlayer mediaPlayer6 = this.mMediaPlayer;
                if (mediaPlayer6 != null) {
                    mediaPlayer6.setIntOption(172, this.mEnableABR);
                    break;
                }
                break;
            case 31:
                MediaPlayer mediaPlayer7 = this.mMediaPlayer;
                if (mediaPlayer7 != null) {
                    mediaPlayer7.setIntOption(59, i12);
                    break;
                }
                break;
            case 199:
                this.mUseTextureRender = i12;
                DisplayMode displayMode = this.mDisplayMode;
                if (displayMode != null) {
                    if (i12 == 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    displayMode.setEnable(z10);
                }
                if (i12 == 1) {
                    MediaPlayer mediaPlayer8 = this.mAsyncPlayer;
                    if (mediaPlayer8 == null) {
                        mediaPlayer8 = this.mMediaPlayer;
                    }
                    if (mediaPlayer8 != null && this.mTextureSurface == null && (this.mEngineConfig.getIntOption(TTVideoEngineInterface.PLAYER_OPTION_VC2_LOWER_RENDER_CAPACITY) <= 0 || this.mHardwareDecodeEnablePlayer2 != 0 || this.mRenderType != 5)) {
                        setupTextureRender();
                        VideoSurface videoSurface = this.mTextureSurface;
                        if (videoSurface != null) {
                            videoSurface.updateTexDimension(getVideoWidth(), getVideoHeight());
                        }
                        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
                        if (surfaceHolder != null) {
                            setSurfaceHook(surfaceHolder.getSurface());
                            break;
                        } else {
                            Surface surface = this.mSurface;
                            if (surface != null) {
                                setSurfaceHook(surface);
                                break;
                            }
                        }
                    }
                }
                break;
            case 201:
                this.mTestNetSpeedDiff = i12;
                if (i12 < 500) {
                    this.mTestNetSpeedDiff = 500;
                    TTVideoEngineLog.e(TAG, "setIntOption: netspeed diff is less than 500ms,set it to 500ms");
                }
                MediaPlayer mediaPlayer9 = this.mMediaPlayer;
                if (mediaPlayer9 != null) {
                    mediaPlayer9.setIntOption(66, this.mTestNetSpeedDiff);
                    break;
                }
                break;
            case 206:
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                if (iVideoEventLogger != null) {
                    iVideoEventLogger.didSentEvent(i12);
                    break;
                }
                break;
            case 301:
                if (!FeatureManager.hasPermission("pcdn")) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mP2PCDNType = i12;
                break;
            case 320:
            case 472:
                this.mOutputLog = i12;
                MediaPlayer mediaPlayer10 = this.mMediaPlayer;
                if (mediaPlayer10 != null) {
                    mediaPlayer10.setIntOption(223, i12);
                }
                DataLoaderHelper.getDataLoader().setIntValue(512, i12);
                break;
            case 322:
                this.mNotifyBufferingDirectly = i12;
                MediaPlayer mediaPlayer11 = this.mMediaPlayer;
                if (mediaPlayer11 != null) {
                    mediaPlayer11.setIntOption(211, i12);
                }
                this.mLogger.setIntOption(26, i12);
                break;
            case 341:
                this.mPlayerViewWidth = i12;
                IABRModule iABRModule = this.mABRModule;
                if (iABRModule != null) {
                    iABRModule.setIntOptionForKey(6, i12);
                }
                IVideoEventLogger iVideoEventLogger2 = this.mLogger;
                if (iVideoEventLogger2 != null) {
                    iVideoEventLogger2.setPlayerViewSize(i12, 0);
                    break;
                }
                break;
            case 342:
                this.mPlayerViewHeight = i12;
                IABRModule iABRModule2 = this.mABRModule;
                if (iABRModule2 != null) {
                    iABRModule2.setIntOptionForKey(7, i12);
                }
                IVideoEventLogger iVideoEventLogger3 = this.mLogger;
                if (iVideoEventLogger3 != null) {
                    iVideoEventLogger3.setPlayerViewSize(0, i12);
                    break;
                }
                break;
            case 372:
                if (i12 == 0) {
                    z11 = false;
                }
                this.mCloseRenderStartMsgOnSwitchResolutionDone = z11;
                break;
            case 411:
                TTPlayerConfiger.setValue(24, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_SET_VOICE /* 430 */:
                this.mVoiceType = i12;
                MediaPlayer mediaPlayer12 = this.mMediaPlayer;
                if (mediaPlayer12 != null) {
                    mediaPlayer12.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_AUDIO_DEVICE_TYPE, i12);
                    break;
                }
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_h266 /* 432 */:
                if (i12 != 0) {
                    _doSetStringOption2(1000, "h266");
                    break;
                }
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_ASYNC /* 442 */:
                this.mAsyncSetAudioProcessor = i12;
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_HLS_CHOOSE_STREAM_ASYNC /* 444 */:
                this.mAsyncSetHLSChooseStream = i12;
                break;
            case 460:
                this.mHardwareDropNonRef = i12;
                MediaPlayer mediaPlayer13 = this.mMediaPlayer;
                if (mediaPlayer13 != null) {
                    mediaPlayer13.setIntOption(252, i12);
                }
                this.mLogger.setIntOption(32, this.mHardwareDropNonRef);
                break;
            case 470:
                if (i12 != 1) {
                    z18 = false;
                }
                TTVideoEngineConfig.openPerformanceUtils = z18;
                break;
            case 471:
                return;
            case 480:
                if (!FeatureManager.hasPermission(FeatureManager.AUDIO_ONLY)) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mRadioModeEnable = i12;
                this.mLastSwitchRadioModeTime = System.currentTimeMillis();
                MediaPlayer mediaPlayer14 = this.mMediaPlayer;
                if (mediaPlayer14 != null) {
                    mediaPlayer14.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, i12);
                }
                this.mLogger.setIntOption(45, i12);
                this.mLogger.setIntOption(11, i12);
                if (shouldStartTextureRenderCheck()) {
                    this.mTextureSurface.setIntOption(33, 1);
                    break;
                } else {
                    VideoSurface videoSurface2 = this.mTextureSurface;
                    if (videoSurface2 != null && i12 == 1) {
                        videoSurface2.setIntOption(33, 0);
                        break;
                    }
                }
                break;
            case 504:
                this.mABRSwitchCSModel = i12;
                ABRConfig.setSwitchModel(i11);
                break;
            case 505:
                this.mABRStartupModel = i12;
                ABRConfig.setStartupModel(i11);
                break;
            case 506:
                this.mABRFixedLevel = i12;
                ABRConfig.setFixedLevel(i11);
                break;
            case 510:
                if (!FeatureManager.hasPermission(FeatureManager.SUBTITLE_MASK)) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mEnableMaskThread = i12;
                IVideoEventLogger iVideoEventLogger4 = this.mLogger;
                if (iVideoEventLogger4 != null) {
                    iVideoEventLogger4.setIntOption(46, i12);
                    break;
                }
                break;
            case 521:
                this.mStandAlongAbrStartUp = i12;
                if (i12 > 0 && this.mEnableABR == 0 && this.mEnableHlsABR == 0) {
                    TTVideoEngine.sABRAlgorithmType = 4;
                    break;
                }
                break;
            case 522:
                if (i12 == 0) {
                    z17 = false;
                }
                this.mEnableSpeedReport = z17;
                this.mLogger.setIntOption(18, i12);
                break;
            case 523:
                TTVideoEngine.sReportSpeedInfoMaxWindowSize = i12;
                this.mLogger.setIntOption(19, i12);
                break;
            case 530:
                this.mCurrentSubId = i12;
                MediaPlayer mediaPlayer15 = this.mMediaPlayer;
                if (mediaPlayer15 != null && this.mLogger != null) {
                    mediaPlayer15.setIntOption(619, i12);
                    this.mLogger.addSubtitleSwitchTime();
                    break;
                }
                break;
            case 533:
                this.mEnableSub = i12;
                MediaPlayer mediaPlayer16 = this.mMediaPlayer;
                if (mediaPlayer16 != null) {
                    mediaPlayer16.setIntOption(618, i12);
                }
                IVideoEventLogger iVideoEventLogger5 = this.mLogger;
                if (iVideoEventLogger5 != null) {
                    iVideoEventLogger5.setIntOption(49, i12);
                    break;
                }
                break;
            case 534:
                if (!FeatureManager.hasPermission(FeatureManager.SUBTITLE_MASK)) {
                    TTVideoEngineLog.e(logcatTag(), "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mEnableSubThread = i12;
                IVideoEventLogger iVideoEventLogger6 = this.mLogger;
                if (iVideoEventLogger6 != null) {
                    iVideoEventLogger6.setIntOption(47, i12);
                    break;
                }
                break;
            case 574:
                this.mABRStartupSpeedType = i12;
                GracieSelector.setSpeedType(i11);
                break;
            case 596:
                if (isPlayerSupportSeekMode()) {
                    this.mSeekMode = i12;
                    break;
                }
                break;
            case 604:
                if (i12 <= 0) {
                    i13 = 0;
                }
                this.mEnableNetLevel = i13;
                IVideoEventLogger iVideoEventLogger7 = this.mLogger;
                if (iVideoEventLogger7 != null) {
                    iVideoEventLogger7.setIntOption(22, i12);
                    break;
                }
                break;
            case 605:
                IVideoEventLogger iVideoEventLogger8 = this.mLogger;
                if (iVideoEventLogger8 != null) {
                    iVideoEventLogger8.setIntOption(23, i12);
                    break;
                }
                break;
            case 612:
                if (i12 == 0) {
                    z16 = false;
                }
                this.mIsPreDecodeAutoPause = z16;
                break;
            case 617:
                IVideoEventLogger iVideoEventLogger9 = this.mLogger;
                if (iVideoEventLogger9 != null) {
                    iVideoEventLogger9.setIntOption(52, i12);
                    break;
                }
                break;
            case 618:
                IVideoEventLogger iVideoEventLogger10 = this.mLogger;
                if (iVideoEventLogger10 != null) {
                    iVideoEventLogger10.setIntOption(126, i12);
                    break;
                }
                break;
            case 621:
                this.mLogger.setIntOption(177, i12);
                break;
            case 654:
                this.mSyncUpdateSurface = i12;
                VideoSurface videoSurface3 = this.mTextureSurface;
                if (videoSurface3 != null) {
                    videoSurface3.setIntOption(9, i12);
                    break;
                }
                break;
            case 673:
                if (i12 != 1) {
                    z15 = false;
                }
                this.mEnableOutletDropLimit = z15;
                MediaPlayer mediaPlayer17 = this.mMediaPlayer;
                if (mediaPlayer17 != null) {
                    mediaPlayer17.setIntOption(149, i12);
                }
                this.mLogger.setIntOption(97, this.mEnableOutletDropLimit ? 1 : 0);
                break;
            case 704:
                this.mLogger.setIntOption(100, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_TEXTURE_RENDER_NO_RENDER_CHECK /* 708 */:
                this.mEnableTextureRenderNoRenderCheck = i12;
                VideoSurface videoSurface4 = this.mTextureSurface;
                if (videoSurface4 != null) {
                    videoSurface4.setIntOption(34, i12);
                    break;
                }
                break;
            case 710:
                this.mEnableTmpLog = i12;
                this.mLogger.setIntOption(112, i12);
                break;
            case 724:
                IVideoEventLogger iVideoEventLogger11 = this.mLogger;
                if (iVideoEventLogger11 != null) {
                    iVideoEventLogger11.setVrScreenRefreshRate(i12);
                    break;
                }
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_SETSURFACE_TIMEOUT_CREATED /* 740 */:
                TTVideoEngineConfig.setSurfaceTimeoutForCreated = i12;
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_SETSURFACE_TIMEOUT_DESTROY /* 741 */:
                TTVideoEngineConfig.setSurfaceTimeoutForDestroy = i12;
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_FETCH_WITH_ABILITY_OPTION /* 743 */:
                if (i12 != 1) {
                    z14 = false;
                }
                this.mFetchWithAbilityOption = z14;
                break;
            case 802:
                if (i12 > 0) {
                    this.mRetryErrCnt = i12;
                    break;
                }
                break;
            case 1001:
                if (!FeatureManager.hasPermission("abr")) {
                    TTVideoEngineLog.e(TAG, "set int option failed key:" + i10 + " value:" + i12);
                    return;
                }
                this.mEnableHlsABR = i12;
                _doEnableABR();
                MediaPlayer mediaPlayer18 = this.mMediaPlayer;
                if (mediaPlayer18 != null) {
                    mediaPlayer18.setIntOption(180, this.mEnableHlsABR);
                    break;
                }
                break;
            case 1072:
                TTVideoEngineConfig.setEGLBitDepth = i12;
                break;
            case 1074:
                this.mLogger.setDuration(i12);
                break;
            case 1133:
                if (i12 <= 0) {
                    z13 = false;
                }
                this.mEnableSetupMediaCodec = z13;
                break;
            case 1135:
                this.mSetSurfaceDirectly = i12;
                break;
            case 1206:
                IVideoEventLogger iVideoEventLogger12 = this.mLogger;
                if (iVideoEventLogger12 != null) {
                    iVideoEventLogger12.setIntOption(129, i12);
                    break;
                }
                break;
            case 1207:
                IVideoEventLogger iVideoEventLogger13 = this.mLogger;
                if (iVideoEventLogger13 != null) {
                    iVideoEventLogger13.setIntOption(130, i12);
                    break;
                }
                break;
            case 1208:
                IVideoEventLogger iVideoEventLogger14 = this.mLogger;
                if (iVideoEventLogger14 != null) {
                    iVideoEventLogger14.setIntOption(131, i12);
                    break;
                }
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_BASH_RETRY_RESTART_PLAYER /* 1225 */:
                if (i12 != 1) {
                    z12 = false;
                }
                this.mBashRetryRestartPlayer = z12;
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_ABR_AGGRESSIVE_PORTRIT_LOW_BIT /* 1413 */:
                this.mABREnableAggressivePortraitLowBit = i12;
                break;
            case 1502:
                this.mOutputLog = i12;
                MediaPlayer mediaPlayer19 = this.mMediaPlayer;
                if (mediaPlayer19 != null) {
                    mediaPlayer19.setIntOption(223, i12);
                    break;
                }
                break;
            case 1503:
                this.mEnableTextureRenderNativeWindow = i12;
                VideoSurface videoSurface5 = this.mTextureSurface;
                if (videoSurface5 != null) {
                    videoSurface5.setIntOption(150, i12);
                    break;
                }
                break;
            case 1600:
                this.mEnableFrameCallbackInRenderThread = i12;
                VideoSurface videoSurface6 = this.mTextureSurface;
                if (videoSurface6 != null) {
                    videoSurface6.setIntOption(149, i12);
                    break;
                }
                break;
            case 4006:
                MediaPlayer mediaPlayer20 = this.mMediaPlayer;
                if (mediaPlayer20 != null) {
                    if (i12 == 0) {
                        mediaPlayer20.setIntOption(4006, this.mEngineConfig.getIntOption(4008));
                        break;
                    } else {
                        mediaPlayer20.setIntOption(4006, this.mEngineConfig.getIntOption(4007));
                        break;
                    }
                }
                break;
            case 4011:
                this.mDecoderRenderVC2PreCreateRender = i12;
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY /* 4012 */:
                TTPlayerConfiger.setValue(34, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_VC2_THREAD_PRIORITY_VALUE /* 4013 */:
                TTPlayerConfiger.setValue(35, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY_LITE /* 4015 */:
                TTPlayerConfiger.setValue(36, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_VC2_DYNAMIC_CONTROL /* 4019 */:
                this.mVC2DynamicControl = i12;
                if (((i12 & 8) == 8 && this.mHardwareDecodeEnablePlayer2 <= 0) || (i12 & 8) != 8) {
                    if ((i12 & 2) == 2) {
                        this.mEngineConfig.setIntOption(685, 1);
                    }
                    if ((this.mVC2DynamicControl & 4) == 4) {
                        TTPlayerConfiger.setValue(34, 1);
                        break;
                    }
                }
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_VC2_STACKSIZE_OPT /* 4020 */:
                TTPlayerConfiger.setValue(39, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_VC2_STACKSIZE_VALUE /* 4021 */:
                TTPlayerConfiger.setValue(40, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SURFACE_HASHMAP_JUDGEMENT /* 4025 */:
                this.mEnableSurfaceHashmapJudgement = i12;
                break;
            case 4100:
                TTPlayerConfiger.setValue(41, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_GET_VC2_DEC_POOL_SIZE /* 4101 */:
                TTPlayerConfiger.setValue(42, i12);
                break;
            case TTVideoEngineInterface.PLAYER_OPTION_DISABLE_THREAD_POOL_USING /* 4200 */:
                this.mDisableThreadPoolUsing = i12;
                break;
            case 5001:
                MediaPlayer mediaPlayer21 = this.mMediaPlayer;
                if (mediaPlayer21 != null && mediaPlayer21.getPlayerType() == 5) {
                    this.mMediaPlayer.setIntOption(5001, i12);
                }
                this.mExoRenderReadyMs = i12;
                break;
            case 5002:
                MediaPlayer mediaPlayer22 = this.mMediaPlayer;
                if (mediaPlayer22 != null && mediaPlayer22.getPlayerType() == 5) {
                    this.mMediaPlayer.setIntOption(5002, i12);
                }
                this.mExoConsecutiveFailNum = i12;
                break;
            case 5003:
                MediaPlayer mediaPlayer23 = this.mMediaPlayer;
                if (mediaPlayer23 != null && mediaPlayer23.getPlayerType() == 5) {
                    this.mMediaPlayer.setIntOption(5003, i12);
                }
                this.mExoCodecReusable = i12;
                break;
            case ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE /* 5004 */:
                MediaPlayer mediaPlayer24 = this.mMediaPlayer;
                if (mediaPlayer24 != null && mediaPlayer24.getPlayerType() == 5) {
                    this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_CODEC_ASYNC_INIT_ENABLE, i12);
                }
                this.mExoCodecAsyncInitEnable = i12;
                break;
            case ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER /* 5005 */:
                MediaPlayer mediaPlayer25 = this.mMediaPlayer;
                if (mediaPlayer25 != null && mediaPlayer25.getPlayerType() == 5) {
                    this.mMediaPlayer.setIntOption(ITTVideoEngineInternal.PLAYER_OPTION_EXO_ALLOW_MEDIACODECHELPER, i12);
                }
                this.mExoAllowMediaCodecHelper = i12;
                break;
            default:
                super.setIntOption(i10, i11);
                break;
        }
        TTVideoEngineLog.i(logcatTag(), "set int op key:" + i10 + " value:" + i12);
    }

    void _doSetLocalURL(String str) {
        if (str != null && !str.equals(this.mLocalURL) && (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 1L) || this.mEngineHasUsed)) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "set local url:" + str);
            _ShutdownOldSource();
            this.mState = 0;
            this.mUserStopped = false;
            this.mLastPlaybackTime = 0;
            this.mFirstURL = true;
            this.mAPIString = null;
        }
        this.mEngineHasUsed = true;
        this.mStarted = false;
        this.mIsLocal = true;
        this.mLocalURL = str;
        this.mBufferingStartT = 0L;
        this.mLogger.setSourceType(0, "");
        this.mFileKey = null;
        Resolution resolution = Resolution.Undefine;
        this.currentResolution = resolution;
        this.mLogger.configResolution(_resolutionToString(resolution), "");
    }

    void _doSetLongOption(int i10, long j10) {
        if (this.mConfigCenterVersion > 0) {
            _doSetLongOption2(i10, j10);
            return;
        }
        if (ConfigItemFactory.isCommonPlayerOption(i10)) {
            this.mOptionHolder.setLongOption(i10, j10);
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setLongOption(i10, j10);
            }
        }
        if (i10 != 440) {
            if (i10 != 709) {
                if (i10 != 725) {
                    super.setLongOption(i10, j10);
                } else {
                    IVideoEventLogger iVideoEventLogger = this.mLogger;
                    if (iVideoEventLogger != null) {
                        iVideoEventLogger.setVrHeadMovementDelay(j10);
                    }
                }
            } else {
                this.mPrecisePausePts = j10;
                MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                if (mediaPlayer2 != null) {
                    mediaPlayer2.setLongOption(668, j10);
                }
            }
        } else if (j10 > 0) {
            NativeAudioProcessor nativeAudioProcessor = new NativeAudioProcessor();
            this.mAudioProcessor = nativeAudioProcessor;
            nativeAudioProcessor.setNativeWrapper(j10);
            MediaPlayer mediaPlayer3 = this.mMediaPlayer;
            if (mediaPlayer3 != null) {
                ((MediaPlayerWrapper) mediaPlayer3).setAudioProcessor(this.mAudioProcessor);
            }
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set long option key:" + i10 + ",value:" + j10);
    }

    void _doSetLongOption2(int i10, long j10) {
        if (i10 != 440) {
            if (i10 != 725) {
                super.setLongOption(i10, j10);
            } else {
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                if (iVideoEventLogger != null) {
                    iVideoEventLogger.setVrHeadMovementDelay(j10);
                }
            }
        } else if (j10 > 0) {
            NativeAudioProcessor nativeAudioProcessor = new NativeAudioProcessor();
            this.mAudioProcessor = nativeAudioProcessor;
            nativeAudioProcessor.setNativeWrapper(j10);
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                ((MediaPlayerWrapper) mediaPlayer).setAudioProcessor(this.mAudioProcessor);
            }
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set long option key:" + i10 + ",value:" + j10);
    }

    void _doSetLooping(boolean z10) {
        super.setLooping(z10);
        this.mLogger.setLooping(z10);
    }

    void _doSetObjectOption(int i10, Object obj) {
        if (i10 != 441) {
            if (i10 == 443 && obj != null && (obj instanceof TTVideoEnginePlayHLSChooseStreamCallback)) {
                this.mHLSChooseStreamCb = (TTVideoEnginePlayHLSChooseStreamCallback) obj;
                MediaPlayer mediaPlayer = this.mMediaPlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.setTraitObject(7, new MyHLSChooseStreamInterface(this));
                }
            }
        } else if (obj != null && (obj instanceof AudioProcessor)) {
            AudioProcessor audioProcessor = (AudioProcessor) obj;
            this.mAudioProcessor = audioProcessor;
            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
            if (mediaPlayer2 != null) {
                ((MediaPlayerWrapper) mediaPlayer2).setAudioProcessor(audioProcessor);
            }
        }
    }

    void _doSetPlayItem(TTVideoEnginePlayItem tTVideoEnginePlayItem) {
        boolean isExpired = tTVideoEnginePlayItem.isExpired();
        if (!TextUtils.isEmpty(tTVideoEnginePlayItem.playURL) && !isExpired) {
            _ShutdownOldSource();
            if (!tTVideoEnginePlayItem.equals(this.mPlayItem)) {
                if (this.mPlayItem != null) {
                    _reset();
                }
                this.mIsPlayItem = true;
                this.mFirstURL = true;
                this.mFirstIP = true;
                this.mFirstHost = true;
                this.mState = 0;
                this.mUserStopped = false;
                this.mLastPlaybackTime = 0;
                this.mAPIString = null;
            }
            this.mStarted = false;
            this.mPlayItem = tTVideoEnginePlayItem;
            this.mBufferingStartT = 0L;
            Resolution resolution = tTVideoEnginePlayItem.resolution;
            if (resolution != null) {
                this.currentResolution = resolution;
            }
            String str = tTVideoEnginePlayItem.vid;
            this.mVideoID = str;
            this.mLogger.setSourceType(2, str);
            this.mFileKey = null;
            return;
        }
        setVideoID(tTVideoEnginePlayItem.vid);
    }

    void _doSetPlaybackParams(PlaybackParams playbackParams) {
        boolean z10;
        super.setPlaybackParams(playbackParams);
        if (playbackParams != null && playbackParams.getSpeed() != -1.0f) {
            SRStrategy sRStrategy = this.mSRStrategy;
            SRStrategyConfig newConfig = SRStrategyConfig.newConfig();
            if (((int) (playbackParams.getSpeed() * 100.0f)) != 100) {
                z10 = true;
            } else {
                z10 = false;
            }
            sRStrategy.updateConfig(newConfig.setIsSpeed(z10));
        }
        if (this.mMediaPlayer != null && this.mSRStrategy.getSRStrategyMode() == 0 && this.mHasFirstFrameShown) {
            this.mTextureSrOpen = this.mSRStrategy.isSRSatisfied() ? 1 : 0;
            int sRNotUseReason = this.mSRStrategy.getSRNotUseReason();
            this.mSRNotUseReason = sRNotUseReason;
            doOpenSR(this.mTextureSrOpen, sRNotUseReason);
        }
        if (playbackParams != null) {
            this.mLogger.setPlaybackParams(playbackParams);
        }
    }

    void _doSetPlayerSurface(Surface surface, int i10) {
        _doSetPlayerSurfaceTimeOut(surface, i10, 0);
    }

    void _doSetPlayerSurfaceTimeOut(Surface surface, int i10, int i11) {
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        if (mediaPlayer != null) {
            if (surface == null) {
                ((MediaPlayerWrapper) mediaPlayer).setSurfaceTimeOut(null, i11);
            } else if (i10 == 1) {
                ((MediaPlayerWrapper) mediaPlayer).setSurfaceTimeOut(surface, i11);
                this.mLogger.setPlayerSurface(surface.toString());
            } else {
                MediaPlayerWrapper mediaPlayerWrapper = (MediaPlayerWrapper) mediaPlayer;
                Surface surface2 = this.mTextureSurface;
                if (surface2 == null) {
                    surface2 = surface;
                }
                mediaPlayerWrapper.setSurfaceTimeOut(surface2, i11);
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                VideoSurface videoSurface = this.mTextureSurface;
                if (videoSurface != null) {
                    surface = videoSurface;
                }
                iVideoEventLogger.setPlayerSurface(surface.toString());
            }
        }
    }

    void _doSetPreloaderItem(TTAVPreloaderItem tTAVPreloaderItem) {
        int i10 = tTAVPreloaderItem.mResolution;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            setVideoID(tTAVPreloaderItem.mVideoID);
                            return;
                        }
                        this.currentResolution = Resolution.FourK;
                    } else {
                        this.currentResolution = Resolution.ExtremelyHigh;
                    }
                } else {
                    this.currentResolution = Resolution.SuperHigh;
                }
            } else {
                this.currentResolution = Resolution.High;
            }
        } else {
            this.currentResolution = Resolution.Standard;
        }
        _ShutdownOldSource();
        TTAVPreloaderItem tTAVPreloaderItem2 = this.mPreloaderItem;
        if (tTAVPreloaderItem2 != null && !tTAVPreloaderItem2.equals(tTAVPreloaderItem)) {
            _reset();
            this.mIsLocal = false;
            this.mFirstURL = true;
            this.mFirstIP = true;
            this.mFirstHost = true;
            this.mState = 0;
            this.mUserStopped = false;
            this.mLastPlaybackTime = 0;
            this.mFetcher = null;
            this.mAPIString = null;
        }
        this.mStarted = false;
        this.mIsPreloaderItem = true;
        this.mPreloaderItem = tTAVPreloaderItem;
        this.mBufferingStartT = 0L;
        String str = tTAVPreloaderItem.mVideoID;
        this.mVideoID = str;
        this.mLogger.setSourceType(3, str);
        this.mFileKey = null;
        TTVideoEngineLog.i(logcatTag(), "set preloaderitem");
    }

    void _doSetStringOption(int i10, String str) {
        if (this.mConfigCenterVersion > 0) {
            _doSetStringOption2(i10, str);
            return;
        }
        if (ConfigItemFactory.isCommonPlayerOption(i10)) {
            this.mOptionHolder.setStringOption(i10, str);
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setStringOption(i10, str);
            }
        }
        if (i10 != 355) {
            if (i10 != 549) {
                if (i10 != 659) {
                    if (i10 != 662) {
                        if (i10 != 715) {
                            if (i10 != 957) {
                                if (i10 != 1000) {
                                    if (i10 != 1205) {
                                        if (i10 != 360) {
                                            if (i10 != 361) {
                                                if (i10 != 531) {
                                                    if (i10 != 532) {
                                                        if (i10 != 1421) {
                                                            if (i10 != 1422) {
                                                                switch (i10) {
                                                                    case 538:
                                                                        this.mABR4GMaxResolutionQuality = str;
                                                                        break;
                                                                    case 539:
                                                                        this.mWifiDefaultResolutionQuality = str;
                                                                        break;
                                                                    case 540:
                                                                        this.mStartupMaxBitRateQuality = str;
                                                                        break;
                                                                    default:
                                                                        switch (i10) {
                                                                            case 545:
                                                                                this.mDowngradeResolutionQuality = str;
                                                                                break;
                                                                            case 546:
                                                                                this.mSubIds = str;
                                                                                break;
                                                                            case 547:
                                                                                this.mSubFormat = str;
                                                                                break;
                                                                            default:
                                                                                switch (i10) {
                                                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_LOAD_CONFIG /* 1410 */:
                                                                                        this.mPlayLoadConfig = str;
                                                                                        break;
                                                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG /* 1411 */:
                                                                                        this.mPlayRangeConfig = str;
                                                                                        break;
                                                                                    case TTVideoEngineInterface.PLAYER_STRATEGY_STRING_PLAY_BUFFER_CONFIG /* 1412 */:
                                                                                        this.mPlayBufferConfig = str;
                                                                                        break;
                                                                                    default:
                                                                                        super.setStringOption(i10, str);
                                                                                        break;
                                                                                }
                                                                        }
                                                                }
                                                            } else {
                                                                this.mBufferProcessCovertOrder = str;
                                                            }
                                                        } else {
                                                            this.mBufferProcessProtoName = str;
                                                        }
                                                    } else {
                                                        this.mSubLanIds = str;
                                                    }
                                                } else {
                                                    this.mSubHostName = str;
                                                }
                                            } else {
                                                this.mAEGraphConfig = str;
                                            }
                                        } else {
                                            this.mVolumeInfoJson = str;
                                        }
                                    } else {
                                        IVideoEventLogger iVideoEventLogger = this.mLogger;
                                        if (iVideoEventLogger != null) {
                                            iVideoEventLogger.setStringOption(128, str);
                                            if ("get existing from EnginePool".equals(str) || "new by EnginePool".equals(str)) {
                                                this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_IS_FROM_ENGINEPOOL, 1);
                                            }
                                        }
                                    }
                                } else {
                                    this.mSettedKeys.add(Integer.valueOf(i10));
                                    this.mCodecType = str;
                                }
                            } else if (!this.mPrivCodecName.contains(str)) {
                                this.mPrivCodecName.add(str);
                            }
                        } else {
                            this.mLogger.setStringOption(113, str);
                        }
                    } else {
                        this.mCheckInfoString = str;
                    }
                } else {
                    this.mClassLoaderState = str;
                }
            } else {
                this.mSubVersions = str;
            }
        } else {
            this.mAEConfigJson = str;
            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
            if (mediaPlayer2 != null) {
                mediaPlayer2.setStringOption(1158, str);
            }
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set string option key:" + i10 + " value:" + str);
    }

    void _doSetStringOption2(int i10, String str) {
        if (i10 != 532) {
            if (i10 != 549) {
                if (i10 != 659) {
                    if (i10 != 715) {
                        if (i10 != 957) {
                            if (i10 != 1205) {
                                if (i10 != 1421) {
                                    if (i10 != 1422) {
                                        super.setStringOption(i10, str);
                                    } else {
                                        this.mBufferProcessCovertOrder = str;
                                    }
                                } else {
                                    this.mBufferProcessProtoName = str;
                                }
                            } else {
                                IVideoEventLogger iVideoEventLogger = this.mLogger;
                                if (iVideoEventLogger != null) {
                                    iVideoEventLogger.setStringOption(128, str);
                                    if ("get existing from EnginePool".equals(str) || "new by EnginePool".equals(str)) {
                                        this.mLogger.addFeature(IVideoEventLogger.FEATURE_KEY_IS_FROM_ENGINEPOOL, 1);
                                    }
                                }
                            }
                        } else if (!this.mPrivCodecName.contains(str)) {
                            this.mPrivCodecName.add(str);
                        }
                    } else {
                        this.mLogger.setStringOption(113, str);
                    }
                } else {
                    this.mClassLoaderState = str;
                }
            } else {
                this.mSubVersions = str;
            }
        } else {
            this.mSubLanIds = str;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set string option key:" + i10 + " value:" + str);
    }

    /* renamed from: _doSetSurface */
    public void lambda$_setSurfaceSync$4(Surface surface) {
        IVideoEventLogger iVideoEventLogger;
        this.mSurface = surface;
        if (surface != null && (iVideoEventLogger = this.mLogger) != null && !this.mHasFirstFrameShown) {
            iVideoEventLogger.setSurface(surface.toString());
        }
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        if (mediaPlayer != null) {
            setSurfaceHook(this.mSurface);
        }
    }

    void _doSetSurfaceHolder(SurfaceHolder surfaceHolder, boolean z10) {
        IPlayDurationManager iPlayDurationManager;
        if (z10 && (iPlayDurationManager = this.mPlayDuration) != null) {
            iPlayDurationManager.stop();
        }
        SurfaceHolder surfaceHolder2 = this.mSurfaceHolder;
        TTVideoEngineSurfaceCallback tTVideoEngineSurfaceCallback = this.mSurfaceCallback;
        if (tTVideoEngineSurfaceCallback != null && surfaceHolder2 != null) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.d(logcatTag, "remove callback:" + this.mSurfaceCallback + ", surfaceholder:" + surfaceHolder + ", mSurface:" + this.mSurface + ", mSurfaceHolder:" + this.mSurfaceHolder);
            tTVideoEngineSurfaceCallback.reset();
            surfaceHolder2.removeCallback(tTVideoEngineSurfaceCallback);
            this.mSurfaceCallback = null;
        }
        this.mSurfaceHolder = surfaceHolder;
        if (getConfigInt(951, this.mSurfaceHolderByKernel) != 0) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                this.mLogger.setSurfaceSourceType(IVideoEventLogger.SET_SURFACE_TYPE_EXTERNAL);
                this.mLogger.setSurfaceBegin();
                mediaPlayer.setDisplay(surfaceHolder);
                this.mLogger.setSurfaceEnd();
                if (surfaceHolder != null) {
                    this.mLogger.setSurface(surfaceHolder.toString());
                }
            }
        } else if (surfaceHolder == null) {
            setSurfaceHook(null);
        } else {
            Surface surface = surfaceHolder.getSurface();
            addSurfaceCallback(surfaceHolder);
            setSurfaceHook(surface);
            if (surface != null) {
                IVideoEventLogger iVideoEventLogger = this.mLogger;
                iVideoEventLogger.setSurface("SurfaceHolderWithSurface@" + surface.toString());
            }
            setSurfaceDimensionsToTextureRender();
        }
    }

    void _doSetSurfaceTimeOut(Surface surface, int i10) {
        IVideoEventLogger iVideoEventLogger;
        this.mSurface = surface;
        if (surface != null && (iVideoEventLogger = this.mLogger) != null && !this.mHasFirstFrameShown) {
            iVideoEventLogger.setSurface(surface.toString());
        }
        MediaPlayer mediaPlayer = this.mAsyncPlayer;
        if (mediaPlayer == null) {
            mediaPlayer = this.mMediaPlayer;
        }
        if (mediaPlayer != null) {
            setSurfaceHookTimeOut(this.mSurface, i10);
        }
    }

    void _doSetTestSpeedEnable(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setIntOption(79, i10);
        }
    }

    void _doSetTraitObject(int i10, TraitObject traitObject) {
        this.mTraitObjManager.put(i10, traitObject);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            ((MediaPlayerWrapper) mediaPlayer).setTraitObject(i10, traitObject);
        }
    }

    void _doSetVideoID(String str) {
        if (str != null && !str.equals(this.mVideoID) && (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 1L) || this.mEngineHasUsed)) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "set video id:" + str);
            _ShutdownOldSource();
            this.mIsLocal = false;
            this.mFirstURL = true;
            this.mFirstIP = true;
            this.mFirstHost = true;
            this.mState = 0;
            this.mUserStopped = false;
            this.mLastPlaybackTime = 0;
            this.mAPIString = null;
        }
        this.mEngineHasUsed = true;
        this.mStarted = false;
        this.mVideoID = str;
        this.mBufferingStartT = 0L;
        this.mLogger.setSourceType(5, str);
        this.mFileKey = null;
    }

    void _doSetVideoModel(IVideoModel iVideoModel) {
        String videoRefStr = iVideoModel.getVideoRefStr(2);
        if (TextUtils.isEmpty(videoRefStr)) {
            TTVideoEngineLog.i(logcatTag(), "_doSetVideoModel vid is empty");
            return;
        }
        if (!iVideoModel.equals(this.mVideoModel) && (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 1L) || this.mEngineHasUsed)) {
            TTVideoEngineLog.i(logcatTag(), "_doSetVideoModel VideoModel is new");
            _ShutdownOldSource();
            this.mIsLocal = false;
            this.mFirstURL = true;
            this.mFirstIP = true;
            this.mFirstHost = true;
            this.mState = 0;
            this.mUserStopped = false;
            this.mLastPlaybackTime = 0;
            this.mFetcher = null;
            this.mAPIString = null;
        }
        this.mEngineHasUsed = true;
        this.mStarted = false;
        this.mVideoModel = iVideoModel;
        this.mKeyseed = iVideoModel.getVideoRefStr(218);
        String videoRefStr2 = this.mVideoModel.getVideoRefStr(217);
        this.mFallbackAPI = videoRefStr2;
        if (!TextUtils.isEmpty(videoRefStr2)) {
            this.mLogger.setIntOption(172, 1);
        }
        this.mVideoModelVersion = this.mVideoModel.getVideoRefInt(9);
        this.mVideoModel.setUpResolution(this.mResolutionMap);
        this.mVideoID = videoRefStr;
        boolean hasFormat = this.mVideoModel.hasFormat(IVideoModel.Format.DASH);
        this.mIsDashSource = hasFormat;
        this.mDashEnabled = hasFormat;
        this.mEngineConfig.setIntOption(17, hasFormat ? 1 : 0);
        mdlFetcherStore();
        this.mIsFeedInfo = true;
        this.mBufferingStartT = 0L;
        this.mLogger.setSourceType(4, this.mVideoID);
        this.mLogger.setFeed(iVideoModel);
        this.mFileKey = null;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set video model, fallback api:" + this.mFallbackAPI + ",keyseed:" + this.mKeyseed);
        if (this.mEnableTmpLog == 1) {
            showLongLog(this.mVideoModel.toMediaInfoJsonString());
        }
    }

    void _doStart() {
        this.mShouldPlay = true;
        this.mShouldStop = false;
        this.mUserStopped = false;
        this.mAccumulatedErrorCount = 0;
        _play(true);
        this.mIsPlayComplete = false;
    }

    void _doStop() {
        int i10;
        _stop(true, 0);
        int configInt = getConfigInt(991, this.mAutoDisconnectedCpu);
        if (configInt == 1) {
            boolean _checkRefreshSurface = _checkRefreshSurface();
            this.mRefreshSurfaceFlag = _checkRefreshSurface;
            if (_checkRefreshSurface) {
                _refreshSurface();
            } else {
                this.mRefreshSurfaceDone = false;
            }
        }
        if (getConfigInt(27, this.mCleanWhenStop) > 0) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.reset();
                this.mPrepared = false;
            }
            int configInt2 = getConfigInt(542, this.mCleanSurfaceWhenReset);
            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
            if (mediaPlayer2 != null && this.mTextureSurface != null && (configInt2 > 0 || (configInt == 1 && this.mRefreshTextureSurface))) {
                mediaPlayer2.setSurface(null);
            }
            if (getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_DECODERRENDER_CLEAR_TEXTURERENDERREF, this.mDecoderRenderClearTextureRenderRef) > 0 && (i10 = this.mVideoCodecType) > 0 && i10 != 2) {
                releaseTextureRenderRef();
            }
            if (configInt == 1 && this.mRefreshTextureSurface) {
                releaseTextureRenderRef();
                this.mRefreshTextureSurface = false;
            }
            MediaPlayer mediaPlayer3 = this.mMediaPlayer;
            if (mediaPlayer3 != null && mediaPlayer3.getPlayerType() == 0) {
                this.mMediaPlayer.release();
                this.mMediaPlayer = null;
            }
            MediaPlayer mediaPlayer4 = this.mAsyncPlayer;
            if (mediaPlayer4 != null) {
                mediaPlayer4.release();
                this.mAsyncPlayer = null;
            }
            this.mState = 0;
        }
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null && videoSurface.getIntOption(133) == 1) {
            MediaPlayer mediaPlayer5 = this.mAsyncPlayer;
            if (mediaPlayer5 == null) {
                mediaPlayer5 = this.mMediaPlayer;
            }
            if (mediaPlayer5 != null) {
                mediaPlayer5.setSurface(null);
            }
            releaseTextureRenderRef();
            TTVideoEngineLog.i(logcatTag(), "texturerender connected cpu,reset");
        }
        Handler handler = this.mTestNetSpeedHandler;
        if (handler != null) {
            handler.removeCallbacks(this.mTestNetSpeedRunable);
        }
        _dataLoaderRemoveEngineRef();
        this.mSRStrategy.resetAll();
        this.mSRNotUseReason = 0;
        this.mGearStrategyEnabled = 0;
        this.mGearStrategyConfig = new GearStrategyConfig();
        this.mEngineConfig.remove(583);
    }

    boolean _doSupporth265Playback() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return true;
        }
        try {
            int currentPosition = mediaPlayer.getCurrentPosition();
            int duration = this.mMediaPlayer.getDuration();
            long longOption = this.mMediaPlayer.getLongOption(72, -1L);
            if (this.mMediaPlayer.getIntOption(157, -1) == 5 && this.mPlaybackState == 1 && this.mLoadState == 1 && currentPosition >= 1000 && duration - currentPosition >= 1000 && longOption >= 500) {
                int intOption = this.mMediaPlayer.getIntOption(160, 100);
                long longOption2 = this.mMediaPlayer.getLongOption(152, -1L);
                int intOption2 = this.mMediaPlayer.getIntOption(153, -1);
                float floatOption = this.mMediaPlayer.getFloatOption(151, 0.0f);
                if (floatOption > getConfigInt(205, this.mMaxFps)) {
                    floatOption /= 2.0f;
                }
                int configInt = getConfigInt(207, this.mFrameDropNum);
                int i10 = (((int) floatOption) * configInt) / (configInt + 1);
                String logcatTag = logcatTag();
                TTVideoEngineLog.d(logcatTag, "cd = " + longOption2 + ", dc = " + intOption2 + ", mdps = " + i10 + ", vs =" + intOption);
                if (longOption2 <= -350) {
                    if (intOption2 >= (i10 * 2) / 3 && intOption > 2) {
                        return false;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }

    boolean _doSupporth266Playback() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return true;
        }
        try {
            int currentPosition = mediaPlayer.getCurrentPosition();
            int duration = this.mMediaPlayer.getDuration();
            long longOption = this.mMediaPlayer.getLongOption(72, -1L);
            if (this.mMediaPlayer.getIntOption(157, -1) == 7 && this.mPlaybackState == 1 && this.mLoadState == 1 && currentPosition >= 1000 && duration - currentPosition >= 1000 && longOption >= 500) {
                int intOption = this.mMediaPlayer.getIntOption(160, 100);
                long longOption2 = this.mMediaPlayer.getLongOption(152, -1L);
                int intOption2 = this.mMediaPlayer.getIntOption(153, -1);
                float floatOption = this.mMediaPlayer.getFloatOption(151, 0.0f);
                if (floatOption > getConfigInt(205, this.mMaxFps)) {
                    floatOption /= 2.0f;
                }
                int configInt = getConfigInt(207, this.mFrameDropNum);
                int i10 = (((int) floatOption) * configInt) / (configInt + 1);
                String logcatTag = logcatTag();
                TTVideoEngineLog.d(logcatTag, "cd = " + longOption2 + ", dc = " + intOption2 + ", mdps = " + i10 + ", vs =" + intOption);
                if (longOption2 <= -350) {
                    if (intOption2 >= (i10 * 2) / 3 && intOption > 2) {
                        return false;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return true;
    }

    void _dumpSurface(String str) {
        if (!TTVideoEngineLog.d()) {
            return;
        }
        Surface surface = this.mSurface;
        SurfaceHolder surfaceHolder = this.mSurfaceHolder;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this);
        sb2.append(" -> ");
        sb2.append(str);
        sb2.append(" dumpSurface: ");
        sb2.append("mSurface = ");
        sb2.append(surface);
        if (surface != null) {
            sb2.append(" isValid = ");
            sb2.append(surface.isValid());
        }
        sb2.append(", mSurfaceHolder = ");
        sb2.append(surfaceHolder);
        if (surfaceHolder != null) {
            Surface surface2 = surfaceHolder.getSurface();
            sb2.append(" surface = ");
            sb2.append(surface2);
            if (surface2 != null) {
                sb2.append(" isValid = ");
                sb2.append(surface2.isValid());
            }
        }
        VideoSurface videoSurface = this.mTextureSurface;
        sb2.append(", mTextureSurface = ");
        sb2.append(videoSurface);
        if (videoSurface != null) {
            sb2.append(" isValid = ");
            sb2.append(videoSurface.isValid());
        }
        TTVideoEngineLog.d(logcatTag(), sb2.toString());
    }

    void _pauseByInterruption() {
        TTVideoEngineLog.i(logcatTag(), "_pause ");
        if (!this.mPrepared) {
            this.mPausedBeforePrepared = true;
            return;
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            TTVideoEngineLog.i(logcatTag(), "player will pause by interruption");
            mediaPlayer.pause();
            this.mPlaybackState = 2;
        }
    }

    void _play(boolean z10) {
        TTAVPreloaderItem tTAVPreloaderItem;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_play, mState:" + this.mState + ", byPlay:" + z10 + ", this:" + this);
        this.mStarted = true;
        this.mPausedBeforePrepared = false;
        if (z10) {
            this.mIsStartPlayAutomatically = true;
            StrategyManager.instance().enginePlay(this.mEngineWrapper);
            setSpeedTest();
        }
        _initUsingHandle();
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            if (z10) {
                iVideoEventLogger.setLoggerTimes(64);
                if (this.mPlayStartTime < 0) {
                    this.mPlayStartTime = SystemClock.elapsedRealtime();
                    String logcatTag2 = logcatTag();
                    TTVideoEngineLog.i(logcatTag2, "mPlayStartTime:" + this.mPlayStartTime + ", curT:" + System.currentTimeMillis());
                }
            } else {
                iVideoEventLogger.setIntOption(31, 1);
                this.mLogger.setLoggerTimes(65);
            }
            this.mLogger.play(z10);
        }
        _configWithAppSettings();
        int i10 = this.mState;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return;
                    }
                } else {
                    _replayOrResume();
                    return;
                }
            } else if (this.mVideoModel == null) {
                if (!this.mIsFetchingInfo) {
                    _prepareToPlay();
                    return;
                }
                return;
            } else {
                if (this.mIsPreloaderItem && (tTAVPreloaderItem = this.mPreloaderItem) != null) {
                    _logBeginToPlay(tTAVPreloaderItem.mVideoID);
                } else {
                    _logBeginToPlay(this.mVideoID);
                }
                _parseIPAddress(this.mVideoModel);
                return;
            }
        }
        _prepareToPlay();
    }

    void _seekTo(int i10, boolean z10) {
        int _getPlayerTime;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_seekTo:" + i10);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null && this.mStarted) {
            if (z10) {
                _getPlayerTime = this.mLastPlaybackTime;
            } else {
                _getPlayerTime = _getPlayerTime();
            }
            this.mSeeking = true;
            this.mSeekingStartTime = SystemClock.currentThreadTimeMillis();
            this.mLastPlaybackTime = i10;
            setPlayInfo(6, 1L);
            if (this.mSeekMode != 0 && isPlayerSupportSeekMode()) {
                if (mediaPlayer instanceof MediaPlayerWrapper) {
                    ((MediaPlayerWrapper) mediaPlayer).seekTo(i10, this.mSeekMode);
                }
            } else {
                mediaPlayer.seekTo(i10);
            }
            setPlayInfo(1, i10);
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null) {
                videoSurface.setIntOption(33, 0);
            }
            this.mLogger.seekTo(_getPlayerTime, i10, z10);
            return;
        }
        _seekComplete(false);
    }

    void _setPlayerMute(boolean z10) {
        super.setIsMute(z10);
    }

    void _setUnSupportSampleRates(int[] iArr) {
        if (iArr.length <= 0) {
            return;
        }
        int length = MediaPlayer.MEDIA_PLAYER_SUPPORT_SAMPLERATES.length;
        this.mUnsupportedSampleRatesInBinary = 0;
        for (int i10 : iArr) {
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                } else if (MediaPlayer.MEDIA_PLAYER_SUPPORT_SAMPLERATES[i11] == i10) {
                    this.mUnsupportedSampleRatesInBinary = (1 << i11) | this.mUnsupportedSampleRatesInBinary;
                    break;
                } else {
                    i11++;
                }
            }
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setIntOption(111, this.mUnsupportedSampleRatesInBinary);
        }
    }

    protected void _switchToResolution(Resolution resolution, Map<Integer, String> map) {
        int _switchToResolutionInternal = _switchToResolutionInternal(resolution, map);
        VideoEngineConfigResolutionListener videoEngineConfigResolutionListener = this.mVideoEngineConfigResolutionListener;
        if (videoEngineConfigResolutionListener != null) {
            if (_switchToResolutionInternal >= 0) {
                videoEngineConfigResolutionListener.onFinished();
                return;
            }
            this.mVideoEngineConfigResolutionListener.onError(new Error(Error.VideoOwnPlayer, _switchToResolutionInternal));
            this.mVideoEngineConfigResolutionListener = null;
        }
    }

    protected int _switchToResolutionInternal(Resolution resolution, Map<Integer, String> map) {
        IPlayDurationManager iPlayDurationManager;
        int i10;
        int i11;
        String str;
        Map<Integer, String> map2;
        if (this.currentResolution == resolution && (((map2 = this.currentParams) == null && map == null) || (map2 != null && map2.equals(map)))) {
            TTVideoEngineLog.e(logcatTag(), "switch to the same resolution:" + _resolutionToString(resolution) + ", drop");
            return Error.ConfigResolutionSameParameter;
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel == null) {
            TTVideoEngineLog.e(logcatTag(), "switch  resolution VideoModel NULL");
            return Error.ConfigResolutionNoVideoModel;
        }
        if (this.currentResolution != resolution && this.mListenerCompact != null) {
            VideoInfo videoInfo = iVideoModel.getVideoInfo(resolution, iVideoModel.getVideoRefInt(7), map, false);
            IVideoModel iVideoModel2 = this.mVideoModel;
            VideoInfo videoInfo2 = iVideoModel2.getVideoInfo(this.currentResolution, iVideoModel2.getVideoRefInt(7), this.currentParams, false);
            if (videoInfo2 != null && videoInfo != null) {
                if (videoInfo.getValueInt(3) == videoInfo2.getValueInt(3)) {
                    notifyStreamChanged(this.mVideoModel.getVideoRefInt(7));
                }
            }
        }
        this.lastResolution = this.currentResolution;
        this.mLastSwitchResolutionTime = System.currentTimeMillis();
        this.currentResolution = resolution;
        this.currentParams = map;
        TTVideoEngineLog.i(logcatTag(), "will switch to resolution:" + _resolutionToString(this.currentResolution) + ", from resolution:" + _resolutionToString(this.lastResolution));
        if (map != null) {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                TTVideoEngineLog.i(logcatTag(), "will switch to params, Key = " + entry.getKey() + ",Value = " + entry.getValue());
            }
        }
        boolean isSupportSeamlessSwitch = isSupportSeamlessSwitch(this.mVideoModel);
        if (isSupportSeamlessSwitch && this.mPlaybackState != 2) {
            int i12 = VideoRef.TYPE_VIDEO;
            if (this.mVideoModel.hasData()) {
                if (map == null) {
                    map = new HashMap<>();
                }
                if (this.mConfigCenterVersion > 0) {
                    str = this.mEngineConfig.getStringOption(1000);
                } else {
                    str = this.mCodecType;
                }
                if (str.equals("h266") && this.mVideoModel.getVideoRefBool(VideoRef.VALUE_VIDEO_REF_CODEC_HAS_h266)) {
                    map.put(8, "h266");
                } else if (str.equals("h265") && this.mVideoModel.getVideoRefBool(204)) {
                    map.put(8, "h265");
                } else if (this.mVideoModel.getVideoRefBool(203)) {
                    map.put(8, "h264");
                }
                VideoInfo _videoInfoForResolution = _videoInfoForResolution(this.currentResolution, this.mVideoModel.getVideoRefInt(7), map);
                if (_videoInfoForResolution != null) {
                    i11 = _videoInfoForResolution.getValueInt(3);
                    i10 = _videoInfoForResolution.getMediatype();
                } else {
                    i10 = i12;
                    i11 = 0;
                }
                if (this.mVideoEngineInfoListener != null) {
                    ArrayList arrayList = new ArrayList();
                    if (this.mVideoModel.hasFormat(IVideoModel.Format.DASH)) {
                        String dynamicType = this.mVideoModel.getDynamicType();
                        if (!TextUtils.isEmpty(dynamicType) && dynamicType.equals(TTVideoEngineInterface.DYNAMIC_TYPE_SEGMENTBASE)) {
                            VideoInfo _videoInfoForResolution2 = _videoInfoForResolution(this.currentResolution, VideoRef.TYPE_VIDEO, map);
                            VideoInfo _videoInfoForResolution3 = _videoInfoForResolution(this.currentResolution, VideoRef.TYPE_AUDIO, map);
                            if (_videoInfoForResolution2 != null) {
                                arrayList.add(_videoInfoForResolution2);
                            }
                            if (_videoInfoForResolution3 != null) {
                                arrayList.add(_videoInfoForResolution3);
                            }
                        }
                    } else if (_videoInfoForResolution != null) {
                        arrayList.add(_videoInfoForResolution);
                    }
                    if (arrayList.size() > 0) {
                        VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
                        videoEngineInfos.setKey(VideoEngineInfos.USING_URL_INFOS);
                        videoEngineInfos.setUrlInfos(arrayList);
                        notifyEngineInfo(videoEngineInfos, true);
                    }
                }
            } else {
                i10 = i12;
                i11 = 0;
            }
            if (this.mMediaPlayer != null && isInHousePlayer()) {
                this.mLogger.switchResolution(_resolutionToString(this.currentResolution), _resolutionToString(this.lastResolution), false);
                changeResolutionSwitchingState(true);
                this.mMediaPlayer.switchStream(i11, i10);
                return 0;
            }
        }
        if (!this.mSeamSwitchingResolution) {
            this.mSeamSwitchingResolution = true;
            this.mLogger.switchResolution(_resolutionToString(this.currentResolution), _resolutionToString(this.lastResolution), true);
            changeResolutionSwitchingState(true);
            if (!isSupportSeamlessSwitch && (iPlayDurationManager = this.mPlayDuration) != null) {
                iPlayDurationManager.stop();
            }
            this.mLastPlaybackTime = _getPlayerTime();
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.pause();
        }
        _parseIPAddress(this.mVideoModel);
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.setIntOption(33, 0);
        }
        return 0;
    }

    void _updateCurrentInfoToMDL(int i10) {
        setPlayInfo(1, i10);
        if (getConfigInt(656, this.mEnableHeartBeat ? 1 : 0) != 1) {
            _syncPlayInfoToMdl();
            if (getConfigInt(160, this.mDataLoaderEnable) > 0) {
                DataLoaderHelper.getDataLoader().updateCurrentNetStatus();
            }
        }
    }

    synchronized void addSurfaceCallback(SurfaceHolder surfaceHolder) {
        if (this.mSurfaceCallback == null) {
            TTVideoEngineSurfaceCallback tTVideoEngineSurfaceCallback = new TTVideoEngineSurfaceCallback(this.mEngineWrapper);
            this.mSurfaceCallback = tTVideoEngineSurfaceCallback;
            surfaceHolder.addCallback(tTVideoEngineSurfaceCallback);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void addVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mListenerCompact.addVideoEngineCallback(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void asyncInitSR(boolean z10) {
        this.mAsyncInitSR = z10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]asyncInitSR = " + z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean clearSurface(Surface surface, boolean z10) {
        try {
            return TextureRenderManager.getManager().clearSurface(surface, z10);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void clearTextureRef() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "clearTextureRef," + this);
        if (getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_CLEAR_TEXTUREREF_ASYNC, this.mEnableClearTextureRefAsync) == 1 && this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(35);
        } else {
            _doClearTextureRef();
        }
    }

    public void configParams(Resolution resolution, Map<Integer, String> map, VideoEngineConfigResolutionListener videoEngineConfigResolutionListener) {
        this.mVideoEngineConfigResolutionListener = videoEngineConfigResolutionListener;
        configParams(resolution, map);
    }

    public void configResolution(Resolution resolution, VideoEngineConfigResolutionListener videoEngineConfigResolutionListener) {
        this.mVideoEngineConfigResolutionListener = videoEngineConfigResolutionListener;
        configResolution(resolution);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected MediaPlayer createMediaPlayer() {
        updateConfigParams(this.mConfigParams);
        MediaPlayer create = MediaPlayerWrapper.create(this.mContext, this.mPlayerDegradeMode, this.mConfigParams);
        if (create == null) {
            return null;
        }
        MediaPlayerWrapper mediaPlayerWrapper = (MediaPlayerWrapper) create;
        if (mediaPlayerWrapper.hasException() && this.mLogger != null) {
            String exceptionStr = mediaPlayerWrapper.getExceptionStr();
            this.mLogger.logPluginException(exceptionStr + ",customState:" + this.mClassLoaderState);
        }
        if (mediaPlayerWrapper.getPlayerClient() == null) {
            return null;
        }
        _setupMediaCodec(create);
        _tryRegisterMdlHandle(create);
        TTVideoEngineAdapter.tryRegisterHlsProxyHandle(create);
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setPlayerCreatedT(System.currentTimeMillis());
        }
        this.mPlayerConfigExecutor.setMediaPlayer(create);
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "_playInternal MediaPlayerWrapper.create done videoId = " + this.mVideoID);
        return create;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public synchronized void createPlayer() {
        if (this.mAsyncPlayer == null) {
            this.mAsyncPlayer = createMediaPlayer();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void createPlayerAsync() {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(34);
        } else {
            _createPlayerAsync();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public ArrayList<HashMap<String, Object>> crosstalkHappen(ArrayList<TTVideoEngine> arrayList, HashMap<String, TTVideoEngineMonitor.TTVideoEngineLivePlayerInfo> hashMap) {
        ArrayList arrayList2 = new ArrayList();
        ArrayList<HashMap<String, Object>> arrayList3 = new ArrayList<>();
        HashMap<String, Object> generateCrosstalkMap = generateCrosstalkMap(this.mTag, this.mSubTag, 0, null);
        arrayList3.add(generateCrosstalkMap);
        String generateCrosstalkStr = generateCrosstalkStr(generateCrosstalkMap);
        if (!TextUtils.isEmpty(generateCrosstalkStr)) {
            arrayList2.add(generateCrosstalkStr);
        }
        Iterator<TTVideoEngine> it = arrayList.iterator();
        while (it.hasNext()) {
            TTVideoEngine next = it.next();
            if (!next.equals(this.mEngineWrapper)) {
                HashMap<String, Object> generateCrosstalkMap2 = generateCrosstalkMap(next.getTag(), next.getSubTag(), 0, null);
                arrayList3.add(generateCrosstalkMap2);
                String generateCrosstalkStr2 = generateCrosstalkStr(generateCrosstalkMap2);
                if (!TextUtils.isEmpty(generateCrosstalkStr2)) {
                    arrayList2.add(generateCrosstalkStr2);
                }
            }
        }
        if (hashMap != null && hashMap.size() > 0) {
            for (String str : hashMap.keySet()) {
                TTVideoEngineMonitor.TTVideoEngineLivePlayerInfo tTVideoEngineLivePlayerInfo = hashMap.get(str);
                if (tTVideoEngineLivePlayerInfo != null) {
                    String generateCrosstalkStr3 = generateCrosstalkStr(generateCrosstalkMap(tTVideoEngineLivePlayerInfo.mTag, tTVideoEngineLivePlayerInfo.mSubTag, 1, str));
                    if (!TextUtils.isEmpty(generateCrosstalkStr3)) {
                        arrayList2.add(generateCrosstalkStr3);
                    }
                }
            }
        } else if (arrayList2.size() >= 2) {
            this.mLogger.crosstalkHappen(arrayList2.size(), arrayList2);
        }
        return arrayList3;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void dynamicControlSR(boolean z10) {
        this.mDynamicControlSR = z10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]dynamicControlSR = " + z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void forceDraw() {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(27);
        } else {
            doForceDraw();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getAPIString() {
        boolean z10;
        int i10;
        int i11;
        String str;
        boolean z11;
        boolean z12;
        int i12 = 0;
        if (!TextUtils.isEmpty(this.mFallbackAPI)) {
            try {
                i12 = JniUtils.getDecodeMethod();
            } catch (Exception unused) {
            }
            StringBuilder sb2 = new StringBuilder(this.mFallbackAPI);
            sb2.append(String.format("&method=%d", Integer.valueOf(i12)));
            if (!TextUtils.isEmpty(this.mForceCodec)) {
                sb2.append(String.format("&%s=%s", TTVideoEngineInterface.PLAY_API_KEY_FORCE_CODEC, this.mForceCodec));
            }
            String sb3 = sb2.toString();
            TTVideoEngineLog.i(logcatTag(), "api string from fallback api:" + sb3);
            return sb3;
        }
        HashMap hashMap = new HashMap();
        boolean tryLoadPlayerPlugin = MediaPlayerWrapper.tryLoadPlayerPlugin();
        String value = TTPlayerConfiger.getValue(14, "");
        if (this.mConfigCenterVersion > 0) {
            if (this.mEngineConfig.getIntOption(17) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = this.mDashEnabled;
        }
        if (!tryLoadPlayerPlugin) {
            this.mHardwareDecodeEnablePlayer2 = 0;
        }
        if (this.mPlayerType == 2 && getConfigInt(34, this.mDrmType) == 2) {
            hashMap.put("format_type", TTVideoEngineInterface.FORMAT_TYPE_MPD);
        }
        if (getConfigInt(312, this.mEnableHttps ? 1 : 0) != 1 && !this.mRetryEnableHttps) {
            this.mHttpsEnabled = false;
        } else {
            this.mHttpsEnabled = true;
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_SSL, "1");
        }
        hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_PLAYERVERSION, value);
        if (this.mEnableMaskThread > 1) {
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_BARRAGEMASK, "1");
        }
        int lastPortraitResult = PortraitNetworkScore.getInstance().getLastPortraitResult();
        if (lastPortraitResult != -1) {
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_NETWORKCORE, String.valueOf(lastPortraitResult));
        }
        if (!TextUtils.isEmpty(this.mForceCodec)) {
            hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_FORCE_CODEC, this.mForceCodec);
        }
        Map<String, String> playerAbility = TTVideoEngine.getPlayerAbility(this.mPlayerType);
        if (this.mFetchWithAbilityOption && !playerAbility.isEmpty()) {
            try {
                hashMap.put(TTVideoEngineInterface.PLAY_API_KEY_SDK_OPTIONS, new JSONObject(playerAbility).toString());
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        TTVideoEngineLog.i(logcatTag(), hashMap.toString());
        if (this.mConfigCenterVersion > 0) {
            i10 = this.mEngineConfig.getIntOption(600);
        } else {
            i10 = this.mHlsEnabled;
        }
        if (this.mConfigCenterVersion > 0) {
            i11 = this.mEngineConfig.getIntOption(601);
        } else {
            i11 = this.mEncryptEnabled;
        }
        if (this.mConfigCenterVersion > 0) {
            str = this.mEngineConfig.getStringOption(1000);
        } else {
            str = this.mCodecType;
        }
        String str2 = str;
        String str3 = this.mAuthorization;
        int i13 = this.mPlayAPIVersion;
        if (i10 > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (i11 > 0) {
            z12 = true;
        } else {
            z12 = false;
        }
        FetcherApiHelper fetcherApiHelper = new FetcherApiHelper(str3, i13, z10, z11, z12, str2);
        fetcherApiHelper.setParams(hashMap);
        return fetcherApiHelper.getAPIString();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public int getAudioLatencyTime() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return 0;
        }
        return mediaPlayer.getIntOption(567, 0);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public int getAudioLatencytime() {
        return getAudioLatencyTime();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getCacheControlEnabled() {
        return this.mCacheControlEnabled;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public List<String> getCacheKeys() {
        return new ArrayList(this.mUsingDataLoaderPlayTaskKeys);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getCurrentPlayPath() {
        if (this.mIsLocal) {
            return this.mLocalURL;
        }
        return this.mURLInfo.hostURL;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getCurrentPlaybackTime() {
        int i10 = this.mState;
        int i11 = -1;
        if (i10 != 3) {
            if (this.mSeamSwitchingResolution || i10 == 4) {
                i11 = this.mLastPlaybackTime;
            }
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "state not correct return:" + this.mState);
            return i11;
        }
        int i12 = this.mPlaybackState;
        if ((i12 != 1 && i12 != 2 && !this.mPrepared) || this.mShouldStop) {
            String logcatTag2 = logcatTag();
            TTVideoEngineLog.i(logcatTag2, "playbackstate not correct return:" + this.mPlaybackState);
            return -1;
        } else if (this.mHasComplete) {
            int i13 = this.mDuration;
            if (i13 <= 0) {
                return -1;
            }
            return i13;
        } else if (getConfigInt(663, this.mGetPositionSkipLooper ? 1 : 0) != 1 && this.mLooperThread.checkEngineLooperThread(true)) {
            if (!this.mLooperThread.sendEngineMessage(151, getConfigInt(950, (int) this.mSendEngineMsgTimeout))) {
                return -1;
            }
            this.mLooperThread.mEngineMsgRetValue.setDataPosition(0);
            return this.mLooperThread.mEngineMsgRetValue.readInt();
        } else {
            return _doGetCurrentPlaybackTime();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getCurrentPlaybackTimeAsync() {
        int i10 = this.mPlayerType;
        if (i10 != 2 && i10 != 5 && getConfigInt(602, this.mPosUpdateInterval) > 0) {
            return this.mCurPosition;
        }
        return getCurrentPlaybackTime();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getCurrentQualityDesc() {
        return this.mCurrentQualityDesc;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution getCurrentResolution() {
        return this.currentResolution;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getDirectUrl() {
        return this.mDirectURL;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getDubbedMemUrl(List<DubbedInfo> list) {
        JSONArray jSONArray;
        DubbedInfo dubbedInfo;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        JSONArray jSONArray4;
        TTVideoEngineImpl tTVideoEngineImpl = this;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONObject jSONObject = new JSONObject();
                    JSONArray jSONArray5 = new JSONArray();
                    JSONArray jSONArray6 = new JSONArray();
                    for (DubbedInfo dubbedInfo2 : list) {
                        if (dubbedInfo2 != null) {
                            if (!TextUtils.isEmpty(dubbedInfo2.mFileKey)) {
                                jSONArray = jSONArray6;
                                jSONArray2 = jSONArray5;
                                String _mdlUrl = _mdlUrl(dubbedInfo2.mFileKey, null, tTVideoEngineImpl.getConfigInt(161, tTVideoEngineImpl.mLimitMDLCacheSize), dubbedInfo2.getUrls(), Resolution.Undefine, null, null, null, null, 0L, null, -1);
                                if (!TextUtils.isEmpty(_mdlUrl)) {
                                    dubbedInfo = dubbedInfo2;
                                    dubbedInfo.mMainUrl = _mdlUrl;
                                    dubbedInfo.mBackupUrl1 = _mdlUrl;
                                } else {
                                    dubbedInfo = dubbedInfo2;
                                }
                            } else {
                                jSONArray = jSONArray6;
                                dubbedInfo = dubbedInfo2;
                                jSONArray2 = jSONArray5;
                            }
                            JSONObject bashJsonObject = dubbedInfo.toBashJsonObject();
                            if (bashJsonObject == null) {
                                tTVideoEngineImpl = this;
                                jSONArray6 = jSONArray;
                                jSONArray5 = jSONArray2;
                            } else {
                                int i10 = dubbedInfo.mMediaType;
                                if (i10 == 0) {
                                    jSONArray3 = jSONArray2;
                                    jSONArray3.put(bashJsonObject);
                                } else {
                                    jSONArray3 = jSONArray2;
                                    if (i10 == 1) {
                                        jSONArray4 = jSONArray;
                                        jSONArray4.put(bashJsonObject);
                                        tTVideoEngineImpl = this;
                                        jSONArray6 = jSONArray4;
                                        jSONArray5 = jSONArray3;
                                    }
                                }
                                jSONArray4 = jSONArray;
                                tTVideoEngineImpl = this;
                                jSONArray6 = jSONArray4;
                                jSONArray5 = jSONArray3;
                            }
                        }
                    }
                    jSONObject.put("dynamic_video_list", jSONArray5);
                    jSONObject.put("dynamic_audio_list", jSONArray6);
                    return "mem://bash/url_index:0/segment_format:1/" + jSONObject.toString();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public float getFloatOption(int i10) {
        if (i10 != 474) {
            return _doGetFloatOption(i10);
        }
        TTTestSpeedListener tTTestSpeedListener = this.mTTSpeedListener;
        if (tTTestSpeedListener == null) {
            return 0.0f;
        }
        return tTTestSpeedListener.mAverageDownloadSpeed;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public GearStrategyConfig getGearStrategyEngineConfig() {
        return this.mGearStrategyConfig;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getHash() {
        return this.mEngineHash;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IVideoModel getIVideoModel() {
        return this.mVideoModel;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public int getIntOption(int i10) {
        return _doGetIntOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IVideoEventLogger getLogger() {
        return this.mLogger;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public long getLongOption(int i10) {
        return _doGetLongOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public boolean getLooping(boolean z10) {
        return this.mLooping;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public float getMaxVolume() {
        int i10;
        Context context = this.mContext;
        if (context == null) {
            return 0.0f;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        int i11 = 0;
        if (audioManager != null) {
            i10 = audioManager.getStreamMaxVolume(3);
        } else {
            i10 = 0;
        }
        if (i10 >= 0) {
            i11 = i10;
        }
        return i11;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaPlayer getMediaPlayer() {
        return this.mMediaPlayer;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaTrackInfoModel[] getMediaTrackInfos() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            String stringOption = mediaPlayer.getStringOption(473);
            if (!TextUtils.isEmpty(stringOption)) {
                ArrayList arrayList = new ArrayList();
                MediaTrackInfoModel[] mediaTrackInfoModelArr = null;
                try {
                    try {
                        JSONArray jSONArray = new JSONArray(stringOption);
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                            JSONObject jSONObject = new JSONObject(optJSONObject.getString("media_track_info"));
                            jSONObject.put(TextureRenderKeys.KEY_IS_INDEX, optJSONObject.getInt(TextureRenderKeys.KEY_IS_INDEX));
                            jSONObject.put("type", Integer.parseInt(jSONObject.getString("type")));
                            arrayList.add(new MediaTrackInfoModel(jSONObject));
                        }
                        mediaTrackInfoModelArr = new MediaTrackInfoModel[arrayList.size()];
                        arrayList.toArray(mediaTrackInfoModelArr);
                        return mediaTrackInfoModelArr;
                    } catch (JSONException e10) {
                        e10.printStackTrace();
                        return mediaTrackInfoModelArr;
                    }
                } catch (Throwable unused) {
                    return mediaTrackInfoModelArr;
                }
            }
        }
        return new MediaTrackInfoModel[0];
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public IMediaMetrics getMetrics(int i10) {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger == null) {
            return null;
        }
        return iVideoEventLogger.buildMetrics(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getMirrorHorizontal() {
        return this.mIsMirrorHorizontal;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean getMirrorVertical() {
        return this.mIsMirrorVertical;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public TTVNetClient getNetClientSetByUser() {
        TTVNetClient tTVNetClient = this.mNetClient;
        if (tTVNetClient != null) {
            return tTVNetClient;
        }
        TTVNetClient tTVNetClient2 = TTVideoEngineConfig.gNetClient;
        if (tTVNetClient2 != null) {
            return tTVNetClient2;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public int getPlayAPIVersion() {
        return this.mPlayAPIVersion;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public JSONObject getPlayErrorInfo() {
        if (this.mLooperThread.checkEngineLooperThread(true)) {
            this.mLooperThread.sendEngineMessage(154, -1L);
            this.mLooperThread.mEngineMsgRetValue.setDataPosition(0);
            String str = (String) this.mLooperThread.mEngineMsgRetValue.readValue(getClass().getClassLoader());
            if (!TextUtils.isEmpty(str)) {
                try {
                    return new JSONObject(str);
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            return null;
        }
        return _doGetPlayErrorInfo();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getPlayerSessionId() {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            return iVideoEventLogger.getStringOption(86);
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getQualityDescBeforeDowngrade() {
        return this.mQualityDescBeforeDowngrade;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution getResolutionBeforeDowngrade() {
        return this.mResolutionBeforeDowngrade;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public int getRotation() {
        return this.mRotation;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Nullable
    public Map<String, Object> getStrategyLogData(String str) {
        return StrategyHelper.helper().getLogData(this.mVideoID, str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public StrategySource getStrategySource() {
        return this.mCodecStrategyAdapter.getStrategySource();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public String getStringOption(int i10) {
        return _doGetStringOption(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getSubTag() {
        return this.mSubTag;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Nullable
    public String getSubtitleContentInfo(int i10) {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null || !(mediaPlayer instanceof MediaPlayerWrapper)) {
            return null;
        }
        return ((MediaPlayerWrapper) mediaPlayer).getSubtitleContent(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public Surface getSurface() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "getSurface:" + this.mSurface + ", this:" + this);
        return this.mSurface;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getTag() {
        return this.mTag;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public VideoSurface getTextureSurface() {
        return this.mTextureSurface;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getTraceId() {
        return this.mTraceId;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public MediaPlayer.TrackInfo[] getTrackInfo() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            return null;
        }
        return mediaPlayer.getTrackInfo();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public EventLoggerSource getVideoEngineDataSource() {
        return new MyLoggerDataSource(this);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public VideoFormatInfo getVideoFormatInfo() {
        VideoFormatInfo videoFormatInfo = new VideoFormatInfo();
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            String stringOption = mediaPlayer.getStringOption(516);
            if (!TextUtils.isEmpty(stringOption)) {
                if (stringOption.indexOf(TTVideoEngineInterface.FORMAT_TYPE_MP4) > 0) {
                    videoFormatInfo.fileFormat = TTVideoEngineInterface.FORMAT_TYPE_MP4;
                } else {
                    int indexOf = stringOption.indexOf(",");
                    if (indexOf < 0) {
                        videoFormatInfo.fileFormat = stringOption;
                    } else {
                        videoFormatInfo.fileFormat = stringOption.substring(0, indexOf);
                    }
                }
            }
            videoFormatInfo.bitrate = this.mMediaPlayer.getLongOption(171, 0L);
            videoFormatInfo.videoCodecName = this.mMediaPlayer.getIntOption(157, -1);
            videoFormatInfo.videoProfile = this.mMediaPlayer.getIntOption(403, -1);
            videoFormatInfo.width = this.mMediaPlayer.getVideoWidth();
            videoFormatInfo.height = this.mMediaPlayer.getVideoHeight();
            videoFormatInfo.rotation = this.mMediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ROTATION, -1);
            videoFormatInfo.containerFps = this.mMediaPlayer.getFloatOption(151, 0.0f);
            videoFormatInfo.audioCodecName = this.mMediaPlayer.getIntOption(158, -1);
            videoFormatInfo.audioProfile = this.mMediaPlayer.getIntOption(402, -1);
            videoFormatInfo.channels = this.mMediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CHANNELS, -1);
            videoFormatInfo.sampleRate = this.mMediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SAMPLE_RATE, -1);
        }
        return videoFormatInfo;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String getVideoID() {
        return this.mVideoID;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public VideoModel getVideoModel() {
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel instanceof VideoModel) {
            return (VideoModel) iVideoModel;
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void ignoreSRResolutionLimit(boolean z10) {
        this.mSRIgnoreRes = z10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]ignoreSRResolutionLimit ignore=" + z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void initSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]initSRStrategyConfig mSRStrategy=" + this.mSRStrategy + " config=" + sRStrategyConfig);
        if (sRStrategyConfig == null) {
            return;
        }
        this.mEnableSRStrategy = true;
        sRStrategyConfig.setStrategyType(1);
        this.mSRStrategy.setSRStrategyMode(0);
        this.mSRStrategy.updateConfig(sRStrategyConfig);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isDashSource() {
        return this.mIsDashSource;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public boolean isMute() {
        boolean z10 = this.mIsMute;
        if (this.mState == 3 && (this.mShouldPlay || this.mPlaybackState == 2)) {
            if (this.mLooperThread.checkEngineLooperThread(true)) {
                this.mLooperThread.sendEngineMessage(155, -1L);
                this.mLooperThread.mEngineMsgRetValue.setDataPosition(0);
                if (this.mLooperThread.mEngineMsgRetValue.readInt() == 1) {
                    return true;
                }
                return false;
            }
            return _doIsMute();
        }
        return z10;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isPrepared() {
        return this.mPrepared;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isReleased() {
        return this.mReleased;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isReportLogEnable() {
        return this.mLogger.isUploadLogEnabled();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isSupportHDR() {
        return InfoWrapper.isHDREnable();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isSupportSR() {
        return InfoWrapper.isSREnable();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public boolean isSystemPlayer() {
        return _doIsSystemPlayer();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean isplaybackUsedSR() {
        VideoSurface videoSurface = this.mTextureSurface;
        boolean z10 = false;
        if (videoSurface != null && videoSurface.getIntOption(6) == 1) {
            z10 = true;
        }
        TTVideoEngineLog.i(logcatTag(), "isplaybackUsedSR ,mPlayBackUsedSR = " + this.mPlayBackUsedSR + ", mTextureSrOpen = " + this.mTextureSrOpen + ", ret = " + z10);
        return z10;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.TTVideoEngineInterface
    public String logcatTag() {
        return this.mEngineWrapper.logcatTag();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyBufferEnd(int i10) {
        TTVideoEngineLooperThread2 tTVideoEngineLooperThread2 = this.mLooperThread;
        if (tTVideoEngineLooperThread2 != null && tTVideoEngineLooperThread2.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(416, i10, 0, null);
            return;
        }
        ListenerCompact listenerCompact = this.mListenerCompact;
        if (listenerCompact != null) {
            listenerCompact.onBufferEnd(i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyBufferStart(int i10, int i11, int i12) {
        if (this.mLooperThread.checkSendMainLooper()) {
            HashMap hashMap = new HashMap();
            hashMap.put("bufferStartAction", Integer.valueOf(i12));
            hashMap.put("traceid", this.mTraceId);
            this.mLooperThread.postMainLooperMessage(415, i10, i11, hashMap);
            return;
        }
        this.mListenerCompact.onBufferStart(i10, i11, i12);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyBufferingUpdate(int i10) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(403, i10, 0, null);
        } else {
            this.mListenerCompact.onBufferingUpdate(this.mEngineWrapper, i10);
        }
        _doMetrics();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void notifyCacheEnd() {
        if (this.mVideoEngineInfoListener != null) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "notify cache end. source id: " + this.mUsingDataLoaderPlayRawKey);
            VideoEngineInfos videoEngineInfos = new VideoEngineInfos();
            videoEngineInfos.setKey(VideoEngineInfos.USING_MDL_CACHE_END);
            notifyEngineInfo(videoEngineInfos, true);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyCompletion() {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(408, 0, 0, null);
        } else {
            this.mListenerCompact.onCompletion(this.mEngineWrapper);
        }
    }

    protected void notifyEngineInfo(VideoEngineInfos videoEngineInfos, boolean z10) {
        if (this.mVideoEngineInfoListener == null) {
            return;
        }
        if (this.mLooperThread.checkSendMainLooper()) {
            if (z10) {
                this.mLooperThread.postMainLooperMessage(412, 0, 0, videoEngineInfos);
                return;
            } else {
                this.mLooperThread.postEngineMessage(412, 0, 0, videoEngineInfos);
                return;
            }
        }
        this.mVideoEngineInfoListener.onVideoEngineInfos(videoEngineInfos);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyError(Error error) {
        _notifyError(error);
    }

    protected void notifyFetchedVideoInfo(IVideoModel iVideoModel) {
        if (this.mVideoInfoListener == null) {
            return;
        }
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(411, 0, 0, iVideoModel);
        } else {
            this.mVideoInfoListener.onFetchedVideoInfo((VideoModel) iVideoModel);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyInfoIdChanged(int i10) {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.onVideoInfoIdChanged(i10);
        }
        this.mListenerCompact.onInfoIdChanged(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyLoadStateChanged(int i10) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(401, i10, this.mShouldPlay ? 1 : 0, null);
        } else if (this.mShouldPlay || i10 != 3) {
            this.mListenerCompact.onLoadStateChanged(this.mEngineWrapper, i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyPlaybackStateChanged(int i10) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(400, this.mPlaybackState, 0, null);
        } else {
            this.mListenerCompact.onPlaybackStateChanged(this.mEngineWrapper, this.mPlaybackState);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyPrepare() {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(404, 0, 0, null);
        } else {
            this.mListenerCompact.onPrepare(this.mEngineWrapper);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyPrepared() {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(405, 0, 0, null);
        } else {
            this.mListenerCompact.onPrepared(this.mEngineWrapper);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyReadyForDisplay() {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(419, 0, 0, null);
        } else {
            this.mListenerCompact.onReadyForDisplay(this.mEngineWrapper);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyRenderStart() {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(406, 0, 0, this.mTraceId);
        } else {
            this.mListenerCompact.onRenderStart(this.mEngineWrapper);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifySARChanged(int i10, int i11) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(418, i10, i11, null);
        } else {
            this.mListenerCompact.onSARChanged(i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifySeekCompletion(boolean z10) {
        if (this.mSeekCompletionListener == null) {
            return;
        }
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(414, z10 ? 1 : 0, 0, null);
        } else {
            this.mSeekCompletionListener.onCompletion(z10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyStreamChanged(int i10) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(407, i10, 0, null);
        } else {
            this.mListenerCompact.onStreamChanged(this.mEngineWrapper, i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void notifyVideoSizeChanged(int i10, int i11) {
        if (this.mLooperThread.checkSendMainLooper()) {
            this.mLooperThread.postMainLooperMessage(402, i10, i11, null);
        } else {
            this.mListenerCompact.onVideoSizeChanged(this.mEngineWrapper, i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
        if (this.mIsLocal) {
            i10 = 100;
        }
        this.mLoadedProgress = i10;
        setPlayInfo(2, i10);
        notifyBufferingUpdate(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerCompletion(MediaPlayer mediaPlayer) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "receive onCompletion,this:" + this);
        this.mLogger.watchFinish();
        if (!this.mLooping) {
            this.mIsPlayComplete = true;
            updatePlaybackState(0);
            IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
            if (iPlayDurationManager != null) {
                iPlayDurationManager.stop();
                this.mLogger.addWatchedDuration(this.mPlayDuration.getPlayedDuration());
            }
            _updateCurrentPlaybackPosition(this.mDuration, true);
            this.mLogger.curPlayBackTime(this.mDuration);
            _updateLogger();
            this.mLogger.movieFinish(3);
            this.mHasFirstFrameShown = false;
            this.mHasFetchedSubtitle = false;
            this.mPlayStartTime = -1L;
            this.mRenderStartTime = -1L;
            this.mHasAudioFirstFrameShown = false;
            this.mSeamSwitchingResolution = false;
            changeResolutionSwitchingState(false);
            this.mLastPlaybackTime = 0;
            this.mRetrying = false;
            this.mStarted = false;
            this.mHasComplete = true;
            this.mSeeking = false;
            _updateTextureState(3);
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null) {
                videoSurface.setIntOption(33, 0);
            }
        } else {
            this.mLogger.loopAgain();
        }
        notifyCompletion();
        if (mediaPlayer.isOSPlayer()) {
            this.mPrepared = false;
        }
        this.mStartTime = 0;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected boolean onMediaPlayerError(MediaPlayer mediaPlayer, int i10, int i11) {
        IPlayDurationManager iPlayDurationManager = this.mPlayDuration;
        if (iPlayDurationManager != null) {
            iPlayDurationManager.stop();
        }
        updatePlaybackState(3);
        updateLoadState(3, -1);
        if (this.mState == 0) {
            TTVideoEngineLog.i(logcatTag(), "invalid state,return directly");
            return true;
        }
        String stringOption = mediaPlayer.getStringOption(5002);
        String domainForPlayer = Error.getDomainForPlayer(mediaPlayer);
        if (domainForPlayer.equals(Error.VideoOwnPlayer) && this.mRetryingNotHandleError) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "retrying, not handle error: " + i10 + ", i1:" + i11);
            return true;
        }
        Error error = new Error(domainForPlayer, i10, i11, stringOption);
        this.mError = error;
        receivedError(error);
        return true;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected boolean onMediaPlayerInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 701) {
                    if (i10 != 702) {
                        switch (i10) {
                            case MediaPlayer.MEDIA_INFO_POSITION_UPDATE /* -268435438 */:
                                _updateCurrentPlaybackPosition(i11, true);
                                _updateCurrentInfoToMDL(i11);
                                break;
                            case MediaPlayer.MEDIA_INFO_BARRAGE_MASK_INFO /* -268435392 */:
                                IVideoEventLogger iVideoEventLogger = this.mLogger;
                                if (iVideoEventLogger != null) {
                                    iVideoEventLogger.setMaskErrorCode(i11);
                                    break;
                                }
                                break;
                            case MediaPlayer.MEDIA_INFO_VIDEO_READY_FOR_DISPLAY /* -268435390 */:
                                notifyReadyForDisplay();
                                break;
                            case MediaPlayer.MEDIA_INFO_VIDEO_SECOND_FRAME /* -268435388 */:
                                _secondFrame();
                                break;
                            case 801:
                                _seekComplete(false);
                                break;
                            case MediaPlayer.MEDIA_INFO_STREAM_CHANGED /* 251658244 */:
                                _streamChanged(i11);
                                break;
                            case MediaPlayer.MEDIA_INFO_AUDIO_RENDER_START /* 251658252 */:
                                _audioRenderStart();
                                break;
                            default:
                                switch (i10) {
                                    case MediaPlayer.MEDIA_INFO_INFO_ID_CHANGED /* -268435436 */:
                                        notifyInfoIdChanged(i11);
                                        break;
                                    case MediaPlayer.MEDIA_INFO_PRECISE_PAUSED /* -268435435 */:
                                        updatePlaybackState(2);
                                        break;
                                    case MediaPlayer.MEDIA_INFO_ABR_GET_PREDICT /* -268435434 */:
                                        _onABRGetPredictResult(i11);
                                        break;
                                    default:
                                        switch (i10) {
                                            case MediaPlayer.MEDIA_INFO_PREBUFFERING_START /* -268435408 */:
                                                _preBuffering(i11);
                                                break;
                                            case MediaPlayer.MEDIA_INFO_AVOUTSYNC_START /* -268435407 */:
                                                String logcatTag = logcatTag();
                                                TTVideoEngineLog.i(logcatTag, "av outsync start:" + i11);
                                                this.mLogger.AVOutSyncStart(i11);
                                                break;
                                            case MediaPlayer.MEDIA_INFO_AVOUTSYNC_END /* -268435406 */:
                                                String logcatTag2 = logcatTag();
                                                TTVideoEngineLog.i(logcatTag2, "av outsync end:" + i11);
                                                this.mLogger.AVOutSyncEnd(i11);
                                                break;
                                            case MediaPlayer.MEDIA_INFO_FORMATER_START /* -268435405 */:
                                                _formaterStart();
                                                break;
                                            case MediaPlayer.MEDIA_INFO_DECODER_START /* -268435404 */:
                                                _decoderStart(i11);
                                                break;
                                            case MediaPlayer.MEDIA_NO_AVRENDER_START /* -268435403 */:
                                                this.mLogger.AVNoRenderStart(i11, 0);
                                                break;
                                            case MediaPlayer.MEDIA_NO_AVRENDER_END /* -268435402 */:
                                                this.mLogger.AVNoRenderEnd(i11);
                                                break;
                                            case MediaPlayer.MEDIA_STARTTIME_NO_VIDEO_FRAME /* -268435401 */:
                                                String logcatTag3 = logcatTag();
                                                TTVideoEngineLog.i(logcatTag3, "starttime is bigger than video duration:" + i11);
                                                this.mShouldUseAudioRenderStart = true;
                                                break;
                                            default:
                                                switch (i10) {
                                                    case MediaPlayer.MEDIA_INFO_FIRST_AVSYNC_FRAME /* -268435386 */:
                                                        _firstAVSyncFrame();
                                                        break;
                                                    case MediaPlayer.MEDIA_INFO_REFRESH_SURFACE /* -268435385 */:
                                                        _refreshSurface();
                                                        break;
                                                    case MediaPlayer.MEDIA_INFO_VIDEO_ABNORMAL_OCCURED /* -268435384 */:
                                                        _abnormalOccured(i11);
                                                        break;
                                                    case MediaPlayer.MEDIA_INFO_RENDER_EXCEPTION /* -268435383 */:
                                                        TTVideoEngineLog.d(TAG, "MEDIA_INFO_RENDER_EXCEPTION:" + i11);
                                                        if (this.mTextureSurface == null && getConfigInt(1504, this.mEnableNotifyRenderException) > 0) {
                                                            Error error = new Error(Error.VideoOwnPlayer, (int) Error.RenderException, i11);
                                                            if (this.mLooperThread.checkSendMainLooper()) {
                                                                this.mLooperThread.postMainLooperMessage(409, 0, 0, error);
                                                                break;
                                                            } else {
                                                                this.mListenerCompact.onError(error);
                                                                break;
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        switch (i10) {
                                                            case MediaPlayer.MEDIA_INFO_FIRST_FRAME_AFTER_SEEK /* 251658248 */:
                                                                _renderSeekComplete(i11);
                                                                break;
                                                            case MediaPlayer.MEDIA_INFO_VIDEO_STREAM_BITRATE_CHANGED /* 251658249 */:
                                                                _videoBitrateChanged(i11);
                                                                break;
                                                        }
                                                }
                                        }
                                }
                        }
                    } else {
                        _bufferEnd(i11);
                    }
                } else {
                    _bufferStart(i11);
                }
            } else if (this.mPlaybackState != 0) {
                _logFirstFrame();
            }
        } else {
            TTVideoEngineLog.i(logcatTag(), "player callback render start");
            _videoRenderStartNotify();
            if (getConfigInt(661, this.mFirstFrameOpenTexture) == 1) {
                this.mPlayerFirstFrame = true;
                _renderStart();
                if (this.mTextureSurface != null && this.mSurface != null && this.mSurfaceHolder == null) {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    mediaPlayer.setSurface(this.mTextureSurface);
                    this.mTextureSurface.updateRenderSurface(this.mSurface);
                    String logcatTag4 = logcatTag();
                    TTVideoEngineLog.i(logcatTag4, "renderstart change to texturesurface,time:" + (SystemClock.elapsedRealtime() - elapsedRealtime));
                }
            } else if (this.mTextureSurface != null && (getConfigInt(587, this.mEnableForceDisableOESRender ? 1 : 0) != 1 || getConfigInt(588, this.mForceDisableOESRender ? 1 : 0) != 1)) {
                this.mPlayerFirstFrame = true;
                if (this.mTextureFirstFrame) {
                    TTVideoEngineLog.i(logcatTag(), "render start by player after texture");
                    _renderStart();
                }
            } else {
                TTVideoEngineLog.i(logcatTag(), "render start by player");
                _renderStart();
            }
            if (!isInHousePlayer()) {
                _streamChanged(0);
            }
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null && mediaPlayer != null) {
                videoSurface.setIntOption(133, mediaPlayer.getIntOption(139, -1));
            }
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerPrepared(MediaPlayer mediaPlayer) {
        MediaPlayer mediaPlayer2;
        boolean z10;
        VideoSurface videoSurface;
        if (this.mShouldStop || (mediaPlayer2 = this.mMediaPlayer) == null) {
            return;
        }
        TTVideoEngineLog.i(logcatTag(), "receive onPrepared");
        int intOption = mediaPlayer2.getIntOption(141, -1);
        if (intOption == 33 && !FeatureManager.hasPermission("h266")) {
            receivedError(new Error(Error.LicenseCheck, (int) Error.LicenceFailed, (int) Error.h266CheckFailed));
            return;
        }
        int intOption2 = mediaPlayer2.getIntOption(44, -1);
        TTVideoEngineLog.d(logcatTag(), "onPrepared mediaFormat " + intOption2 + ", videoCodecID " + intOption);
        if (intOption2 == 5 && !FeatureManager.hasPermission("dash")) {
            receivedError(new Error(Error.LicenseCheck, (int) Error.LicenceFailed, (int) Error.DashCheckFailed));
        } else if (intOption2 == 6 && !FeatureManager.hasPermission("bash")) {
            receivedError(new Error(Error.LicenseCheck, (int) Error.LicenceFailed, (int) Error.BashCheckFailed));
        } else {
            if (!this.mErrorRetryOpt) {
                this.mErrorCount = 0;
            }
            this.mError = null;
            this.mDuration = mediaPlayer.getDuration();
            this.mPrepared = true;
            IVideoEventLogger iVideoEventLogger = this.mLogger;
            if (iVideoEventLogger != null) {
                iVideoEventLogger.prepareEnd();
                this.mLogger.setDuration(this.mDuration);
            }
            setDisplayVideoSize(getVideoWidth(), getVideoHeight());
            StrategyManager.instance().onPrepared(this);
            notifyPrepared();
            _dumpSurface("onPrepared");
            if (getConfigInt(681, this.mSkipStartWhenPrepared ? 1 : 0) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            TTVideoEngineLog.i(logcatTag(), "mPausedBeforePrepared:" + this.mPausedBeforePrepared + ", mShouldPlay:" + this.mShouldPlay + ", mIsStartPlayAutomatically:" + this.mIsStartPlayAutomatically + ", mIsPreDecodeAutoPause:" + this.mIsPreDecodeAutoPause + ", skip start:" + z10 + ", isOsPlayer:" + isOSPlayer());
            if (!z10 && ((!this.mPausedBeforePrepared && this.mShouldPlay) || (!isOSPlayer() && !this.mIsStartPlayAutomatically && this.mIsPreDecodeAutoPause))) {
                mediaPlayer.start();
            }
            if (this.mSeamSwitchingResolution && !this.mShouldPlay) {
                mediaPlayer.start();
                mediaPlayer.pause();
                _updateTextureState(2);
            }
            if (!TextUtils.isEmpty(this.mSubPathInfo) && this.mSeamSwitchingResolution && this.mEnableSubThread > 0) {
                mediaPlayer2.setIntOption(618, this.mEnableSub);
                mediaPlayer2.setStringOption(617, this.mSubPathInfo);
                TTVideoEngineLog.d(logcatTag(), "sub option: " + this.mEnableSub + " url:" + this.mSubPathInfo);
            }
            if (this.mPlaybackParams != null && isOSPlayer()) {
                mediaPlayer.setPlaybackParams(this.mPlaybackParams);
                this.mLogger.setPlaybackParams(this.mPlaybackParams);
            }
            int intOption3 = mediaPlayer.getIntOption(62, -100);
            int intOption4 = mediaPlayer.getIntOption(61, -100);
            if (intOption3 == 0) {
                this.mLogger.setIntOption(12, 1);
            } else {
                this.mLogger.setIntOption(12, 0);
            }
            if (intOption4 == 0) {
                this.mLogger.setIntOption(13, 1);
            } else {
                this.mLogger.setIntOption(13, 0);
            }
            TTVideoEngineLog.i(logcatTag(), "videoEnabled:" + intOption3 + ",audioEnabled:" + intOption4);
            if (intOption3 == 0 && this.mEnableTextureRenderNoRenderCheck == 1 && (videoSurface = this.mTextureSurface) != null) {
                this.mEnableTextureRenderNoRenderCheck = 0;
                videoSurface.setIntOption(34, 0);
            }
            long longOption = mediaPlayer2.getLongOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION, -1L);
            long longOption2 = mediaPlayer2.getLongOption(525, -1L);
            this.mLogger.setLongOption(98, longOption);
            this.mLogger.setLongOption(99, longOption2);
            if (getConfigInt(656, this.mEnableHeartBeat ? 1 : 0) == 1 && !this.mHeartBeatStarted) {
                this.mLooperThread.postEngineMessage(24);
                this.mHeartBeatStarted = true;
            }
            if (mediaPlayer.isOSPlayer() && this.mRadioModeEnable == 1 && !this.mHasFirstFrameShown) {
                TTVideoEngineLog.i(logcatTag(), "OSPlayer in radioMode enter renderStart");
                _renderStart();
            }
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerSARChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "onSARChanged = " + i10 + ", " + i11);
        notifySARChanged(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerSeekComplete(MediaPlayer mediaPlayer, boolean z10) {
        _seekComplete(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void onMediaPlayerVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        int i12;
        TTVideoEngineLog.i(logcatTag(), "video size changed = " + i10 + ", " + i11);
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface != null) {
            videoSurface.updateTexDimension(i10, i11);
            if (this.mPlayBackUsedSR && !this.mSRIgnoreRes && !videoSurface.supportProcessResolution(i10, i11)) {
                TTVideoEngineLog.i(logcatTag(), "VideoSurface resolution not support for sr");
                doOpenSR(0, Error.ResolutionNotSupport);
            }
            if (mediaPlayer != null) {
                videoSurface.setIntOption(133, mediaPlayer.getIntOption(139, -1));
                videoSurface.setIntOption(169, mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DATASPACE, -1));
            }
        }
        int intOption = mediaPlayer.getIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_COLOR_TRC, -1);
        TTVideoEngineLog.d(logcatTag(), "colorTrc " + intOption);
        if (intOption == 16) {
            i12 = 1;
        } else if (intOption == 18) {
            i12 = 2;
        } else {
            i12 = 0;
        }
        _setHDRInfoToTexturerender(mediaPlayer, i12);
        this.mLogger.setIntOption(90, i12);
        setDisplayVideoSize(i10, i11);
        notifyVideoSizeChanged(i10, i11);
        if (!this.mSeamSwitchingResolution && this.mFirstGetWidthHeight) {
            TTVideoEngineLog.d(logcatTag(), "changed video size set");
            this.mFirstGetWidthHeight = false;
            this.mLogger.setStartPlayWidth(i10);
            this.mLogger.setStartPlayHeight(i11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void openTextureSR(boolean z10, boolean z11) {
        int i10;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]openTextureSR =  sr = " + z10 + ", open =" + z11 + " srStrategyMode=" + this.mSRStrategy.getSRStrategyMode());
        if (!FeatureManager.hasPermission("super_resolution")) {
            return;
        }
        if (!isSupportSR()) {
            TTVideoEngineLog.d(logcatTag(), "[SRLog]openTextureSR disabled by VodSettings");
        } else if (this.mSRStrategy.getSRStrategyMode() == 0) {
        } else {
            this.mSRStrategy.setSRStrategyMode(1);
            this.mUseSRTexture = z10;
            this.mTextureSrOpen = z11 ? 1 : 0;
            if (z10 && z11) {
                i10 = 0;
            } else {
                i10 = Error.UserClose;
            }
            if (this.mDynamicControlSR) {
                doOpenSR(z11 ? 1 : 0, i10);
            }
        }
    }

    int parseP2PCDNType(String str) {
        int indexOf;
        int i10;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf("cdn_type=")) == -1 || (i10 = indexOf + 9) >= str.length()) {
            return 0;
        }
        char charAt = str.charAt(i10);
        if (!Character.isDigit(charAt)) {
            return 0;
        }
        return Character.getNumericValue(charAt);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void pause() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "pause," + this);
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(2);
        } else {
            _doPause();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void pauseByInterruption() {
        TTVideoEngineLog.i(logcatTag(), "pause by interruption");
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(11);
        } else {
            _pauseByInterruption();
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void play() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "play:" + this);
        if (this.mState == 5) {
            TTVideoEngineLog.e(logcatTag(), "already released, return");
            return;
        }
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEnginePlay(this.mEngineWrapper);
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(1);
        } else {
            _doPlay();
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void prepare() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "prepare," + this);
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(22);
        } else {
            _doPrepare();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void receivedError(Error error) {
        boolean z10;
        boolean z11;
        int i10;
        IVideoModel iVideoModel;
        IntertrustDrmHelper intertrustDrmHelper;
        this.mAllowedExpiredModel = false;
        _updateLogTime();
        if (this.mUserStopped) {
            this.mState = 0;
            return;
        }
        int i11 = this.mPlayAPIVersion;
        int _getPlayerTime = _getPlayerTime();
        if (!this.mRetrying) {
            int i12 = this.mStartTime;
            if (i12 != 0) {
                this.mLastPlaybackTime = i12;
                this.mStartTime = 0;
            } else if (isInHousePlayer() || (!isInHousePlayer() && this.mPrepared && !this.mSeamSwitchingResolution)) {
                int i13 = this.mDuration;
                if (i13 > 0 && _getPlayerTime - i13 > -1000) {
                    this.mLastPlaybackTime = 0;
                } else {
                    this.mLastPlaybackTime = _getPlayerTime;
                }
            }
        }
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        boolean z12 = mediaPlayer != null && (mediaPlayer.isOSPlayer() || this.mMediaPlayer.getPlayerType() == 3 || this.mMediaPlayer.getPlayerType() == 4 || this.mMediaPlayer.getPlayerType() == 5);
        int i14 = 2;
        if (!isInHousePlayer() && getConfigInt(34, this.mDrmType) == 2) {
            z12 = false;
        }
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        if (mediaPlayer2 != null && (mediaPlayer2.getPlayerType() == 0 || this.mMediaPlayer.getPlayerType() == 2)) {
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            this.mIsStartPlayAutomatically = true;
        }
        this.mErrorCount++;
        this.mAccumulatedErrorCount++;
        this.mState = 4;
        TTVideoEngineLog.i(logcatTag(), "videoEngine failed:" + error.toString());
        if (this.mShouldStop) {
            return;
        }
        if (error.code == -30001) {
            TTVideoEngineLog.d(logcatTag(), "auth failed");
            int i15 = error.internalCode;
            if (i15 != -310000 && i15 != -310003 && i15 != -310001 && i15 != -310002) {
                if (!FeatureManager.isLicenseExpired()) {
                    _notifyError(error);
                    return;
                }
            } else {
                this.mMediaPlayer.release();
                this.mMediaPlayer = null;
                _notifyError(error);
                return;
            }
        }
        int i16 = error.code;
        if (i16 == -1094995529) {
            TTVideoEngineLog.e(logcatTag(), "Invalid data found when processing input, not need to retry");
            _notifyError(error);
        } else if (i16 != -499697 && i16 != -499696) {
            if (i16 == -499981 && !this.mCodecStrategyAdapter.isCodecStrategyValid()) {
                TTVideoEngineLog.e(logcatTag(), "Start codec failed, not need to retry");
                _notifyError(error);
                return;
            }
            int i17 = error.code;
            if (i17 == -9965) {
                TTVideoEngineLog.e(logcatTag(), "Data source is not set or invalid, not need to retry");
                _notifyError(error);
            } else if (i17 == -499897) {
                TTVideoEngineLog.e(logcatTag(), "http forbidden 403");
                this.mLogger.setIntOption(142, 1);
                _notifyError(error);
            } else {
                if (error.domain.equals(Error.IntertrustDRM) && (intertrustDrmHelper = this.mIntertrustDrmHelper) != null) {
                    intertrustDrmHelper.stop();
                }
                int i18 = error.code;
                if (i18 == -9939) {
                    _notifyError(error);
                } else if (i18 == -9987) {
                    TTVideoEngineLog.e(logcatTag(), "can't decrypt video");
                    _notifyError(error);
                } else if (i18 == -9988) {
                    TTVideoEngineLog.e(logcatTag(), "decode encryptionkey error, not need to retry");
                    _notifyError(error);
                } else if (i18 == -9990) {
                    TTVideoEngineLog.e(logcatTag(), "invalid request, no need to retry");
                    _notifyError(error);
                } else if (this.mErrorCount >= 3) {
                    TTVideoEngineLog.e(logcatTag(), "videoEngine retry failed");
                    _notifyError(error);
                } else if (this.mAccumulatedErrorCount >= getConfigInt(28, this.mMaxAccumulatedCountSetByUser)) {
                    TTVideoEngineLog.e(logcatTag(), "videoEngine retry failed:reach maxAccumulatedErrorCount");
                    _notifyError(error);
                } else {
                    int i19 = error.code;
                    if (i19 == -9966) {
                        TTVideoEngineLog.e(logcatTag(), "invalid url");
                        _notifyError(error);
                        return;
                    }
                    if (i19 == -499897) {
                        if (this.mIsDirectURL) {
                            TTVideoEngineLog.e(logcatTag(), "directUrl 403");
                            this.mLogger.setIntOption(142, 1);
                            _notifyError(error);
                            return;
                        }
                        TTVideoEngineLog.e(logcatTag(), String.format(Locale.getDefault(), "-499897 happen, enable MDL:%d, MDL running:%d, mdlFallbackApiRetry option:%d", Integer.valueOf(getConfigInt(160, this.mDataLoaderEnable)), Integer.valueOf(DataLoaderHelper.getDataLoader().isRunning() ? 1 : 0), Integer.valueOf(this.mFallbackApiRetry)));
                        this.mLogger.setIntOption(142, 2);
                    }
                    String currentURL = this.mURLInfo.getCurrentURL();
                    if ((error.domain.equals(Error.VideoOSPlayer) || error.equals(Error.VideoExoPlayer) || error.code == -499975) && !TextUtils.isEmpty(currentURL) && currentURL.startsWith(Module.MDL)) {
                        if (this.mIsDirectURL && this.mDirectURL.startsWith(Module.MDL)) {
                            DataLoaderHelper.getDataLoader().setIntValue(1004, -1);
                            this.mDirectURL = DataLoaderHelper.getDataLoader()._getProxyUrl(this.mDirectURL);
                            TTVideoEngineLog.i(logcatTag(), "mdl failed: mIsDirectURL: " + this.mIsDirectURL + ", mDirectUrlSrc: " + this.mDirectUrlSrc);
                        } else if (!TextUtils.isEmpty(currentURL) && currentURL.startsWith(Module.MDL)) {
                            DataLoaderHelper.getDataLoader().setIntValue(1004, -1);
                            this.mURLInfo.setHostURL(DataLoaderHelper.getDataLoader()._getProxyUrl(currentURL));
                            TTVideoEngineLog.i(logcatTag(), "mdl failed: urlInfo: " + currentURL);
                        } else if (error.domain.equals(Error.VideoOSPlayer) || error.domain.equals(Error.VideoExoPlayer)) {
                            DataLoaderHelper.getDataLoader().setIntValue(1004, -1);
                        }
                    }
                    this.mRetrying = true;
                    if (error.domain.equals(Error.VideoOwnPlayer)) {
                        this.mRetryingNotHandleError = true;
                    }
                    int retryStrategy = error.getRetryStrategy();
                    String stringOption = this.mConfigCenterVersion > 0 ? this.mEngineConfig.getStringOption(1000) : this.mCodecType;
                    if (this.mConfigCenterVersion > 0) {
                        z10 = this.mEngineConfig.getIntOption(17) == 1;
                    } else {
                        z10 = this.mDashEnabled;
                    }
                    if (this.mConfigCenterVersion > 0) {
                        z11 = this.mEngineConfig.getIntOption(33) == 1;
                    } else {
                        z11 = this.mBashEnabled;
                    }
                    if ((stringOption.equals("h265") || stringOption.equals("h266") || z10 || z11 || this.mHttpsEnabled) && z12) {
                        if (this.mConfigCenterVersion > 0) {
                            this.mEngineConfig.setStringOption(1000, "h264");
                        } else {
                            this.mCodecType = "h264";
                        }
                        this.mDashEnabled = false;
                        this.mEngineConfig.setIntOption(17, 0);
                        this.mBashEnabled = false;
                        this.mEngineConfig.setIntOption(33, 0);
                        this.mEnableHttps = false;
                        this.mEngineConfig.setIntOption(312, 0);
                        this.mRetryEnableHttps = false;
                        this.mForceCodec = "h264";
                        retryStrategy = 1;
                    }
                    int clearByErrcode = clearByErrcode(error, z12);
                    if (clearByErrcode == 10) {
                        return;
                    }
                    if (clearByErrcode != 11) {
                        retryStrategy = clearByErrcode;
                    }
                    int i20 = error.code;
                    if (i20 == -499699 || i20 == -499698) {
                        if (getConfigInt(37, this.mDrmRetry ? 1 : 0) != 1) {
                            _notifyError(error);
                            return;
                        }
                        this.mDrmType = 0;
                        this.mEngineConfig.setIntOption(34, 0);
                        retryStrategy = 3;
                    }
                    if (this.mErrorCount == 2) {
                        retryStrategy = 1;
                    }
                    if (this.mIsLocal || this.mIsDirectURL || ((z11 && this.mBashRetryRestartPlayer) || ((iVideoModel = this.mVideoModel) != null && iVideoModel.getVideoRefBool(253)))) {
                        retryStrategy = 3;
                    }
                    if (this.mIsPlayItem) {
                        this.mIsPlayItem = false;
                        retryStrategy = 1;
                    }
                    TTVideoEngineLog.i(logcatTag(), "retry strategy:" + retryStrategy);
                    if (i11 != this.mPlayAPIVersion) {
                        TTVideoEngineLog.i(logcatTag(), "APIVersion rollback from PLAY_API_VERSION_" + i11 + " to PLAY_API_VERSION_" + this.mPlayAPIVersion + " errorCount:" + this.mErrorCount);
                    }
                    String str = this.mURLInfo.hostURL;
                    if (!TextUtils.isEmpty(str) && str.startsWith(BASH_PREFIX_NAME)) {
                        String.format("mem://bash/url_index:%d", this.urlIndexMap.get(this.currentResolution));
                    }
                    if (retryStrategy == 3 && !this.mIsLocal && error.code == -2139062143) {
                        this.mMediaPlayer = null;
                    }
                    if (this.mIsPreloaderItem) {
                        if (this.mVideoModel == null) {
                            VideoInfoFetcher videoInfoFetcher = this.mFetcher;
                            if (videoInfoFetcher != null) {
                                videoInfoFetcher.cancel();
                            }
                            i14 = 1;
                        }
                        this.mIsPreloaderItem = false;
                        retryStrategy = i14;
                    }
                    if (error.code == -499981 && this.mCodecStrategyAdapter.isCodecStrategyValid()) {
                        retryStrategy = 12;
                    }
                    if (error.code == -30001 && FeatureManager.isLicenseExpired()) {
                        fallbackOSPlayer();
                        i10 = 3;
                    } else {
                        i10 = retryStrategy;
                    }
                    if (i10 != 0) {
                        this.mLogger.movieShouldRetry(error, i10, i11);
                    }
                    if (i10 == 1) {
                        if (this.mLooperThread.checkSendMainLooper()) {
                            this.mLooperThread.postMainLooperMessage(413, 0, 0, error, this.mAPIString);
                        } else {
                            this.mListenerCompact.onVideoURLRouteFailed(error, this.mAPIString);
                        }
                    }
                    _retry(i10, error);
                }
            }
        } else {
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            _notifyError(error);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.TTVideoEngineInterface
    public void refreshEnginePara(Context context, int i10, Map map) {
        int i11;
        boolean z10;
        boolean z11;
        Object[] objArr;
        Looper looper;
        TTVideoEngineLog.i(logcatTag(), "refreshEnginePara, type:" + i10 + ", Engine：" + this.mEngineWrapper + ", version:1.10.172.340-jzdrm-premium");
        TTVideoEngineMonitor tTVideoEngineMonitor = this.mEngineStateMonitor;
        if (tTVideoEngineMonitor != null) {
            tTVideoEngineMonitor.startObserve(hashCode(), this.mEngineWrapper);
        }
        this.mContext = context;
        this.mPlayerType = i10;
        boolean z12 = true;
        if (i10 != 2 && i10 != 5) {
            i11 = 1;
        } else {
            i11 = 0;
        }
        TTPlayerConfiger.setValue(1, i11);
        if (i10 == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        TTPlayerConfiger.setValue(2, z10);
        if (i10 == 5) {
            z11 = true;
        } else {
            z11 = false;
        }
        TTPlayerConfiger.setValue(26, z11);
        if (!TimeService.isUpdated()) {
            TimeService.updateTimeFromNTP(this.mContext);
        }
        TTVideoEngineLooperThread2 tTVideoEngineLooperThread2 = this.mLooperThread;
        if (tTVideoEngineLooperThread2 != null && tTVideoEngineLooperThread2.isStarted()) {
            objArr = 1;
        } else {
            objArr = null;
        }
        if (SettingsHelper.helper().getVodInt(Module.VodKey.EngineEnableLooper_Int, 0) == 0) {
            z12 = false;
        }
        this.mEnableLooperThread = z12;
        if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_ENABLE_LOOPER)) {
            this.mEnableLooperThread = ((Boolean) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_ENABLE_LOOPER)).booleanValue();
        }
        if (!this.mEnableLooperThread) {
            if (objArr != null) {
                TTVideoEngineLog.i(logcatTag(), " Async->Sync ---TTVideoEnginePool");
                this.mLooperThread.closeEngineLooperThread();
            } else {
                TTVideoEngineLog.i(logcatTag(), " Sync->Sync ---TTVideoEnginePool");
            }
        } else {
            HandlerThread handlerThread = null;
            if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_CALLBACK_LOOPER)) {
                looper = (Looper) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_CALLBACK_LOOPER);
            } else {
                looper = null;
            }
            if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD)) {
                handlerThread = (HandlerThread) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD);
            }
            if (map != null && map.containsKey(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD_NOT_ALLOW_DESTROY)) {
                this.mLooperThread.setIntValue(0, ((Integer) map.get(TTVideoEngineInterface.ENGINE_PARAM_KEY_HANDLER_THREAD_NOT_ALLOW_DESTROY)).intValue());
            }
            if (objArr != null) {
                TTVideoEngineLog.i(logcatTag(), " Async->Async ---TTVideoEnginePool");
                this.mLooperThread.refreshAsyncPara(handlerThread, looper);
            } else {
                TTVideoEngineLog.i(logcatTag(), " Sync->Async ---TTVideoEnginePool");
                this.mLooperThread.start(handlerThread, looper);
            }
        }
        this.mDataLoaderEnable = EngineGlobalConfig.getInstance().isOnlyUseMediaLoader() ? 1 : 0;
        this.mPlayDuration = new PlayDurationManager(this.mHeadsetMonitor);
        super.refreshEnginePara(context, i10, map);
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void release() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "release," + this);
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEngineStop(this.mEngineWrapper);
        }
        this.mShouldStop = true;
        this.mPrepared = false;
        this.mReleased = true;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(4);
        } else {
            _doRelease();
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void releaseAsync() {
        PlayerMetrics.getInstance().refreshWhenEnd();
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "releaseAsync," + this);
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEngineStop(this.mEngineWrapper);
        }
        this.mShouldStop = true;
        this.mPrepared = false;
        this.mReleased = true;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(5);
        } else {
            _doReleaseAsync();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void removeVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        this.mListenerCompact.removeVideoEngineCallback(videoEngineCallback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    public void resetAllOptions() {
        this.mEngineConfig.reset();
        this.mPlayerCache = 0;
        this.mEnhancementType = 0;
        this.mScaleType = 0;
        this.mLayoutType = 0;
        this.mSettedKeys.clear();
        this.mCodecType = "h264";
        this.mRenderType = 3;
        this.mHardwareDecodeEnablePlayer2 = 0;
        this.mDecoderType = 0;
        this.mOpenVoiceEarly = 0;
        this.mBufferDataMiliSeconds = 0;
        this.mBufferTimeout = 30;
        this.mFailTryAgain = 1;
        this.mNetworkTimeout = 5;
        this.mTestAction = 0;
        this.mHlsEnabled = 0;
        this.mEncryptEnabled = 0;
        this.mDashEnabled = false;
        this.mBashEnabled = false;
        this.mHLSSeamlessSwitch = false;
        this.mEnableABR = 0;
        this.mStandAlongAbrStartUp = 0;
        this.mCleanSurfaceWhenReset = 0;
        this.mUseDNSCache = false;
        this.mDNSExpiredTime = 0;
        this.mDisableAccurateStart = 0;
        this.mP2PCDNType = 0;
        this.mForbidP2P = 0;
        this.mUseVideoModelCache = false;
        this.mVideoModelCache = null;
        this.mUseVideoModelCacheForce = false;
        this.mLoopStartTime = 0;
        this.mIsPreDecodeAutoPause = true;
        this.mLoopEndTime = 0;
        this.mLoopCount = 0;
        this.mReuseSocket = 0;
        this.mDataLoaderEnable = 0;
        this.mEnableOppoControl = 0;
        this.mIsUsePlayerDNS = -1;
        this.mEnableSharp = 0;
        this.mIsUseBoe = false;
        this.mEGLNeedWorkAround = 1;
        this.mOriginalRetry = 1;
        this.mLimitMDLCacheSize = 0;
        this.mTestNetSpeedDiff = 500;
        this.mMaxBufferDataMilliSeconds = 5000;
        this.mMovPreferNearestSample = 0;
        this.mSkipFfmpegFindStreamInfo = 0;
        this.mMaxFps = 0;
        this.mEnableDynamicFrameDropping = 0;
        this.mFrameDroppingMultiple = 10;
        this.mFrameDroppingCheckPeriod = 300;
        this.mFrameDroppingCheckCount = 3;
        this.mHWMaxFps = 0;
        this.mHWEnableDynamicFrameDropping = 0;
        this.mHWFrameDroppingMultiple = 10;
        this.mHWFrameDroppingCheckPeriod = 300;
        this.mHWFrameDroppingCheckCount = 3;
        this.mEnableHWDropFrameWhenVOIsInDropState = 0;
        this.mEnableHWDropFrameWhenAVOutSyncing = 0;
        this.mCodecFramesDrop = -1;
        this.mFrameDropNum = 2;
        this.mKsyFrameWait = 1;
        this.mLoopReferVideo = 0;
        this.mSkipAudioGraph = 0;
        this.mMediaCodecRender = 1;
        this.mUseMediacodecAudio = 0;
        this.mMediaCodecSyncMode = 0;
        this.mOutputLog = 0;
        this.mExposeSignal = 0;
        this.mNotifyBufferingDirectly = 0;
        this.mUseQcomLowLatency = 0;
        this.mMediaCodecSkipNonRef = 0;
        this.mAVSyncInterruptEnable = 0;
        this.mEnableVolumeBalance = 0;
        this.mBestResolutionType = 0;
        this.mDisablePlayerTimeOut = 0;
        this.mEnableSeekInterrupt = 0;
        this.mAllowedExpiredModel = false;
        this.mUseTextureRender = 0;
        this.mIsDisableShortSeek = 0;
        this.mEnableStartTimeSkipAvSkipSerial = 0;
        this.mEnableHttps = false;
        this.mCheckHijack = false;
        this.mAsyncPlayHitVMCache = false;
        this.mIsUseServerDns = false;
        TTPlayerConfiger.setValue(24, 24);
        this.mUseAudioHWDec = 0;
        this.mDefaultRenderType = 3;
        this.mSeekEndEnabled = 0;
        this.mDrmType = 0;
        this.mDrmDowngrade = 0;
        this.mDrmRetry = true;
        this.mDrmCloseRootCheck = 0;
        this.mSoloPlayEnable = 1;
        this.mTimeBarPercentage = 0;
        this.mEnableIndexCache = 0;
        this.mCacheJFrameField = 0;
        this.mEnableFragRange = 0;
        this.mRangeMode = 0;
        this.mLazySeek = 1;
        this.mFFCodecerHeaacV2Compat = 0;
        this.mReadMode = 0;
        this.mVideoRangeSize = 1048576;
        this.mAudioRangeSize = TTVideoEngineInterface.DEFAULT_AUDIO_RANGE_SIZE;
        this.mVideoRangeTime = 5000;
        this.mAudioRangeTime = 10000;
        this.mHijackRetryMainDNSType = 2;
        this.mHijackRetryBackupDNSType = 0;
        this.mHijackRetry = true;
        this.mIsTTHlsDrm = 0;
        this.mABRSpeedPredictOutType = 0;
        this.mVoiceType = -1;
        this.mUseCodecPool = 0;
        this.mAccurateLayout = 0;
        this.mHardwareDropNonRef = 0;
        TTVideoEngineConfig.openPerformanceUtils = false;
        this.mFallbackApiRetry = 0;
        this.mEnableSourceRefreshStrategy = false;
        this.mEglVersion = 2;
        this.mNeedAdaptiveWorkaround = 0;
        this.mABRTimerIntervalMilliseconds = 500;
        this.mABRSwitchMode = 0;
        this.mABRSwitchSensitivity = 0;
        this.mABRSwitchCSModel = 1;
        this.mABROnceType = 0;
        this.mABRStartupSpeedType = 4;
        this.mABRStartupModel = 0;
        this.mABRWithSR = 0;
        this.mABRFixedLevel = 2;
        Resolution resolution = Resolution.Undefine;
        this.mABR4GMaxResolutionIndex = resolution.getIndex();
        this.mDowngradeResolutionIndex = resolution.getIndex();
        Resolution resolution2 = Resolution.SuperHigh;
        this.mWifiDefaultResolutionIndex = resolution2.getIndex();
        this.mABR4GMaxResolutionMode = 0;
        this.mStartupMaxBitRateIndex = resolution2.getIndex();
        this.mABRProbeMode = 0;
        this.mABREnableAggressivePortraitLowBit = 0;
        this.mScreenWidth = -1;
        this.mScreenHeight = -1;
        this.mPlayerViewWidth = -1;
        this.mPlayerViewHeight = -1;
        this.mEnableAsync = 0;
        this.mRadioModeEnable = 0;
        this.mDelayBufferingUpdate = 0;
        this.mPostPrepare = 0;
        this.mStopSourceAsync = 0;
        this.mDisableHWDecSeamless = 0;
        this.mDisableMcReuse = 0;
        this.mFirstRangeSize = 0;
        this.mFirstFrameSecOffset = 0.0f;
        this.mNetSpeedLevel = -1;
        this.mEnableVideoCodecPixelAlign = 0;
        this.mSegmentFormatFlag = 2;
        this.mEnableDirectUrlCheck = 0;
        this.mCodecFrcLevel = 0;
        this.mPrepareCacheMs = 1000;
        this.mUseFallbackAPI = true;
        this.mDirectUrlBashEnabled = false;
        this.mUpdateTimestampMode = 1;
        this.mEnableOpenTimeout = 1;
        this.mEnableBarrageMask = 0;
        this.mEnableAIBarrage = 0;
        this.mEnableMaskThread = 0;
        this.mEnableAIBarrageThread = 0;
        this.mEnableCacheTimeStamp = 0;
        this.mEnableSub = 0;
        this.mEnableOptSubLoadTime = 0;
        this.mMaskDelayLoading = 0;
        this.mMaskRangeOpt = 1;
        this.mMaskHeaderLen = 0;
        this.mMaskEnableDataloader = 1;
        this.mEnableSubThread = 0;
        this.mThreadSafeRefSwitcher = 0;
        this.mOpenSubRetryTimes = -1;
        this.mEnableOptSubSearch = 0;
        this.mEnableRecreateSubIfDetached = 0;
        this.mSeekExact = 0;
        this.mKeepFormatThreadAlive = 0;
        this.mAEType = 0;
        this.mSkipBufferTimeout = 0;
        this.mLiveStartIndex = -3;
        this.mEnableRefreshByTime = 0;
        this.mCurrentSubId = 0;
        this.mEnableFlushSeek = 0;
        this.mSpeedXDrop = 0;
        this.mUseServerDecodingMode = false;
        this.mEnableSpeedReport = false;
        TTVideoEngine.sReportSpeedInfoMaxWindowSize = 100;
        this.mEnableClearMDLCache = 0;
        this.mClearShutDown = false;
        this.mPosUpdateInterval = 0;
        this.mEnableLoadControlBufferingTimeout = 0;
        this.mFindStreamInfoProbeSize = GmsVersion.VERSION_LONGHORN;
        this.mFindStreamInfoProbDuration = 0;
        this.mNetworkReconnectCount = 0;
        this.mDummyAudioSleep = 1;
        this.mDisablePlayerStayAwake = 0;
        this.mEnableVideoFrameMetaCallback = 0;
        this.mNoAVSync = 0;
        this.mOverlayMode = 0;
        this.mRenderHDR2SDR = 0;
        this.mSyncUpdateSurface = 0;
        this.mEnableHeartBeat = false;
        this.mHeartBeatInterval = 300;
        this.mEnableNativeYV12Render = 0;
        this.mForceCloseCodec = 0;
        this.mFilePlayNoBuffering = 0;
        this.mNoBufferUpdate = 0;
        this.mClipHEAACV2FirstPtsPacket = 0;
        this.mWaitForFetchInfoResult = true;
        this.mGetPositionSkipLooper = false;
        this.mFirstFrameOpenTexture = 0;
        this.mEnableDebugUINotify = 0;
        this.mSendEngineMsgTimeout = 0L;
        this.mGetMasterClockByPts = 0;
        this.mAlwaysDoAVSync = 0;
        this.mResumeFileIOBlockThresMs = 0;
        this.mSurfaceHolderByKernel = 0;
        this.mMediacodecStopTimeout = 0;
        this.mEnableFastStop = 0;
        this.mEnableCodecRecycle = 0;
        this.mEnableVideoTimestampMonotonic = 0;
        this.mFeedPacketUntilEmpty = 0;
        this.mEnableDemuxNonBlockRead = 0;
        this.mEnableFallbackSWDec = 1;
        this.mEnableThreadPriority = 0;
        this.mThreadPriorityValue = 0;
        this.mEnableVodVideoRenderStall = 0;
        this.mRenderStallThreshold = 0;
        this.mEnableOptInaccurateStart = 0;
        this.mEnableOptSeekClk = 0;
        this.mEnableAudioTrackSmoothClock = 0;
        this.mDisableSpiltVoiceWrite = 0;
        this.mNativeRenderRotationAdapt = 0;
        this.mIgnoreAudioRenderEOSDelayMs = 0;
        this.mIgnoreDirectlyBuffering = 0;
        this.mDynamicThreadPriorityValue = 0;
        this.mAudioStreamType = -2;
        this.mAudioChannelType = 0;
        this.mAudioTrackSessionId = -1;
        this.mEnableOutletDropLimit = false;
        this.mEnableMediaCodecRealtime = 1;
        this.mQueryWinEnable = -1;
        this.mPreferNearestMaxPosOffset = -1;
        this.mMediaCodecAsyncModeEnable = -1;
        this.mSettingCodecName = -1;
        this.mAVsyncRefined = -1;
        this.mOnlyPlayAudioForBothStream = -1;
        this.mCodecAndSurfaceReuse = -1;
        this.mMCMaxWidth = -1;
        this.mMCMaxHeight = -1;
        this.mIgnoreSurfaceCreated = -1;
        this.mForbidBufferingNotFinished = -1;
        this.mAudioInfoId = -1;
        this.mPreciseCache = 0;
        this.mEnableClockResumeResetEof = 0;
        this.mMdlEnableSeekReopen = 0;
        this.mSkipStartWhenPrepared = false;
        this.mNativeCallAbr = 0;
        this.mEnablePreRenderBufferingUpdate = 0;
        this.mPreRenderBufferingUpdatePercentage = 0;
        this.mGearStrategyEnabled = 0;
        this.mQuickGetFileCache = false;
        this.mEnableHEAACV2PtsMSCorrection = 0;
        this.mEnableVC1BlockList = 1;
        this.mEnableHChipAdaptiveWorkAround = 0;
        this.mEnableMChipSkipAdaptiveWorkAround = 0;
        this.mEnableCPPh265CodecOpt = 0;
        this.mEnableMp4Check = 0;
        this.mEnableDeinterlace = 0;
        this.mReportFirstFrameFrameBufferOnly = 0;
        this.mEnableTextureRenderNoRenderCheck = 0;
        this.mSupportPlayWhenNoSurface = 0;
        this.mEnableGetPlayerReqOffset = 1;
        this.mExoRenderReadyMs = -1;
        this.mExoConsecutiveFailNum = -1;
        this.mExoCodecReusable = 0;
        this.mExoCodecAsyncInitEnable = 0;
        this.mExoAllowMediaCodecHelper = 0;
        this.mEnableTmpLog = 0;
        this.mEnbalePreDemux = 0;
        this.mEnableForceDisableOESRender = false;
        this.mForceDisableOESRender = false;
        this.mStopCloseIO = 0;
        this.mEnableCPPh266CodecOpt = 0;
        this.mEnableAudioMemIntergration = 0;
        this.mEnableBufferingLowerCapacity = 0;
        this.mAutoAddMedia = 1;
        this.mForbidOSPlayer = 0;
        this.mIsStartPlayAutomatically = true;
        this.mCleanWhenStop = 0;
        this.mMaxAccumulatedCountSetByUser = 30;
        this.mSetTrackVolume = 0;
        this.mDisableResetSystemVolume = 0;
        this.mFallbackExoFirst = -1;
        this.mPrecisePausePts = 0L;
        this.mSubHostName = "";
        this.mSubLanIds = "";
        this.mSubIds = "";
        this.mSubFormat = "";
        this.mABR4GMaxResolutionQuality = null;
        this.mDowngradeResolutionQuality = null;
        this.mWifiDefaultResolutionQuality = null;
        this.mStartupMaxBitRateQuality = null;
        this.mClassLoaderState = null;
        this.mCheckInfoString = null;
        this.mPrivCodecName.clear();
        this.mCodecType = "h264";
        this.mExoLoadControlParameters = null;
        this.mEnableSetPlayInfoToP2P = 1;
        this.mUseVdpDisk = -1;
        this.mTestNetSpeed = -1;
        this.mEnableNetLevel = 0;
        this.mTestNetSpeedListener = null;
        this.mTTSpeedListener = null;
        this.mHttpsEnabled = false;
        this.mIsDashSource = false;
        this.mHasSetHardWare = false;
        this.mHasSetAESrcLoudness = false;
        this.mHasSetAESrcPeak = false;
        this.mHasSetAEVolumeInfo = false;
        this.mAEForbidCompressor = false;
        this.mRotation = 0;
        this.mIsMirrorHorizontal = false;
        this.mIsMirrorVertical = false;
        this.mForbidh265SoftwareDecode = 1;
        this.mPlayAPIVersion = 0;
        this.mAuthorization = "";
        this.mSubAuthToken = "";
        this.mUseQcomVpp = 0;
        this.mQcomVppLevel = -1;
        this.mAEPreGain = 0.25f;
        this.mAEThreshold = -18.0f;
        this.mAERatio = 8.0f;
        this.mAEPredelay = 0.007f;
        this.mSrcLoudness = 0.0f;
        this.mSrcPeak = 0.0f;
        this.mTarLoudness = -16.0f;
        this.mReleaseTime = 200.0f;
        this.mLookAheadTime = 3.0f;
        this.mSpeedXDropFPSLimit = 50.0f;
        this.mEnableTextureRenderNoRenderCheck = 0;
        this.mVideoID = null;
        this.mHaveSetSpeedTest = false;
        this.mPlayType = 0;
        this.mHeaders.clear();
        this.mNetClient = null;
        this.mDataSource = null;
        this.mSubDesInfoModel = null;
        this.mListenerCompact = new ListenerCompact();
        this.mMaskInfoListener = null;
        this.mAIBarrageInfoListener = null;
        this.mSubInfoListener = null;
        this.mSubInfoCallBack = null;
        this.mVideoInfoListener = null;
        this.mVideoEngineInfoListener = null;
        this.mCacheFilePathListener = null;
        this.mExternVideoLoggerListener = null;
        this.mPlayerEventListener = null;
        this.mVideoEngineGetInfoListener = null;
        this.mExternLogKey = null;
        synchronized (this.mExtraSurfaceQueue) {
            this.mExtraSurfaceQueue.clear();
        }
        this.mSurfaceCallback = null;
        this.mVideoModel = null;
        this.mKeyseed = null;
        this.mFallbackAPI = null;
        this.mVideoModelVersion = 0;
        this.mLogger.reset();
        this.mFetcher = null;
        DNSParser dNSParser = this.mDNSParser;
        if (dNSParser != null) {
            dNSParser.setCompletionListener(null);
            this.mDNSParser = null;
        }
        SubInfoFetcher subInfoFetcher = this.mSubFetcher;
        if (subInfoFetcher != null) {
            subInfoFetcher.setListener(null);
            this.mSubFetcher = null;
        }
        this.mPlayStartTime = -1L;
        this.mRenderStartTime = -1L;
        this.currentBitrate = -1L;
        this.currentResolution = Resolution.Standard;
        this.expectedResolution = Resolution.Auto;
        this.lastResolution = resolution;
        this.mLastSwitchResolutionTime = 0L;
        this.currentVideoInfo = null;
        this.mDynamicAudioInfo = null;
        this.mDynamicVideoInfo = null;
        this.mURLs = null;
        this.urlIndexMap.clear();
        this.urlIPMap.clear();
        this.dashVideoUrlMap.clear();
        this.dashAudioUrlMap.clear();
        this.currentHost = "";
        this.mAPIString = null;
        this.mSeamSwitchingResolution = false;
        this.mResolutionSwitching = false;
        this.mResolutionSwitchingStartTime = 0L;
        this.mHasFetchedSubtitle = false;
        this.mHasAudioFirstFrameShown = false;
        this.mStartTime = 0;
        this.mFileKey = null;
        this.mDecryptionKey = "";
        this.mSpadea = "";
        this.mTokenUrlTemplate = "";
        this.mGroupID = "";
        this.mIsPreloaderItem = false;
        this.mPreloaderItem = null;
        this.mIsFeedInfo = false;
        this.mIsPlayItem = false;
        this.mPlayItem = null;
        this.mFirstURL = true;
        this.mFirstHost = true;
        this.mFirstIP = true;
        this.mFirstQuality = true;
        this.mFirstQualityType = true;
        this.mFirstResolution = true;
        this.mCacheControlEnabled = false;
        this.mIsPrepareDecodeOnly = false;
        this.mOSPlayerIgnoreHeaders = false;
        this.mUnsupportedSampleRatesInBinary = 0;
        this.mBufferingStartT = 0L;
        this.mPauseStartT = 0L;
        this.mPlayFd = null;
        this.mPipeOffset = 0L;
        this.mPipeLength = 0L;
        this.mMediaDataSource = null;
        this.mVideoModelCache = null;
        this.mIsFetchingInfo = false;
        this.mResolutionMap = null;
        this.mUsingDataLoaderPlayTaskKeys.clear();
        this.mUsingDataLoaderPlayFilePaths.clear();
        this.mUsingDataLoaderPlayRawKey = null;
        this.mAudioProcessor = null;
        this.mTraitObjManager.removeAll();
        this.mTextureFirstFrame = false;
        this.mPlayerFirstFrame = false;
        this.mTextureRenderErrorMsg = null;
        this.mDecodedVideoFirstFrame = false;
        this.mTextureSrOpen = 0;
        this.mOldTextureAlgType = -1;
        this.mTextureAlgType = -1;
        this.mTextureSRBinPath = null;
        this.mTextureSROclModuleName = null;
        this.mTextureSRDspModuleName = null;
        this.mMaxTextureWidth = 0;
        this.mMaxTextureHeight = 0;
        this.mLensBundle = null;
        this.mPlayBackUsedSR = false;
        this.mTRSrategy.reset(this.mTextureSurface, this.mHasFirstFrameShown);
        this.mUseSRTexture = false;
        this.mSRIgnoreRes = false;
        this.mAsyncInitSR = false;
        this.mAsyncInitEffect = false;
        this.mDynamicControlSR = false;
        this.mSRStrategy = new SRStrategy();
        this.mOverlayMode = 0;
        this.mEffectBundle.clear();
        this.mEnableSRStrategy = false;
        this.currentParams = null;
        this.expectedParams = null;
        this.mCurrentQuality = "";
        this.mCurrentQualityDesc = "";
        this.mCurrentQualityType = 0;
        this.mHandler = null;
        this.mRetryEnableHttps = false;
        this.mHijackRetryCount = 0;
        this.mCheckInfoString = null;
        this.mShouldUseAudioRenderStart = false;
        this.mLastSetSurfaceNullTime = 0L;
        this.mSetValidSurfaceTimeout = 0;
        this.mLoadControlInterface = null;
        this.mMaskInfoInterface = null;
        this.mAIBarrageInfoInterface = null;
        this.mSubInfoInterface = null;
        this.mVVTime = 0L;
        this.mVideoPreloadSize = 0L;
        this.mURLInfo = new URLInfo();
        this.mTTHlsDrmToken = "";
        this.mAsyncPlayer = null;
        this.mStartupSwitchCSModel = -1;
        this.mStartupModel = -1;
        this.mStartUpBitrate = -1L;
        this.mPredictStartBitrate = -1L;
        this.mUserExpectedBitrate = -1L;
        this.mDowngradeBitrate = -1L;
        this.mMaxCacheBitrate = -1L;
        this.mAbrStartupBitrateBeforeFitScreen = -1L;
        this.mAbrStartUpSpeed = -1.0f;
        this.mAbrStartUpPredictSpeed = -1.0f;
        this.mAbrStartUpAverageSpeed = -1.0f;
        this.mAbrUserQualitySensitivity = -1.0f;
        this.mAbrUserEnterFullScreen = -1;
        this.mAbrVer = null;
        this.mNetVer = null;
        this.mStartUpResolution = "";
        this.mAbrSrInfo = "";
        this.mAbrStartupInfo = "";
        this.mGearStrategyEnabled = 0;
        this.mGearStrategyConfig = new GearStrategyConfig();
        this.mSpeedShiftConfig = null;
        this.mABRModule = null;
        this.mPlayStartTimestamp = 0L;
        this.mABRCurrentDownloadedAudioBitrate = 0;
        this.mABRStartupBandwidthParameter = 0.9f;
        this.mABRStallPenaltyParameter = 9.0f;
        this.mABRSwitchPenaltyParameter = 2.0f;
        this.mABRBandwidthParameter = 1.0f;
        this.mNetworkSpeedReportSamplingRate = 0.0f;
        this.mEnableDowngradeAsyncCodec = 0;
        this.mEnableMediaCodecSyncClose = 0;
        this.mEnableSeekBuffering = 0;
        this.mh266NalsizeCheck = 0;
        this.mHardwareCodecerFlushClose = 0;
        this.mOptAudioRenderTimeReport = 0;
        this.mBT601CloseCodecAsync = 0;
        this.mForbidFallbackNativeRender = 0;
        this.mDecoderRenderContinueRetry = 0;
        this.mDecoderRenderClearSurface = 0;
        this.mDecoderRenderClearTextureRenderRef = 0;
        this.mTraceId = "";
        this.mVC2DecodecLowLatency = 0;
        this.mVC2WppMode = 0;
        this.mVC2DynamicControl = 0;
        this.mAudioPtsMSCorrectionExtension = 0;
        this.mFetchWithAbilityOption = false;
        this.mLowerAudioMemCapacity = 0;
        this.mVC2ThreadNum = 4;
        this.mEnableLooperThread = false;
        this.mBashDashDefaultMDLKeys.clear();
        this.mBarrageMaskUrl = null;
        this.mAIBarrageUrl = null;
        this.mMaskFileHash = null;
        this.mSubPathInfo = null;
        this.mFileHashs.clear();
        this.mReadCacheMode = 0;
        this.mAutoRangeOffset = 0;
        this.mDangerBufferThreshold = 0;
        this.mSecureBufferThreshold = 0;
        this.mCurPosition = -1;
        this.mAudioCodecProfile = -1;
        this.mVideoCodecProfile = -1;
        this.mBitrate = -1L;
        this.mContainerFPS = 0.0f;
        this.mIntertrustDrmHelper = null;
        this.mFrameCount = 0;
        this.mHeartBeatStarted = false;
        this.mPlayDurationExcludePlayerMethod = false;
        this.mSRNotUseReason = 0;
        this.mMDLFetcherListener = null;
        this.mFFmpegProtocol = null;
        this.mForceCodec = null;
        this.mHlsSubDemuxerProbeType = -1;
        this.mAsyncManageResource = -1;
        this.mAudioUseDirectBuffer = -1;
        this.mCloseCodecPool = -1;
        this.mMaxCodecNumsInPool = -1;
        this.mDummySurfaceForbid = -1;
        this.mEnableOptimizeMp4Abr = 0;
        this.mEnableMediaCodecFairMutex = 0;
        this.mEnableRangeOptimize = 0;
        this.mThreadName2CharSuffix = 0;
        this.mEnableOptimizePrerender = 0;
        this.mEnableAsyncDownload = 0;
        this.mEnablePreloadGear = 0;
        this.mEnableAsyncProbe = 0;
        this.mEnableOptimizeAsyncDownload = 0;
        this.mEnableCacheInfo = 0;
        this.mEnableOptimizeRadioMode = 0;
        this.mEnableOptimizeIO = 0;
        this.mEnableOptimizeDashSeek = 0;
        this.mAnRenderRefreshSurface = 0;
        this.mBashRetryRestartPlayer = false;
        this.mEnableSCABRStrategy = false;
        this.mDisplayMode = new DisplayMode();
        this.mEnableReportFirstAVSyncFrame = 1;
        this.mEnableReportPreloadTraceId = false;
        super.resetAllOptions();
        this.effectTypeSet = new CopyOnWriteArraySet();
        this.mErrorThrowOptEnable = false;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void resetByPool() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "resetByPool,  Engine:" + this.mEngineWrapper);
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEngineStop(this.mEngineWrapper);
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(33);
        } else {
            _doResetByPool();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void resetByPoolSyncPart() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "resetByPoolSyncPart,this:" + this);
        setSurfaceSync(null);
        setSurfaceHolderSync(null);
        releaseTextureRenderRef();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    public void resetMediaPlayerOptions() {
        int i10;
        super.resetMediaPlayerOptions();
        if (this.mEnableVolumeBalance == 1) {
            this.mMediaPlayer.setFloatOption(303, this.mAEPreGain);
            this.mMediaPlayer.setFloatOption(304, this.mAEThreshold);
            this.mMediaPlayer.setFloatOption(306, this.mAEPredelay);
            this.mMediaPlayer.setFloatOption(305, this.mAERatio);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE, this.mAEType);
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, this.mSrcLoudness);
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, this.mTarLoudness);
            this.mMediaPlayer.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK, this.mSrcPeak);
            this.mMediaPlayer.setFloatOption(1151, this.mReleaseTime);
            this.mMediaPlayer.setFloatOption(1152, this.mLookAheadTime);
            this.mMediaPlayer.setFloatOption(1153, this.mLuRange);
            this.mMediaPlayer.setFloatOption(1154, this.mLuStart);
            this.mMediaPlayer.setFloatOption(1155, this.mLuEnd);
            this.mMediaPlayer.setFloatOption(1156, this.mMaxMomLu);
            this.mMediaPlayer.setFloatOption(1157, this.mMaxShortermLu);
            this.mMediaPlayer.setIntOption(1159, this.mVolumInfoVer);
            this.mMediaPlayer.setIntOption(1160, this.mDeviceAEPlayAbility);
            this.mMediaPlayer.setStringOption(1158, this.mAEConfigJson);
            this.mMediaPlayer.setStringOption(1161, this.mVolumeInfoJson);
            this.mMediaPlayer.setStringOption(1162, this.mAEGraphConfig);
        }
        this.mMediaPlayer.setIntOption(224, this.mEnableClockResumeResetEof);
        this.mMediaPlayer.setIntOption(302, this.mEnableVolumeBalance);
        this.mMediaPlayer.setIntOption(370, this.mEnableLoadControlBufferingTimeout);
        this.mMediaPlayer.setIntOption(570, this.mMdlEnableSeekReopen);
        this.mMediaPlayer.setIntOption(855, this.mAVSyncInterruptEnable);
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        int i11 = 0;
        if (this.mIsStartPlayAutomatically && this.mIsPreDecodeAutoPause) {
            i10 = 0;
        } else {
            i10 = 1;
        }
        mediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE, i10);
        TTVideoEngineLog.i(logcatTag(), "pre decode auto pause : " + this.mIsPreDecodeAutoPause);
        TTVideoEngineLog.i(logcatTag(), "read cache mode : " + this.mIsStartPlayAutomatically + "start time skip: " + this.mEnableStartTimeSkipAvSkipSerial);
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        if (!this.mIsStartPlayAutomatically) {
            i11 = this.mReadCacheMode;
        }
        mediaPlayer2.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_READ_CACHE_MODE, i11);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET, this.mAutoRangeOffset);
        this.mMediaPlayer.setIntOption(1013, this.mEnableStartTimeSkipAvSkipSerial);
        if (this.mDangerBufferThreshold > 0) {
            TTVideoEngineLog.i(logcatTag(), "buffer threshold enable");
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL, 1);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD, this.mDangerBufferThreshold);
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD, this.mSecureBufferThreshold);
        }
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_BYTEVC1_SW_FORBIDDEN, this.mForbidh265SoftwareDecode);
        this.mMediaPlayer.setStringOption(462, DrmUtils.getEngineUniqueId(this.mContext));
        long drmExpireTime = DrmUtils.getDrmExpireTime(this.mAuthorization);
        if (drmExpireTime > 0) {
            this.mMediaPlayer.setLongOption(471, drmExpireTime);
        }
        ListenerCompact listenerCompact = this.mListenerCompact;
        if (listenerCompact != null) {
            String encryptedLocalTime = listenerCompact.getEncryptedLocalTime();
            if (!TextUtils.isEmpty(encryptedLocalTime)) {
                this.mMediaPlayer.setStringOption(472, encryptedLocalTime);
            }
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void saveEvent() {
        this.mLooperThread.runOnLooperThread(new Runnable() { // from class: com.ss.ttvideoengine.d
            @Override // java.lang.Runnable
            public final void run() {
                TTVideoEngineImpl.this.lambda$saveEvent$5();
            }
        });
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Bitmap saveFrame() {
        VideoSurface videoSurface = this.mTextureSurface;
        if (videoSurface == null) {
            return null;
        }
        try {
            return videoSurface.saveFrame();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void seekTo(int i10, SeekCompletionListener seekCompletionListener) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "seek to time:" + i10);
        this.mSeekCompletionListener = seekCompletionListener;
        if (this.mMediaPlayer != null && this.mStarted) {
            _updateCurrentPlaybackPosition(i10, false);
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(7, i10);
        } else {
            _seekTo(i10, false);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setABRListener(ABRListener aBRListener) {
        this.mListenerCompact.setABRListener(aBRListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAIBarrageInfoListener(AIBarrageSimpleCallback aIBarrageSimpleCallback) {
        int i10;
        String logcatTag = logcatTag();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AIBarrage: set listen exist: ");
        if (aIBarrageSimpleCallback != null) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        sb2.append(i10);
        TTVideoEngineLog.i(logcatTag, sb2.toString());
        this.mAIBarrageInfoListener = aIBarrageSimpleCallback;
        if (this.mAIBarrageInfoInterface == null) {
            this.mAIBarrageInfoInterface = new MaskInfo() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.4
                {
                    TTVideoEngineImpl.this = this;
                }

                @Override // com.ss.ttm.player.MaskInfo
                protected void onMaskInfoCallback(int i11, int i12, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mAIBarrageInfoListener != null && tTVideoEngineImpl.getConfigInt(512, tTVideoEngineImpl.mEnableAIBarrage) > 0) {
                        TTVideoEngineImpl.this.mAIBarrageInfoListener.onBarrageInfoCallBack(i11, i12, str);
                    } else {
                        TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "AIBarrage listener is null or switcher is off");
                    }
                }
            };
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAIBarrageUrl(String str) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "AIBarrage: setUrl " + str);
        this.mAIBarrageUrl = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAdditionSubModel(SubModelProvider subModelProvider) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "subtitle: set addition sub model: " + subModelProvider.toString());
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setStringOption(1600, subModelProvider.toString());
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setAsyncInit(boolean z10, int i10) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(50, z10 ? 1 : 0, i10);
        } else {
            _doSetAsyncInit(z10, i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAudioProcessor(AudioProcessor audioProcessor) {
        if (this.mAsyncSetAudioProcessor == 1 && this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(109, TTVideoEngineInterface.PLAYER_OPTION_AUDIO_PROCESSOR_OBJECT, 0, audioProcessor);
            return;
        }
        this.mAudioProcessor = audioProcessor;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            ((MediaPlayerWrapper) mediaPlayer).setAudioProcessor(audioProcessor);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setAutoRangeRead(int i10, int i11) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set auto range read = " + i10 + ", " + i11);
        this.mReadCacheMode = i10;
        this.mAutoRangeOffset = i11;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskHeadLen(int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setBarrageMaskHeadLen " + i10);
        this.mMaskHeaderLen = i10;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskUrl(String str) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setBarrageMaskUrl " + str);
        this.mBarrageMaskUrl = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBarrageMaskUrlUseDataLoader(String str, String str2) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setBarrageMaskUrl " + str);
        this.mBarrageMaskUrl = str;
        this.mMaskFileHash = str2;
        StrategyHelper.buildMaskInfo(this.mMediaInfoMap, str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBufferProcessCallback(final BufferProcessCallback bufferProcessCallback) {
        this.mLooperThread.runOnLooperThread(new Runnable() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.7
            {
                TTVideoEngineImpl.this = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                TTVideoEngineImpl.this.mBufferProcessCallback = bufferProcessCallback;
                if (TTVideoEngineImpl.this.mBufferProcessCallback != null) {
                    TTVideoEngineImpl.this.mBufferProcessCallback.setProtoName(TTVideoEngineImpl.this.mBufferProcessProtoName);
                }
                TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                if (tTVideoEngineImpl.mMediaPlayer != null) {
                    if (tTVideoEngineImpl.mBufferProcessCallback == null) {
                        TTVideoEngineImpl.this.mMediaPlayer.setTraitObject(8, null);
                        return;
                    }
                    TTVideoEngineImpl tTVideoEngineImpl2 = TTVideoEngineImpl.this;
                    tTVideoEngineImpl2.mMediaPlayer.setTraitObject(8, new BufferProcessProto(tTVideoEngineImpl2.mBufferProcessCallback));
                }
            }
        });
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setBufferThresholdControl(int i10, int i11) {
        TTVideoEngineLog.i(logcatTag(), "setBufferThresholdControl= " + i10 + ", " + i11);
        if (i10 > 0 && i11 > 0) {
            if (DataLoaderHelper.getDataLoader().getIntValue(1150) == 1) {
                i10 = 0;
                i11 = 0;
            }
            this.mDangerBufferThreshold = i10;
            this.mSecureBufferThreshold = i11;
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheControlEnabled(boolean z10) {
        this.mCacheControlEnabled = z10;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheFilePathListener(CacheFilePathListener cacheFilePathListener) {
        this.mCacheFilePathListener = cacheFilePathListener;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCacheInfoLists(String[] strArr, long[] jArr) {
        DataLoaderHelper.getDataLoader().setCacheInfoLists(strArr, jArr);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomHeader(String str, String str2) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(57, 0, 0, str, str2);
        } else {
            _doSetCustomHeader(str, str2);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomHeaderSync(String str, String str2) {
        _doSetCustomHeader(str, str2);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomInfo(IVideoEventLogger.VideoEventCustomInfo videoEventCustomInfo, Object obj) {
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setCustomInfo(videoEventCustomInfo, obj);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setCustomStr(String str) {
        if (this.mLogger != null && !TextUtils.isEmpty(str)) {
            if (str.length() > 512) {
                str = str.substring(0, 512);
                TTVideoEngineLog.i(logcatTag(), "customStr too long to be truncated!");
            }
            this.mLogger.setCustomStr(str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(DataSource dataSource) {
        this.mDataSource = dataSource;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDecryptionKey(String str) {
        TTVideoEngineLog.i(logcatTag(), "setDecryptionKey");
        this.mDecryptionKey = str;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setDirectURL(String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(19, 0, 0, str);
        } else {
            _doSetDirectURL(str, new String[]{str});
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setDirectUrlUseDataLoader(str, str2, this.mVideoID);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(21, 0, 0, str, str2);
        } else {
            setDirectUrlUseDataLoaderByFilePath(new String[]{str}, str2);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDisplayMode(final View view, final int i10) {
        this.mLooperThread.runOnLooperThread(new Runnable() { // from class: com.ss.ttvideoengine.n
            @Override // java.lang.Runnable
            public final void run() {
                TTVideoEngineImpl.this.lambda$setDisplayMode$0(view, i10);
            }
        });
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setEffect(Bundle bundle) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setEffect:" + bundle.toString() + " TextureSurface:" + this.mTextureSurface);
        if (bundle.getInt(TextureRenderKeys.KEY_IS_ACTION) == 21 && bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) == 5) {
            setSRInitConfigWithBundle(bundle);
        } else if (bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE) == 1) {
            bundle.putBoolean(TextureRenderStrategyInterface.KEY_STRATEGY_HAS_FIRST_FRAME_SHOW, this.mHasFirstFrameShown);
            this.mTRSrategy.setEffect(bundle, this.mTextureSurface);
        } else {
            VideoSurface videoSurface = this.mTextureSurface;
            if (videoSurface != null) {
                videoSurface.setEffect(bundle);
            } else {
                this.mEffectBundle.offer(bundle);
            }
        }
        this.mLogger.setEffect(bundle);
        try {
            if (bundle.containsKey(TextureRenderKeys.KEY_IS_EFFECT_TYPE)) {
                this.effectTypeSet.add(Integer.valueOf(bundle.getInt(TextureRenderKeys.KEY_IS_EFFECT_TYPE)));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setEncodedKey(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        TTVideoEngineLog.i(logcatTag(), "setEncodedKey");
        this.mSpadea = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExpectedParams(@NonNull Resolution resolution, @Nullable Map<Integer, String> map) {
        this.expectedResolution = resolution;
        this.expectedParams = map;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExternLogListener(ExternVideoLoggerListener externVideoLoggerListener, String str) {
        this.mExternVideoLoggerListener = externVideoLoggerListener;
        this.mExternLogKey = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setExtraSurface(Surface surface, int i10) {
        synchronized (this.mExtraSurfaceQueue) {
            this.mExtraSurfaceQueue.offer(new Pair<>(surface, Integer.valueOf(i10)));
            _setExtraSurface();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setFFmpegProtocolObject(TTVideoEngineFFmpegProtocol tTVideoEngineFFmpegProtocol) {
        if (tTVideoEngineFFmpegProtocol == null) {
            return;
        }
        this.mFFmpegProtocol = tTVideoEngineFFmpegProtocol;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setFloatOption(int i10, float f10) {
        if (this.mConfigCenterVersion > 0) {
            setFloatOption2(i10, f10);
            return;
        }
        if (ConfigItemFactory.isCommonPlayerOption(i10)) {
            this.mOptionHolder.setFloatOption(i10, f10);
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            if (mediaPlayer != null) {
                mediaPlayer.setFloatOption(i10, f10);
            }
        }
        if (i10 != 359) {
            if (i10 != 535) {
                if (i10 != 651) {
                    if (i10 != 722) {
                        if (i10 != 723) {
                            switch (i10) {
                                case 325:
                                    this.mAEPreGain = f10;
                                    break;
                                case 326:
                                    this.mAEThreshold = f10;
                                    break;
                                case 327:
                                    this.mAERatio = f10;
                                    break;
                                case 328:
                                    this.mAEPredelay = f10;
                                    break;
                                default:
                                    boolean z10 = true;
                                    switch (i10) {
                                        case 344:
                                            this.mTarLoudness = f10;
                                            MediaPlayer mediaPlayer2 = this.mMediaPlayer;
                                            if (mediaPlayer2 != null) {
                                                mediaPlayer2.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_TAR_LUFS, f10);
                                                break;
                                            }
                                            break;
                                        case 345:
                                            this.mHasSetAESrcLoudness = true;
                                            this.mSrcLoudness = f10;
                                            MediaPlayer mediaPlayer3 = this.mMediaPlayer;
                                            if (mediaPlayer3 != null) {
                                                mediaPlayer3.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_LUFS, f10);
                                                break;
                                            }
                                            break;
                                        case 346:
                                            this.mHasSetAESrcPeak = true;
                                            this.mSrcPeak = f10;
                                            MediaPlayer mediaPlayer4 = this.mMediaPlayer;
                                            if (mediaPlayer4 != null) {
                                                mediaPlayer4.setFloatOption(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK, f10);
                                                break;
                                            }
                                            break;
                                        case 347:
                                            if (f10 <= 0.0f) {
                                                z10 = false;
                                            }
                                            this.mAEForbidCompressor = z10;
                                            break;
                                        case 348:
                                            this.mReleaseTime = f10;
                                            break;
                                        case 349:
                                            this.mLookAheadTime = f10;
                                            break;
                                        case TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG /* 350 */:
                                            this.mLuRange = f10;
                                            MediaPlayer mediaPlayer5 = this.mMediaPlayer;
                                            if (mediaPlayer5 != null) {
                                                mediaPlayer5.setFloatOption(1153, f10);
                                                break;
                                            }
                                            break;
                                        case 351:
                                            this.mLuStart = f10;
                                            MediaPlayer mediaPlayer6 = this.mMediaPlayer;
                                            if (mediaPlayer6 != null) {
                                                mediaPlayer6.setFloatOption(1154, f10);
                                                break;
                                            }
                                            break;
                                        case 352:
                                            this.mLuEnd = f10;
                                            MediaPlayer mediaPlayer7 = this.mMediaPlayer;
                                            if (mediaPlayer7 != null) {
                                                mediaPlayer7.setFloatOption(1155, f10);
                                                break;
                                            }
                                            break;
                                        case 353:
                                            this.mMaxMomLu = f10;
                                            MediaPlayer mediaPlayer8 = this.mMediaPlayer;
                                            if (mediaPlayer8 != null) {
                                                mediaPlayer8.setFloatOption(1156, f10);
                                                break;
                                            }
                                            break;
                                        case 354:
                                            this.mMaxShortermLu = f10;
                                            MediaPlayer mediaPlayer9 = this.mMediaPlayer;
                                            if (mediaPlayer9 != null) {
                                                mediaPlayer9.setFloatOption(1157, f10);
                                                break;
                                            }
                                            break;
                                        default:
                                            switch (i10) {
                                                case 526:
                                                    this.mABRStartupBandwidthParameter = f10;
                                                    break;
                                                case TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER /* 527 */:
                                                    this.mABRStallPenaltyParameter = f10;
                                                    break;
                                                case TTVideoEngineInterface.PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER /* 528 */:
                                                    this.mABRSwitchPenaltyParameter = f10;
                                                    break;
                                                case TTVideoEngineInterface.PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER /* 529 */:
                                                    this.mABRBandwidthParameter = f10;
                                                    break;
                                                default:
                                                    super.setFloatOption(i10, f10);
                                                    break;
                                            }
                                    }
                            }
                        } else {
                            IVideoEventLogger iVideoEventLogger = this.mLogger;
                            if (iVideoEventLogger != null) {
                                iVideoEventLogger.setVrDisplayFrameRate(f10);
                            }
                        }
                    } else {
                        IVideoEventLogger iVideoEventLogger2 = this.mLogger;
                        if (iVideoEventLogger2 != null) {
                            iVideoEventLogger2.setVrDisplayDistance(f10);
                        }
                    }
                } else {
                    VideoSurface videoSurface = this.mTextureSurface;
                    if (videoSurface != null) {
                        videoSurface.setFloatOption(4, f10);
                    }
                }
            } else {
                this.mNetworkSpeedReportSamplingRate = f10;
                this.mLogger.setFloatOption(20, f10);
            }
        } else {
            this.mSpeedXDropFPSLimit = f10;
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set float option key:" + i10 + ",value:" + f10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGearStrategyEngineConfig(GearStrategyConfig gearStrategyConfig) {
        if (gearStrategyConfig == null) {
            return;
        }
        this.mGearStrategyConfig = gearStrategyConfig;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setGearStrategyListener(IGearStrategyListener iGearStrategyListener, Object obj) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[GearStrategy]setGearStrategyListener listener=" + iGearStrategyListener + " userData=" + obj);
        this.mGearStrategyConfig.setGearStrategyListener(iGearStrategyListener).setUserData(obj);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGroupID(String str) {
        this.mGroupID = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setGroupIdUseDataLoader(String str) {
        this.mMDLGroupId = str;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "set groupID: " + this.mMDLGroupId);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIntOption(int i10, int i11) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(101, i10, i11);
        } else {
            _doSetIntOption(i10, i11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setIsMute(boolean z10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setIsMute:" + z10);
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(10, z10 ? 1 : 0);
        } else {
            _setPlayerMute(z10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLensParams(Bundle bundle) {
        this.mLensBundle = bundle;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setListener(VideoEngineListener videoEngineListener) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setListener " + videoEngineListener);
        this.mListenerCompact.setVideoEngineListener(videoEngineListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLiveID(String str) {
        setVideoID(str);
        this.mLogger.setPlayType(1);
        this.mPlayType = 1;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoadControl(LoadControl loadControl) {
        this.mLoadControlInterface = loadControl;
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLocalURL(String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(18, 0, 0, str);
        } else {
            _doSetLocalURL(str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoggerIntOption(int i10, int i11) {
        this.mLogger.setIntOption(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setLoggerLongOption(int i10, long j10) {
        this.mLogger.setLongOption(i10, j10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLongOption(int i10, long j10) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(102, i10, 0, Long.valueOf(j10));
        } else {
            _doSetLongOption(i10, j10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setLooping(boolean z10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setLooping:" + z10);
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(6, z10 ? 1 : 0);
        } else {
            _doSetLooping(z10);
        }
        String logcatTag2 = logcatTag();
        TTVideoEngineLog.i(logcatTag2, "set looping value:" + (z10 ? 1 : 0));
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMaskInfoListener(MaskInfoListener maskInfoListener) {
        this.mMaskInfoListener = maskInfoListener;
        if (this.mMaskInfoInterface == null) {
            this.mMaskInfoInterface = new MaskInfo() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.3
                {
                    TTVideoEngineImpl.this = this;
                }

                @Override // com.ss.ttm.player.MaskInfo
                protected void onMaskInfoCallback(int i10, int i11, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mMaskInfoListener != null && tTVideoEngineImpl.getConfigInt(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_BARRAGE_MASK, tTVideoEngineImpl.mEnableBarrageMask) > 0) {
                        TTVideoEngineImpl.this.mMaskInfoListener.onMaskInfoCallback(i10, i11, str);
                    }
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    public void setMediaPlayerOptions() {
        super.setMediaPlayerOptions();
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FLUSH_SEEK, this.mEnableFlushSeek);
        this.mMediaPlayer.setIntOption(619, this.mCurrentSubId);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_OPT_SUB_FIRST_LOAD_TIME, this.mEnableOptSubLoadTime);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, this.mEnableSubtitleSenseBuffering);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_LAZY_LOADING, this.mEnableSubtitleLazyLoading);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING, this.mMaskDelayLoading);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT, this.mEnablexHEAACSupport);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DECODE_AAC_THROUGH_FDKAAC, this.mDecodeAACThroughFDKAAC);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_AUDIO_SEEKING_NO_ACCURATE, this.mEnableAudioSeekingNoAccurate);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_THREAD_SAFE_REF, this.mThreadSafeRefSwitcher);
        this.mMediaPlayer.setIntOption(853, this.mOpenSubRetryTimes);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPT_SUB_SEARCH, this.mEnableOptSubSearch);
        this.mMediaPlayer.setIntOption(854, this.mEnableRecreateSubIfDetached);
        this.mMediaPlayer.setIntOption(185, this.mSoloPlayEnable);
        this.mMediaPlayer.setIntOption(201, this.mIsDisableShortSeek);
        this.mMediaPlayer.setIntOption(95, this.mMovPreferNearestSample);
        this.mMediaPlayer.setIntOption(96, this.mSkipFfmpegFindStreamInfo);
        this.mMediaPlayer.setIntOption(133, this.mDisableAccurateStart);
        this.mMediaPlayer.setIntOption(82, this.mFailTryAgain);
        this.mMediaPlayer.setIntOption(81, this.mBufferTimeout);
        this.mMediaPlayer.setIntOption(9, this.mNetworkTimeout * TTVideoEngineInterface.PLAYER_TIME_BASE);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY, this.mOriginalRetry);
        this.mMediaPlayer.setIntOption(253, this.mAccurateLayout);
        int i10 = this.mEGLNeedWorkAround;
        if (i10 == 0) {
            this.mMediaPlayer.setIntOption(183, i10);
        }
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE, this.mOpenVoiceEarly);
        this.mMediaPlayer.setIntOption(67, this.mDecoderType);
        this.mMediaPlayer.setIntOption(86, this.mBufferDataMiliSeconds);
        this.mMediaPlayer.setIntOption(110, this.mMaxBufferDataMilliSeconds);
        this.mMediaPlayer.setIntOption(111, this.mUnsupportedSampleRatesInBinary);
        this.mMediaPlayer.setIntOption(159, this.mFrameDropNum);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, this.mLoopReferVideo);
        this.mMediaPlayer.setIntOption(79, this.mTestNetSpeed);
        this.mMediaPlayer.setIntOption(66, this.mTestNetSpeedDiff);
        int i11 = this.mPlayerCache;
        if (i11 != 0 && this.mCacheControlEnabled) {
            this.mMediaPlayer.setIntOption(24, i11);
        }
        this.mMediaPlayer.setIntOption(83, this.mTestAction);
        this.mMediaPlayer.setIntOption(37, this.mEnhancementType);
        this.mMediaPlayer.setIntOption(38, this.mScaleType);
        this.mMediaPlayer.setIntOption(36, this.mLayoutType);
        int renderType = EngineGlobalConfig.getInstance().getRenderType();
        if (renderType != -1) {
            this.mMediaPlayer.setIntOption(56, renderType);
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "set renderType from static context, renderType:" + renderType);
        } else {
            this.mMediaPlayer.setIntOption(56, this.mRenderType);
        }
        this.mMediaPlayer.setIntOption(301, this.mExposeSignal);
        this.mMediaPlayer.setIntOption(211, this.mNotifyBufferingDirectly);
        this.mMediaPlayer.setIntOption(247, this.mDisablePlayerTimeOut);
        this.mMediaPlayer.setIntOption(248, this.mEnableSeekInterrupt);
        this.mMediaPlayer.setIntOption(134, this.mMaxFps);
        this.mMediaPlayer.setIntOption(1010, this.mEnableDynamicFrameDropping);
        this.mMediaPlayer.setIntOption(1011, this.mFrameDroppingMultiple);
        this.mMediaPlayer.setIntOption(1012, this.mFrameDroppingCheckPeriod);
        this.mMediaPlayer.setIntOption(1014, this.mFrameDroppingCheckCount);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HW_SETMAXFPS, this.mHWMaxFps);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HW_ENABLE_DYNAMICFRAMEDROPPING, this.mHWEnableDynamicFrameDropping);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DYNAMICFRAMEDROPPING_MULTIPLE, this.mHWFrameDroppingMultiple);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DYNAMICFRAMEDROPPING_CHECKPERIOD, this.mHWFrameDroppingCheckPeriod);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DYNAMICDROPPING_CHECKCOUNT, this.mHWFrameDroppingCheckCount);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENVOISINDROPSTATE, this.mEnableHWDropFrameWhenVOIsInDropState);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENAVOUTSYNCING, this.mEnableHWDropFrameWhenAVOutSyncing);
        int i12 = this.mCodecFramesDrop;
        if (i12 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_CODECFRAMESDROP, i12);
        }
        this.mMediaPlayer.setIntOption(192, this.mKsyFrameWait);
        this.mMediaPlayer.setIntOption(358, this.mSpeedXDrop);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC, this.mStopSourceAsync);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_POST_PREPARE, this.mPostPrepare);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE, this.mDelayBufferingUpdate);
        this.mMediaPlayer.setIntOption(199, this.mSkipAudioGraph);
        this.mMediaPlayer.setIntOption(256, this.mEglVersion);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, this.mCodecFrcLevel);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS, this.mPrepareCacheMs);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, this.mEnableCacheTimeStamp);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE, this.mKeepFormatThreadAlive);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, this.mSkipBufferTimeout);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL, this.mPosUpdateInterval);
        _configNativeRenderRotationAdapt();
        this.mMediaPlayer.setIntOption(565, this.mNativeRenderRotationAdapt);
        this.mMediaPlayer.setIntOption(664, this.mIgnoreAudioRenderEOSDelayMs);
        this.mMediaPlayer.setIntOption(666, this.mEnableMp4Check);
        this.mMediaPlayer.setIntOption(1004, this.mEnableDeinterlace);
        this.mMediaPlayer.setLongOption(668, this.mPrecisePausePts);
        int i13 = this.mMaxCodecNumsInPool;
        if (i13 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_CODEC_NUMS_IN_POOL, i13);
        }
        if (this.mHardwareDecodeEnablePlayer2 == 1) {
            this.mMediaPlayer.setIntOption(254, this.mNeedAdaptiveWorkaround);
            this.mMediaPlayer.setIntOption(400, this.mUseCodecPool);
            this.mMediaPlayer.setIntOption(90, this.mMediaCodecSyncMode);
            this.mMediaPlayer.setIntOption(215, this.mUseQcomLowLatency);
            this.mMediaPlayer.setIntOption(216, this.mMediaCodecSkipNonRef);
            int i14 = this.mUseQcomVpp;
            if (i14 == 1) {
                this.mMediaPlayer.setIntOption(212, i14);
                this.mMediaPlayer.setIntOption(213, this.mQcomVppLevel);
            }
            if (this.mEnableOppoControl == 1) {
                this.mMediaPlayer.setIntOption(184, 1);
            }
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS, this.mDisableHWDecSeamless);
            int i15 = this.mEnableVideoCodecPixelAlign;
            if (i15 == 1) {
                this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, i15);
            }
            this.mMediaPlayer.setIntOption(401, this.mDisableMcReuse);
        }
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIOTRACK_CONTENTTYPE, this.mAudioTrackContentType);
        if (this.mEnableSharp == 1) {
            this.mMediaPlayer.setIntOption(189, 1);
        }
        if (this.mTimeBarPercentage == 1) {
            this.mMediaPlayer.setIntOption(312, 1);
        }
        if (EngineGlobalConfig.getInstance().getALogWriteAddr() > 0) {
            this.mMediaPlayer.setLongOption(231, EngineGlobalConfig.getInstance().getALogWriteAddr());
        }
        this.mMediaPlayer.setIntOption(223, this.mOutputLog);
        if (EngineGlobalConfig.getInstance().getOutputLogLevelPercise() >= 0) {
            this.mMediaPlayer.setIntOption(1501, EngineGlobalConfig.getInstance().getOutputLogLevelPercise());
            String logcatTag2 = logcatTag();
            TTVideoEngineLog.d(logcatTag2, "set media Player percise loglever:" + EngineGlobalConfig.getInstance().getOutputLogLevelPercise());
        } else {
            this.mMediaPlayer.setIntOption(984, EngineGlobalConfig.getInstance().getOutputLogLevel());
            String logcatTag3 = logcatTag();
            TTVideoEngineLog.d(logcatTag3, "set media Player loglever:" + EngineGlobalConfig.getInstance().getOutputLogLevel());
        }
        AudioProcessor audioProcessor = this.mAudioProcessor;
        if (audioProcessor != null) {
            ((MediaPlayerWrapper) this.mMediaPlayer).setAudioProcessor(audioProcessor);
        }
        if (this.mHLSChooseStreamCb != null) {
            this.mMediaPlayer.setTraitObject(7, new MyHLSChooseStreamInterface(this));
        }
        for (Map.Entry<Integer, TraitObject> entry : this.mTraitObjManager.getAll().entrySet()) {
            ((MediaPlayerWrapper) this.mMediaPlayer).setTraitObject(entry.getKey().intValue(), entry.getValue());
        }
        this.mMediaPlayer.setIntOption(48, this.mVoiceType);
        int i16 = this.mHardwareDropNonRef;
        if (i16 > 0) {
            this.mMediaPlayer.setIntOption(252, i16);
        }
        this.mMediaPlayer.setIntOption(88, this.mMediaCodecRender);
        this.mMediaPlayer.setIntOption(97, this.mUseMediacodecAudio);
        this.mMediaPlayer.setIntOption(536, this.mFindStreamInfoProbeSize);
        this.mMediaPlayer.setIntOption(537, this.mFindStreamInfoProbDuration);
        this.mMediaPlayer.setIntOption(538, this.mNetworkReconnectCount);
        this.mMediaPlayer.setIntOption(539, this.mDummyAudioSleep);
        this.mMediaPlayer.setIntOption(5003, this.mDisablePlayerStayAwake);
        _configNativeYV12Render();
        this.mMediaPlayer.setIntOption(542, this.mEnableNativeYV12Render);
        this.mMediaPlayer.setIntOption(550, this.mForceCloseCodec);
        this.mMediaPlayer.setIntOption(551, this.mFilePlayNoBuffering);
        this.mMediaPlayer.setIntOption(552, this.mNoBufferUpdate);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, this.mEnableDebugUINotify);
        this.mMediaPlayer.setIntOption(654, this.mGetMasterClockByPts);
        this.mMediaPlayer.setIntOption(348, this.mAlwaysDoAVSync);
        this.mMediaPlayer.setIntOption(557, this.mClipHEAACV2FirstPtsPacket);
        this.mMediaPlayer.setIntOption(558, this.mEnableVideoTimestampMonotonic);
        this.mMediaPlayer.setIntOption(559, this.mFeedPacketUntilEmpty);
        this.mMediaPlayer.setIntOption(257, this.mEnableFallbackSWDec);
        this.mMediaPlayer.setIntOption(560, this.mEnableDemuxNonBlockRead);
        this.mMediaPlayer.setIntOption(952, this.mMediacodecStopTimeout);
        this.mMediaPlayer.setIntOption(561, this.mEnableThreadPriority);
        this.mMediaPlayer.setIntOption(562, this.mThreadPriorityValue);
        this.mMediaPlayer.setIntOption(322, this.mRenderStallThreshold);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_INACCURATE_START, this.mEnableOptInaccurateStart);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_SEEK_CLK, this.mEnableOptSeekClk);
        this.mMediaPlayer.setIntOption(563, this.mEnableAudioTrackSmoothClock);
        this.mMediaPlayer.setIntOption(564, this.mDisableSpiltVoiceWrite);
        this.mMediaPlayer.setIntOption(566, this.mIgnoreDirectlyBuffering);
        this.mMediaPlayer.setIntOption(149, this.mEnableOutletDropLimit ? 1 : 0);
        this.mMediaPlayer.setIntOption(164, this.mEnableMediaCodecRealtime);
        this.mMediaPlayer.setIntOption(571, this.mEnablePreRenderBufferingUpdate);
        this.mMediaPlayer.setIntOption(572, this.mPreRenderBufferingUpdatePercentage);
        this.mMediaPlayer.setIntOption(573, this.mEnableHEAACV2PtsMSCorrection);
        this.mMediaPlayer.setIntOption(574, this.mEnableVC1BlockList);
        this.mMediaPlayer.setIntOption(575, this.mEnableHChipAdaptiveWorkAround);
        this.mMediaPlayer.setIntOption(576, this.mEnableMChipSkipAdaptiveWorkAround);
        int enableCPPh265CodecOpt = EngineGlobalConfig.getInstance().getEnableCPPh265CodecOpt();
        if (enableCPPh265CodecOpt > 0) {
            this.mMediaPlayer.setIntOption(580, enableCPPh265CodecOpt);
        } else {
            this.mMediaPlayer.setIntOption(580, this.mEnableCPPh265CodecOpt);
        }
        this.mMediaPlayer.setIntOption(582, this.mReportFirstFrameFrameBufferOnly);
        this.mMediaPlayer.setIntOption(587, this.mEnbalePreDemux);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FAST_STOP, this.mEnableFastStop);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CODEC_RECYCLE, this.mEnableCodecRecycle);
        this.mMediaPlayer.setIntOption(480, this.mTlsLog);
        this.mMediaPlayer.setIntOption(672, this.mStopCloseIO);
        this.mMediaPlayer.setIntOption(591, this.mEnableCPPh266CodecOpt);
        this.mMediaPlayer.setIntOption(673, this.mEnableAudioMemIntergration);
        this.mMediaPlayer.setIntOption(674, this.mEnableBufferingLowerCapacity);
        this.mMediaPlayer.setIntOption(675, this.mEnableDowngradeAsyncCodec);
        this.mMediaPlayer.setIntOption(676, this.mEnableMediaCodecSyncClose);
        this.mMediaPlayer.setIntOption(677, this.mEnableSeekBuffering);
        this.mMediaPlayer.setIntOption(592, this.mh266NalsizeCheck);
        this.mMediaPlayer.setIntOption(593, this.mHardwareCodecerFlushClose);
        this.mMediaPlayer.setIntOption(594, this.mOptAudioRenderTimeReport);
        this.mMediaPlayer.setIntOption(595, this.mBT601CloseCodecAsync);
        this.mMediaPlayer.setIntOption(4001, this.mForbidFallbackNativeRender);
        this.mMediaPlayer.setIntOption(4002, this.mDecoderRenderContinueRetry);
        this.mMediaPlayer.setIntOption(4003, this.mDecoderRenderClearSurface);
        this.mMediaPlayer.setIntOption(4005, this.mEnableDecoderRenderVC2RenderLatency);
        this.mMediaPlayer.setIntOption(1071, this.mEnableOptimizeMp4Abr);
        this.mMediaPlayer.setIntOption(1072, this.mEnableMediaCodecFairMutex);
        this.mMediaPlayer.setIntOption(1074, this.mEnableRangeOptimize);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_THREADNAME_TWO_CHAR_PAD, this.mThreadName2CharSuffix);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_PRERENDER, this.mEnableOptimizePrerender);
        this.mMediaPlayer.setIntOption(581, this.mVC2DecodecLowLatency);
        this.mMediaPlayer.setIntOption(4008, this.mVC2WppMode);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC_DOWNLOAD, this.mEnableAsyncDownload);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PRELOAD_GEAR, this.mEnablePreloadGear);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_ASYNC_PROBE, this.mEnableAsyncProbe);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_ASYNC_DOWNLOAD, this.mEnableOptimizeAsyncDownload);
        this.mMediaPlayer.setIntOption(598, this.mAudioPtsMSCorrectionExtension);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_CACHE_INFO, this.mEnableCacheInfo);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_RADIO_MODE, this.mEnableOptimizeRadioMode);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_IO, this.mEnableOptimizeIO);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_DASH_SEEK, this.mEnableOptimizeDashSeek);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ANRENDER_REFRESH_SURFACE, this.mAnRenderRefreshSurface);
        this.mMediaPlayer.setIntOption(4009, this.mLowerAudioMemCapacity);
        this.mMediaPlayer.setIntOption(4010, this.mVC2ThreadNum);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_USE_TARGET_WINDOW, this.mSetPlayerSurfaceWithLock);
        this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_NOTIFY_RENDER_EXCEPTION, this.mEnableNotifyRenderException);
        if (this.mHardwareDecodeEnablePlayer2 <= 0) {
            this.mMediaPlayer.setIntOption(4007, this.mDecoderRenderVC2PreCreateRender);
        }
        int i17 = this.mQueryWinEnable;
        if (i17 != -1) {
            this.mMediaPlayer.setIntOption(982, i17);
        }
        int i18 = this.mPreferNearestMaxPosOffset;
        if (i18 != -1) {
            this.mMediaPlayer.setIntOption(985, i18);
        }
        int i19 = this.mMediaCodecAsyncModeEnable;
        if (i19 != -1) {
            this.mMediaPlayer.setIntOption(1000, i19);
        }
        int i20 = this.mHlsSubDemuxerProbeType;
        if (i20 != -1) {
            this.mMediaPlayer.setIntOption(1070, i20);
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            MediaPlayer mediaPlayer = this.mMediaPlayer;
            int i21 = this.mAudioInfoId;
            if (i21 == -1) {
                i21 = iVideoModel.getVideoRefInt(230);
            }
            mediaPlayer.setIntOption(662, i21);
        } else {
            this.mMediaPlayer.setIntOption(662, this.mAudioInfoId);
        }
        _setLoggerOptions();
        int i22 = this.mSettingCodecName;
        if (i22 != -1) {
            this.mMediaPlayer.setIntOption(1003, i22);
            for (int i23 = 0; i23 < this.mPrivCodecName.size(); i23++) {
                this.mMediaPlayer.setStringOption(1002, this.mPrivCodecName.get(i23));
            }
        }
        int i24 = this.mAVsyncRefined;
        if (i24 != -1) {
            this.mMediaPlayer.setIntOption(1005, i24);
        }
        int i25 = this.mOnlyPlayAudioForBothStream;
        if (i25 != -1) {
            this.mMediaPlayer.setIntOption(1020, i25);
        }
        int i26 = this.mCodecAndSurfaceReuse;
        if (i26 != -1) {
            this.mMediaPlayer.setIntOption(1007, i26);
        }
        int i27 = this.mMCMaxWidth;
        if (i27 != -1) {
            this.mMediaPlayer.setIntOption(1008, i27);
        }
        int i28 = this.mMCMaxHeight;
        if (i28 != -1) {
            this.mMediaPlayer.setIntOption(1009, i28);
        }
        int i29 = this.mIgnoreSurfaceCreated;
        if (i29 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_IGNORE_SURFACE_CREATED, i29);
        }
        int i30 = this.mForbidBufferingNotFinished;
        if (i30 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FORBID_BUFFERING_VDEC_NOT_FINISHED, i30);
        }
        if (this.mIsPrepareDecodeOnly) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_PREPARE_DECODE_ONLY, 1);
        }
        int i31 = this.mAsyncManageResource;
        if (i31 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ASYNC_MANAGE_RESOURCE, i31);
        }
        int i32 = this.mAudioUseDirectBuffer;
        if (i32 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_USE_DIRECT_BUFFER, i32);
        }
        int i33 = this.mCloseCodecPool;
        if (i33 != -1) {
            this.mMediaPlayer.setIntOption(1040, i33);
        }
        int i34 = this.mDummySurfaceForbid;
        if (i34 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DUMMYSURFACE_FORBID, i34);
        }
        int i35 = this.mCalibrationAudioPts;
        if (i35 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CALIBRATION_AUDIO_PTS, i35);
        }
        int i36 = this.mAudioPtsCalibrationType;
        if (i36 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CALIBRATION_AUDIO_TYPE, i36);
        }
        int i37 = this.mSetSurfaceRetryCount;
        if (i37 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_SURFACE_RETRY_COUNT, i37);
        }
        int i38 = this.mSetSurfaceRetryInterval;
        if (i38 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_SET_SURFACE_RETRY_INTERVAL, i38);
        }
        int i39 = this.mChangeRecBufferSpeed;
        if (i39 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CHANGE_REC_BUFFER_SPEED, i39);
        }
        int i40 = this.mEnableVideoSecondFrame;
        if (i40 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_SECOND_FRAME, i40);
        }
        int i41 = this.mGiveBackCodecEarly;
        if (i41 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_GIVEBACK_CODEC_EARLY, i41);
        }
        int i42 = this.mWaitingCodecMs;
        if (i42 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_WAITING_CODEC, i42);
        }
        int i43 = this.mAsyncSetWindow;
        if (i43 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ASYNC_SET_WINDOW, i43);
        }
        int i44 = this.mAutoDisconnectedCpu;
        if (i44 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUTO_DISCONNECTED_CPU, i44);
        }
        int i45 = this.mEnableReportFirstAVSyncFrame;
        if (i45 == 1) {
            this.mMediaPlayer.setIntOption(475, i45);
        }
        int i46 = this.mQueryAdaptivePlayback;
        if (i46 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK, i46);
        }
        int i47 = this.mFlushWhenSetSurface;
        if (i47 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FLUSH_WHEN_SETSURFACE, i47);
        }
        int i48 = this.mEnableMediaCodecDeathCheck;
        if (i48 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_MEDIA_CODEC_DEATH_CHECK, i48);
        }
        int i49 = this.mMediaCodecDeathCheckInterval;
        if (i49 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_CHECK_INTERVAL_MS, i49);
        }
        int i50 = this.mMediaCodecDeathTimeout;
        if (i50 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_TIMEOUT_MS, i50);
        }
        int i51 = this.mCodecPoolSupportDynamicExtend;
        if (i51 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODECPOOL_SUPPORT_DYNAMIC_EXTEND, i51);
        }
        int i52 = this.mDynamicExtendCodecNums;
        if (i52 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_EXTEND_CODEC_NUMS, i52);
        }
        int i53 = this.mEnableOptimizeHWDec2SWDec;
        if (i53 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_HWDEC2SWDEC, i53);
        }
        int i54 = this.mCreateAudioTrackEarly;
        if (i54 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CREATE_AUDIOTRACK_EARLY, i54);
        }
        int i55 = this.mEnableMediaCodecPipeline;
        if (i55 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_MEDIACODEC_PIPELINE_CTL, i55);
        }
        int i56 = this.mFrameNumsInMediaCodec;
        if (i56 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_NUMS_IN_MEDIACODEC, i56);
        }
        int i57 = this.mEnableMCRenderHandleSAR;
        if (i57 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_MC_RENDER_HANDLE_SAR, i57);
        }
        int i58 = this.mRecBufferThresh;
        if (i58 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_REC_BUFFER_THRESH, i58);
        }
        int i59 = this.mRecBufferType;
        if (i59 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FORMATER_REC_BUFFER_TYPE, i59);
        }
        int i60 = this.mUserExitTimeMs;
        if (i60 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_USER_EXIT_TIME, i60);
        }
        int i61 = this.mAudioGraphRefactor;
        if (i61 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_GRAPH_REFACTOR, i61);
        }
        int i62 = this.mAudioDecoderGraphMerged;
        if (i62 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_AND_GRAPH_MERGE, i62);
        }
        int i63 = this.mCodecPoolVersion;
        if (i63 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODECPOOL_VERSION, i63);
        }
        int i64 = this.mDiscardCodecStrategy1;
        if (i64 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY1, i64);
        }
        int i65 = this.mDiscardCodecStrategy2;
        if (i65 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY2, i65);
        }
        int i66 = this.mCodecHistoryLength;
        if (i66 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_HISTORY_LENGTH, i66);
        }
        int i67 = this.mCodecMaxUsedCount;
        if (i67 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_CODEC_MAX_USED_COUNT, i67);
        }
        int i68 = this.mEnableFallbackInMaxInstanceErr;
        if (i68 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_FALLBACK_IN_MAX_INSTANCE_ERR, i68);
        }
        int i69 = this.mEnableStartPlaySync;
        if (i69 != -1) {
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_START_PLAY_SYNC, i69);
        }
        int i70 = this.mOverlayMode;
        if ((i70 == 2 || i70 == 4) && this.mTextureSurface != null) {
            this.mNoAVSync = 1;
            this.mEnableVideoFrameMetaCallback = 1;
            this.mMediaPlayer.setIntOption(MediaPlayer.MEDIA_PLAYER_OPTION_NO_AV_SYNC, 1);
            if (this.mOverlayMode == 4) {
                this.mIsMute = true;
            }
        }
        this.mMediaPlayer.setIntOption(333, this.mEnableVideoFrameMetaCallback);
        MediaPlayer mediaPlayer2 = this.mMediaPlayer;
        if (mediaPlayer2 instanceof MediaPlayerWrapper) {
            ((MediaPlayerWrapper) mediaPlayer2).setFrameMetadataListener(new MyFrameMetadataListener());
        }
        this.mOptionHolder.apply(this.mMediaPlayer);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMirrorHorizontal(boolean z10) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(29, z10 ? 1 : 0);
        } else {
            doSetMirrorHorizontal(z10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setMirrorVertical(boolean z10) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(30, z10 ? 1 : 0);
        } else {
            doSetMirrorVertical(z10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setNetworkClient(TTVNetClient tTVNetClient) {
        this.mNetClient = tTVNetClient;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setObjectOption(int i10, Object obj) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(109, i10, 0, obj);
        } else {
            _doSetObjectOption(i10, obj);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayAPIVersion(int i10, String str) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setPlayAPIVersion:" + i10);
        this.mPlayAPIVersion = i10;
        this.mAuthorization = str;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setPlayAPIVersion(i10, str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayAuthToken(String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(31, 0, 0, str);
        } else {
            doSetPlayAuthToken(str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayInfo(int i10, long j10) {
        int i11;
        if (getConfigInt(160, this.mDataLoaderEnable) > 0) {
            if (TextUtils.isEmpty(this.mTraceId)) {
                TTVideoEngineLog.t(logcatTag(), "trace id null, not allow setplayinfo");
                return;
            }
            switch (i10) {
                case 0:
                    i11 = 22;
                    break;
                case 1:
                    i11 = 23;
                    break;
                case 2:
                    i11 = 24;
                    break;
                case 3:
                    i11 = 25;
                    break;
                case 4:
                    i11 = 26;
                    break;
                case 5:
                    MediaPlayer mediaPlayer = this.mMediaPlayer;
                    if (mediaPlayer == null) {
                        TTVideoEngineLog.t("MDL-SETPLAYINFO", "mediaplayer is null not allow set PLAY_INFO_CURRENT_BUFFER");
                        return;
                    }
                    if (j10 == -1) {
                        j10 = mediaPlayer.getLongOption(73, -1L);
                        long longOption = mediaPlayer.getLongOption(72, -1L);
                        if (j10 >= 0 && longOption >= 0) {
                            j10 = Math.min(j10, longOption);
                        } else if (longOption >= 0) {
                            j10 = longOption;
                        }
                    }
                    i11 = 27;
                    break;
                    break;
                case 6:
                    i11 = 28;
                    break;
                default:
                    i11 = -1;
                    break;
            }
            if (this.mEnableSetPlayInfoToP2P != 0 && getConfigInt(302, this.mForbidP2P) != 1) {
                DataLoaderHelper.getDataLoader().setPlayInfo(i11, this.mTraceId, this.mVideoID, j10);
            } else {
                DataLoaderHelper.getDataLoader().setPlayInfoOnlyForPreload(i11, this.mTraceId, this.mVideoID, j10);
            }
            if (!TTVideoEngineUtils.isFlagOn(EngineGlobalConfig.getInstance().getEngineOptimizeFlag(), 8L)) {
                TTVideoEngineLog.t("MDL-SETPLAYINFO", "set play info into mdl key:" + i11 + "value:" + j10 + "traceid:" + this.mTraceId);
            }
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayItem(TTVideoEnginePlayItem tTVideoEnginePlayItem) {
        if (tTVideoEnginePlayItem == null) {
            return;
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(17, 0, 0, tTVideoEnginePlayItem);
        } else {
            _doSetPlayItem(tTVideoEnginePlayItem);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setPlaybackParams(PlaybackParams playbackParams) {
        if (playbackParams != null) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.d(logcatTag, "setPlaybackParams:" + playbackParams + ", speed:" + playbackParams.getSpeed() + ", pitch:" + playbackParams.getPitch());
        }
        this.mPlaybackParams = playbackParams;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(53, 0, 0, playbackParams);
        } else {
            _doSetPlaybackParams(playbackParams);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerEventListener(PlayerEventSimpleListener playerEventSimpleListener) {
        this.mPlayerEventListener = playerEventSimpleListener;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerHLSChooseStreamCallback(TTVideoEnginePlayHLSChooseStreamCallback tTVideoEnginePlayHLSChooseStreamCallback) {
        if (this.mAsyncSetHLSChooseStream == 1 && this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(109, 443, 0, tTVideoEnginePlayHLSChooseStreamCallback);
            return;
        }
        this.mHLSChooseStreamCb = tTVideoEnginePlayHLSChooseStreamCallback;
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.setTraitObject(7, new MyHLSChooseStreamInterface(this));
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPlayerSurface(Surface surface, int i10, int i11) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            if (i11 == 1) {
                this.mLooperThread.sendEngineMessage(56, getConfigInt(950, (int) this.mSendEngineMsgTimeout), i10, 0, surface);
                return;
            } else {
                this.mLooperThread.postEngineMessage(56, i10, 0, surface);
                return;
            }
        }
        _doSetPlayerSurface(surface, i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setPreloaderItem(TTAVPreloaderItem tTAVPreloaderItem) {
        if (tTAVPreloaderItem == null) {
            this.mIsPreloaderItem = false;
        } else if (TextUtils.isEmpty(tTAVPreloaderItem.mUrl)) {
            setVideoID(tTAVPreloaderItem.mVideoID);
        } else if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(15, 0, 0, tTAVPreloaderItem);
        } else {
            _doSetPreloaderItem(tTAVPreloaderItem);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setQcomVpp(boolean z10, int i10) {
        this.mUseQcomVpp = z10 ? 1 : 0;
        this.mQcomVppLevel = i10;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setRadioMode(boolean z10) {
        setIntOption(480, z10 ? 1 : 0);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setReportLogEnable(boolean z10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setReportLogEnable " + z10);
        this.mLogger.setUploadLogEnabled(z10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setResolutionMap(HashMap<String, Resolution> hashMap) {
        if (hashMap != null && hashMap.size() > 0) {
            this.mResolutionMap = hashMap;
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setRotation(int i10) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(28, i10);
        } else {
            doSetRotation(i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setSARChangeListener(SARChangeListener sARChangeListener) {
        this.mListenerCompact.setSARChangeListener(sARChangeListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSRInitConfig(int i10, String str, String str2, String str3, int i11, int i12, int i13) {
        this.mOldTextureAlgType = this.mTextureAlgType;
        this.mTextureAlgType = i10;
        this.mTextureSRBinPath = str;
        this.mTextureSROclModuleName = str2;
        this.mTextureSRDspModuleName = str3;
        this.mSrBackend = i11;
        this.mSrScaleType = i12;
        this.mSrPoolSize = i13;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setSrAlgorithm(i10);
            this.mLogger.setSrScaleType(i12);
            this.mLogger.setEnableBmfSr(EngineGlobalConfig.getInstance().getEnableBmf());
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]sr init config = " + this.mTextureAlgType + "," + this.mTextureSRBinPath + "," + this.mTextureSROclModuleName + ", " + this.mTextureSRDspModuleName);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSpeedShiftConfig(SpeedShiftConfig speedShiftConfig) {
        this.mSpeedShiftConfig = speedShiftConfig;
        this.mBestResolutionType = 3;
        this.mEngineConfig.setIntOption(419, 3);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSrMaxTextureSize(int i10, int i11) {
        this.mMaxTextureWidth = i10;
        this.mMaxTextureHeight = i11;
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]setSrMaxTextureSize:" + this.mMaxTextureWidth + "," + this.mMaxTextureHeight);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setSrMaxTexureSize(int i10, int i11) {
        setSrMaxTextureSize(i10, i11);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setStartTime(int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setStartTime:" + i10);
        this.mStartTime = i10;
        this.mLogger.setStartTime(i10);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setStrategySource(StrategySource strategySource) {
        if (strategySource == null) {
            return;
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(26, 0, 0, strategySource);
        } else {
            doSetStrategySource(strategySource);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setStreamInfoListener(StreamInfoListener streamInfoListener) {
        this.mListenerCompact.setStreamInfoListener(streamInfoListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setStringOption(int i10, String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(108, i10, 0, str);
        } else {
            _doSetStringOption(i10, str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubAuthToken(String str) {
        String base64Decode = TTHelper.base64Decode(str);
        if (!TextUtils.isEmpty(base64Decode)) {
            try {
                String optString = new JSONObject(base64Decode).optString("GetSubtitleAuthToken");
                this.mSubAuthToken = optString;
                if (TextUtils.isEmpty(optString)) {
                    this.mSubAuthToken = base64Decode;
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setSubAuthToken " + str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubDesInfoModel(final SubDesInfoModelProvider subDesInfoModelProvider) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "subtitle: set subtitle description info: " + subDesInfoModelProvider.toString());
        this.mLooperThread.runOnLooperThread(new Runnable() { // from class: com.ss.ttvideoengine.g
            @Override // java.lang.Runnable
            public final void run() {
                TTVideoEngineImpl.this.lambda$setSubDesInfoModel$3(subDesInfoModelProvider);
            }
        });
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubInfoCallBack(SubInfoSimpleCallBack subInfoSimpleCallBack) {
        int i10;
        this.mSubInfoCallBack = subInfoSimpleCallBack;
        String logcatTag = logcatTag();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("subtitle: set callback, null: %d");
        if (subInfoSimpleCallBack == null) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        sb2.append(i10);
        TTVideoEngineLog.d(logcatTag, sb2.toString());
        if (this.mSubInfoInterface == null) {
            this.mSubInfoInterface = new SubInfo() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.6
                {
                    TTVideoEngineImpl.this = this;
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubInfoCallback(int i11, int i12, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("info", str);
                            jSONObject.put("pts", i12);
                            String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
                            TTVideoEngineLog.d(logcatTag2, "subtitle: callback: " + str);
                            TTVideoEngineImpl.this.mSubInfoCallBack.onSubInfoCallback(i11, jSONObject.toString());
                            return;
                        } catch (JSONException unused) {
                            TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "put content field failed");
                            return;
                        }
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoCallBack is null");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubInfoCallback2(int i11, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                        TTVideoEngineImpl.this.mSubInfoCallBack.onSubInfoCallback(i11, str);
                        String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
                        TTVideoEngineLog.d(logcatTag2, "subtitle: callback2: " + str);
                        return;
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoCallBack is null or mEnableSub == 0");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubLoadFinished(int i11) {
                    int i12;
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "subtitle call back: finished old did call back");
                        if (i11 >= 0) {
                            i12 = 1;
                        } else {
                            i12 = 0;
                        }
                        TTVideoEngineImpl.this.mSubInfoCallBack.onSubLoadFinished(i12);
                        return;
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoCallBack is null or mEnableSub == 0");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubLoadFinished2(int i11, String str) {
                    int i12;
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                        TTVideoEngineLog.d(TTVideoEngineImpl.this.logcatTag(), "subtitle: call back: finished did call back");
                        if (i11 >= 0) {
                            i12 = 1;
                        } else {
                            i12 = 0;
                        }
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            if (i12 == 1) {
                                i11 = 0;
                            }
                            jSONObject.put(Module.ResponseKey.Code, i11);
                            str = jSONObject.toString();
                        } catch (JSONException unused) {
                        }
                        TTVideoEngineImpl.this.mSubInfoCallBack.onSubLoadFinished2(i12, str);
                        return;
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoCallBack is null or mEnableSub == 0");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubSwitchCompleted(int i11, int i12) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoCallBack != null && tTVideoEngineImpl.mEnableSub > 0) {
                        TTVideoEngineImpl.this.mSubInfoCallBack.onSubSwitchCompleted(i11, i12);
                    } else {
                        TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoCallBack is null");
                    }
                }
            };
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSubInfoListener(SubInfoListener subInfoListener) {
        int i10;
        String logcatTag = logcatTag();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("subtitle: set info listener, null: %d");
        if (subInfoListener == null) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        sb2.append(i10);
        TTVideoEngineLog.d(logcatTag, sb2.toString());
        this.mSubInfoListener = subInfoListener;
        if (this.mSubInfoInterface == null) {
            this.mSubInfoInterface = new SubInfo() { // from class: com.ss.ttvideoengine.TTVideoEngineImpl.5
                {
                    TTVideoEngineImpl.this = this;
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubInfoCallback(int i11, int i12, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoListener != null && tTVideoEngineImpl.mEnableSub > 0) {
                        TTVideoEngineImpl.this.mSubInfoListener.onSubInfoCallback(i11, i12, str);
                        String logcatTag2 = TTVideoEngineImpl.this.logcatTag();
                        TTVideoEngineLog.d(logcatTag2, "subtitle: listener: " + str);
                        return;
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoListener is null");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubInfoCallback2(int i11, String str) {
                    TTVideoEngineImpl tTVideoEngineImpl = TTVideoEngineImpl.this;
                    if (tTVideoEngineImpl.mSubInfoListener != null && tTVideoEngineImpl.mEnableSub > 0) {
                        try {
                            JSONObject jSONObject = new JSONObject(str);
                            String optString = jSONObject.optString("info");
                            TTVideoEngineImpl.this.mSubInfoListener.onSubInfoCallback(i11, jSONObject.optInt("pts"), optString);
                            return;
                        } catch (JSONException unused) {
                            TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "construct json failed");
                            return;
                        }
                    }
                    TTVideoEngineLog.e(TTVideoEngineImpl.this.logcatTag(), "mSubInfoListener is null");
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubLoadFinished(int i11) {
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubLoadFinished2(int i11, String str) {
                }

                @Override // com.ss.ttm.player.SubInfo
                protected void onSubSwitchCompleted(int i11, int i12) {
                }
            };
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSurface(Surface surface) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setsurface = " + surface + ", pre-surface:" + this.mSurface + ",this:" + this);
        if (surface == null) {
            this.mLastSetSurfaceNullTime = System.currentTimeMillis();
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(54, 0, 0, surface);
        } else {
            lambda$_setSurfaceSync$4(surface);
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        setSurfaceHolder(surfaceHolder, false);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceHolderSync(SurfaceHolder surfaceHolder) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setSurfaceHolderSync = " + surfaceHolder + ", this:" + this);
        if (surfaceHolder == null) {
            this.mLastSetSurfaceNullTime = System.currentTimeMillis();
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            if (!this.mLooperThread.sendEngineMessage(55, getConfigInt(950, (int) this.mSendEngineMsgTimeout), 0, 0, surfaceHolder) && surfaceHolder != null) {
                this.mSetValidSurfaceTimeout = 1;
                return;
            }
            return;
        }
        _doSetSurfaceHolder(surfaceHolder, false);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceSync(Surface surface) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setSurfaceSync = " + surface + ",this:" + this);
        _setSurfaceSync(surface, (long) getConfigInt(950, (int) this.mSendEngineMsgTimeout), false);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTTHlsDrmToken(String str) {
        this.mTTHlsDrmToken = str;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTestSpeedEnable(int i10, TestNetSpeedListener testNetSpeedListener) {
        if (!FeatureManager.hasPermission(FeatureManager.NET_SPEED)) {
            return;
        }
        this.mTestNetSpeed = i10;
        this.mTestNetSpeedListener = testNetSpeedListener;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(52, i10);
        } else {
            _doSetTestSpeedEnable(i10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTokenUrlTemplate(String str) {
        this.mTokenUrlTemplate = str;
        IntertrustDrmHelper intertrustDrmHelper = this.mIntertrustDrmHelper;
        if (intertrustDrmHelper != null) {
            intertrustDrmHelper.setTokenUrlTemplate(str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setTraitObject(int i10, TraitObject traitObject) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(111, i10, 0, traitObject);
        } else {
            _doSetTraitObject(i10, traitObject);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setUnSupportSampleRates(int[] iArr) {
        if (!isInHousePlayer()) {
            return;
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(51, 0, 0, iArr);
        } else {
            _setUnSupportSampleRates(iArr);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoBufferDetailListener(VideoBufferDetailListener videoBufferDetailListener) {
        this.mListenerCompact.setVideoBufferDetailListener(videoBufferDetailListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoBufferListener(VideoBufferListener videoBufferListener) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setVideoBufferListener " + videoBufferListener);
        this.mListenerCompact.setVideoBufferListener(videoBufferListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineCallback(VideoEngineCallback videoEngineCallback) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setVideoEngineSimpleCallback " + videoEngineCallback);
        this.mListenerCompact.setVideoEngineCallback(videoEngineCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineGetInfoListener(VideoEngineGetInfoListener videoEngineGetInfoListener) {
        this.mVideoEngineGetInfoListener = videoEngineGetInfoListener;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoEngineInfoListener(VideoEngineInfoListener videoEngineInfoListener) {
        this.mVideoEngineInfoListener = videoEngineInfoListener;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoEngineSimpleCallback(VideoEngineSimpleCallback videoEngineSimpleCallback) {
        setVideoEngineCallback(videoEngineSimpleCallback);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoID(String str) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(14, 0, 0, str);
        } else {
            _doSetVideoID(str);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoInfoListener(VideoInfoListener videoInfoListener) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setVideoInfoListener " + videoInfoListener);
        this.mVideoInfoListener = videoInfoListener;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoModel(VideoModel videoModel) {
        setVideoModel((IVideoModel) videoModel);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setVideoURLRouteListener(VideoURLRouteListener videoURLRouteListener) {
        this.mListenerCompact.setVideoURLRouteListener(videoURLRouteListener);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal, com.ss.ttvideoengine.ITTVideoEngineInternal
    public void setVolume(float f10, float f11) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setVolume left:" + f10 + " right:" + f11);
        this.mLeftVolume = f10;
        this.mRightVolume = f11;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(9, 0, 0, Float.valueOf(f10), Float.valueOf(f11));
        } else {
            setPlayerVolume(f10, f11);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void snapshot(SnapshotListener snapshotListener) {
        if (snapshotListener == null) {
            TTVideoEngineLog.d(logcatTag(), "snapshotListener is null");
        } else if (this.mTextureSurface == null) {
            TTVideoEngineLog.d(logcatTag(), "TextureSurface is null");
            snapshotListener.onSnapShot(null, 0, 0);
        } else {
            Bundle bundle = new Bundle();
            bundle.putBoolean(TextureRenderKeys.KEY_IS_ORIGIN_VIDEO, true);
            this.mTextureSurface.saveFrame(bundle, new h(snapshotListener));
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void start() {
        TTVideoEngineLog.i(logcatTag(), "start");
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEnginePlay(this.mEngineWrapper);
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(23);
        } else {
            _doStart();
        }
    }

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    public void stop() {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "stop:" + this);
        for (VideoEngineStateListener videoEngineStateListener : TTVideoEngine.sEngineStateListeners) {
            videoEngineStateListener.onEngineStop(this.mEngineWrapper);
        }
        this.mShouldPlay = false;
        this.mIsFetchingInfo = false;
        this.mTextureFirstFrame = false;
        this.mTexNotifyFirstFrame = false;
        this.mShouldStop = true;
        this.mRenderHDR2SDR = 0;
        this.mEngineConfig.remove(652);
        this.mSyncUpdateSurface = 0;
        this.mLoopStartTime = 0;
        this.mEngineConfig.remove(24);
        this.mLoopEndTime = 0;
        this.mEngineConfig.remove(25);
        this.mIsPrepareDecodeOnly = false;
        this.mEngineConfig.remove(984);
        this.mOSPlayerIgnoreHeaders = false;
        this.mEngineConfig.remove(TTVideoEngineInterface.PLAYER_OPTION_OSPLAYER_IGNORE_HEADERS);
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(3);
        } else {
            _doStop();
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public String[] supportedQualityInfos() {
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            return iVideoModel.getSupportQualityInfos();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public Resolution[] supportedResolutionTypes() {
        TTAVPreloaderItem tTAVPreloaderItem;
        if (this.mIsPreloaderItem && (tTAVPreloaderItem = this.mPreloaderItem) != null) {
            return tTAVPreloaderItem.supportResolutions();
        }
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            return iVideoModel.getSupportResolutions();
        }
        return new Resolution[0];
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public List<com.ss.ttvideoengine.model.SubInfo> supportedSubInfoList() {
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            return iVideoModel.getSubInfoList();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public int[] supportedSubtitleLangs() {
        IVideoModel iVideoModel = this.mVideoModel;
        if (iVideoModel != null) {
            return iVideoModel.getSupportSubtitleLangs();
        }
        return null;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean supporth265Playback() {
        if (this.mLooperThread.checkEngineLooperThread(true)) {
            this.mLooperThread.sendEngineMessage(156, -1L);
            this.mLooperThread.mEngineMsgRetValue.setDataPosition(0);
            if (this.mLooperThread.mEngineMsgRetValue.readInt() == 1) {
                return true;
            }
            return false;
        }
        return _doSupporth265Playback();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public boolean supporth266Playback() {
        if (this.mLooperThread.checkEngineLooperThread(true)) {
            this.mLooperThread.sendEngineMessage(157, -1L);
            this.mLooperThread.mEngineMsgRetValue.setDataPosition(0);
            if (this.mLooperThread.mEngineMsgRetValue.readInt() == 1) {
                return true;
            }
            return false;
        }
        return _doSupporth266Playback();
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void updateLoadState(int i10, int i11) {
        MediaPlayer mediaPlayer;
        IVideoEventLogger iVideoEventLogger;
        IVideoEventLogger iVideoEventLogger2;
        int i12;
        if (this.mLoadState != i10) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "load state changed, prev:" + this.mLoadState + ", current:" + i10);
            if (i10 == 2) {
                if (this.mHasFirstFrameShown && !this.mSeeking && this.mLoadState != 3) {
                    int _getPlayerTime = _getPlayerTime();
                    this.mBufferingType = i11;
                    IVideoEventLogger iVideoEventLogger3 = this.mLogger;
                    if (iVideoEventLogger3 != null) {
                        iVideoEventLogger3.movieStalled(i11, _getPlayerTime);
                        i12 = this.mLogger.getMovieStalledType();
                    } else {
                        i12 = -1;
                    }
                    if (i11 == 0) {
                        setPlayInfo(3, i12);
                    }
                    this.mBufferingStartT = SystemClock.elapsedRealtime();
                }
                if (this.mHasFirstFrameShown && this.mSeeking && (iVideoEventLogger2 = this.mLogger) != null) {
                    iVideoEventLogger2.setIntOption(155, i11 + 1);
                    this.mLogger.setLoggerTimes(170);
                }
            }
            if (i10 == 1 && this.mHasFirstFrameShown && this.mSeeking && (iVideoEventLogger = this.mLogger) != null) {
                iVideoEventLogger.setLoggerTimes(171);
            }
            this.mLoadState = i10;
            notifyLoadStateChanged(i10);
            if (i10 == 2 && (mediaPlayer = this.mMediaPlayer) != null) {
                long longOption = mediaPlayer.getLongOption(665, 0L);
                if (longOption > 0) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("diff", Long.valueOf(longOption));
                    this.mLogger.onAVBadInterlaced(longOption);
                    if (this.mLooperThread.checkSendMainLooper()) {
                        this.mLooperThread.postMainLooperMessage(420, 0, 0, hashMap);
                    } else {
                        this.mListenerCompact.onAVBadInterlaced(hashMap);
                    }
                }
            }
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInternal
    protected void updatePlaybackState(int i10) {
        if (this.mPlaybackState != i10) {
            String logcatTag = logcatTag();
            TTVideoEngineLog.i(logcatTag, "playback state changed, prev:" + this.mPlaybackState + ", current:" + i10);
            this.mPlaybackState = i10;
            notifyPlaybackStateChanged(i10);
            TTVideoEngineMonitor tTVideoEngineMonitor = this.mEngineStateMonitor;
            if (tTVideoEngineMonitor != null) {
                if (i10 == 1) {
                    tTVideoEngineMonitor.engineStateChange(hashCode(), true);
                } else {
                    tTVideoEngineMonitor.engineStateChange(hashCode(), false);
                }
            }
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void updateSRStrategyConfig(SRStrategyConfig sRStrategyConfig) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]updateSRStrategyConfig mSRStrategy=" + this.mSRStrategy + " config=" + sRStrategyConfig);
        this.mSRStrategy.updateConfig(sRStrategyConfig);
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x015d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String _generatePlayUrl(java.lang.String r17, java.util.Map<java.lang.String, java.lang.String> r18, java.util.List<com.ss.ttvideoengine.model.VideoInfo> r19) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttvideoengine.TTVideoEngineImpl._generatePlayUrl(java.lang.String, java.util.Map, java.util.List):java.lang.String");
    }

    private void _parseIPAddress(IVideoModel iVideoModel, Error error) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(301, 0, 0, iVideoModel, error);
        } else {
            _doParseIPAddress(iVideoModel, error);
        }
    }

    private boolean isSupportBash(IVideoModel iVideoModel) {
        if (iVideoModel == null) {
            return false;
        }
        if ((iVideoModel.hasFormat(IVideoModel.Format.DASH) && isSupportBash(1)) || (iVideoModel.hasFormat(IVideoModel.Format.MP4) && isSupportBash(2))) {
            return iVideoModel.isSupportBash();
        }
        return false;
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(FileDescriptor fileDescriptor, long j10, long j11) {
        this.mPipeOffset = j10;
        this.mPipeLength = j11;
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(12, 0, 0, fileDescriptor);
        } else {
            _doSetDataSource(fileDescriptor);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceHolder(SurfaceHolder surfaceHolder, boolean z10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "setSurfaceHolder = " + surfaceHolder + ", this:" + this);
        if (surfaceHolder == null) {
            this.mLastSetSurfaceNullTime = System.currentTimeMillis();
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(55, z10 ? 1 : 0, 0, surfaceHolder);
        } else {
            _doSetSurfaceHolder(surfaceHolder, z10);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setVideoModel(IVideoModel iVideoModel) {
        if (iVideoModel == null) {
            return;
        }
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(16, 0, 0, iVideoModel);
        } else {
            _doSetVideoModel(iVideoModel);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void configParams(Resolution resolution, Map<Integer, String> map) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "configParams res:" + resolution + ", params:" + map);
        if (resolution == null) {
            return;
        }
        _configResolution(resolution, map);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void configResolution(Resolution resolution) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "configResolution " + resolution);
        if (resolution == null) {
            return;
        }
        _configResolution(resolution, null);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String str, String str2, @Nullable String str3) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        setDirectUrlUseDataLoader(new String[]{str}, str2, str3);
    }

    private boolean _isDashSource(String str) {
        return FormatProvider.FormatProviderHolder.isMpd(str);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectURL(String str, String str2) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(19, 0, 0, str, str2);
        } else {
            _doSetDirectURL(str, str2);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    @Deprecated
    public void setPlayAuthToken(String str, int i10) {
        String logcatTag = logcatTag();
        TTVideoEngineLog.d(logcatTag, "setPlayAPIVersion:" + i10);
        this.mPlayAPIVersion = i10;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setPlayAPIVersion(i10, str);
        }
        String base64Decode = TTHelper.base64Decode(str);
        if (TextUtils.isEmpty(base64Decode)) {
            return;
        }
        try {
            String optString = new JSONObject(base64Decode).optString("GetPlayInfoToken");
            this.mAuthorization = optString;
            if (TextUtils.isEmpty(optString)) {
                this.mAuthorization = base64Decode;
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
            this.mAuthorization = base64Decode;
        }
    }

    private boolean isSupportBash(String str) {
        if (!TextUtils.isEmpty(str) && isSupportBash(2)) {
            String lowerCase = str.toLowerCase();
            if (!lowerCase.startsWith(AdPayload.FILE_SCHEME) && !lowerCase.startsWith(DomExceptionUtils.SEPARATOR) && !FormatProvider.FormatProviderHolder.isM3u8(str) && !FormatProvider.FormatProviderHolder.isMpd(str)) {
                return true;
            }
        }
        return false;
    }

    void _doSetDataSource(IMediaDataSource iMediaDataSource) {
        _ShutdownOldSource();
        this.mMediaDataSource = iMediaDataSource;
        IVideoEventLogger iVideoEventLogger = this.mLogger;
        if (iVideoEventLogger != null) {
            iVideoEventLogger.setSourceType(7, null);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String[] strArr, String str) {
        setDirectUrlUseDataLoader(strArr, str, this.mVideoID);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str) {
        if (strArr != null && strArr.length != 0 && !TextUtils.isEmpty(strArr[0])) {
            this.mInitialUrlBeforeMdlProxy = strArr[0];
            if (TextUtils.isEmpty(str)) {
                setDirectURL(strArr[0]);
                this.mLogger.setIntOption(174, IVideoEventLogger.MdlInvalidCode.EmptyFilepath.ordinal());
                return;
            } else if (getConfigInt(160, this.mDataLoaderEnable) == 0) {
                setDirectURL(strArr[0]);
                this.mLogger.setIntOption(174, IVideoEventLogger.MdlInvalidCode.OptionNotSet.ordinal());
                return;
            } else {
                _resetUsingDataLoaderField();
                String keyFromFilePath = TTHelper.keyFromFilePath(this.mContext, str);
                String _mdlUrl = _mdlUrl(keyFromFilePath, this.mVideoID, getConfigInt(161, this.mLimitMDLCacheSize), strArr, Resolution.Undefine, this.mDecryptionKey, null, str, null, 0L, null, -1);
                if (!this.mFileHashs.contains(keyFromFilePath)) {
                    this.mFileHashs.add(keyFromFilePath);
                }
                if (TextUtils.isEmpty(_mdlUrl)) {
                    setDirectURL(strArr[0]);
                    return;
                } else {
                    setDirectURL(_mdlUrl);
                    return;
                }
            }
        }
        TTVideoEngineLog.e(logcatTag(), "invalid urls list, it is empty");
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSurfaceSync(Surface surface, long j10) {
        if (j10 < 0) {
            j10 = 0;
        }
        TTVideoEngineLog.i(logcatTag(), "setSurfaceSync = " + surface + ",timeout:" + j10 + "this:" + this + ",setSurfaceDirectly:" + this.mSetSurfaceDirectly);
        if (this.mSetSurfaceDirectly > 0) {
            MediaPlayer mediaPlayer = this.mAsyncPlayer;
            if (mediaPlayer == null) {
                mediaPlayer = this.mMediaPlayer;
            }
            if (mediaPlayer != null && mediaPlayer.getPlayerType() == 1) {
                if (surface == null) {
                    this.mLastSetSurfaceNullTime = System.currentTimeMillis();
                }
                _doSetSurfaceTimeOut(surface, (int) j10);
                return;
            }
        }
        _setSurfaceSync(surface, j10, true);
    }

    private boolean isSupportSeamlessSwitch(IVideoModel iVideoModel) {
        boolean z10;
        boolean z11;
        if (iVideoModel == null) {
            return false;
        }
        if (this.mConfigCenterVersion > 0) {
            z10 = this.mEngineConfig.getIntOption(33) == 1;
        } else {
            z10 = this.mBashEnabled;
        }
        if (this.mConfigCenterVersion > 0) {
            z11 = this.mEngineConfig.getIntOption(671) == 1;
        } else {
            z11 = this.mHLSSeamlessSwitch;
        }
        if (iVideoModel.hasFormat(IVideoModel.Format.DASH)) {
            return true;
        }
        return iVideoModel.hasFormat(IVideoModel.Format.MP4) ? z10 && isSupportBash(iVideoModel) : iVideoModel.hasFormat(IVideoModel.Format.HLS) && z11 && isSupportHLSSeamlessSwitch(iVideoModel);
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(String[] strArr, String str, @Nullable String str2) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(20, 0, 0, strArr, str, str2);
        } else {
            _doSetDirectUrlUseDataLoader(strArr, str, str2, 0L, null);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDataSource(IMediaDataSource iMediaDataSource) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(13, 0, 0, iMediaDataSource);
        } else {
            _doSetDataSource(iMediaDataSource);
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoader(DirectUrlItem directUrlItem) {
        if (this.mLooperThread.checkEngineLooperThread(false)) {
            this.mLooperThread.postEngineMessage(32, 0, 0, directUrlItem);
        } else {
            _doSetDirectUrlUseDataLoader(directUrlItem.allUrls(), directUrlItem.fileKey(), directUrlItem.vid(), directUrlItem.cdnExpiredTime(), directUrlItem.urlExpireTimes());
        }
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setSRInitConfig(int i10, String str, String str2, String str3) {
        this.mOldTextureAlgType = this.mTextureAlgType;
        this.mTextureAlgType = i10;
        this.mTextureSRBinPath = str;
        this.mTextureSROclModuleName = str2;
        this.mTextureSRDspModuleName = str3;
        this.mLogger.setSrAlgorithm(i10);
        this.mLogger.setEnableBmfSr(EngineGlobalConfig.getInstance().getEnableBmf());
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "[SRLog]sr init config = " + this.mTextureAlgType + "," + this.mTextureSRBinPath + "," + this.mTextureSROclModuleName + ", " + this.mTextureSRDspModuleName);
    }

    void _doSetDirectURL(String str, String str2) {
        _doSetDirectURL(str, new String[]{str});
        this.mFileKey = str2;
    }

    private void initMDLFetcher(Context context) {
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDefaultFileCacheDir(String str) {
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setFileCacheDir(String str) {
    }

    @Override // com.ss.ttvideoengine.TTVideoEngineInterface
    public void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str, String str2) {
        if (strArr != null && strArr.length != 0 && !TextUtils.isEmpty(strArr[0])) {
            this.mInitialUrlBeforeMdlProxy = strArr[0];
            if (TextUtils.isEmpty(str2)) {
                setDirectUrlUseDataLoader(strArr, str);
                return;
            }
            _resetUsingDataLoaderField();
            String _mdlUrl = _mdlUrl(str, this.mVideoID, getConfigInt(161, this.mLimitMDLCacheSize), strArr, Resolution.Undefine, this.mDecryptionKey, null, str2, null, 0L, null, -1);
            if (!this.mFileHashs.contains(str)) {
                this.mFileHashs.add(str);
            }
            if (TextUtils.isEmpty(_mdlUrl)) {
                setDirectURL(strArr[0]);
                return;
            } else {
                setDirectURL(_mdlUrl);
                return;
            }
        }
        TTVideoEngineLog.e(logcatTag(), "invalid urls list, it is empty");
    }

    public TTVideoEngineImpl(Context context, int i10, Map map, TTVideoEngine tTVideoEngine) {
        Resolution resolution = Resolution.Undefine;
        this.mABR4GMaxResolutionIndex = resolution.getIndex();
        Resolution resolution2 = Resolution.SuperHigh;
        this.mWifiDefaultResolutionIndex = resolution2.getIndex();
        this.mStartupMaxBitRateIndex = resolution2.getIndex();
        this.mABRWithSR = 1;
        this.mABR4GMaxResolutionQuality = null;
        this.mWifiDefaultResolutionQuality = null;
        this.mStartupMaxBitRateQuality = null;
        this.mClassLoaderState = null;
        this.mDowngradeResolutionIndex = resolution.getIndex();
        this.mDowngradeResolutionQuality = null;
        this.mNativeCallAbr = 0;
        this.mABR4GMaxResolutionMode = 0;
        this.mABRSpeedPredictOutType = 0;
        this.mABRStartupBandwidthParameter = 0.9f;
        this.mABRStallPenaltyParameter = 9.0f;
        this.mABRSwitchPenaltyParameter = 2.0f;
        this.mABRBandwidthParameter = 1.0f;
        this.mABRProbeMode = 0;
        this.mABREnableAggressivePortraitLowBit = 0;
        this.mScreenWidth = -1;
        this.mScreenHeight = -1;
        this.mPlayerViewWidth = -1;
        this.mPlayerViewHeight = -1;
        this.mDisablePlayerStayAwake = 0;
        this.mEnableSpeedReport = false;
        this.mNetworkSpeedReportSamplingRate = 0.0f;
        this.mEnableNativeYV12Render = 0;
        this.mForceCloseCodec = 0;
        this.mFilePlayNoBuffering = 0;
        this.mNoBufferUpdate = 0;
        this.mClipHEAACV2FirstPtsPacket = 0;
        this.mEnableVideoTimestampMonotonic = 0;
        this.mFeedPacketUntilEmpty = 0;
        this.mEnableDemuxNonBlockRead = 0;
        this.mEnableThreadPriority = 0;
        this.mThreadPriorityValue = 0;
        this.mEnableVodVideoRenderStall = 0;
        this.mRenderStallThreshold = 0;
        this.mEnableOptInaccurateStart = 0;
        this.mEnableOptSeekClk = 0;
        this.mEnableAudioTrackSmoothClock = 0;
        this.mDisableSpiltVoiceWrite = 0;
        this.mIgnoreDirectlyBuffering = 0;
        this.mDynamicThreadPriorityValue = 0;
        this.mEnableMediaCodecRealtime = 1;
        this.mEnablePreRenderBufferingUpdate = 0;
        this.mPreRenderBufferingUpdatePercentage = 0;
        this.mEnableHEAACV2PtsMSCorrection = 0;
        this.mEnableVC1BlockList = 1;
        this.mEnableHChipAdaptiveWorkAround = 0;
        this.mEnableMChipSkipAdaptiveWorkAround = 0;
        this.mEnableCPPh265CodecOpt = 0;
        this.mQuickGetFileCache = false;
        this.mReportFirstFrameFrameBufferOnly = 0;
        this.mEnbalePreDemux = 0;
        this.mEnableCPPh266CodecOpt = 0;
        this.mEnableAudioMemIntergration = 0;
        this.mEnableBufferingLowerCapacity = 0;
        this.mEnableDowngradeAsyncCodec = 0;
        this.mEnableMediaCodecSyncClose = 0;
        this.mEnableSeekBuffering = 0;
        this.mh266NalsizeCheck = 0;
        this.mHardwareCodecerFlushClose = 0;
        this.mOptAudioRenderTimeReport = 0;
        this.mBT601CloseCodecAsync = 0;
        this.mForbidFallbackNativeRender = 0;
        this.mDecoderRenderContinueRetry = 0;
        this.mDecoderRenderClearSurface = 0;
        this.mDecoderRenderClearTextureRenderRef = 0;
        this.mEnableDecoderRenderVC2RenderLatency = 0;
        this.mDecoderRenderVC2RenderLatencyGeneral = 0;
        this.mDecoderRenderVC2RenderLatencySR = 0;
        this.mTraceId = "";
        this.mEnableLooperThread = false;
        this.mBashDashDefaultMDLKeys = new HashMap<>();
        this.mSubPathInfo = null;
        this.mFileHashs = new ArrayList();
        this.mReadCacheMode = 0;
        this.mEnableBarrageMask = 0;
        this.mEnableMaskThread = 0;
        this.mEnableAIBarrageThread = 0;
        this.mEnableAIBarrage = 0;
        this.mLiveStartIndex = -3;
        this.mEnableRefreshByTime = 0;
        this.mEnableSub = 0;
        this.mEnableSubThread = 0;
        this.mOpenSubRetryTimes = -1;
        this.mEnableOptSubSearch = 0;
        this.mEnableRecreateSubIfDetached = 0;
        this.mCurPosition = -1;
        this.mPosUpdateInterval = 0;
        this.mAudioCodecProfile = -1;
        this.mVideoCodecProfile = -1;
        this.mBitrate = -1L;
        this.mContainerFPS = 0.0f;
        this.mThreadSafeRefSwitcher = 0;
        this.mEnableNetLevel = 0;
        this.mNetSpeedInterval = 0;
        this.mCloseRenderStartMsgOnSwitchResolutionDone = false;
        this.mEnableFastStop = 0;
        this.mEnableCodecRecycle = 0;
        this.mTlsLog = 0;
        this.mIntertrustDrmHelper = null;
        this.mFrameCount = 0;
        this.mHeartBeatStarted = false;
        this.mEnableHeartBeat = false;
        this.mGetPositionSkipLooper = false;
        this.mPlayDurationExcludePlayerMethod = false;
        this.mHeartBeatInterval = 300;
        this.mSRNotUseReason = 0;
        this.mSendEngineMsgTimeout = 0L;
        this.mMediacodecStopTimeout = 0;
        this.mQueryWinEnable = -1;
        this.mPreferNearestMaxPosOffset = -1;
        this.mMediaCodecAsyncModeEnable = -1;
        this.mSettingCodecName = -1;
        this.mPrivCodecName = new ArrayList<>();
        this.mAVsyncRefined = -1;
        this.mOnlyPlayAudioForBothStream = -1;
        this.mIgnoreSurfaceCreated = -1;
        this.mNativeRenderRotationAdapt = 0;
        this.mEnableOutletDropLimit = false;
        this.mPreciseCache = 0;
        this.mMediaInfoMap = new ConcurrentHashMap();
        this.mEnableClockResumeResetEof = 0;
        this.mMdlEnableSeekReopen = 0;
        this.mIgnoreAudioRenderEOSDelayMs = 0;
        this.mAutoAddMedia = 1;
        this.mEnableOptimizeMp4Abr = 0;
        this.mEnableMediaCodecFairMutex = 0;
        this.mEnableRangeOptimize = 0;
        this.mThreadName2CharSuffix = 0;
        this.mEnableOptimizePrerender = 0;
        this.mEnableAsyncDownload = 0;
        this.mEnablePreloadGear = 0;
        this.mEnableAsyncProbe = 0;
        this.mEnableOptimizeAsyncDownload = 0;
        this.mMetrcisAbility = 0;
        this.mMetrcisInterVal = 60;
        this.mEnableCacheInfo = 0;
        this.mEnableOptimizeRadioMode = 0;
        this.mEnableOptimizeIO = 0;
        this.mEnableOptimizeDashSeek = 0;
        this.mAnRenderRefreshSurface = 0;
        this.mSurfaceRecord = null;
        this.mFFmpegProtocol = null;
        this.mForceCodec = null;
        this.mSkipStartWhenPrepared = false;
        this.mEnableMp4Check = 0;
        this.mPrecisePausePts = 0L;
        this.mHlsSubDemuxerProbeType = -1;
        this.mEnableTmpLog = 0;
        this.mCodecAndSurfaceReuse = -1;
        this.mMCMaxWidth = -1;
        this.mMCMaxHeight = -1;
        this.mAsyncManageResource = -1;
        this.mAudioUseDirectBuffer = -1;
        this.mCloseCodecPool = -1;
        this.mMaxCodecNumsInPool = -1;
        this.mDummySurfaceForbid = -1;
        this.mCalibrationAudioPts = -1;
        this.mAudioPtsCalibrationType = -1;
        this.mSetSurfaceRetryCount = -1;
        this.mSetSurfaceRetryInterval = -1;
        this.mChangeRecBufferSpeed = -1;
        this.mEnableVideoSecondFrame = -1;
        this.mGiveBackCodecEarly = -1;
        this.mWaitingCodecMs = -1;
        this.mAsyncSetWindow = -1;
        this.mAutoDisconnectedCpu = -1;
        this.mRetryErrCnt = -1;
        this.mForbidBufferingNotFinished = -1;
        this.mUseVdpDisk = -1;
        this.mEnableReportFirstAVSyncFrame = 1;
        this.mQueryAdaptivePlayback = -1;
        this.mFlushWhenSetSurface = -1;
        this.mEnableMediaCodecDeathCheck = -1;
        this.mMediaCodecDeathCheckInterval = -1;
        this.mMediaCodecDeathTimeout = -1;
        this.mCodecPoolSupportDynamicExtend = -1;
        this.mDynamicExtendCodecNums = -1;
        this.mEnableOptimizeHWDec2SWDec = -1;
        this.mCreateAudioTrackEarly = -1;
        this.mEnableMediaCodecPipeline = -1;
        this.mFrameNumsInMediaCodec = -1;
        this.mEnableMCRenderHandleSAR = -1;
        this.mRecBufferThresh = -1;
        this.mRecBufferType = -1;
        this.mUserExitTimeMs = -1;
        this.mAudioGraphRefactor = -1;
        this.mAudioDecoderGraphMerged = -1;
        this.mCodecPoolVersion = -1;
        this.mDiscardCodecStrategy1 = -1;
        this.mDiscardCodecStrategy2 = -1;
        this.mCodecHistoryLength = -1;
        this.mCodecMaxUsedCount = -1;
        this.mEnableFallbackInMaxInstanceErr = -1;
        this.mSetSurfaceDirectly = -1;
        this.mEnableStartPlaySync = -1;
        this.mEnableClearTextureRefAsync = 0;
        this.mEnableSetupMediaCodec = false;
        this.mEnableSCABRStrategy = false;
        this.mRefreshSurfaceFlag = false;
        this.mRefreshSurfaceDone = false;
        this.mRefreshTextureSurface = false;
        this.effectTypeSet = new CopyOnWriteArraySet();
        this.mEnableReportPreloadTraceId = false;
        this.mErrorThrowOptEnable = false;
        this.mErrorRetryOpt = false;
        this.mMDLGroupId = null;
        this.mInitialUrlBeforeMdlProxy = null;
        this.mBashRetryRestartPlayer = false;
        this.mBufferProcessCallback = null;
        this.mEngineWrapper = tTVideoEngine;
        if (EngineGlobalConfig.getInstance().getLazyLoadVideodec() != 1) {
            TTVideoEngineLog.d(logcatTag(), "JniUtils.loadLibrary in TTVideoEngineImpl new");
            JniUtils.loadLibrary();
        }
        String logcatTag = logcatTag();
        TTVideoEngineLog.i(logcatTag, "init2, type:" + i10 + ", this:" + this + ", version:1.10.172.340-jzdrm-premium");
        initEngine(context, i10, map);
    }
}
