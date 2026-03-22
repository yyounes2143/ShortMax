package com.ss.ttvideoengine.log;

import android.text.TextUtils;
import androidx.collection.SieveCacheKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.text.util.LocalePreferences;
import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.TTVideoEngine;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.playermetrcis.PlayerMetrics;
import com.ss.ttvideoengine.portrait.LabelUsage;
import com.ss.ttvideoengine.portrait.PortraitEngine;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategrycenter.StrategyHelper;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class VideoEventOnePlay {
    public static final int EXIT_CODE_AFTER_AVOUTSYNC = -2006;
    public static final int EXIT_CODE_AFTER_CROSS_TALKING = -2009;
    public static final int EXIT_CODE_AFTER_DECODE = -2004;
    public static final int EXIT_CODE_AFTER_LOADING_NET = -2003;
    public static final int EXIT_CODE_AFTER_LOADING_SEEK = -2002;
    public static final int EXIT_CODE_AFTER_NO_AUDIO_RENDER = -2008;
    public static final int EXIT_CODE_AFTER_NO_VIDEO_RENDER = -2007;
    public static final int EXIT_CODE_AFTER_PLAYING = -2001;
    public static final int EXIT_CODE_AFTER_SWITCH = -2005;
    public static final int EXIT_CODE_BEFORE_AD = -1001;
    public static final int EXIT_CODE_BEFORE_AUDIO_DECODER_OPENING = -1015;
    public static final int EXIT_CODE_BEFORE_AUDIO_DECODE_FIRST_FRAME = -1021;
    public static final int EXIT_CODE_BEFORE_AUDIO_DEVICE_OPENING = -1017;
    public static final int EXIT_CODE_BEFORE_AUDIO_FIRST_PACKET = -1019;
    public static final int EXIT_CODE_BEFORE_AUDIO_RENDER_FIRST_FRAME = -1023;
    public static final int EXIT_CODE_BEFORE_AVFORMAT_FIND_STREAM = -1011;
    public static final int EXIT_CODE_BEFORE_AVFORMAT_OPENING = -1010;
    public static final int EXIT_CODE_BEFORE_DEC_CREATING = -1012;
    public static final int EXIT_CODE_BEFORE_DEMUXER_CREATING = -1007;
    public static final int EXIT_CODE_BEFORE_DNS_NOT_PARSED = -1004;
    public static final int EXIT_CODE_BEFORE_DNS_PARSED = -1005;
    public static final int EXIT_CODE_BEFORE_FIRST_FRAME_MSG_NOT_REPORT = -1024;
    public static final int EXIT_CODE_BEFORE_FORMATER_CREATING = -1006;
    public static final int EXIT_CODE_BEFORE_LOADING_FETCHED = -1003;
    public static final int EXIT_CODE_BEFORE_LOADING_NOT_FETCH = -1002;
    public static final int EXIT_CODE_BEFORE_OUTLET_CREATING = -1013;
    public static final int EXIT_CODE_BEFORE_SURFACE_NOT_SET = -1025;
    public static final int EXIT_CODE_BEFORE_TCP_CONNECTING = -1008;
    public static final int EXIT_CODE_BEFORE_TCP_FIRST_PACKET = -1009;
    public static final int EXIT_CODE_BEFORE_VIDEO_DECODER_OPENING = -1014;
    public static final int EXIT_CODE_BEFORE_VIDEO_DECODE_FIRST_FRAME = -1020;
    public static final int EXIT_CODE_BEFORE_VIDEO_DEVICE_OPENING = -1016;
    public static final int EXIT_CODE_BEFORE_VIDEO_FIRST_PACKET = -1018;
    public static final int EXIT_CODE_BEFORE_VIDEO_RENDER_FIRST_FRAME = -1022;
    public static final int KMAXFEEDCOUNT = 30;
    public static final int KMAXVIDEOFEEDDATA = 150000;
    private static final String TAG = "VideoEventOnePlay";
    public static final int encrypt_version = 1;
    private static final String logType = "video_playq";
    public static final String monitorName = "videoplayer_oneplay";
    public int ae_type;
    public String apiString;
    public int apiver;
    public int apiverFinal;
    public int asyncCodecId;
    public int asyncInit;
    public long audioBitrate;
    public int audioBufferLength;
    public long audioDeviceOpenedTime;
    public long audioDeviceStartTime;

    /* renamed from: auth  reason: collision with root package name */
    public String f37074auth;
    public long bitrate;
    public long bufferAccuT;
    public int checkHijack;
    public String chipBoardName;
    public String chipHardwareName;
    public String chipHardwareNameNew;
    public long clockDiff;
    public int codecPool;
    public int color_trc;
    public float containerFps;
    public int core_volume;
    public int curAudioDecodeError;
    public int curVideoDecodeError;
    public int curVideoDecoderFps;
    public float curVideoOutputFps;
    public int curVideoRenderError;
    public int customP2PCDNType;
    public long d_apls;
    public long d_vpls;
    public long decoderBufferAccuT;
    public int disableAccurateStart;
    public int dnsModule;
    public long dns_end_t;
    public String dns_server_ip;
    public long dns_start_t;
    public int dropCount;
    public int enableBash;
    public int enableMDL;
    public int enableMDLOnFirstPlay;
    public int enableMask;
    public int enableMaskThread;
    public int enableSharp;
    public int enableSub;
    public int enableSubThread;
    public String encryptKey;
    public int engineState;
    public int feedInBeforeDecoded;
    public int fetchedAndLeaveByUser;
    public int finish;
    public double firstFrameSpeed;
    public int firstHijackCode;
    public long firstRangeSize;
    public int hijackRetry;
    public int hwCodecException;
    public String hwCodecName;
    public String internalIP;
    public int isColdStart;
    public int isDisableShortSeek;
    public int isPreferNearestSample;
    public int isReplay;
    public long lastBufferEndT;
    public long lastBufferStartT;
    public int lastHijackCode;
    public long lastResolutionEndT;
    public long lastResolutionStartT;
    public long lastSeekEndT;
    public int lastSeekPosition;
    public long lastSeekStartT;
    public int leave_block_t;
    public int leave_method;
    public int leave_reason;
    public String loaderType;
    public String log_id;
    public int loopcount;
    public ArrayList<String> mAVBadInterlacedList;
    public int mAVOutsyncCount;
    public ArrayList<String> mAVOutsyncList;
    public int mAudioCodecProfile;
    public String mAudioFileHash;
    public boolean mAudioStreamDisabled;
    public long mAudioStreamDuration;
    public float mAvgCurrent;
    public LinkedHashMap<String, Integer> mBitrateList;
    public ArrayList<String> mBrightList;
    public int mBufferTimeout;
    public int mCastinfoIsCastLive;
    public String mCastinfoProtocal;
    public int mCastinfoSceneId;
    public int mCastinfoSourceAppId;
    public ArrayList<Integer> mCatowerRttList;
    public ArrayList<Integer> mCatowerRttMsList;
    public ArrayList<Integer> mChargingList;
    public String mCompanyID;
    public int mCorePoolSizeUpperLimit;
    public int mCorepoolSizeBeforeGetEngine;
    public int mCountOfEngineInUse;
    public double mCpuRateBegin;
    public double mCpuRateEnd;
    public double mCpuSpeedBegin;
    public double mCpuSpeedEnd;
    public int mCrosstalkCount;
    public ArrayList mCrosstalkInfoList;
    public ArrayList<Float> mCurrentList;
    public long mCustomClickT;
    public long mCustomGetVideoModelT;
    public long mCustomInitEngineT;
    public long mCustomPlayEngineT;
    public String mCustomPlaySessionId;
    public long mCustomPlayT;
    public int mDimension;
    public int mEnableNNSR;
    public int mEngineHash;
    public ArrayList<String> mErrorList;
    public int mExpirePlayCode;
    public Map mFeatures;
    public ArrayList mForebackSwitchList;
    public int mFramesSetDropNum;
    public String mFromEnginePool;
    public Map mGearStrategyInfo;
    public int mHardwareConfType;
    public int mHasNoSurfaceWhenAudioRenderStart;
    public ArrayList<String> mHeadsetStateList;
    public int mHostAbiBits;
    public int mInBackgroundWhenPlay;
    public int mInBackgroundWhenStop;
    public boolean mIsEngineReuse;
    public int mIsViewHidden;
    public LabelUsage mLabelUsage;
    public String mLastSessionID;
    public ArrayList<String> mLoopList;
    public String mMDLGroupId;
    public ArrayList<String> mMDLRetryList;
    public Map<String, Object> mMapAppLog;
    public long mMaskDownloadSize;
    public String mMaskURL;
    public int mMaxFramesInMediaCodec;
    public String mMdlInitializeError;
    public int mMdlInitializeState;
    public int mMdlInvalidCode;
    public ArrayList<Float> mMdlMultiSpeedList;
    public int mNetQualityIndex;
    public int mNetQualityInterval;
    public int mNetworkConnectCount;
    public double mNetworkQualityBitrate;
    public int mNetworkScore;
    public LinkedHashMap<String, String> mNetworkTypeList;
    public ArrayList<String> mNoAudioRenderList;
    public ArrayList<String> mNoVideoRenderList;
    public int mOttPluginVersion;
    public ArrayList<String> mPauseList;
    @Deprecated
    public int mPixelDensity;
    public ArrayList<String> mPlayList;
    public ArrayList<String> mPlaySpeedList;
    public ArrayList<Integer> mPowerList;
    public int mPowerSaveModeBegin;
    public int mPowerSaveModeEnd;
    public int mPreRangeOff;
    public String mPreloadGear;
    public int mProjectionModel;
    public LinkedHashMap<String, String> mQualityList;
    public int mRadioMode;
    public ArrayList<String> mRadiomodeList;
    public int mReadCacheMode;
    public ArrayList<String> mRebufList;
    public String mRenderStageError;
    public ArrayList<String> mResolutionList;
    public Map mSRPreloadInfo;
    public Map mSRStrategyInfo;
    public int mScreenHeight;
    public int mScreenWidth;
    public ArrayList<String> mSeekList;
    public int mSensitiveMode;
    public String mSessionID;
    public ArrayList<String> mSetSurfaceTimeList;
    public LinkedHashMap<String, String> mSignalStrengthList;
    public JSONObject mSourceRefreshLog;
    public int mSrAlgorithm;
    public int mSrEnableBmf;
    public float mSrHeightFactor;
    public float mSrProccessSuccessRate;
    public float mSrProcessorCostTime;
    public float mSrWidthFactor;
    public float mStSpeed;
    public String mSubError;
    public String mSubReqURL;
    public long mSubtitleDownloadSize;
    public Float mTrEffectChainAverageTime;
    public String mTrEffectErrorCode;
    public ArrayList<String> mTrEffectList;
    public Float mTrFPS;
    public String mTrPerEffectAverageTime;
    public String mTrVersion;
    public boolean mVModelHasFallbackApi;
    public int mVideoAbnormalCode;
    public int mVideoAbnormalInterval;
    public int mVideoAbnormalStrategy;
    public int mVideoCodecProfile;
    public String mVideoFileHash;
    public ArrayList<String> mVideoFilterList;
    public int mVideoHWErrReason;
    public int mVideoRenderStallCount;
    public String mVideoRenderStallList;
    public boolean mVideoStreamDisabled;
    public long mVideoStreamDuration;
    public int mVideoStyle;
    public int mViewSize;
    public ArrayList<String> mViewSizeList;
    public ArrayList<String> mVrDistanceList;
    public float mVrFrameRate;
    public long mVrHeadMovementDelay;
    public int mVrScreenRefreshRate;
    public int maskErrc;
    public Map maskEvents;
    public long mask_open_t;
    public long mask_opened_t;
    public long mdatPos;
    public int mediaCodecRender;
    public long minAudioFrameSize;
    public long minVideoFrameSize;
    public int miss_reason;
    public int miss_reason_da;
    public int miss_reason_dv;
    public long modelVersion;
    public long moovPos;
    public int mute;
    public String netClient;
    public long netSpeedLevel;
    public int netWorkTryCount;
    public int netblockBufferthreshold;
    public int networkTimeout;
    public int p2pStragetyMinPlayNum;
    public int p2pStragetyMinSpeed;
    public int p2pStragetyPlayNum;
    public int p2pStragetyProbeSpeed;
    public String p2pUrl;
    public double playEndSpeed;
    public long playPreparedT;
    public long playStartedT;
    public long playbackBufferEndT;
    public long playbackBufferStartT;
    public Map playbackparams;
    public long playerFirstFrameT;
    public String playerSurfaceCode;
    public long player_created_t;
    public String render_type;
    public int seekCount;
    public int seek_accu_t;
    public long server_local_diff;
    public int startTime;
    public Map subEvents;
    public int subIdsCount;
    public int subLanSwichCount;
    public long sub_load_finish_t;
    public long sub_req_finish_t;
    public String surfaceCode;
    public long surfaceSetTime;
    public int switchResolutionCount;
    public int textureRender;
    public int textureRenderErrorCode;
    public String textureRenderErrorMsg;
    public String traceID;
    public int useVideoModelCache;
    public long videoAudioGap;
    public int videoBufferLength;
    public long videoDeviceOpenedTime;
    public long videoDeviceStartTime;
    public int volume;
    public long vpls;
    public int watchduration;
    public float xdpi;
    public float ydpi;
    public long prepare_before_play_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long setds_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long ps_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long pt_new = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_dns_start_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long formater_create_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long avformat_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long demuxer_create_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long demuxer_begin_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long dec_create_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long outlet_create_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_render_f_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_render_f_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_dec_start_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_dec_start_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_dec_opened_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_dec_opened_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_http_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_http_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_tran_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_tran_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_sock_create_t = SieveCacheKt.NodeMetaAndPreviousMask;
    public long a_sock_create_t = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: pt  reason: collision with root package name */
    public long f37081pt = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: at  reason: collision with root package name */
    public long f37073at = SieveCacheKt.NodeMetaAndPreviousMask;
    public long prepare_start_time = SieveCacheKt.NodeMetaAndPreviousMask;
    public long prepare_end_time = SieveCacheKt.NodeMetaAndPreviousMask;
    public long player_prepared_time = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: vt  reason: collision with root package name */
    public long f37082vt = SieveCacheKt.NodeMetaAndPreviousMask;
    public long v_first_sync_t = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: et  reason: collision with root package name */
    public long f37078et = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: lt  reason: collision with root package name */
    public long f37080lt = SieveCacheKt.NodeMetaAndPreviousMask;
    public long bft = SieveCacheKt.NodeMetaAndPreviousMask;

    /* renamed from: bc  reason: collision with root package name */
    public int f37075bc = Integer.MIN_VALUE;

    /* renamed from: br  reason: collision with root package name */
    public int f37076br = Integer.MIN_VALUE;

    /* renamed from: vu  reason: collision with root package name */
    public ArrayList f37083vu = new ArrayList();
    public long vps = SieveCacheKt.NodeMetaAndPreviousMask;
    public long vds = SieveCacheKt.NodeMetaAndPreviousMask;
    public long accu_vds = SieveCacheKt.NodeMetaAndPreviousMask;
    public int width = Integer.MIN_VALUE;
    public int height = Integer.MIN_VALUE;
    public int video_preload_size = Integer.MIN_VALUE;

    /* renamed from: df  reason: collision with root package name */
    public String f37077df = "";

    /* renamed from: lf  reason: collision with root package name */
    public String f37079lf = "";
    public int errt = Integer.MIN_VALUE;
    public int errc = Integer.MIN_VALUE;
    public int first_errt = Integer.MIN_VALUE;
    public int first_errc = Integer.MIN_VALUE;
    public int first_errc_internal = Integer.MIN_VALUE;
    public int vsc = Integer.MIN_VALUE;
    public String vscMessage = "";
    public String mCustomStr = "";
    public String mInitialURL = "";
    public String mAudioInitUrl = "";
    public String mInitialHost = "";
    public String mInitialIP = "";
    public String mInitialResolution = "";
    public String mInitialQuality = "";
    public int mInitialQualityType = Integer.MIN_VALUE;
    public int hijack = Integer.MIN_VALUE;
    public int pluginException = Integer.MIN_VALUE;
    public String ownPlayerCreateException = "";
    public int isStartPlayAutomatically = Integer.MIN_VALUE;
    public int bufferSeconds = Integer.MIN_VALUE;
    public Map ex = null;
    public long dnsT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long tranConnectT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long httpResponseT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long tranFirstPacketT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long audioDnsT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long audioTranConnectT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long audioTranFirstPacketT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long receiveFirstVideoFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long receiveFirstAudioFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long decodeFirstVideoFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long decodeFirstAudioFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long firstBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long firstBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
    public long curPlayBackTime = SieveCacheKt.NodeMetaAndPreviousMask;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoEventOnePlay() {
        Float valueOf = Float.valueOf(Float.MIN_VALUE);
        this.curVideoOutputFps = Float.MIN_VALUE;
        this.containerFps = Float.MIN_VALUE;
        this.clockDiff = SieveCacheKt.NodeMetaAndPreviousMask;
        this.dropCount = Integer.MIN_VALUE;
        this.videoDeviceStartTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.videoDeviceOpenedTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.audioDeviceStartTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.audioDeviceOpenedTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.surfaceSetTime = SieveCacheKt.NodeMetaAndPreviousMask;
        this.surfaceCode = "";
        this.playerSurfaceCode = "";
        this.mFramesSetDropNum = Integer.MIN_VALUE;
        this.engineState = Integer.MIN_VALUE;
        this.finish = Integer.MIN_VALUE;
        this.internalIP = "";
        this.loaderType = "";
        this.apiver = Integer.MIN_VALUE;
        this.apiverFinal = Integer.MIN_VALUE;
        this.f37074auth = "";
        this.playbackparams = null;
        this.loopcount = Integer.MIN_VALUE;
        this.switchResolutionCount = Integer.MIN_VALUE;
        this.watchduration = Integer.MIN_VALUE;
        this.useVideoModelCache = Integer.MIN_VALUE;
        this.startTime = Integer.MIN_VALUE;
        this.disableAccurateStart = Integer.MIN_VALUE;
        this.customP2PCDNType = Integer.MIN_VALUE;
        this.asyncInit = Integer.MIN_VALUE;
        this.p2pUrl = "";
        this.bufferAccuT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.decoderBufferAccuT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.videoBufferLength = Integer.MIN_VALUE;
        this.audioBufferLength = Integer.MIN_VALUE;
        this.netblockBufferthreshold = Integer.MIN_VALUE;
        this.seekCount = Integer.MIN_VALUE;
        this.render_type = "";
        this.apiString = "";
        this.netClient = "";
        this.fetchedAndLeaveByUser = Integer.MIN_VALUE;
        this.volume = Integer.MIN_VALUE;
        this.core_volume = Integer.MIN_VALUE;
        this.mute = Integer.MIN_VALUE;
        this.enableBash = Integer.MIN_VALUE;
        this.enableMDL = Integer.MIN_VALUE;
        this.asyncCodecId = Integer.MIN_VALUE;
        this.enableSharp = Integer.MIN_VALUE;
        this.ae_type = Integer.MIN_VALUE;
        this.curVideoDecoderFps = Integer.MIN_VALUE;
        this.hwCodecName = "";
        this.hwCodecException = Integer.MIN_VALUE;
        this.netWorkTryCount = Integer.MIN_VALUE;
        this.chipBoardName = "";
        this.chipHardwareName = "";
        this.chipHardwareNameNew = "";
        this.mBufferTimeout = Integer.MIN_VALUE;
        this.networkTimeout = Integer.MIN_VALUE;
        this.isPreferNearestSample = Integer.MIN_VALUE;
        this.isDisableShortSeek = Integer.MIN_VALUE;
        this.dns_start_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.dns_end_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.player_created_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.leave_reason = -1002;
        this.leave_block_t = Integer.MIN_VALUE;
        this.leave_method = Integer.MIN_VALUE;
        this.seek_accu_t = Integer.MIN_VALUE;
        this.lastSeekStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastSeekEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastResolutionStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastResolutionEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.lastSeekPosition = Integer.MIN_VALUE;
        this.server_local_diff = SieveCacheKt.NodeMetaAndPreviousMask;
        this.traceID = null;
        this.checkHijack = Integer.MIN_VALUE;
        this.hijackRetry = Integer.MIN_VALUE;
        this.firstHijackCode = Integer.MIN_VALUE;
        this.lastHijackCode = Integer.MIN_VALUE;
        this.playPreparedT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.playStartedT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.curVideoDecodeError = Integer.MIN_VALUE;
        this.curAudioDecodeError = Integer.MIN_VALUE;
        this.curVideoRenderError = Integer.MIN_VALUE;
        this.dnsModule = Integer.MIN_VALUE;
        this.vpls = SieveCacheKt.NodeMetaAndPreviousMask;
        this.d_vpls = SieveCacheKt.NodeMetaAndPreviousMask;
        this.d_apls = SieveCacheKt.NodeMetaAndPreviousMask;
        this.miss_reason = 0;
        this.miss_reason_da = 0;
        this.miss_reason_dv = 0;
        this.firstFrameSpeed = 1.401298464324817E-45d;
        this.playEndSpeed = 1.401298464324817E-45d;
        this.mNetworkConnectCount = Integer.MIN_VALUE;
        this.mediaCodecRender = Integer.MIN_VALUE;
        this.textureRender = Integer.MIN_VALUE;
        this.textureRenderErrorMsg = "";
        this.textureRenderErrorCode = Integer.MIN_VALUE;
        this.codecPool = Integer.MIN_VALUE;
        this.playbackBufferStartT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.playbackBufferEndT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.bitrate = SieveCacheKt.NodeMetaAndPreviousMask;
        this.audioBitrate = SieveCacheKt.NodeMetaAndPreviousMask;
        this.isColdStart = Integer.MIN_VALUE;
        this.videoAudioGap = SieveCacheKt.NodeMetaAndPreviousMask;
        this.moovPos = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mdatPos = SieveCacheKt.NodeMetaAndPreviousMask;
        this.firstRangeSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.minAudioFrameSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.minVideoFrameSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.netSpeedLevel = SieveCacheKt.NodeMetaAndPreviousMask;
        this.modelVersion = SieveCacheKt.NodeMetaAndPreviousMask;
        this.feedInBeforeDecoded = Integer.MIN_VALUE;
        this.mVideoHWErrReason = Integer.MIN_VALUE;
        this.mMaxFramesInMediaCodec = Integer.MIN_VALUE;
        this.mVideoRenderStallCount = Integer.MIN_VALUE;
        this.playerFirstFrameT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.p2pStragetyMinPlayNum = Integer.MIN_VALUE;
        this.p2pStragetyPlayNum = Integer.MIN_VALUE;
        this.p2pStragetyMinSpeed = Integer.MIN_VALUE;
        this.p2pStragetyProbeSpeed = Integer.MIN_VALUE;
        this.mRadioMode = Integer.MIN_VALUE;
        this.mVideoStreamDisabled = false;
        this.mAudioStreamDisabled = false;
        this.isReplay = Integer.MIN_VALUE;
        this.mEnableNNSR = Integer.MIN_VALUE;
        this.mPreRangeOff = Integer.MIN_VALUE;
        this.mReadCacheMode = Integer.MIN_VALUE;
        this.mSessionID = "";
        this.log_id = "";
        this.mLastSessionID = "";
        this.mPreloadGear = "";
        this.mVideoFileHash = "";
        this.mAudioFileHash = "";
        this.mVideoRenderStallList = "";
        this.mVideoCodecProfile = Integer.MIN_VALUE;
        this.mAudioCodecProfile = Integer.MIN_VALUE;
        this.mVideoStreamDuration = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mAudioStreamDuration = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mStSpeed = Float.MIN_VALUE;
        this.mNetQualityInterval = Integer.MIN_VALUE;
        this.mNetQualityIndex = 0;
        this.mNetworkScore = Integer.MIN_VALUE;
        this.mNetworkQualityBitrate = 1.401298464324817E-45d;
        this.mFeatures = null;
        this.mCustomClickT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomGetVideoModelT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomPlayT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomInitEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCustomPlayEngineT = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mGearStrategyInfo = null;
        this.mSRStrategyInfo = null;
        this.mSRPreloadInfo = null;
        this.mPlayList = null;
        this.mPauseList = null;
        this.mResolutionList = null;
        this.mPlaySpeedList = null;
        this.mRadiomodeList = null;
        this.mLoopList = null;
        this.mErrorList = null;
        this.mRebufList = null;
        this.mSeekList = null;
        this.mAVOutsyncList = null;
        this.mHeadsetStateList = null;
        this.mNoVideoRenderList = null;
        this.mNoAudioRenderList = null;
        this.mPowerList = null;
        this.mChargingList = null;
        this.mAVBadInterlacedList = null;
        this.mForebackSwitchList = null;
        this.mAVOutsyncCount = Integer.MIN_VALUE;
        this.sub_req_finish_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.sub_load_finish_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mask_open_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mask_opened_t = SieveCacheKt.NodeMetaAndPreviousMask;
        this.maskErrc = Integer.MIN_VALUE;
        this.enableSub = Integer.MIN_VALUE;
        this.enableSubThread = Integer.MIN_VALUE;
        this.enableMask = Integer.MIN_VALUE;
        this.enableMaskThread = Integer.MIN_VALUE;
        this.subLanSwichCount = Integer.MIN_VALUE;
        this.subIdsCount = Integer.MIN_VALUE;
        this.mMaskURL = "";
        this.mSubReqURL = "";
        this.mSubError = "";
        this.color_trc = Integer.MIN_VALUE;
        this.mHardwareConfType = Integer.MIN_VALUE;
        this.mScreenWidth = Integer.MIN_VALUE;
        this.mScreenHeight = Integer.MIN_VALUE;
        this.mPixelDensity = Integer.MIN_VALUE;
        this.xdpi = Float.MIN_VALUE;
        this.ydpi = Float.MIN_VALUE;
        this.mSrWidthFactor = Float.MIN_VALUE;
        this.mSrHeightFactor = Float.MIN_VALUE;
        this.mSrProccessSuccessRate = Float.MIN_VALUE;
        this.mSrProcessorCostTime = Float.MIN_VALUE;
        this.mSrAlgorithm = Integer.MIN_VALUE;
        this.mSrEnableBmf = Integer.MIN_VALUE;
        this.mVideoFilterList = null;
        this.mBrightList = null;
        this.mViewSizeList = null;
        this.mMDLRetryList = null;
        this.mIsEngineReuse = false;
        this.mIsViewHidden = Integer.MIN_VALUE;
        this.mHasNoSurfaceWhenAudioRenderStart = Integer.MIN_VALUE;
        this.mCpuRateBegin = 1.401298464324817E-45d;
        this.mCpuRateEnd = 1.401298464324817E-45d;
        this.mCpuSpeedBegin = 1.401298464324817E-45d;
        this.mCpuSpeedEnd = 1.401298464324817E-45d;
        this.mPowerSaveModeBegin = Integer.MIN_VALUE;
        this.mPowerSaveModeEnd = Integer.MIN_VALUE;
        this.mAvgCurrent = Float.MIN_VALUE;
        this.mSensitiveMode = Integer.MIN_VALUE;
        this.mExpirePlayCode = Integer.MIN_VALUE;
        this.mMaskDownloadSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mSubtitleDownloadSize = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mVideoStyle = Integer.MIN_VALUE;
        this.mDimension = Integer.MIN_VALUE;
        this.mProjectionModel = Integer.MIN_VALUE;
        this.mVrDistanceList = null;
        this.mVrFrameRate = Float.MIN_VALUE;
        this.mVrScreenRefreshRate = Integer.MIN_VALUE;
        this.mVrHeadMovementDelay = SieveCacheKt.NodeMetaAndPreviousMask;
        this.mCastinfoIsCastLive = Integer.MIN_VALUE;
        this.mCastinfoSourceAppId = Integer.MIN_VALUE;
        this.mCastinfoSceneId = Integer.MIN_VALUE;
        this.mCastinfoProtocal = null;
        this.mViewSize = Integer.MIN_VALUE;
        this.mEngineHash = Integer.MIN_VALUE;
        this.mFromEnginePool = "";
        this.mCorePoolSizeUpperLimit = Integer.MIN_VALUE;
        this.mCorepoolSizeBeforeGetEngine = Integer.MIN_VALUE;
        this.mCountOfEngineInUse = Integer.MIN_VALUE;
        this.mSetSurfaceTimeList = null;
        this.mHostAbiBits = Integer.MIN_VALUE;
        this.mTrVersion = "";
        this.mTrFPS = valueOf;
        this.mTrEffectList = null;
        this.mTrPerEffectAverageTime = "";
        this.mTrEffectChainAverageTime = valueOf;
        this.mTrEffectErrorCode = "";
        this.mMapAppLog = new HashMap();
        this.mOttPluginVersion = Integer.MIN_VALUE;
        this.mCompanyID = "";
        this.mCrosstalkCount = -1;
        this.mCustomPlaySessionId = null;
        this.mMDLGroupId = null;
        this.mInBackgroundWhenPlay = Integer.MIN_VALUE;
        this.mInBackgroundWhenStop = Integer.MIN_VALUE;
        this.mVModelHasFallbackApi = false;
        this.enableMDLOnFirstPlay = Integer.MIN_VALUE;
        this.mMdlInvalidCode = Integer.MIN_VALUE;
        this.mMdlInitializeState = Integer.MIN_VALUE;
        this.mVideoAbnormalCode = Integer.MIN_VALUE;
        this.mVideoAbnormalStrategy = Integer.MIN_VALUE;
        this.mVideoAbnormalInterval = Integer.MIN_VALUE;
        this.mMdlInitializeError = null;
        this.mBitrateList = new LinkedHashMap<>();
        this.mQualityList = new LinkedHashMap<>();
        this.mCatowerRttList = new ArrayList<>();
        this.mCatowerRttMsList = new ArrayList<>();
        this.mMdlMultiSpeedList = new ArrayList<>();
        this.mNetworkTypeList = new LinkedHashMap<>();
        this.mSignalStrengthList = new LinkedHashMap<>();
        this.mFeatures = new HashMap();
        this.mGearStrategyInfo = new HashMap();
        this.mCurrentList = new ArrayList<>();
        this.mSRStrategyInfo = new ConcurrentHashMap();
        this.mSRPreloadInfo = new HashMap();
        initParametersIfNeeded();
    }

    private String SerialMapToString(Map map) {
        if (map == null) {
            return null;
        }
        try {
            if (map.isEmpty()) {
                return null;
            }
            return new JSONObject(map).toString();
        } catch (Exception e10) {
            TTVideoEngineLog.e(TAG, e10.toString() + ", :" + map);
            return null;
        }
    }

    private Map<String, Object> doEncryptThings(VideoEventBase videoEventBase) {
        HashMap hashMap = new HashMap();
        LoggerUtils.putToMap((Map) hashMap, "encrypt_version", 1);
        if (videoEventBase != null) {
            LoggerUtils.putToMap(hashMap, "reply_size", LoggerUtils.encryptIntergerV1(videoEventBase.mdlVideoInfo.mdl_reply_size));
            LoggerUtils.putToMap(hashMap, "vs", LoggerUtils.encryptIntergerV1(videoEventBase.f37072vs));
            LoggerUtils.putToMap(hashMap, "mdl_speed", LoggerUtils.encryptIntergerV1(videoEventBase.mdlVideoInfo.mdl_speed));
            LoggerUtils.putToMap(hashMap, "codec", LoggerUtils.encryptStringV1(videoEventBase.codec_type));
        }
        LoggerUtils.putToMap(hashMap, "vps", LoggerUtils.encryptIntergerV1(this.vps));
        LoggerUtils.putToMap(hashMap, "vds", LoggerUtils.encryptIntergerV1(this.vds));
        LoggerUtils.putToMap(hashMap, "accumulate_vds", LoggerUtils.encryptIntergerV1(this.accu_vds));
        LoggerUtils.putToMap(hashMap, "watch_dur", LoggerUtils.encryptIntergerV1(this.watchduration));
        LoggerUtils.putToMap(hashMap, "vpls", LoggerUtils.encryptIntergerV1(this.vpls));
        LoggerUtils.putToMap(hashMap, "bc", LoggerUtils.encryptIntergerV1(this.f37075bc));
        LoggerUtils.putToMap(hashMap, "vt", LoggerUtils.encryptIntergerV1(this.f37082vt));
        LoggerUtils.putToMap(hashMap, "height", LoggerUtils.encryptIntergerV1(this.height));
        LoggerUtils.putToMap(hashMap, "width", LoggerUtils.encryptIntergerV1(this.width));
        LoggerUtils.putToMap(hashMap, "mask_download_size", LoggerUtils.encryptIntergerV1(this.mMaskDownloadSize));
        LoggerUtils.putToMap(hashMap, "subtitle_download_size", LoggerUtils.encryptIntergerV1(this.mSubtitleDownloadSize));
        LoggerUtils.putToMap((Map) hashMap, "st_net_speed", LoggerUtils.encryptFloatV1(this.mStSpeed));
        LoggerUtils.putToMap(hashMap, "initial_resolution", LoggerUtils.encryptStringV1(this.mInitialResolution));
        return hashMap;
    }

    private void initParametersIfNeeded() {
        this.mRadioMode = 0;
        this.mExpirePlayCode = 0;
        this.enableMDLOnFirstPlay = 0;
    }

    private String limitStringLength(String str, int i10) {
        if (str.length() > i10) {
            return str.substring(0, i10);
        }
        return str;
    }

    private void parseLeaveReason(VideoEventBase videoEventBase) {
        if (videoEventBase.mSourceTypeStr.equals("vid") && this.f37073at <= 0) {
            this.leave_reason = -1002;
        }
        if (this.dns_end_t <= 0 && this.audioDnsT <= 0 && !videoEventBase.mSourceTypeStr.equals("local_url")) {
            this.leave_reason = -1004;
        } else if (this.prepare_start_time <= 0) {
            this.leave_reason = -1003;
        } else if (this.formater_create_t <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_FORMATER_CREATING;
        } else if (this.demuxer_begin_t <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_DEMUXER_CREATING;
        } else if (this.tranConnectT <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_TCP_CONNECTING;
        } else if (this.tranFirstPacketT <= 0) {
            this.leave_reason = -1009;
        } else if (this.avformat_open_t <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_AVFORMAT_OPENING;
        } else if (this.demuxer_create_t <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_AVFORMAT_FIND_STREAM;
        } else if (this.dec_create_t <= 0) {
            this.leave_reason = EXIT_CODE_BEFORE_DEC_CREATING;
        } else {
            int i10 = this.mRadioMode;
            if (i10 == 0 && this.v_dec_opened_t <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_VIDEO_DECODER_OPENING;
            } else if (this.a_dec_opened_t <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_AUDIO_DECODER_OPENING;
            } else if (this.outlet_create_t <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_OUTLET_CREATING;
            } else if (i10 == 0 && this.videoDeviceOpenedTime <= 0) {
                if (this.surfaceSetTime <= 0) {
                    this.leave_reason = EXIT_CODE_BEFORE_SURFACE_NOT_SET;
                } else {
                    this.leave_reason = EXIT_CODE_BEFORE_VIDEO_DEVICE_OPENING;
                }
            } else if (this.audioDeviceOpenedTime <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_AUDIO_DEVICE_OPENING;
            } else if (i10 == 0 && this.receiveFirstVideoFrameT <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_VIDEO_FIRST_PACKET;
            } else if (this.receiveFirstAudioFrameT <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_AUDIO_FIRST_PACKET;
            } else if (i10 == 0 && this.decodeFirstVideoFrameT <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_VIDEO_DECODE_FIRST_FRAME;
            } else if (this.decodeFirstAudioFrameT <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_AUDIO_DECODE_FIRST_FRAME;
            } else if (i10 == 0 && this.v_render_f_t <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_VIDEO_RENDER_FIRST_FRAME;
            } else if (this.a_render_f_t <= 0) {
                this.leave_reason = EXIT_CODE_BEFORE_AUDIO_RENDER_FIRST_FRAME;
            } else {
                this.leave_reason = EXIT_CODE_BEFORE_FIRST_FRAME_MSG_NOT_REPORT;
            }
        }
    }

    private String parsePreloadGear(String str, long j10, long j11) {
        if (str != null && !TextUtils.isEmpty(str)) {
            HashMap hashMap = new HashMap();
            String[] split = str.split(";|=");
            if (split != null && split.length != 0) {
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
                if (j10 > 0) {
                    LoggerUtils.putToMap(hashMap, "vgt0", j10);
                }
                if (j11 > 0) {
                    LoggerUtils.putToMap(hashMap, "agt0", j11);
                }
                return SerialMapToString(hashMap);
            }
        }
        return null;
    }

    public JSONObject toJsonObject(VideoEventBase videoEventBase) {
        Map<String, Object> metricsLog;
        int i10;
        String str = null;
        if (videoEventBase == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (this.f37082vt <= 0) {
            parseLeaveReason(videoEventBase);
        }
        LoggerUtils.putToMap(hashMap, "player_sessionid", this.mSessionID);
        LoggerUtils.putToMap(hashMap, "app_sessionid", VideoEventBase.appSessionId);
        LoggerUtils.putToMap(hashMap, "log_type", logType);
        LoggerUtils.putToMap(hashMap, "sdk_version", videoEventBase.sdk_version);
        LoggerUtils.putToMap((Map) hashMap, "plugin_exception", this.pluginException);
        LoggerUtils.putToMap(hashMap, "sv", videoEventBase.sv);
        LoggerUtils.putToMap(hashMap, "pv", videoEventBase.pv);
        LoggerUtils.putToMap(hashMap, "pc", videoEventBase.f37070pc);
        LoggerUtils.putToMap(hashMap, "ffv", videoEventBase.ffmpeg_version);
        LoggerUtils.putToMap(hashMap, "vcnv", videoEventBase.libvcn_version);
        LoggerUtils.putToMap(hashMap, "trv", videoEventBase.texturender_version);
        LoggerUtils.putToMap(hashMap, "prldv", videoEventBase.preload_version);
        LoggerUtils.putToMap(hashMap, "abrv", videoEventBase.abr_version);
        LoggerUtils.putToMap(hashMap, "prdtv", videoEventBase.predict_version);
        if (!TextUtils.isEmpty(videoEventBase.mSourceTypeStr) && !videoEventBase.mSourceTypeStr.equals("dir_url")) {
            LoggerUtils.putToMap(hashMap, "v", videoEventBase.mVid);
        }
        LoggerUtils.putToMap((Map) hashMap, "play_type", videoEventBase.mPlayType);
        LoggerUtils.putToMap(hashMap, "pt", this.f37081pt);
        LoggerUtils.putToMap(hashMap, "at", this.f37073at);
        LoggerUtils.putToMap(hashMap, "prepare_start_time", this.prepare_start_time);
        LoggerUtils.putToMap(hashMap, "prepare_end_time", this.prepare_end_time);
        LoggerUtils.putToMap(hashMap, "play_preparedt", this.playPreparedT);
        LoggerUtils.putToMap(hashMap, "play_startedt", this.playStartedT);
        LoggerUtils.putToMap(hashMap, "vt", this.f37082vt);
        LoggerUtils.putToMap(hashMap, "v_first_sync_t", this.v_first_sync_t);
        LoggerUtils.putToMap(hashMap, "et", this.f37078et);
        LoggerUtils.putToMap(hashMap, "lt", this.f37080lt);
        LoggerUtils.putToMap(hashMap, "bft", this.bft);
        LoggerUtils.putToMap((Map) hashMap, "bc", this.f37075bc);
        LoggerUtils.putToMap((Map) hashMap, "br", this.f37076br);
        LoggerUtils.putToMap(hashMap, "vu", this.f37083vu);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_VIDEO_DURATION, videoEventBase.f37071vd);
        LoggerUtils.putToMap(hashMap, "vs", videoEventBase.f37072vs);
        LoggerUtils.putToMap(hashMap, "vps", this.vps);
        LoggerUtils.putToMap(hashMap, "vds", this.vds);
        LoggerUtils.putToMap(hashMap, "accumulate_vds", this.accu_vds);
        LoggerUtils.putToMap((Map) hashMap, "width", this.width);
        LoggerUtils.putToMap((Map) hashMap, "height", this.height);
        LoggerUtils.putToMap((Map) hashMap, "async_init", this.asyncInit);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_ASYNC_CODEC_ID, this.asyncCodecId);
        LoggerUtils.putToMap((Map) hashMap, "video_preload_size", this.video_preload_size);
        LoggerUtils.putToMap(hashMap, "df", this.f37077df);
        LoggerUtils.putToMap(hashMap, "lf", this.f37079lf);
        LoggerUtils.putToMap(hashMap, "codec", videoEventBase.codec_type);
        LoggerUtils.putToMap(hashMap, "a_codec", videoEventBase.a_codec_type);
        LoggerUtils.putToMap(hashMap, "render_type", this.render_type);
        LoggerUtils.putToMap((Map) hashMap, "hijack", this.hijack);
        LoggerUtils.putToMap((Map) hashMap, "hw", videoEventBase.mVideoHW);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_HW_USER, videoEventBase.mVideoHWUser);
        LoggerUtils.putToMap((Map) hashMap, "hw_err_reason", this.mVideoHWErrReason);
        LoggerUtils.putToMap((Map) hashMap, "audio_hw_user", videoEventBase.mAudioHwUser);
        LoggerUtils.putToMap(hashMap, "dns_t", this.dnsT);
        LoggerUtils.putToMap(hashMap, "tran_ct", this.tranConnectT);
        LoggerUtils.putToMap(hashMap, "tran_ft", this.tranFirstPacketT);
        LoggerUtils.putToMap(hashMap, "a_dns_t", this.audioDnsT);
        LoggerUtils.putToMap(hashMap, "a_tran_ct", this.audioTranConnectT);
        LoggerUtils.putToMap(hashMap, "a_tran_ft", this.audioTranFirstPacketT);
        LoggerUtils.putToMap(hashMap, "re_f_videoframet", this.receiveFirstVideoFrameT);
        LoggerUtils.putToMap(hashMap, "de_f_videoframet", this.decodeFirstVideoFrameT);
        LoggerUtils.putToMap(hashMap, "re_f_audioframet", this.receiveFirstAudioFrameT);
        LoggerUtils.putToMap(hashMap, "de_f_audioframet", this.decodeFirstAudioFrameT);
        LoggerUtils.putToMap(hashMap, "bu_acu_t", this.bufferAccuT);
        LoggerUtils.putToMap(hashMap, "de_bu_acu_t", this.decoderBufferAccuT);
        LoggerUtils.putToMap(hashMap, "internal_ip", this.internalIP);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_TAG, videoEventBase.mTag);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SUBTAG, videoEventBase.mSubTag);
        LoggerUtils.putToMap(hashMap, "ex", SerialMapToString(this.ex));
        LoggerUtils.putToMap(hashMap, "mdlretry", this.mMDLRetryList);
        LoggerUtils.putToMap(hashMap, "first_buf_startt", this.firstBufferStartT);
        LoggerUtils.putToMap(hashMap, "first_buf_endt", this.firstBufferEndT);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_CUR_PLAY_POS, this.curPlayBackTime);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_ENGINE_STATE, this.engineState);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_VIDEO_OUT_FPS, this.curVideoOutputFps);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_CONTAINER_FPS, this.containerFps);
        LoggerUtils.putToMap((Map) hashMap, "video_decoder_fps", this.curVideoDecoderFps);
        LoggerUtils.putToMap(hashMap, IVideoEventLogger.LOG_CALLBACK_CLOCK_DIFF, this.clockDiff);
        LoggerUtils.putToMap((Map) hashMap, "drop_count", this.dropCount);
        LoggerUtils.putToMap(hashMap, "video_device_opened_t", this.videoDeviceOpenedTime);
        LoggerUtils.putToMap(hashMap, "audio_device_opened_t", this.audioDeviceOpenedTime);
        LoggerUtils.putToMap((Map) hashMap, VideoEventOneOutSync.END_TYPE_FINISH, this.finish);
        LoggerUtils.putToMap((Map) hashMap, "is_start_play_automatically", this.isStartPlayAutomatically);
        LoggerUtils.putToMap(hashMap, "player_create_exception", this.ownPlayerCreateException);
        LoggerUtils.putToMap(hashMap, "custom_str", this.mCustomStr);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_INITIAL_URL, this.mInitialURL);
        LoggerUtils.putToMap(hashMap, "initial_host", this.mInitialHost);
        LoggerUtils.putToMap(hashMap, "initial_ip", this.mInitialIP);
        LoggerUtils.putToMap(hashMap, "initial_resolution", this.mInitialResolution);
        LoggerUtils.putToMap(hashMap, "initial_quality", this.mInitialQuality);
        LoggerUtils.putToMap((Map) hashMap, "initial_quality_type", this.mInitialQualityType);
        LoggerUtils.putToMap((Map) hashMap, "apiver", this.apiver);
        LoggerUtils.putToMap(hashMap, "auth", this.f37074auth);
        LoggerUtils.putToMap((Map) hashMap, "apiver_final", this.apiverFinal);
        LoggerUtils.putToMap(hashMap, "playparam", SerialMapToString(this.playbackparams));
        LoggerUtils.putToMap(hashMap, "vtype", videoEventBase.vtype);
        LoggerUtils.putToMap(hashMap, "dynamic_type", videoEventBase.dynamic_type);
        LoggerUtils.putToMap((Map) hashMap, "lc", this.loopcount);
        LoggerUtils.putToMap((Map) hashMap, "switch_resolution_c", this.switchResolutionCount);
        LoggerUtils.putToMap((Map) hashMap, "watch_dur", this.watchduration);
        LoggerUtils.putToMap((Map) hashMap, SRStrategy.KEY_SR_STRATEGY_CONFIG, this.seekCount);
        LoggerUtils.putToMap((Map) hashMap, "vid_cache", this.useVideoModelCache);
        LoggerUtils.putToMap((Map) hashMap, "custom_p2p_cdn_type", this.customP2PCDNType);
        LoggerUtils.putToMap((Map) hashMap, MetricsSQLiteCacheKt.METRICS_START_TIME, this.startTime);
        LoggerUtils.putToMap((Map) hashMap, "disable_accurate_start", this.disableAccurateStart);
        LoggerUtils.putToMap((Map) hashMap, "audio_codec_nameId", videoEventBase.audioCodecNameId);
        LoggerUtils.putToMap((Map) hashMap, "video_codec_nameId", videoEventBase.videoCodecNameId);
        LoggerUtils.putToMap((Map) hashMap, "format_type", videoEventBase.formatType);
        LoggerUtils.putToMap(hashMap, "surface_set_time", this.surfaceSetTime);
        LoggerUtils.putToMap(hashMap, "surface_code", this.surfaceCode);
        LoggerUtils.putToMap(hashMap, "surface_code_player", this.playerSurfaceCode);
        LoggerUtils.putToMap((Map) hashMap, "frames_drop_set_num", this.mFramesSetDropNum);
        LoggerUtils.putToMap(hashMap, "video_device_start_t", this.videoDeviceStartTime);
        LoggerUtils.putToMap(hashMap, "audio_device_start_t", this.audioDeviceStartTime);
        LoggerUtils.putToMap((Map) hashMap, CampaignEx.JSON_KEY_VIDEO_LENGTHL, this.videoBufferLength);
        LoggerUtils.putToMap((Map) hashMap, "audio_length", this.audioBufferLength);
        LoggerUtils.putToMap((Map) hashMap, "net_block_buffer_threshold", this.netblockBufferthreshold);
        LoggerUtils.putToMap(hashMap, "api_str", this.apiString);
        LoggerUtils.putToMap(hashMap, "net_client", this.netClient);
        LoggerUtils.putToMap((Map) hashMap, "fetch_lv", this.fetchedAndLeaveByUser);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_VOLUME, this.volume);
        LoggerUtils.putToMap((Map) hashMap, "core_volume", this.core_volume);
        LoggerUtils.putToMap((Map) hashMap, "ae_type", this.ae_type);
        LoggerUtils.putToMap((Map) hashMap, "mute", this.mute);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_SOURCE_TYPE, videoEventBase.mSourceTypeStr);
        LoggerUtils.putToMap((Map) hashMap, "sharp", this.enableSharp);
        LoggerUtils.putToMap(hashMap, "dns_server_ip", this.dns_server_ip);
        LoggerUtils.putToMap(hashMap, "abr_info", SerialMapToString(videoEventBase.abrInfo));
        LoggerUtils.putToMap(hashMap, "abr_general_info", SerialMapToString(videoEventBase.abrGeneralInfo));
        LoggerUtils.putToMap(hashMap, "enc_key", this.encryptKey);
        LoggerUtils.putToMap(hashMap, "hw_codec_name", this.hwCodecName);
        LoggerUtils.putToMap((Map) hashMap, "hw_codec_exception", this.hwCodecException);
        LoggerUtils.putToMap((Map) hashMap, "enable_bash", this.enableBash);
        LoggerUtils.putToMap((Map) hashMap, "enable_mdl", this.enableMDL);
        LoggerUtils.putToMap((Map) hashMap, "network_try_count", this.netWorkTryCount);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_CHIPBOARD, this.chipBoardName);
        LoggerUtils.putToMap(hashMap, ITTVideoEngineEventSource.KEY_CHIPHARDWARE, this.chipHardwareName);
        LoggerUtils.putToMap(hashMap, "chiphardware_new", this.chipHardwareNameNew);
        LoggerUtils.putToMap((Map) hashMap, "buffer_timeout", this.mBufferTimeout);
        LoggerUtils.putToMap(hashMap, "dns_start_t", this.dns_start_t);
        LoggerUtils.putToMap(hashMap, "dns_end_t", this.dns_end_t);
        LoggerUtils.putToMap(hashMap, "dns_type", videoEventBase.mDNSType);
        LoggerUtils.putToMap(hashMap, "player_created_t", this.player_created_t);
        LoggerUtils.putToMap((Map) hashMap, "errt", this.errt);
        LoggerUtils.putToMap((Map) hashMap, "errc", this.errc);
        LoggerUtils.putToMap((Map) hashMap, "fir_errt", this.first_errt);
        LoggerUtils.putToMap((Map) hashMap, "fir_errc", this.first_errc);
        LoggerUtils.putToMap((Map) hashMap, "fir_errc_in", this.first_errc_internal);
        LoggerUtils.putToMap((Map) hashMap, "vsc", this.vsc);
        LoggerUtils.putToMap(hashMap, "vsc_message", this.vscMessage);
        LoggerUtils.putToMap(hashMap, "sub_events", SerialMapToString(this.subEvents));
        LoggerUtils.putToMap(hashMap, "mask_events", SerialMapToString(this.maskEvents));
        LoggerUtils.putToMap((Map) hashMap, "lv_reason", this.leave_reason);
        LoggerUtils.putToMap((Map) hashMap, "lv_bt", this.leave_block_t);
        LoggerUtils.putToMap((Map) hashMap, "lv_method", this.leave_method);
        LoggerUtils.putToMap((Map) hashMap, LocalePreferences.FirstDayOfWeek.SATURDAY, this.seek_accu_t);
        LoggerUtils.putToMap(hashMap, "lsst", this.lastSeekStartT);
        LoggerUtils.putToMap(hashMap, "lset", this.lastSeekEndT);
        LoggerUtils.putToMap(hashMap, "lbst", this.lastBufferStartT);
        LoggerUtils.putToMap(hashMap, "lbet", this.lastBufferEndT);
        LoggerUtils.putToMap((Map) hashMap, "lsp", this.lastSeekPosition);
        LoggerUtils.putToMap(hashMap, "sl_diff", this.server_local_diff);
        LoggerUtils.putToMap(hashMap, "trace_id", this.traceID);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.FEATURE_KEY_NETWORK_TIMEOUT, this.networkTimeout);
        LoggerUtils.putToMap((Map) hashMap, "is_pref_near_sam", this.isPreferNearestSample);
        LoggerUtils.putToMap((Map) hashMap, "is_disable_short_seek", this.isDisableShortSeek);
        LoggerUtils.putToMap((Map) hashMap, "drm_type", videoEventBase.mDrmType);
        LoggerUtils.putToMap(hashMap, "drm_token_url", videoEventBase.mDrmTokenUrl);
        LoggerUtils.putToMap((Map) hashMap, "check_hijack", this.checkHijack);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.FEATURE_KEY_HIJACK_RETRY, this.hijackRetry);
        LoggerUtils.putToMap((Map) hashMap, "first_hijack_code", this.firstHijackCode);
        LoggerUtils.putToMap((Map) hashMap, "last_hijack_code", this.lastHijackCode);
        LoggerUtils.putToMap(hashMap, "mdl_loader_type", this.loaderType);
        LoggerUtils.putToMap(hashMap, "mdl_version", videoEventBase.mMdlVersion);
        LoggerUtils.putToMap((Map) hashMap, "dns_mod", this.dnsModule);
        LoggerUtils.putToMap((Map) hashMap, "vd_err", this.curVideoDecodeError);
        LoggerUtils.putToMap((Map) hashMap, "ad_err", this.curAudioDecodeError);
        LoggerUtils.putToMap((Map) hashMap, "vr_err", this.curVideoRenderError);
        LoggerUtils.putToMap(hashMap, HiAnalyticsConstant.BI_KEY_NET_TYPE, videoEventBase.mNetworkType);
        LoggerUtils.putToMap(hashMap, "vpls", this.vpls);
        LoggerUtils.putToMap(hashMap, "d_apls", this.d_apls);
        LoggerUtils.putToMap(hashMap, "d_vpls", this.d_vpls);
        LoggerUtils.putToMap((Map) hashMap, "mr", this.miss_reason);
        LoggerUtils.putToMap((Map) hashMap, "mr_dv", this.miss_reason_dv);
        LoggerUtils.putToMap((Map) hashMap, "mr_da", this.miss_reason_da);
        LoggerUtils.putToMap((Map) hashMap, "vt_speed", (float) this.firstFrameSpeed);
        LoggerUtils.putToMap((Map) hashMap, "end_speed", (float) this.playEndSpeed);
        LoggerUtils.putToMap((Map) hashMap, "mediacodec_render", this.mediaCodecRender);
        LoggerUtils.putToMap((Map) hashMap, "tr", this.textureRender);
        LoggerUtils.putToMap((Map) hashMap, "tr_err", this.textureRenderErrorCode);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_CODEC_POOL, this.codecPool);
        LoggerUtils.putToMap(hashMap, "bit_rate", this.bitrate);
        LoggerUtils.putToMap(hashMap, "audio_bitrate", this.audioBitrate);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_COLD_START, this.isColdStart);
        LoggerUtils.putToMap(hashMap, "av_gap", this.videoAudioGap);
        LoggerUtils.putToMap(hashMap, "moov_pos", this.moovPos);
        LoggerUtils.putToMap(hashMap, "mdat_pos", this.mdatPos);
        int i11 = this.feedInBeforeDecoded;
        if (i11 > 0) {
            LoggerUtils.putToMap((Map) hashMap, "feed_in_before_decoded", i11);
        }
        LoggerUtils.putToMap(hashMap, "frange_size", this.firstRangeSize);
        LoggerUtils.putToMap(hashMap, "net_speed_level", this.netSpeedLevel);
        LoggerUtils.putToMap(hashMap, "video_model_version", this.modelVersion);
        LoggerUtils.putToMap(hashMap, "prepare_before_play_t", this.prepare_before_play_t);
        LoggerUtils.putToMap(hashMap, "setds_t", this.setds_t);
        LoggerUtils.putToMap(hashMap, IVideoEventLogger.LOG_CALLBACK_PLAY_START_TIME, this.ps_t);
        LoggerUtils.putToMap(hashMap, "pt_new", this.pt_new);
        LoggerUtils.putToMap(hashMap, "a_dns_start_t", this.a_dns_start_t);
        LoggerUtils.putToMap(hashMap, "formater_create_t", this.formater_create_t);
        LoggerUtils.putToMap(hashMap, "avformat_open_t", this.avformat_open_t);
        LoggerUtils.putToMap(hashMap, "demuxer_begin_t", this.demuxer_begin_t);
        LoggerUtils.putToMap(hashMap, "demuxer_create_t", this.demuxer_create_t);
        LoggerUtils.putToMap(hashMap, "dec_create_t", this.dec_create_t);
        LoggerUtils.putToMap(hashMap, "outlet_create_t", this.outlet_create_t);
        LoggerUtils.putToMap(hashMap, "v_render_f_t", this.v_render_f_t);
        LoggerUtils.putToMap(hashMap, "a_render_f_t", this.a_render_f_t);
        LoggerUtils.putToMap(hashMap, "a_dec_start_t", this.a_dec_start_t);
        LoggerUtils.putToMap(hashMap, "v_dec_start_t", this.v_dec_start_t);
        LoggerUtils.putToMap(hashMap, "a_dec_opened_t", this.a_dec_opened_t);
        LoggerUtils.putToMap(hashMap, "v_dec_opened_t", this.v_dec_opened_t);
        LoggerUtils.putToMap(hashMap, "a_http_open_t", this.a_http_open_t);
        LoggerUtils.putToMap(hashMap, "v_http_open_t", this.v_http_open_t);
        LoggerUtils.putToMap(hashMap, "v_tran_open_t", this.v_tran_open_t);
        LoggerUtils.putToMap(hashMap, "a_tran_open_t", this.a_tran_open_t);
        LoggerUtils.putToMap(hashMap, "v_sock_create_t", this.v_sock_create_t);
        LoggerUtils.putToMap(hashMap, "a_sock_create_t", this.a_sock_create_t);
        LoggerUtils.putToMap((Map) hashMap, ITTVideoEngineEventSource.KEY_RADIO_MODE, this.mRadioMode);
        LoggerUtils.putToMap((Map) hashMap, "v_disabled", this.mVideoStreamDisabled ? 1 : 0);
        LoggerUtils.putToMap((Map) hashMap, "a_disabled", this.mAudioStreamDisabled ? 1 : 0);
        LoggerUtils.putToMap((Map) hashMap, "is_replay", this.isReplay);
        LoggerUtils.putToMap(hashMap, "play_log_id", this.log_id);
        LoggerUtils.putToMap((Map) hashMap, IVideoEventLogger.LOG_CALLBACK_ENABLE_NNSR, this.mEnableNNSR);
        LoggerUtils.putToMap((Map) hashMap, "at_r", this.mReadCacheMode);
        LoggerUtils.putToMap((Map) hashMap, "at_rs", this.mPreRangeOff);
        LoggerUtils.putToMap((Map) hashMap, "video_codec_profile", this.mVideoCodecProfile);
        LoggerUtils.putToMap((Map) hashMap, "audio_codec_profile", this.mAudioCodecProfile);
        LoggerUtils.putToMap(hashMap, "last_sessionid", this.mLastSessionID);
        LoggerUtils.putToMap(hashMap, "nettype_list", SerialMapToString(this.mNetworkTypeList));
        LoggerUtils.putToMap(hashMap, "sigstrength_list", SerialMapToString(this.mSignalStrengthList));
        LoggerUtils.putToMap(hashMap, "netspeed_list", this.mMdlMultiSpeedList);
        LoggerUtils.putToMap(hashMap, "quality_list", SerialMapToString(this.mQualityList));
        LoggerUtils.putToMap(hashMap, "bitrate_list", SerialMapToString(this.mBitrateList));
        LoggerUtils.putToMap(hashMap, "catowerrtt_list", this.mCatowerRttList);
        LoggerUtils.putToMap(hashMap, "catowerrttms_list", this.mCatowerRttMsList);
        LoggerUtils.putToMap((Map) hashMap, "netquality_int", this.mNetQualityInterval);
        LoggerUtils.putToMap(hashMap, "features", SerialMapToString(this.mFeatures));
        LoggerUtils.putToMap((Map) hashMap, TTVideoEngineInterface.PLAY_API_KEY_NETWORKCORE, this.mNetworkScore);
        LoggerUtils.putToMap(hashMap, "before_play_buffer_start_t", this.playbackBufferStartT);
        LoggerUtils.putToMap(hashMap, "before_play_buffer_end_t", this.playbackBufferEndT);
        LoggerUtils.putToMap((Map) hashMap, "st_net_speed", this.mStSpeed);
        LoggerUtils.putToMap(hashMap, "v_file_hash", this.mVideoFileHash);
        LoggerUtils.putToMap(hashMap, "a_file_hash", this.mAudioFileHash);
        LoggerUtils.putToMap((Map) hashMap, "max_frame_in_mc", this.mMaxFramesInMediaCodec);
        LoggerUtils.putToMap((Map) hashMap, "video_abnormal_code", this.mVideoAbnormalCode);
        LoggerUtils.putToMap((Map) hashMap, "video_abnormal_strategy", this.mVideoAbnormalStrategy);
        LoggerUtils.putToMap((Map) hashMap, "video_abnormal_interval", this.mVideoAbnormalInterval);
        TTVideoEngineLog.d(TAG, "video_abnormal_code: " + this.mVideoAbnormalCode + " video_abnormal_strategy: " + this.mVideoAbnormalStrategy + " video_abnormal_interval: " + this.mVideoAbnormalInterval);
        if (this.startTime == 0 && this.f37082vt > 0 && (i10 = this.feedInBeforeDecoded) > 0 && i10 <= 30 && this.minVideoFrameSize < 150000) {
            String str2 = videoEventBase.vtype;
            if (str2 != null && str2.equals("dash")) {
                LoggerUtils.putToMap(hashMap, "min_audio_frame_size", this.minAudioFrameSize);
                LoggerUtils.putToMap(hashMap, "min_video_frame_size", this.minVideoFrameSize);
                String parsePreloadGear = parsePreloadGear(this.mPreloadGear, this.minVideoFrameSize, this.minAudioFrameSize);
                if (parsePreloadGear != null) {
                    LoggerUtils.putToMap(hashMap, "pgd", parsePreloadGear);
                }
            } else {
                long j10 = this.minVideoFrameSize;
                long j11 = this.minAudioFrameSize;
                if (j10 <= j11) {
                    j10 = j11;
                }
                LoggerUtils.putToMap(hashMap, "min_video_frame_size", j10);
                String parsePreloadGear2 = parsePreloadGear(this.mPreloadGear, j10, -1L);
                if (parsePreloadGear2 != null) {
                    LoggerUtils.putToMap(hashMap, "pgd", parsePreloadGear2);
                }
            }
            TTVideoEngineLog.d(TAG, "minVideoFrameSize: " + this.minVideoFrameSize + ", minAudioFrameSize: " + this.minAudioFrameSize);
        }
        LoggerUtils.putToMap(hashMap, "gear_strategy_info", SerialMapToString(this.mGearStrategyInfo));
        LoggerUtils.putToMap(hashMap, "sr_strategy_info", SerialMapToString(this.mSRStrategyInfo));
        LoggerUtils.putToMap(hashMap, "sr_preload_info", SerialMapToString(this.mSRPreloadInfo));
        LoggerUtils.putToMap(hashMap, "mdl_preload_info", videoEventBase.mdl_preload_info);
        LoggerUtils.putToMap(hashMap, "cur_ip", videoEventBase.mdlVideoInfo.mdl_cur_ip);
        LoggerUtils.putToMap(hashMap, "cur_host", videoEventBase.mdlVideoInfo.mdl_cur_host);
        LoggerUtils.putToMap(hashMap, "cur_url", videoEventBase.mdlVideoInfo.mdl_cur_url);
        LoggerUtils.putToMap(hashMap, "reply_size", videoEventBase.mdlVideoInfo.mdl_reply_size);
        LoggerUtils.putToMap((Map) hashMap, "mdl_speed", videoEventBase.mdlVideoInfo.mdl_speed);
        LoggerUtils.putToMap(hashMap, "mdl_file_key", videoEventBase.mdlVideoInfo.mdl_file_key);
        LoggerUtils.putToMap(hashMap, "mdl_re_url", videoEventBase.mdlVideoInfo.mdl_re_url);
        LoggerUtils.putToMap((Map) hashMap, "mdl_ec", videoEventBase.mdlVideoInfo.mdl_error_code);
        LoggerUtils.putToMap(hashMap, "end_t", videoEventBase.mdlVideoInfo.mdl_end_t);
        LoggerUtils.putToMap(hashMap, "mdl_dns_t", videoEventBase.mdlVideoInfo.mdl_dns_t);
        LoggerUtils.putToMap((Map) hashMap, "mdl_seek_num", videoEventBase.mdlVideoInfo.mdl_seek_num);
        LoggerUtils.putToMap((Map) hashMap, "mdl_v_p2p_ier", videoEventBase.mdlVideoInfo.mdl_v_p2p_ier);
        LoggerUtils.putToMap(hashMap, "mdl_ip_list", videoEventBase.mdlVideoInfo.mdl_ip_list);
        LoggerUtils.putToMap(hashMap, "mdl_blocked_ips", videoEventBase.mdlVideoInfo.mdl_blocked_ips);
        LoggerUtils.putToMap(hashMap, "mdl_response_cache", videoEventBase.mdlVideoInfo.mdl_cdn_cache);
        LoggerUtils.putToMap(hashMap, "mdl_response_cinfo", videoEventBase.mdlVideoInfo.mdl_client_info);
        LoggerUtils.putToMap((Map) hashMap, "mdl_disable_seek", videoEventBase.mdlVideoInfo.mdl_disable_seek);
        LoggerUtils.putToMap(hashMap, "a_cur_ip", videoEventBase.mdlAudioInfo.mdl_cur_ip);
        LoggerUtils.putToMap(hashMap, "a_cur_host", videoEventBase.mdlAudioInfo.mdl_cur_host);
        LoggerUtils.putToMap((Map) hashMap, "a_mdl_speed", videoEventBase.mdlAudioInfo.mdl_speed);
        LoggerUtils.putToMap(hashMap, "a_mdl_dns_t", videoEventBase.mdlAudioInfo.mdl_dns_t);
        LoggerUtils.putToMap(hashMap, "a_mdl_ip_list", videoEventBase.mdlAudioInfo.mdl_ip_list);
        LoggerUtils.putToMap(hashMap, "a_mdl_response_cache", videoEventBase.mdlAudioInfo.mdl_cdn_cache);
        LoggerUtils.putToMap(hashMap, "a_mdl_response_cinfo", videoEventBase.mdlAudioInfo.mdl_client_info);
        LoggerUtils.putToMap(hashMap, "custom_click_t", this.mCustomClickT);
        LoggerUtils.putToMap(hashMap, "custom_vm_t", this.mCustomGetVideoModelT);
        LoggerUtils.putToMap(hashMap, "custom_init_t", this.mCustomInitEngineT);
        LoggerUtils.putToMap(hashMap, "custom_play_t", this.mCustomPlayEngineT);
        LoggerUtils.putToMap((Map) hashMap, "v_render_stall_count", this.mVideoRenderStallCount);
        LoggerUtils.putToMap(hashMap, "v_render_stall_list", this.mVideoRenderStallList);
        LoggerUtils.putToMap((Map) hashMap, "screen_w", this.mScreenWidth);
        LoggerUtils.putToMap((Map) hashMap, "screen_h", this.mScreenHeight);
        LoggerUtils.putToMap((Map) hashMap, "p_density", this.mPixelDensity);
        LoggerUtils.putToMap((Map) hashMap, "xdpi", this.xdpi);
        LoggerUtils.putToMap((Map) hashMap, "ydpi", this.ydpi);
        LoggerUtils.putToMap((Map) hashMap, "sr_w", this.mSrWidthFactor);
        LoggerUtils.putToMap((Map) hashMap, "sr_h", this.mSrHeightFactor);
        LoggerUtils.putToMap((Map) hashMap, "sr_algorithm", this.mSrAlgorithm);
        LoggerUtils.putToMap((Map) hashMap, "sr_process_rate", this.mSrProccessSuccessRate);
        LoggerUtils.putToMap((Map) hashMap, "sr_process_act", this.mSrProcessorCostTime);
        LoggerUtils.putToMap((Map) hashMap, "enble_bmf", this.mSrEnableBmf);
        LoggerUtils.putToMap(hashMap, "eye_filter", this.mVideoFilterList);
        LoggerUtils.putToMap(hashMap, "bright_list", this.mBrightList);
        LoggerUtils.putToMap(hashMap, "view_size_list", this.mViewSizeList);
        LoggerUtils.putToMap(hashMap, "vr_distance_list", this.mVrDistanceList);
        LoggerUtils.putToMap((Map) hashMap, "vr_frame_rate", this.mVrFrameRate);
        LoggerUtils.putToMap((Map) hashMap, "vr_screen_refresh_rate", this.mVrScreenRefreshRate);
        LoggerUtils.putToMap(hashMap, "vr_head_movement_delay", this.mVrHeadMovementDelay);
        LoggerUtils.putToMap(hashMap, "play_list", this.mPlayList);
        LoggerUtils.putToMap(hashMap, "pause_list", this.mPauseList);
        LoggerUtils.putToMap(hashMap, "resolution_list", this.mResolutionList);
        LoggerUtils.putToMap(hashMap, "playspeed_list", this.mPlaySpeedList);
        LoggerUtils.putToMap(hashMap, "radiomode_list", this.mRadiomodeList);
        LoggerUtils.putToMap(hashMap, "loop_list", this.mLoopList);
        LoggerUtils.putToMap(hashMap, "error_list", this.mErrorList);
        LoggerUtils.putToMap(hashMap, "rebuf_list", this.mRebufList);
        LoggerUtils.putToMap(hashMap, "seek_list", this.mSeekList);
        LoggerUtils.putToMap(hashMap, "av_outsync_list", this.mAVOutsyncList);
        LoggerUtils.putToMap((Map) hashMap, "av_outsync_count", this.mAVOutsyncCount);
        LoggerUtils.putToMap((Map) hashMap, "color_trc", this.color_trc);
        LoggerUtils.putToMap(hashMap, "headset_list", this.mHeadsetStateList);
        LoggerUtils.putToMap((Map) hashMap, "hw_conf_type", this.mHardwareConfType);
        LoggerUtils.putToMap(hashMap, "no_a_list", this.mNoAudioRenderList);
        LoggerUtils.putToMap(hashMap, "no_v_list", this.mNoVideoRenderList);
        LoggerUtils.putToMap((Map) hashMap, "is_reuse_engine", this.mIsEngineReuse ? 1 : 0);
        LoggerUtils.putToMap(hashMap, "v_duration", this.mVideoStreamDuration);
        LoggerUtils.putToMap(hashMap, "a_duration", this.mAudioStreamDuration);
        LoggerUtils.putToMap((Map) hashMap, "view_hidden", this.mIsViewHidden);
        LoggerUtils.putToMap(hashMap, "power", this.mPowerList);
        LoggerUtils.putToMap(hashMap, "is_charging", this.mChargingList);
        LoggerUtils.putToMap(hashMap, "foreback_switch_list", this.mForebackSwitchList);
        LoggerUtils.putToMap(hashMap, "r_stage_errcs", this.mRenderStageError);
        LoggerUtils.putToMap(hashMap, "bad_interlaced_list", this.mAVBadInterlacedList);
        LoggerUtils.putToMap((Map) hashMap, "no_surface_play", this.mHasNoSurfaceWhenAudioRenderStart);
        LoggerUtils.putToMap((Map) hashMap, "net_conn_cnt", this.mNetworkConnectCount);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_VIDEO_STYLE, this.mVideoStyle);
        LoggerUtils.putToMap((Map) hashMap, TypedValues.Custom.S_DIMENSION, this.mDimension);
        LoggerUtils.putToMap((Map) hashMap, "projection_model", this.mProjectionModel);
        LoggerUtils.putToMap((Map) hashMap, TextureRenderKeys.KEY_IS_VIEW_SIZE, this.mViewSize);
        LoggerUtils.putToMap((Map) hashMap, "cpu_rate_begin", (float) this.mCpuRateBegin);
        LoggerUtils.putToMap((Map) hashMap, "cpu_rate_end", (float) this.mCpuRateEnd);
        LoggerUtils.putToMap((Map) hashMap, "cpu_speed_begin", (float) this.mCpuSpeedBegin);
        LoggerUtils.putToMap((Map) hashMap, "cpu_speed_end", (float) this.mCpuSpeedEnd);
        LoggerUtils.putToMap((Map) hashMap, "power_save_begin", this.mPowerSaveModeBegin);
        LoggerUtils.putToMap((Map) hashMap, "power_save_end", this.mPowerSaveModeEnd);
        LoggerUtils.putToMap((Map) hashMap, "battery_current", this.mAvgCurrent);
        LoggerUtils.putToMap(hashMap, "battery_current_list", this.mCurrentList);
        LoggerUtils.putToMap(hashMap, "gear_info_list", videoEventBase.mGearinfoList);
        LoggerUtils.putToMap((Map) hashMap, "engine_hashcode", this.mEngineHash);
        LoggerUtils.putToMap(hashMap, "enginepool_is_from_enginepool", this.mFromEnginePool);
        LoggerUtils.putToMap((Map) hashMap, "enginepool_corepoolsize_upper_limit", this.mCorePoolSizeUpperLimit);
        LoggerUtils.putToMap((Map) hashMap, "enginepool_corepoolsize_before_getengine", this.mCorepoolSizeBeforeGetEngine);
        LoggerUtils.putToMap((Map) hashMap, "enginepool_count_of_engine_in_use", this.mCountOfEngineInUse);
        LoggerUtils.putToMap(hashMap, "tr_v", this.mTrVersion);
        LoggerUtils.putToMap((Map) hashMap, "tr_fps", this.mTrFPS.floatValue());
        LoggerUtils.putToMap(hashMap, "eff_list", limitStringLength(this.mTrEffectList.toString(), 1024));
        LoggerUtils.putToMap(hashMap, "eff_avrtime", limitStringLength(this.mTrPerEffectAverageTime, 256));
        LoggerUtils.putToMap((Map) hashMap, "eff_chain_avrtime", this.mTrEffectChainAverageTime.floatValue());
        LoggerUtils.putToMap(hashMap, "eff_errc", limitStringLength(this.mTrEffectErrorCode, 1024));
        LoggerUtils.putToMap((Map) hashMap, "ott_plugin_v", this.mOttPluginVersion);
        LoggerUtils.putToMap(hashMap, "company_id", this.mCompanyID);
        int i12 = this.mCrosstalkCount;
        if (i12 >= 2) {
            LoggerUtils.putToMap((Map) hashMap, "crosstalk_count", i12);
            LoggerUtils.putToMap(hashMap, "crosstalk_info_list", this.mCrosstalkInfoList);
        }
        int i13 = this.mSensitiveMode;
        if (i13 == 1) {
            str = "user_disagree";
        } else if (i13 == 2) {
            str = "teen_mode";
        } else if (i13 == 3) {
            str = "guest_mode";
        }
        LoggerUtils.putToMap(hashMap, "sensitive_mode", str);
        LoggerUtils.putToMap((Map) hashMap, "target_bitrate", (float) this.mNetworkQualityBitrate);
        LoggerUtils.putToMap((Map) hashMap, "expire_play_code", this.mExpirePlayCode);
        LoggerUtils.putToMap(hashMap, "mask_download_size", this.mMaskDownloadSize);
        LoggerUtils.putToMap(hashMap, "subtitle_download_size", this.mSubtitleDownloadSize);
        LoggerUtils.putToMap((Map) hashMap, "cast_info_is_cast_live", this.mCastinfoIsCastLive);
        LoggerUtils.putToMap((Map) hashMap, "cast_info_source_app_id", this.mCastinfoSourceAppId);
        LoggerUtils.putToMap((Map) hashMap, "cast_info_scene_id", this.mCastinfoSceneId);
        LoggerUtils.putToMap(hashMap, "cast_info_protocal", this.mCastinfoProtocal);
        LoggerUtils.putToMap((Map) hashMap, "host_abi_b", this.mHostAbiBits);
        LoggerUtils.putToMap((Map) hashMap, "has_get_preload_traceid", videoEventBase.mHasGetPreloadTraceId ? 1 : 0);
        LoggerUtils.putToMap(hashMap, "custom_play_session_id", this.mCustomPlaySessionId);
        LoggerUtils.putToMap(hashMap, "mdl_group_id", this.mMDLGroupId);
        LoggerUtils.putToMap((Map) hashMap, "background_play", this.mInBackgroundWhenPlay);
        LoggerUtils.putToMap((Map) hashMap, "background_stop", this.mInBackgroundWhenStop);
        PlayerMetrics playerMetrics = PlayerMetrics.getInstance();
        if (playerMetrics.getAbility() > 0 && (metricsLog = playerMetrics.getMetricsLog()) != null && metricsLog.size() > 0) {
            String SerialMapToString = SerialMapToString(metricsLog);
            LoggerUtils.putToMap(hashMap, "metrics_info_new", SerialMapToString);
            TTVideoEngineLog.d(TAG, "metrics_info :" + SerialMapToString);
        }
        Map<String, Object> allLabels = PortraitEngine.getInstance().getAllLabels();
        if (allLabels != null && allLabels.size() > 0) {
            LoggerUtils.putToMap(hashMap, "portrait_labels", SerialMapToString(allLabels));
        }
        LoggerUtils.putToMap(hashMap, "vs_impression_id", SettingsHelper.helper().getVodString("vs_impression_id", ""));
        if (!TextUtils.isEmpty(videoEventBase.mSourceTypeStr) && videoEventBase.mSourceTypeStr.equals("feed")) {
            LoggerUtils.putToMap((Map) hashMap, "vm_fbapi", this.mVModelHasFallbackApi ? 1 : 0);
        }
        LoggerUtils.putToMap((Map) hashMap, "initial_enable_mdl", this.enableMDLOnFirstPlay);
        LoggerUtils.putToMap((Map) hashMap, "mdl_invalid_code", this.mMdlInvalidCode);
        LoggerUtils.putToMap((Map) hashMap, "mdl_init_state", this.mMdlInitializeState);
        LoggerUtils.putToMap(hashMap, "mdl_init_err", this.mMdlInitializeError);
        Map<String, Object> logData = StrategyHelper.helper().getLogData(videoEventBase.mMediaID);
        if (logData != null && logData.size() > 0) {
            hashMap.putAll(logData);
        }
        StrategyHelper.helper().removeLogData(videoEventBase.mMediaID);
        Map<String, Object> popOnePlayLog = StrategyHelper.helper().popOnePlayLog(videoEventBase.mTraceID);
        if (popOnePlayLog != null && popOnePlayLog.size() > 0) {
            hashMap.putAll(popOnePlayLog);
        }
        LabelUsage labelUsage = this.mLabelUsage;
        if (labelUsage != null) {
            hashMap.put(LabelUsage.KEY_LABEL_USAGE, labelUsage.get(hashMap));
        }
        TTVideoEngineLog.d(TAG, "play_time:" + this.f37081pt + ", pt_new:" + this.pt_new + ",ps_t:" + this.ps_t + ", vv_time:" + this.f37082vt + ", lwp_time:" + this.f37080lt + ", outsync count:" + this.mAVOutsyncCount + ", outsync list:" + this.mAVOutsyncList + ", vs:" + videoEventBase.f37072vs + ", vtype:" + videoEventBase.vtype + ", cur_url:" + videoEventBase.mdlVideoInfo.mdl_cur_url + ", features:" + this.mFeatures + ", exception:" + this.ownPlayerCreateException);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("no_a_list: ");
        sb2.append(this.mNoAudioRenderList);
        sb2.append(", no_v_list: ");
        sb2.append(this.mNoVideoRenderList);
        TTVideoEngineLog.d(TAG, sb2.toString());
        EventLoggerSource eventLoggerSource = videoEventBase.mDataSource;
        if ((eventLoggerSource != null ? eventLoggerSource.getLogValueInt(148) : 0) == 1) {
            hashMap.putAll(doEncryptThings(videoEventBase));
        }
        if (!TTVideoEngine.sBuryDataOptimize) {
            LoggerUtils.putToMap(hashMap, "init_audio_url", this.mAudioInitUrl);
            LoggerUtils.putToMap(hashMap, "set_surface_time_list", this.mSetSurfaceTimeList);
            LoggerUtils.putToMap(hashMap, "cur_req_pos", videoEventBase.mdlVideoInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "cur_end_pos", videoEventBase.mdlVideoInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "cur_cache_pos", videoEventBase.mdlVideoInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "cache_type", videoEventBase.mdlVideoInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "down_pos", videoEventBase.mdlVideoInfo.mdl_down_pos);
            LoggerUtils.putToMap(hashMap, "player_wait_time", videoEventBase.mdlVideoInfo.mdl_player_wait_time);
            LoggerUtils.putToMap((Map) hashMap, "player_wait_num", videoEventBase.mdlVideoInfo.mdl_player_wait_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_is_socrf", videoEventBase.mdlVideoInfo.mdl_is_socrf);
            LoggerUtils.putToMap((Map) hashMap, "mdl_req_num", videoEventBase.mdlVideoInfo.mdl_req_num);
            LoggerUtils.putToMap((Map) hashMap, "mdl_url_index", videoEventBase.mdlVideoInfo.mdl_url_index);
            LoggerUtils.putToMap((Map) hashMap, "mdl_cur_source", videoEventBase.mdlVideoInfo.mdl_cur_soure);
            LoggerUtils.putToMap(hashMap, "mdl_extra_info", videoEventBase.mdlVideoInfo.mdl_extra_info);
            LoggerUtils.putToMap(hashMap, "mdl_fs", videoEventBase.mdlVideoInfo.mdl_fs);
            LoggerUtils.putToMap((Map) hashMap, "mdl_stage", videoEventBase.mdlVideoInfo.mdl_stage);
            LoggerUtils.putToMap(hashMap, "req_t", videoEventBase.mdlVideoInfo.mdl_req_t);
            LoggerUtils.putToMap(hashMap, "tcp_con_start_t", videoEventBase.mdlVideoInfo.mdl_tcp_start_t);
            LoggerUtils.putToMap(hashMap, "tcp_con_t", videoEventBase.mdlVideoInfo.mdl_tcp_end_t);
            LoggerUtils.putToMap(hashMap, "tcp_first_pack_t", videoEventBase.mdlVideoInfo.mdl_ttfp);
            LoggerUtils.putToMap(hashMap, "http_first_body_t", videoEventBase.mdlVideoInfo.mdl_httpfb);
            LoggerUtils.putToMap(hashMap, "http_open_end_t", videoEventBase.mdlVideoInfo.mdl_http_open_end_t);
            LoggerUtils.putToMap((Map) hashMap, "http_code", videoEventBase.mdlVideoInfo.mdl_http_code);
            LoggerUtils.putToMap((Map) hashMap, "mdl_p2p_sp", videoEventBase.mdlVideoInfo.mdl_pcdn_full_speed);
            LoggerUtils.putToMap((Map) hashMap, "mdl_res_err", videoEventBase.mdlVideoInfo.mdl_res_err);
            LoggerUtils.putToMap((Map) hashMap, "mdl_read_src", videoEventBase.mdlVideoInfo.mdl_read_src);
            LoggerUtils.putToMap(hashMap, "mdl_last_msg", videoEventBase.mdlVideoInfo.mdl_last_msg);
            LoggerUtils.putToMap(hashMap, "mdl_server_timing", videoEventBase.mdlVideoInfo.mdl_server_timing);
            LoggerUtils.putToMap((Map) hashMap, "mdl_v_lt", videoEventBase.mdlVideoInfo.mdl_v_lt);
            LoggerUtils.putToMap(hashMap, "a_cur_req_pos", videoEventBase.mdlAudioInfo.mdl_cur_req_pos);
            LoggerUtils.putToMap(hashMap, "a_cur_end_pos", videoEventBase.mdlAudioInfo.mdl_cur_end_pos);
            LoggerUtils.putToMap(hashMap, "a_cur_cache_pos", videoEventBase.mdlAudioInfo.mdl_cur_cache_pos);
            LoggerUtils.putToMap((Map) hashMap, "a_cache_type", videoEventBase.mdlAudioInfo.mdl_cache_type);
            LoggerUtils.putToMap(hashMap, "a_cur_url", videoEventBase.mdlAudioInfo.mdl_cur_url);
            LoggerUtils.putToMap(hashMap, "a_reply_size", videoEventBase.mdlAudioInfo.mdl_reply_size);
            LoggerUtils.putToMap(hashMap, "a_down_pos", videoEventBase.mdlAudioInfo.mdl_down_pos);
            LoggerUtils.putToMap(hashMap, "a_player_wait_time", videoEventBase.mdlAudioInfo.mdl_player_wait_time);
            LoggerUtils.putToMap((Map) hashMap, "a_player_wait_num", videoEventBase.mdlAudioInfo.mdl_player_wait_num);
            LoggerUtils.putToMap(hashMap, "a_mdl_file_key", videoEventBase.mdlAudioInfo.mdl_file_key);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_is_socrf", videoEventBase.mdlAudioInfo.mdl_is_socrf);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_req_num", videoEventBase.mdlAudioInfo.mdl_req_num);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_url_index", videoEventBase.mdlAudioInfo.mdl_url_index);
            LoggerUtils.putToMap(hashMap, "a_mdl_re_url", videoEventBase.mdlAudioInfo.mdl_re_url);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_cur_source", videoEventBase.mdlAudioInfo.mdl_cur_soure);
            LoggerUtils.putToMap(hashMap, "a_mdl_extra_info", videoEventBase.mdlAudioInfo.mdl_extra_info);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_ec", videoEventBase.mdlAudioInfo.mdl_error_code);
            LoggerUtils.putToMap(hashMap, "a_mdl_fs", videoEventBase.mdlAudioInfo.mdl_fs);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_stage", videoEventBase.mdlAudioInfo.mdl_stage);
            LoggerUtils.putToMap(hashMap, "a_req_t", videoEventBase.mdlAudioInfo.mdl_req_t);
            LoggerUtils.putToMap(hashMap, "a_end_t", videoEventBase.mdlAudioInfo.mdl_end_t);
            LoggerUtils.putToMap(hashMap, "a_tcp_con_start_t", videoEventBase.mdlAudioInfo.mdl_tcp_start_t);
            LoggerUtils.putToMap(hashMap, "a_tcp_con_t", videoEventBase.mdlAudioInfo.mdl_tcp_end_t);
            LoggerUtils.putToMap(hashMap, "a_tcp_first_pack_t", videoEventBase.mdlAudioInfo.mdl_ttfp);
            LoggerUtils.putToMap(hashMap, "a_http_first_body_t", videoEventBase.mdlAudioInfo.mdl_httpfb);
            LoggerUtils.putToMap(hashMap, "a_http_open_end_t", videoEventBase.mdlAudioInfo.mdl_http_open_end_t);
            LoggerUtils.putToMap((Map) hashMap, "a_http_code", videoEventBase.mdlAudioInfo.mdl_http_code);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_res_err", videoEventBase.mdlAudioInfo.mdl_res_err);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_read_src", videoEventBase.mdlAudioInfo.mdl_read_src);
            LoggerUtils.putToMap((Map) hashMap, "a_mdl_seek_num", videoEventBase.mdlAudioInfo.mdl_seek_num);
            LoggerUtils.putToMap(hashMap, "a_mdl_last_msg", videoEventBase.mdlAudioInfo.mdl_last_msg);
            LoggerUtils.putToMap(hashMap, "a_mdl_server_timing", videoEventBase.mdlAudioInfo.mdl_server_timing);
            LoggerUtils.putToMap(hashMap, "a_mdl_blocked_ips", videoEventBase.mdlAudioInfo.mdl_blocked_ips);
        }
        LoggerUtils.putToMap(hashMap, "source_refresh_log", this.mSourceRefreshLog);
        Map<String, Object> map = this.mMapAppLog;
        if (map != null && map.size() > 0) {
            hashMap.putAll(this.mMapAppLog);
            TTVideoEngineLog.d(TAG, "App VV Tacking Log：" + this.mMapAppLog);
        }
        return new JSONObject(hashMap);
    }
}
