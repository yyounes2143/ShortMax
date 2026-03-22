package com.ss.ttvideoengine;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.texturerender.VideoSurface;
import com.ss.ttm.player.AudioProcessor;
import com.ss.ttm.player.BufferProcessCallback;
import com.ss.ttm.player.IMediaDataSource;
import com.ss.ttm.player.LoadControl;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttm.player.TraitObject;
import com.ss.ttvideoengine.TTVideoEngineMonitor;
import com.ss.ttvideoengine.log.EventLoggerSource;
import com.ss.ttvideoengine.log.ExternVideoLoggerListener;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.metrics.IMediaMetrics;
import com.ss.ttvideoengine.model.DubbedInfo;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.SubInfo;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.net.TTVNetClient;
import com.ss.ttvideoengine.preloader.TTAVPreloaderItem;
import com.ss.ttvideoengine.selector.shift.SpeedShiftConfig;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConfig;
import com.ss.ttvideoengine.selector.strategy.IGearStrategyListener;
import com.ss.ttvideoengine.setting.SettingsHelper;
import com.ss.ttvideoengine.strategy.source.StrategySource;
import com.ss.ttvideoengine.superresolution.SRStrategyConfig;
import java.io.FileDescriptor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface TTVideoEngineInterface extends ITTVideoEngineInternal {
    @Deprecated
    public static final int ABR_4GMAX_RESOULUTION_MODEL_CUSTOM = 0;
    public static final int ABR_4G_MAX_RESOLUTION_MODEL_CUSTOM = 0;
    public static final int ABR_BABB = 0;
    public static final int ABR_BB = 1;
    public static final int ABR_BOLA = 6;
    public static final int ABR_BW = 3;
    public static final int ABR_CS = 4;
    public static final int ABR_FESTIVE = 7;
    public static final int ABR_FIXED_LEVEL_DEFAULT = 2;
    public static final int ABR_FIXED_LEVEL_HIGH = 3;
    public static final int ABR_FIXED_LEVEL_HIGHER = 4;
    public static final int ABR_FIXED_LEVEL_LOW = 1;
    public static final int ABR_FIXED_LEVEL_LOWER = 0;
    public static final int ABR_FIXED_LEVEL_NORMAL = 2;
    public static final int ABR_MPC = 2;
    public static final int ABR_MPC2 = 8;
    public static final int ABR_ONCE_TYPE_B2BMODEL = 0;
    public static final int ABR_ONCE_TYPE_BABBONCE = 1;
    public static final int ABR_ONCE_TYPE_BWONCE = 2;
    public static final int ABR_ONCE_TYPE_CSONCE = 3;
    public static final int ABR_ONCE_TYPE_DEFAULT = 0;
    public static final int ABR_PROBE_MODE_RANGE_BOUNDARY = 0;
    public static final int ABR_PROBE_MODE_SEGMENT_BOUNDARY = 1;
    public static final int ABR_RL = 5;
    public static final int ABR_STARTUP_MODEL_DEFAULT = 0;
    public static final int ABR_STARTUP_MODEL_DYNAMIC = 3;
    public static final int ABR_STARTUP_MODEL_HIGH = 1;
    public static final int ABR_STARTUP_MODEL_HIGHER = 2;
    public static final int ABR_STARTUP_MODEL_NORMAL = 0;
    public static final int ABR_SWITCH_CS_MODEL_DEFAULT = 1;
    public static final int ABR_SWITCH_CS_MODEL_FIXED = 0;
    public static final int ABR_SWITCH_CS_MODEL_NORMAL = 1;
    public static final int ABR_SWITCH_CS_MODEL_SLOW = 2;
    public static final int ABR_SWITCH_CS_MODEL_SLOWER = 3;
    public static final int ABR_SWITCH_CS_MODEL_VERYSLOW = 4;
    public static final int ABR_SWITCH_MODE_AUTO = 0;
    public static final int ABR_SWITCH_MODE_USER = 1;
    public static final int ABR_SWITCH_SENSITIVITY_HIGH = 1;
    public static final int ABR_SWITCH_SENSITIVITY_HIGHER = 2;
    public static final int ABR_SWITCH_SENSITIVITY_NORMAL = 0;
    public static final int ABR_WITH_SR_NO = 0;
    public static final int ABR_WITH_SR_YES = 1;
    public static final int AE_CLIMITER = 1;
    public static final int AE_COMPRESSOR = 0;
    public static final int AE_RTC_LondNorm = 4;
    public static final int ALGO_CONFIG_SMART_RANGE_REQUEST = 31009;
    public static final int ALGO_CONFIG_STRING_BANDWIDTH = 31007;
    public static final int ALGO_CONFIG_STRING_COMMON = 31001;
    public static final int ALGO_CONFIG_STRING_DYNAMIC = 31011;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAYLOAD = 31015;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAYRANGE = 31016;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PLAY_BUFFER = 31019;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_PRELOAD = 31014;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_SELECT_BITRATE = 31017;
    public static final int ALGO_CONFIG_STRING_DYNAMIC_TIMEINFO = 31013;
    public static final int ALGO_CONFIG_STRING_GEAR_STRATEGY = 31006;
    public static final int ALGO_CONFIG_STRING_MODULE_CONFIG = 31008;
    public static final int ALGO_CONFIG_STRING_OPTION = 31012;
    public static final int ALGO_CONFIG_STRING_PLAY_BUFFER = 31018;
    public static final int ALGO_CONFIG_STRING_PLAY_LOAD = 31004;
    public static final int ALGO_CONFIG_STRING_PLAY_RANGE = 31005;
    public static final int ALGO_CONFIG_STRING_PRELOAD = 31010;
    public static final int ALGO_CONFIG_STRING_PRELOAD_BACKGROUND = 31020;
    public static final int ALGO_CONFIG_STRING_PRELOAD_TIMELINESS = 31003;
    public static final int ALGO_CONFIG_STRING_SMART_PRELOAD = 31002;
    public static final int ALGO_CONFIG_STRING_SMART_SERVICE_PACKAGE_URL = 31021;
    public static final int ALGO_GLOBAL_OPTION_INT_END = 60000;
    public static final int ALGO_GLOBAL_OPTION_INT_START = 50000;
    public static final int ALGO_OPTION_AUTO_RESUME_TASK_WHEN_PLAY = 50009;
    public static final int ALGO_OPTION_ENABLE_IO_DECISION = 50008;
    public static final int ALGO_OPTION_ENABLE_USE_CACHE_FLAG = 50011;
    public static final int ALGO_OPTION_INT_ALL_PRELOAD_FINISH_MESSAGE = 50007;
    public static final int ALGO_OPTION_INT_CACHE_TIMESTAMP = 50003;
    public static final int ALGO_OPTION_INT_CHECK_EXITED_LC = 50004;
    public static final int ALGO_OPTION_INT_CHECK_ORIGIN_LC = 50005;
    public static final int ALGO_OPTION_INT_SELECT_BITRATE_MODE = 50006;
    public static final int ALGO_OPTION_INT_STOP_BACKGROUND = 50001;
    public static final int ALGO_OPTION_INT_STOP_TASK_END_PLAY = 50002;
    public static final int ALGO_OPTION_PAUSE_IO_WHEN_REQ_END = 50010;
    public static final int ALGO_OPTION_PLAYER_CONTEXT_INFO = 50012;
    public static final int ALGO_OPTION_PRELOAD_MP3_SUPPORT = 50019;
    public static final int ALGO_OPTION_SPEED_INFO_UPDATE = 58001;
    public static final int ALGO_OPTION_USE_ENGINE_NETWORK_TIMEOUT = 50080;
    public static final int APP_PAUSE_ALL_PRELOAD = 31215;
    public static final int APP_PAUSE_SCENE_PRELOAD = 31217;
    public static final int APP_RESUME_ALL_PRELOAD = 31216;
    public static final int APP_RESUME_SCENE_PRELOAD = 31218;
    public static final int APP_STATE = 1001;
    public static final int APP_STATE_BACKGROUND = 2;
    public static final int APP_STATE_FOREGROUND = 1;
    public static final int AUDIO_CHANNEL_LEFT_DISABLE = 2;
    public static final int AUDIO_CHANNEL_LEFT_FOR_LR = 3;
    public static final int AUDIO_CHANNEL_NORMAL = 0;
    public static final int AUDIO_CHANNEL_RIGHT_DISABLE = 1;
    public static final int AUDIO_CHANNEL_RIGHT_FOR_LR = 4;
    public static final int AUDIO_STREAM = 1;
    public static final String AUTH_AK = "AccessKeyId";
    public static final String AUTH_CurTime = "CurTime";
    public static final String AUTH_EXPIREDTIME = "ExpiredTime";
    public static final String AUTH_SESSIONTOKEN = "SessionToken";
    public static final String AUTH_SK = "SecretAccessKey";
    public static final int BANDWIDTH_CAL_QUEUE_SIZE = 1002;
    public static final int BANDWIDTH_DEFAULT_INITIAL_SPEED = 1004;
    public static final int BEST_RESOLUTION_AWEME_SPEEDSHIFT = 3;
    public static final int BEST_RESOLUTION_MAX_CHACHE = 1;
    public static final int BEST_RESOLUTION_MAX_QUALITY = 2;
    public static final int BEST_RESOLUTION_NET_LEVEL = 4;
    public static final int BEST_RESOLUTION_NONE = 0;
    public static final int CONFIG_PEAK_SETTING = 31206;
    public static final int DEFAULT_AUDIO_RANGE_SIZE = 409600;
    public static final int DEFAULT_AUDIO_RANGE_TIME = 10000;
    public static final int DEFAULT_BUFFER_TIME_OUT = 30;
    public static final int DEFAULT_VIDEO_RANGE_SIZE = 1048576;
    public static final int DEFAULT_VIDEO_RANGE_TIME = 5000;
    public static final int DNS_TYPE_HTTP_ALI = 1;
    public static final int DNS_TYPE_HTTP_TT = 2;
    public static final int DNS_TYPE_LOCAL = 0;
    public static final int DRM_CLOSE_ROOT_CHECK = 1;
    public static final int DRM_OPEN_ROOT_CHECK = 0;
    public static final int DRM_TYPE_INTERTRUST = 1;
    public static final int DRM_TYPE_INTERTRUST_PROXY = 2;
    public static final int DRM_TYPE_NONE = 0;
    public static final String DYNAMIC_TYPE_SEGMENTBASE = "segment_base";
    public static final String DYNAMIC_TYPE_SEGMENTLIST = "segment_list";
    public static final String DYNAMIC_TYPE_SEGMENTTEMPLATE = "segment_template";
    public static final int EGL_VER_2 = 2;
    public static final int EGL_VER_3 = 3;
    public static final int ENGINEPOOL_VALUE_COREPOOLSIZE_BEFORE_GETENGINE = 1207;
    public static final int ENGINEPOOL_VALUE_COREPOOLSIZE_UPPERLIMIT = 1206;
    public static final int ENGINEPOOL_VALUE_COUNT_ENGINE_IN_USE = 1208;
    public static final int ENGINEPOOL_VALUE_IS_FROM_ENGINEPOOL = 1205;
    public static final long ENGINE_OPTIMIZE_DISABLE_STRATEGY_NET = 16;
    public static final long ENGINE_OPTIMIZE_DISABLE_STRENGTH_REPORT = 64;
    public static final long ENGINE_OPTIMIZE_DISABLE_WIFI_STRENGTH = 32;
    public static final long ENGINE_OPTIMIZE_GET_HEADSET_STATE = 4;
    public static final long ENGINE_OPTIMIZE_POWER_SAVE_MODE = 2;
    public static final long ENGINE_OPTIMIZE_SET_PLAY_INFO_LOG = 8;
    public static final long ENGINE_OPTIMIZE_SET_SOURCE = 1;
    public static final String ENGINE_PARAM_KEY_CALLBACK_LOOPER = "callback_looper";
    public static final String ENGINE_PARAM_KEY_ENABLE_LOOPER = "enable_looper";
    public static final String ENGINE_PARAM_KEY_HANDLER_THREAD = "handler_thread";
    public static final String ENGINE_PARAM_KEY_HANDLER_THREAD_NOT_ALLOW_DESTROY = "handler_thread_not_allow_destroy";
    public static final String ENGINE_PARAM_KEY_REFACTOR_FLAG = "refactor_flag";
    public static final int FALLBACK_API_RETRY_DEFAULT = 1;
    public static final int FALLBACK_API_RETRY_NONE = 0;
    public static final String FORMAT_TYPE_DASH = "dash";
    public static final String FORMAT_TYPE_HLS = "hls";
    public static final String FORMAT_TYPE_MP3 = "mp3";
    public static final String FORMAT_TYPE_MP4 = "mp4";
    public static final String FORMAT_TYPE_MPD = "mpd";
    public static final int GLOBAL_ENGINE_OPTION_MAX = 79999;
    public static final int GLOBAL_ENGINE_OPTION_MIN = 70000;
    public static final int GLOBAL_PLAYER_OPTION_MAX = 49999;
    public static final int GLOBAL_PLAYER_OPTION_MIN = 40000;
    public static final int IMAGE_ENHANCEMENT_CONTRAST = 1;
    public static final int IMAGE_ENHANCEMENT_DEFAULT = 0;
    public static final int IMAGE_LAYOUT_ASPECT_FILL = 2;
    public static final int IMAGE_LAYOUT_ASPECT_FILL_X = 3;
    public static final int IMAGE_LAYOUT_ASPECT_FILL_Y = 4;
    public static final int IMAGE_LAYOUT_ASPECT_FIT = 0;
    public static final int IMAGE_LAYOUT_TO_FILL = 1;
    public static final int IMAGE_SCALE_LANCOZ = 1;
    public static final int IMAGE_SCALE_LINEAR = 0;
    public static final int IMAGE_SCALE_NEAREST = 2;
    public static final int KERNEL_LOG_LEVEL_DEBUG = 16777216;
    public static final int KERNEL_LOG_LEVEL_ERROR = 67108864;
    public static final int KERNEL_LOG_LEVEL_INFO = 33554432;
    public static final int KERNEL_LOG_LEVEL_INFO_KILL = 34603008;
    public static final int KERNEL_LOG_LEVEL_INFO_TRACK_CORE = 42795008;
    public static final int KERNEL_LOG_LEVEL_INFO_TRACK_FUNC = 42860544;
    public static final int KERNEL_LOG_LEVEL_INFO_TRACK_LIFE = 42926080;
    public static final int KERNEL_LOG_LEVEL_VERBOSE = 0;
    public static final int KERNEL_LOG_LEVEL_WARN = 50331648;
    public static final int KEY_IS_CONFIG_PARAMS_OPTION = 100;
    public static final int MAIN_LOOPER_MESSAGE_MDL_CACHESIZE = 10;
    public static final int MAX_SURFACE_HASHMAP_SIZE = 15;
    public static final int MDL_READ_MODE_CACHE = 1;
    public static final int MDL_READ_MODE_CACHE_NETWORK = 2;
    public static final int MDL_READ_MODE_NORMAL = 0;
    public static final int MEDIA_FOCUS_ENTER = 1;
    public static final int MEDIA_FOCUS_LEAVE = 2;
    public static final int MEDIA_FORMAT_BASH = 6;
    public static final int MEDIA_FORMAT_DASH = 5;
    public static final int MEDIA_FORMAT_FLV = 2;
    public static final int MEDIA_FORMAT_HLS = 4;
    public static final int MEDIA_FORMAT_MP4 = 1;
    public static final int MEDIA_FORMAT_RTMP = 3;
    public static final String MEDIA_TYPE_AUDIO = "audio";
    public static final String MEDIA_TYPE_VIDEO = "video";
    public static final int MIN_NETSPEED_DIFF = 500;
    public static final int NETWORK_PREDICTOR_DEFAULT_INITIAL_SPEED = 739;
    public static final int NETWORK_PREDICTOR_OPTION_QUEUE_SIZE = 676;
    public static final int NOT_USE_P2P = 0;
    public static final int PLAYER_BUFFERING_DATA_OF_MILLISECONDS = 118;
    public static final int PLAYER_BUFFERING_DATA_OF_SECONDS = 200;
    public static final int PLAYER_BUFFERING_TIMEOUT = 11;
    public static final int PLAYER_DISABLE_ABR = 0;
    public static final int PLAYER_DISABLE_ACCURATE_START = 1;
    public static final int PLAYER_DISABLE_BASH = 0;
    public static final int PLAYER_DISABLE_DASH = 0;
    public static final int PLAYER_DISABLE_DASH_ABR = 0;
    public static final int PLAYER_DISABLE_REUSE_SOCKET = 0;
    public static final int PLAYER_DISABLE_TEST_SPEED = -1;
    public static final int PLAYER_ENABLE_ABR = 1;
    public static final int PLAYER_ENABLE_ACCURATE_START = 0;
    public static final int PLAYER_ENABLE_BASH = 1;
    public static final int PLAYER_ENABLE_DASH = 1;
    public static final int PLAYER_ENABLE_DASH_ABR = 1;
    public static final int PLAYER_ENABLE_REUSE_SOCKET = 1;
    public static final int PLAYER_INTERVAL_TEST_SPEED = 1;
    public static final int PLAYER_MAX_BUFFERING_DATA_OF_MILLISECONDS = 202;
    public static final int PLAYER_NETWORK_TIMEOUT = 12;
    public static final int PLAYER_ONCE_TEST_SPEED = 0;
    @Deprecated
    public static final int PLAYER_OPTION_ABR_4GMAX_RESOULUTION_MODE = 507;
    public static final int PLAYER_OPTION_ABR_4G_MAX_RESOLUTION_INDEX = 502;
    public static final int PLAYER_OPTION_ABR_4G_MAX_RESOLUTION_MODE = 507;
    public static final int PLAYER_OPTION_ABR_4G_MAX_RESOLUTION_QUALITY = 538;
    public static final int PLAYER_OPTION_ABR_BANDWIDTH_PARAMETER = 529;
    public static final int PLAYER_OPTION_ABR_DOWNGRADE_RESOLUTION_INDEX = 544;
    public static final int PLAYER_OPTION_ABR_DOWNGRADE_RESOLUTION_QUALITY = 545;
    public static final int PLAYER_OPTION_ABR_FIXED_LEVEL = 506;
    public static final int PLAYER_OPTION_ABR_PROBE_MODE = 717;
    public static final int PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER = 527;
    public static final int PLAYER_OPTION_ABR_STARTUP_BANDWIDTH_PARAMETER = 526;
    public static final int PLAYER_OPTION_ABR_STARTUP_MODEL = 505;
    public static final int PLAYER_OPTION_ABR_SWITCH_CS_MODEL = 504;
    public static final int PLAYER_OPTION_ABR_SWITCH_MODE = 503;
    public static final int PLAYER_OPTION_ABR_SWITCH_PENALTY_PARAMETER = 528;
    public static final int PLAYER_OPTION_ABR_SWITCH_SENSITIVITY = 501;
    public static final int PLAYER_OPTION_ABR_TIMER_INTERVAL_MILLISECONDS = 500;
    public static final int PLAYER_OPTION_ABR_WITH_SR = 571;
    public static final int PLAYER_OPTION_ACCURATE_LAYOUT = 431;
    public static final int PLAYER_OPTION_AE_CONFIG_JSON = 355;
    public static final int PLAYER_OPTION_AE_DEVICE_PLAY_ABILITY = 357;
    public static final int PLAYER_OPTION_AE_FORBID_COMPRESSOR = 347;
    public static final int PLAYER_OPTION_AE_GRAPH_CONFIG = 361;
    public static final int PLAYER_OPTION_AE_LOOKAHEAD_TIME = 349;
    public static final int PLAYER_OPTION_AE_LU_END = 352;
    public static final int PLAYER_OPTION_AE_LU_RANG = 350;
    public static final int PLAYER_OPTION_AE_LU_START = 351;
    public static final int PLAYER_OPTION_AE_MAX_MOM_LU = 353;
    public static final int PLAYER_OPTION_AE_MAX_SHORTERM_LU = 354;
    public static final int PLAYER_OPTION_AE_PREDELAY = 328;
    public static final int PLAYER_OPTION_AE_PREGAIN = 325;
    public static final int PLAYER_OPTION_AE_RATIO = 327;
    public static final int PLAYER_OPTION_AE_RELEASE_TIME = 348;
    public static final int PLAYER_OPTION_AE_SRC_LOUDNESS = 345;
    public static final int PLAYER_OPTION_AE_SRC_PEAK = 346;
    public static final int PLAYER_OPTION_AE_TARGET_LOUDNESS = 344;
    public static final int PLAYER_OPTION_AE_THRESHOLD = 326;
    public static final int PLAYER_OPTION_AE_VOLUMINFO_INFO_JSON = 360;
    public static final int PLAYER_OPTION_AE_VOLUMINFO_VER = 356;
    public static final int PLAYER_OPTION_ALLOWED_EXPIRED_MODEL = 450;
    public static final int PLAYER_OPTION_ALLOW_ALL_PROTO_NAME = 46500;
    public static final int PLAYER_OPTION_ALOG_WRITE_ADDR = 217;
    public static final int PLAYER_OPTION_ALWAYS_DO_AV_SYNC = 666;
    public static final int PLAYER_OPTION_ANRENDER_REFRESH_SURFACE = 1224;
    public static final int PLAYER_OPTION_ASYNC_MANAGE_RESOURCE = 981;
    public static final int PLAYER_OPTION_ASYNC_SET_WINDOW = 1100;
    public static final int PLAYER_OPTION_AUDIOPTS_CALIBRATION_TYPE = 994;
    public static final int PLAYER_OPTION_AUDIOPTS_MS_CORRECTION_EXTENSION = 598;
    public static final int PLAYER_OPTION_AUDIOTRACK_SESSIONID = 700;
    public static final int PLAYER_OPTION_AUDIO_CHANNEL_TYPE = 256;
    public static final int PLAYER_OPTION_AUDIO_DECODER_GRAPH_MERGED = 1124;
    public static final int PLAYER_OPTION_AUDIO_EFFECT_TYPE = 343;
    public static final int PLAYER_OPTION_AUDIO_GRAPH_REFACTOR = 1123;
    public static final int PLAYER_OPTION_AUDIO_PROCESSOR_ADDR = 440;
    public static final int PLAYER_OPTION_AUDIO_PROCESSOR_ASYNC = 442;
    public static final int PLAYER_OPTION_AUDIO_PROCESSOR_OBJECT = 441;
    public static final int PLAYER_OPTION_AUDIO_RANGE_SIZE = 423;
    public static final int PLAYER_OPTION_AUDIO_RANGE_TIME = 475;
    public static final int PLAYER_OPTION_AUDIO_USE_DIRECTBUFFER = 983;
    public static final int PLAYER_OPTION_AUTO_ADD_MEDIA = 721;
    public static final int PLAYER_OPTION_AUTO_DISCONNECTED_CPU = 991;
    public static final int PLAYER_OPTION_AVSYNC_INTERRUPT_ENABLE = 679;
    public static final int PLAYER_OPTION_AV_SYNC_REFINED = 958;
    public static final int PLAYER_OPTION_BASH_RETRY_RESTART_PLAYER = 1225;
    public static final int PLAYER_OPTION_BEST_RESOLUTION_TYPE = 419;
    public static final int PLAYER_OPTION_BT601_CLOSE_CODECASYNC = 595;
    public static final int PLAYER_OPTION_BUFFER_PROCESS_COVERT_ORDER = 1422;
    public static final int PLAYER_OPTION_BUFFER_PROCESS_PROTO_NAME = 1421;
    public static final int PLAYER_OPTION_CACHE = 0;
    public static final int PLAYER_OPTION_CACHE_JFRAME_FIELD = 548;
    public static final int PLAYER_OPTION_CALIBRATION_AUDIO_PTS = 987;
    public static final int PLAYER_OPTION_CHANGE_REC_BUFFER_SPEED = 990;
    public static final int PLAYER_OPTION_CHECK_HIJACK = 313;
    public static final int PLAYER_OPTION_CHECK_INFO_STRING = 662;
    public static final int PLAYER_OPTION_CLASSLOADER_STATE = 659;
    public static final int PLAYER_OPTION_CLEAN_SURFACE_WHEN_RESET = 542;
    public static final int PLAYER_OPTION_CLEAR_WHILE_SHUTDOWN = 520;
    public static final int PLAYER_OPTION_CLIP_HEAACV2_FIRSTPTS_PACKET = 557;
    public static final int PLAYER_OPTION_CLOCK_RESUME_RESET_EOF = 680;
    public static final int PLAYER_OPTION_CLOSE_CODEC_POOL = 985;
    public static final int PLAYER_OPTION_CLOSE_RENDERSTART_MSG_ON_SWITCH_RESOLUTION_DONE = 372;
    @Deprecated
    public static final int PLAYER_OPTION_CODECPOOL_RESPONSE = 1116;
    public static final int PLAYER_OPTION_CODECPOOL_SUPPORT_DYNAMIC_EXTEND = 1114;
    public static final int PLAYER_OPTION_CODEC_AND_SURFACE_REUSE = 977;
    public static final int PLAYER_OPTION_CODEC_HISTORY_LENGTH = 1128;
    public static final int PLAYER_OPTION_CODEC_MAX_USED_COUNT = 1129;
    public static final int PLAYER_OPTION_CODEC_POOL_VERSION = 1125;
    public static final int PLAYER_OPTION_CONFIG_CENTER_CHECK_DIFF = 749;
    public static final int PLAYER_OPTION_CREATE_AUDIOTRACK_EARLY = 1110;
    public static final int PLAYER_OPTION_CURRENT_VIDEO_QUALITY_TYPE = 667;
    public static final int PLAYER_OPTION_CUR_RENDER_DEVICE = 1071;
    public static final int PLAYER_OPTION_DECODERRENDER_CLEAR_SURFACE = 4003;
    public static final int PLAYER_OPTION_DECODERRENDER_CLEAR_TEXTURERENDERREF = 4004;
    public static final int PLAYER_OPTION_DECODERRENDER_CONTINUE_RETRY = 4002;
    public static final int PLAYER_OPTION_DECODERRENDER_VC2PRE_CREATE_RENDER = 4011;
    public static final int PLAYER_OPTION_DECODERRENDER_VC2RENDER_LATENCY_GENERAL = 4007;
    public static final int PLAYER_OPTION_DECODERRENDER_VC2RENDER_LATENCY_MODE = 4006;
    public static final int PLAYER_OPTION_DECODERRENDER_VC2RENDER_LATENCY_SR = 4008;
    public static final int PLAYER_OPTION_DECODER_TYPE = 9;
    public static final int PLAYER_OPTION_DECODE_AAC_THROUGH_FDKAAC = 1401;
    public static final int PLAYER_OPTION_DECODE_EXTERN_INFO = 730;
    @Deprecated
    public static final int PLAYER_OPTION_DEFAULT_RENDER_TYPE = 414;
    public static final int PLAYER_OPTION_DEGRADE_MODE = 13;
    public static final int PLAYER_OPTION_DELAY_BUFFERING_UPDATE = 481;
    public static final int PLAYER_OPTION_DEVICE_HDR_INFO = 338;
    public static final int PLAYER_OPTION_DEVICE_HW_DECODER_MAX_LENGTH = 337;
    public static final int PLAYER_OPTION_DEVICE_SCORE = 738;
    public static final int PLAYER_OPTION_DEVICE_SCREEN_FPS = 336;
    public static final int PLAYER_OPTION_DEVICE_SCREEN_HEIGHT = 335;
    public static final int PLAYER_OPTION_DEVICE_SCREEN_WIDTH = 334;
    public static final int PLAYER_OPTION_DISABLE_ACCURATE_START = 20;
    @Deprecated
    public static final int PLAYER_OPTION_DISABLE_EVENTV3_ASYNC = 479;
    public static final int PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS = 485;
    public static final int PLAYER_OPTION_DISABLE_MC_REUSE = 488;
    public static final int PLAYER_OPTION_DISABLE_PLAYER_STAY_AWAKE = 611;
    public static final int PLAYER_OPTION_DISABLE_PLAYER_TIMEOUT = 330;
    public static final int PLAYER_OPTION_DISABLE_SHORT_SEEK = 198;
    public static final int PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE = 565;
    public static final int PLAYER_OPTION_DISABLE_THREAD_POOL_USING = 4200;
    public static final int PLAYER_OPTION_DISCARD_CODEC_STRATEGY1 = 1126;
    public static final int PLAYER_OPTION_DISCARD_CODEC_STRATEGY2 = 1127;
    public static final int PLAYER_OPTION_DNS_CACHE_SECOND = 19;
    public static final int PLAYER_OPTION_DRM_DOWNGRADE = 36;
    public static final int PLAYER_OPTION_DRM_RETRY = 37;
    public static final int PLAYER_OPTION_DRM_ROOT_CHECK = 38;
    public static final int PLAYER_OPTION_DRM_TYPE = 34;
    public static final int PLAYER_OPTION_DUMMYSURFACE_FORBID = 976;
    public static final int PLAYER_OPTION_DUMMY_AUDIO_SLEEP = 610;
    public static final int PLAYER_OPTION_DYNAMIC_EXTEND_CODEC_NUMS = 1115;
    public static final int PLAYER_OPTION_DYNAMIC_FRAME_DROPPING_CHECK_COUNT = 853;
    public static final int PLAYER_OPTION_DYNAMIC_FRAME_DROPPING_CHECK_PERIOD = 852;
    public static final int PLAYER_OPTION_DYNAMIC_FRAME_DROPPING_MULTIPLE = 851;
    public static final int PLAYER_OPTION_DYNAMIC_THREAD_PRIORITY_VALUE = 570;
    public static final int PLAYER_OPTION_EFFECT_NOT_USE_REASON = 660;
    public static final int PLAYER_OPTION_EGL_NEED_WORKAROUND = 183;
    public static final int PLAYER_OPTION_EGL_VERSION = 476;
    @Deprecated
    public static final int PLAYER_OPTION_ENABEL_HARDWARE_DECODE_AUDIO = 413;
    public static final int PLAYER_OPTION_ENABLE_ABR = 494;
    public static final int PLAYER_OPTION_ENABLE_ABR_AGGRESSIVE_PORTRIT_LOW_BIT = 1413;
    public static final int PLAYER_OPTION_ENABLE_ADAPTIVE_WORKAROUND = 333;
    public static final int PLAYER_OPTION_ENABLE_ASYNC = 478;
    public static final int PLAYER_OPTION_ENABLE_ASYNC_DOWNLOAD = 1214;
    public static final int PLAYER_OPTION_ENABLE_ASYNC_PROBE = 1216;
    public static final int PLAYER_OPTION_ENABLE_AUDIOMEM_INTERGRATION = 683;
    public static final int PLAYER_OPTION_ENABLE_AUDIOTRACK_POOL = 42079;
    public static final int PLAYER_OPTION_ENABLE_AUDIOTRACK_SMOOTH_CLOCK = 564;
    public static final int PLAYER_OPTION_ENABLE_AUDIO_SEEKING_NO_ACCURATE = 1404;
    public static final int PLAYER_OPTION_ENABLE_BASH = 33;
    public static final int PLAYER_OPTION_ENABLE_BATTERY_STATUS_COLLECT = 618;
    public static final int PLAYER_OPTION_ENABLE_BMF = 719;
    public static final int PLAYER_OPTION_ENABLE_BOE = 400;
    public static final int PLAYER_OPTION_ENABLE_BOX_DEMUXER = 1280;
    public static final int PLAYER_OPTION_ENABLE_BUFFERING_LOWERCAPACITY = 685;
    public static final int PLAYER_OPTION_ENABLE_CACHE_INFO = 1220;
    public static final int PLAYER_OPTION_ENABLE_CACHE_TIMESTAMP = 508;
    public static final int PLAYER_OPTION_ENABLE_CLEARMDLCACHE = 603;
    public static final int PLAYER_OPTION_ENABLE_CLEAR_TEXTUREREF_ASYNC = 1414;
    public static final int PLAYER_OPTION_ENABLE_CODEC_POOL = 332;
    public static final int PLAYER_OPTION_ENABLE_CODEC_RECYCLE = 1202;
    public static final int PLAYER_OPTION_ENABLE_CORRECT_REAL_CLOCK = 42004;
    public static final int PLAYER_OPTION_ENABLE_CPPh265CODEC_OPT = 581;
    public static final int PLAYER_OPTION_ENABLE_CPPh266CODEC_OPT = 591;
    public static final int PLAYER_OPTION_ENABLE_DASH = 17;
    public static final int PLAYER_OPTION_ENABLE_DASH_ABR = 29;
    public static final int PLAYER_OPTION_ENABLE_DATALOADER = 160;
    public static final int PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY = 664;
    public static final int PLAYER_OPTION_ENABLE_DECODERRENDER_VC2RENDER_LATENCY = 4005;
    public static final int PLAYER_OPTION_ENABLE_DECODE_MULTI_SEI = 734;
    public static final int PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE = 735;
    public static final int PLAYER_OPTION_ENABLE_DEINTERLACE = 706;
    public static final int PLAYER_OPTION_ENABLE_DEMUXER_RECYCLE = 1201;
    public static final int PLAYER_OPTION_ENABLE_DEMUXER_RW_LOCK = 690;
    public static final int PLAYER_OPTION_ENABLE_DEMUX_NONBLOCK_READ = 561;
    public static final int PLAYER_OPTION_ENABLE_DIRECT_URL_BASH = 493;
    public static final int PLAYER_OPTION_ENABLE_DIRECT_URL_CHECK = 606;
    public static final int PLAYER_OPTION_ENABLE_DOWNGRADE_ASYNCCODEC = 686;
    public static final int PLAYER_OPTION_ENABLE_DYNAMIC_FRAME_DROPPING = 850;
    public static final int PLAYER_OPTION_ENABLE_ENCRYPT = 601;
    public static final int PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC = 670;
    public static final int PLAYER_OPTION_ENABLE_FAST_SEEK = 42088;
    public static final int PLAYER_OPTION_ENABLE_FAST_STOP = 1200;
    public static final int PLAYER_OPTION_ENABLE_FILTER_RECYCLE = 1204;
    public static final int PLAYER_OPTION_ENABLE_FLUSH_SEEK = 658;
    public static final int PLAYER_OPTION_ENABLE_FORCE_DISABLE_OES_RENDER = 587;
    public static final int PLAYER_OPTION_ENABLE_FRAG_RANGE = 421;
    public static final int PLAYER_OPTION_ENABLE_GEAR_STRATEGY = 583;
    public static final int PLAYER_OPTION_ENABLE_GET_PLAYER_REQ_OFFSET = 742;
    public static final int PLAYER_OPTION_ENABLE_GET_POSITION_LOG = 42061;
    public static final int PLAYER_OPTION_ENABLE_HCHIP_ADAPTIVE_WORKAROUND = 579;
    public static final int PLAYER_OPTION_ENABLE_HEAAVV2_PTS_MS_CORRECTION = 577;
    public static final int PLAYER_OPTION_ENABLE_HEARTBEAT = 656;
    public static final int PLAYER_OPTION_ENABLE_HLS = 600;
    public static final int PLAYER_OPTION_ENABLE_HLS_ABR = 1001;
    public static final int PLAYER_OPTION_ENABLE_HLS_SEAMLESS_SWITCH = 671;
    public static final int PLAYER_OPTION_ENABLE_HTTPS = 312;
    public static final int PLAYER_OPTION_ENABLE_HTTPS_FOR_FETCH = 674;
    public static final int PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENAVOUTSYNCING = 855;
    public static final int PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENVOISINDROPSTATE = 854;
    public static final int PLAYER_OPTION_ENABLE_INDEX_CACHE = 420;
    public static final int PLAYER_OPTION_ENABLE_LOADCONTROL_BUFFERINGTIMEOUT = 370;
    public static final int PLAYER_OPTION_ENABLE_MASTER_M3U8_OPTIMIZE = 258;
    public static final int PLAYER_OPTION_ENABLE_MCHIP_SKIP_ADAPTIVE_WORKAROUND = 580;
    public static final int PLAYER_OPTION_ENABLE_MEDIACODEC_DEATH_CHECK = 1111;
    public static final int PLAYER_OPTION_ENABLE_MEDIACODEC_PIPELINE = 1118;
    public static final int PLAYER_OPTION_ENABLE_MEDIACODEC_REALTIME = 572;
    public static final int PLAYER_OPTION_ENABLE_MEDIACODEC_SYNC_CLOSE = 687;
    public static final int PLAYER_OPTION_ENABLE_MEDIA_CODEC_FAIR_MUTEX = 1210;
    public static final int PLAYER_OPTION_ENABLE_MP4_CHECK = 705;
    public static final int PLAYER_OPTION_ENABLE_NATIVE_RENDER_ROTATIONADAPT = 566;
    public static final int PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER = 543;
    public static final int PLAYER_OPTION_ENABLE_NOTIFY_RENDER_EXCEPTION = 1504;
    public static final int PLAYER_OPTION_ENABLE_NOTIFY_SEI_IMMEDIATELY_BEFORE_FIRSTFRAME = 733;
    public static final int PLAYER_OPTION_ENABLE_OPEN_AI_BARRAGE = 512;
    public static final int PLAYER_OPTION_ENABLE_OPEN_AI_BARRAGE_THREAD = 511;
    public static final int PLAYER_OPTION_ENABLE_OPEN_BARRAGE_MASK = 499;
    public static final int PLAYER_OPTION_ENABLE_OPEN_MASK_THREAD = 510;
    public static final int PLAYER_OPTION_ENABLE_OPEN_SUB = 533;
    public static final int PLAYER_OPTION_ENABLE_OPEN_SUB_THREAD = 534;
    public static final int PLAYER_OPTION_ENABLE_OPEN_TIMEOUT = 496;
    public static final int PLAYER_OPTION_ENABLE_OPPO_CONTROL = 401;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_ASYNC_DOWNLOAD = 1217;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_DASH_SEEK = 1223;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_HWDEC2SWDEC = 1117;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_INACCURATE_START = 746;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_IO = 1222;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_MP4_ABR = 1209;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_PRERENDER = 1213;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_RADIO_MODE = 1221;
    public static final int PLAYER_OPTION_ENABLE_OPTIMIZE_SEEK_CLK = 747;
    public static final int PLAYER_OPTION_ENABLE_OPT_SUB_LOAD_TIME = 669;
    public static final int PLAYER_OPTION_ENABLE_OPT_SUB_SEARCH = 678;
    public static final int PLAYER_OPTION_ENABLE_OUTLET_DROP_LIMIT = 673;
    public static final int PLAYER_OPTION_ENABLE_OUTPUT_LOG = 320;
    @Deprecated
    public static final int PLAYER_OPTION_ENABLE_PLAYER3_HARDWARE_DECODE = 31;
    @Deprecated
    public static final int PLAYER_OPTION_ENABLE_PLAYER_DEGRADE = 616;
    public static final int PLAYER_OPTION_ENABLE_PLAYER_RECYCLE = 1203;
    public static final int PLAYER_OPTION_ENABLE_PLAY_SPEED_EXTEND = 257;
    public static final int PLAYER_OPTION_ENABLE_PRECISE_CACHE = 703;
    public static final int PLAYER_OPTION_ENABLE_PRELOAD_GEAR = 1215;
    public static final int PLAYER_OPTION_ENABLE_PRE_DECODE_AUTO_PAUSE = 612;
    public static final int PLAYER_OPTION_ENABLE_PRE_DEMUX = 586;
    public static final int PLAYER_OPTION_ENABLE_PRE_RENDER_BUFFERING_UPDATE = 575;
    public static final int PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION = 736;
    public static final int PLAYER_OPTION_ENABLE_QUICK_FILE_CACHE = 584;
    public static final int PLAYER_OPTION_ENABLE_RANGE_OPTIMIZE = 1211;
    public static final int PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI = 731;
    public static final int PLAYER_OPTION_ENABLE_RECREATE_SUB_IF_DETACHED = 569;
    public static final int PLAYER_OPTION_ENABLE_REFRESH_BY_TIME = 518;
    public static final int PLAYER_OPTION_ENABLE_REPORT_FIRST_AVSYNC_FRAME = 963;
    public static final int PLAYER_OPTION_ENABLE_REPORT_PRELOAD_TRACEID = 1402;
    public static final int PLAYER_OPTION_ENABLE_SC_ABR_STRATEGY = 4201;
    public static final int PLAYER_OPTION_ENABLE_SEEK_BUFFERING = 688;
    public static final int PLAYER_OPTION_ENABLE_SEEK_END = 402;
    public static final int PLAYER_OPTION_ENABLE_SEEK_EXACT = 515;
    public static final int PLAYER_OPTION_ENABLE_SEEK_INTERRUPT = 331;
    public static final int PLAYER_OPTION_ENABLE_SEEK_LASTFRAME = 42089;
    public static final int PLAYER_OPTION_ENABLE_SEG_ERROR = 42078;
    public static final int PLAYER_OPTION_ENABLE_SELECT_BITRATE_STRING_MAP = 4027;
    public static final int PLAYER_OPTION_ENABLE_SELECT_USE_OBJECT = 4026;
    public static final int PLAYER_OPTION_ENABLE_SERVER_DNS = 403;
    public static final int PLAYER_OPTION_ENABLE_SET_PLAYINFO_TO_P2P = 416;
    public static final int PLAYER_OPTION_ENABLE_SHARP = 101;
    public static final int PLAYER_OPTION_ENABLE_SOLOPLAY = 417;
    public static final int PLAYER_OPTION_ENABLE_SPEED_REPORT = 522;
    public static final int PLAYER_OPTION_ENABLE_START_PLAY_SYNC = 1101;
    public static final int PLAYER_OPTION_ENABLE_START_TIME_SKIP_AVSKIPSERIAL = 622;
    public static final int PLAYER_OPTION_ENABLE_SUBTITLE_LAZY_LOADING = 859;
    public static final int PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING = 858;
    public static final int PLAYER_OPTION_ENABLE_SURFACE_HASHMAP_JUDGEMENT = 4025;
    public static final int PLAYER_OPTION_ENABLE_TEXTURERENDER_NATIVEWINDOW = 1503;
    public static final int PLAYER_OPTION_ENABLE_TEXTURE_RENDER_NO_RENDER_CHECK = 708;
    public static final int PLAYER_OPTION_ENABLE_THREAD_PRIORIT = 562;
    public static final int PLAYER_OPTION_ENABLE_TIME_BAR_PERCENTAGE = 314;
    public static final int PLAYER_OPTION_ENABLE_TLS_LOG = 1281;
    public static final int PLAYER_OPTION_ENABLE_TMP_LOG = 710;
    public static final int PLAYER_OPTION_ENABLE_USE_REALBITRATE = 720;
    public static final int PLAYER_OPTION_ENABLE_VC1_BLOCKLIST = 578;
    public static final int PLAYER_OPTION_ENABLE_VC2_DEC_POOL = 4100;
    public static final int PLAYER_OPTION_ENABLE_VC2_HEAACV2_SAMPLENUMBER_ADAPTER = 42400;
    public static final int PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY = 4012;
    public static final int PLAYER_OPTION_ENABLE_VC2_THREAD_PRIORITY_LITE = 4015;
    public static final int PLAYER_OPTION_ENABLE_VIDEOCODEC_PIXEL_ALIGN = 339;
    public static final int PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK = 613;
    public static final int PLAYER_OPTION_ENABLE_VIDEO_SECOND_FRAME = 992;
    public static final int PLAYER_OPTION_ENABLE_VIDEO_TIMESTAMP_MONOTONIC = 559;
    public static final int PLAYER_OPTION_ENABLE_VOD_VIDEO_RENDER_STALL = 42064;
    public static final int PLAYER_OPTION_ENABLE_VOLUME_BALANCE = 329;
    public static final int PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT = 1400;
    public static final int PLAYER_OPTION_ENABLE_h265 = 6;
    public static final int PLAYER_OPTION_ENABLE_h266 = 432;
    public static final int PLAYER_OPTION_ENGINE_CODE_OPTIMIZATION = 745;
    public static final int PLAYER_OPTION_ENGINE_RETRY = 1130;
    public static final int PLAYER_OPTION_EVENT_REPORT_LEVEL = 704;
    public static final int PLAYER_OPTION_EXPOSE_SIGNAL = 321;
    public static final int PLAYER_OPTION_EXTERN_VOICE_OUTPUT_FORMAT = 1406;
    public static final int PLAYER_OPTION_FALLBACK_API_RETRY = 471;
    public static final int PLAYER_OPTION_FALLBACK_IN_MAX_INSTANCE_ERR = 1134;
    public static final int PLAYER_OPTION_FEED_PACKET_UNTIL_EMPTY = 560;
    public static final int PLAYER_OPTION_FETCH_WITH_ABILITY_OPTION = 743;
    public static final int PLAYER_OPTION_FFCODECER_HEAACV2_COMPAT = 541;
    public static final int PLAYER_OPTION_FFMPEG_DECODER = 0;
    public static final int PLAYER_OPTION_FILEPLAY_NOBUFFERING = 551;
    public static final int PLAYER_OPTION_FIND_STREAM_INFO_PROBE_DURATION = 608;
    public static final int PLAYER_OPTION_FIND_STREAM_INFO_PROBE_SIZE = 607;
    public static final int PLAYER_OPTION_FIX_CODEC_MEMCPY_CRASHV2 = 42087;
    public static final int PLAYER_OPTION_FLUSH_WHEN_SETSURFACE = 1105;
    public static final int PLAYER_OPTION_FORBID_BUFFERING_NOT_FINISHED = 980;
    public static final int PLAYER_OPTION_FORBID_FALLBACK_NATIVERENDER = 4001;
    public static final int PLAYER_OPTION_FORBID_P2P = 302;
    @Deprecated
    public static final int PLAYER_OPTION_FORBID_P2P_WHEN_SEEK = 418;
    public static final int PLAYER_OPTION_FORCE_CLOSE_CODEC = 550;
    public static final int PLAYER_OPTION_FORCE_DISABLE_OES_RENDER = 588;
    public static final int PLAYER_OPTION_FRAME_NUMS_IN_MEDIACODEC = 1119;
    public static final int PLAYER_OPTION_FRC_LEVEL = 490;
    public static final int PLAYER_OPTION_GET_AUDIO_BITRATE = 64;
    public static final int PLAYER_OPTION_GET_AUDIO_CACHE_DURATION = 61;
    public static final int PLAYER_OPTION_GET_AUDIO_CODEC_PROFILE = 59;
    public static final int PLAYER_OPTION_GET_AUDIO_EFFECT_OPENED = 655;
    public static final int PLAYER_OPTION_GET_AVERAGE_DOWNLOAD_SPEED = 474;
    public static final int PLAYER_OPTION_GET_BITRATE = 60;
    public static final int PLAYER_OPTION_GET_BUFFER_SIZE = 81;
    public static final int PLAYER_OPTION_GET_CURRENT_DNS_INFO = 462;
    public static final int PLAYER_OPTION_GET_DECODE_BUFFER_ACCU_T = 41;
    public static final int PLAYER_OPTION_GET_DECODE_BUFFER_COUNT = 40;
    public static final int PLAYER_OPTION_GET_DROP_COUNT = 42;
    public static final int PLAYER_OPTION_GET_FORMAT_TYPE = 1403;
    public static final int PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS = 665;
    public static final int PLAYER_OPTION_GET_METADATA = 80;
    public static final int PLAYER_OPTION_GET_PLAYED_BYTES = 315;
    public static final int PLAYER_OPTION_GET_PLAY_START_TIME = 614;
    public static final int PLAYER_OPTION_GET_POSITION_SKIP_LOOPER = 663;
    public static final int PLAYER_OPTION_GET_PRELOAD_SIZE = 461;
    public static final int PLAYER_OPTION_GET_RENDER_START_TIME = 615;
    public static final int PLAYER_OPTION_GET_SOURCE_TYPE = 477;
    public static final int PLAYER_OPTION_GET_VC2_DEC_POOL_SIZE = 4101;
    public static final int PLAYER_OPTION_GET_VERSION = 82;
    public static final int PLAYER_OPTION_GET_VIDEO_CACHE_DURATION = 62;
    public static final int PLAYER_OPTION_GET_VIDEO_CODEC_PROFILE = 58;
    public static final int PLAYER_OPTION_GET_VIDEO_CONTAINER_FPS = 70;
    public static final int PLAYER_OPTION_GET_VIDEO_HW_ERR_REASON = 371;
    public static final int PLAYER_OPTION_GET_VIDEO_LINE_STRIDE = 701;
    public static final int PLAYER_OPTION_GET_VIDEO_OUTPUT_FPS = 71;
    public static final int PLAYER_OPTION_GET_WIRED_HEADSET_PLAY_DURATION = 83;
    public static final int PLAYER_OPTION_GET_WIRELESS_HEADSET_PLAY_DURATION = 84;
    public static final int PLAYER_OPTION_GIVEBACK_CODEC_EARLY = 993;
    public static final int PLAYER_OPTION_GSKEY_AUDIOTRACK_POOL_SIZE = 973;
    public static final int PLAYER_OPTION_GSKEY_BURY_DATA_OPTIMIZE = 968;
    public static final int PLAYER_OPTION_GSKEY_COLD_START_OPTIMIZE = 970;
    public static final int PLAYER_OPTION_GSKEY_CPU_NATIVE_REFRESH = 972;
    public static final int PLAYER_OPTION_GSKEY_CPU_REFRESH_FIX = 971;
    public static final int PLAYER_OPTION_GSKEY_ENABLE_ENCRYPT_BURY_DATA = 964;
    public static final int PLAYER_OPTION_GSKEY_ENABLE_GLOBAL_MUTEFEATURE = 960;
    public static final int PLAYER_OPTION_GSKEY_ENABLE_REPORT_CONTENT_DATA = 965;
    public static final int PLAYER_OPTION_GSKEY_ENGINE_CROSSTALK_CHECK = 969;
    public static final int PLAYER_OPTION_GSKEY_GLOBAL_MUTE = 961;
    public static final int PLAYER_OPTION_HARDWARECODEC_FLUSH_CLOSE = 593;
    public static final int PLAYER_OPTION_HEARTBEAT_INTERVAL = 657;
    public static final int PLAYER_OPTION_HIJACK_RETRY = 427;
    public static final int PLAYER_OPTION_HIJACK_RETRY_BACKUP_DNS_TYPE = 425;
    public static final int PLAYER_OPTION_HIJACK_RETRY_MAIN_DNS_TYPE = 424;
    public static final int PLAYER_OPTION_HIT_VIDEOMODEL_CACHE_ASYNC_PLAY = 410;
    public static final int PLAYER_OPTION_HLS_CHOOSE_STREAM_ASYNC = 444;
    public static final int PLAYER_OPTION_HLS_CHOOSE_STREAM_OBJECT = 443;
    public static final int PLAYER_OPTION_HLS_SUB_DEMUXER_PROBE_TYPE = 1070;
    public static final int PLAYER_OPTION_HW_DECODER_SKIP_NONREF = 323;
    public static final int PLAYER_OPTION_HW_DEC_DROP_NON_REF = 460;
    public static final int PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_COUNT = 864;
    public static final int PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_CHECK_PERIOD = 863;
    public static final int PLAYER_OPTION_HW_DYNAMIC_FRAME_DROPPING_MULTIPLE = 862;
    public static final int PLAYER_OPTION_HW_ENABLE_DYNAMIC_FRAME_DROPPING = 861;
    public static final int PLAYER_OPTION_HW_SET_MAX_FPS = 860;
    public static final int PLAYER_OPTION_IGNORE_AUDIO_RENDER_EOS_DELAYMS = 582;
    public static final int PLAYER_OPTION_IGNORE_DIRECTLY_BUFFERING = 567;
    public static final int PLAYER_OPTION_IGNORE_SURFACE_CREATED = 962;
    public static final int PLAYER_OPTION_IGNORE_WAVE_LENGTH = 42084;
    public static final int PLAYER_OPTION_IMAGE_ENHANCEMENT = 1;
    public static final int PLAYER_OPTION_IMAGE_LAYOUT = 4;
    public static final int PLAYER_OPTION_IMAGE_SCALE = 2;
    public static final int PLAYER_OPTION_INT_ABNORMAL_CHECK_INTERVAL = 42302;
    public static final int PLAYER_OPTION_INT_ABNORMAL_CHECK_STRATEGY = 42303;
    public static final int PLAYER_OPTION_INT_ALLOW_ALL_EXTENSIONS = 1405;
    public static final int PLAYER_OPTION_INT_ENABLE_ERROR_RETRY_OPTIMIZE = 373;
    public static final int PLAYER_OPTION_INT_ENABLE_ERROR_THROW_OPTIMIZE = 5000;
    public static final int PLAYER_OPTION_INT_ENABLE_MC_MONITOR = 42039;
    public static final int PLAYER_OPTION_INT_ENABLE_MULTI_AUDIO_SUPPORT = 42017;
    public static final int PLAYER_OPTION_INT_ENABLE_OPTIMIZE_OUT_THREAD = 42027;
    public static final int PLAYER_OPTION_INT_ENABLE_SLEEP_IN_ASYNC_FLUSH = 42048;
    public static final int PLAYER_OPTION_INT_ENABLE_SOURCE_REFRESH_STRATEGY = 1420;
    public static final int PLAYER_OPTION_INT_FIRST_DESTROY_LAST_CREATE = 42055;
    public static final int PLAYER_OPTION_INT_FIX_DASH_SEEK_STUCK = 42054;
    public static final int PLAYER_OPTION_INT_FIX_MEDIACODEC_MEMCPY_CRASH = 42060;
    public static final int PLAYER_OPTION_INT_LATENCY_FREQ = 42043;
    public static final int PLAYER_OPTION_INT_NOT_REOPEN_AUDIOTRACK_IN_LOOPPLAY = 42044;
    public static final int PLAYER_OPTION_INT_VIDEO_DECODER_FPS_LOWER_LIMIT = 42038;
    @Deprecated
    public static final int PLAYER_OPTION_IS_DEGRADE_RELEASE = 617;
    public static final int PLAYER_OPTION_JX_DECODER = 2;
    public static final int PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE = 509;
    @Deprecated
    public static final int PLAYER_OPTION_KERNAL_LOG_LEVER = 702;
    public static final int PLAYER_OPTION_KERNEL_ENABLE_SC_ABR_STRATEGY = 42093;
    public static final int PLAYER_OPTION_KERNEL_LOG_LEVER = 702;
    public static final int PLAYER_OPTION_KERNEL_LOG_LEVER_PRECISE = 1303;
    public static final int PLAYER_OPTION_KSY_DECODER = 1;
    public static final int PLAYER_OPTION_LAZY_LOAD_VIDEO_DEC = 737;
    public static final int PLAYER_OPTION_LAZY_SEEK = 498;
    public static final int PLAYER_OPTION_LIVE_START_INDEX = 517;
    public static final int PLAYER_OPTION_LOOP_COUNT = 32;
    public static final int PLAYER_OPTION_LOOP_END_TIME = 25;
    public static final int PLAYER_OPTION_LOOP_START_TIME = 24;
    public static final int PLAYER_OPTION_LOWER_AUDIOMEM_CAPACITY = 4023;
    public static final int PLAYER_OPTION_MASK_DELAY_LOADING = 1300;
    public static final int PLAYER_OPTION_MASK_ENABLE_DATALOADER = 1301;
    public static final int PLAYER_OPTION_MASK_ENABLE_RANGE_REQUEST = 1302;
    public static final int PLAYER_OPTION_MAX_CODEC_NUMS_IN_POOL = 986;
    @Deprecated
    public static final int PLAYER_OPTION_MAX_FILE_CACHE_SIZE = 14;
    public static final int PLAYER_OPTION_MCRENDER_HANDLE_SAR = 1120;
    public static final int PLAYER_OPTION_MC_MAX_HEIGHT = 979;
    public static final int PLAYER_OPTION_MC_MAX_WIDTH = 978;
    public static final int PLAYER_OPTION_MDL_DISABLE_VDP_DISK = 801;
    public static final int PLAYER_OPTION_MDL_LOCK_OPTIMIZE = 751;
    public static final int PLAYER_OPTION_MDL_LOCK_OPTIMIZE_V2 = 752;
    public static final int PLAYER_OPTION_MDL_RETRY_ERR_CNT = 802;
    public static final int PLAYER_OPTION_MDL_SEEK_REOPEN = 800;
    public static final int PLAYER_OPTION_MEDIACODEC_ASYNC_MODE_ENABLE = 955;
    public static final int PLAYER_OPTION_MEDIACODEC_DEATH_CHECK_INTERVAL = 1112;
    public static final int PLAYER_OPTION_MEDIACODEC_DEATH_TIMEOUT = 1113;
    public static final int PLAYER_OPTION_MEDIACODEC_STOP_TIMEOUT = 952;
    public static final int PLAYER_OPTION_METRICS_ABILITY = 1218;
    public static final int PLAYER_OPTION_METRICS_INTERVAL = 1219;
    public static final int PLAYER_OPTION_NATIVE_CALL_ABR = 682;
    public static final int PLAYER_OPTION_NETLEVEL_MAX_SAMPLE_COUNT = 605;
    public static final int PLAYER_OPTION_NETLEVEL_SAMPLE_INTERVAL = 604;
    public static final int PLAYER_OPTION_NETLEVEL_SPEED_FOR_AUDIO = 621;
    public static final int PLAYER_OPTION_NETWORK_QUALITY_VAR_STRING = 715;
    public static final int PLAYER_OPTION_NETWORK_RECONNECT_COUNT = 609;
    public static final int PLAYER_OPTION_NETWORK_TRY_COUNT = 310;
    public static final int PLAYER_OPTION_NET_SPEED_UPDATE_INTERVAL = 857;
    public static final int PLAYER_OPTION_NOTIFY_ALL_SEI_THRESHOLD = 732;
    public static final int PLAYER_OPTION_NOTIFY_BUFFERING_DIRECTLY = 322;
    public static final int PLAYER_OPTION_NO_AV_SYNC = 620;
    public static final int PLAYER_OPTION_NO_BUFFERING_UPDATE = 552;
    public static final int PLAYER_OPTION_ONLY_PLAY_AUDIO_FOR_BOTH_STREAM = 959;
    public static final int PLAYER_OPTION_OPEN_FAIL_TRY_AGAIN = 1423;
    public static final int PLAYER_OPTION_OPEN_PERFORMANCE_UTILS = 470;
    public static final int PLAYER_OPTION_OPEN_SUB_RETRY_TIMES = 568;
    @Deprecated
    public static final int PLAYER_OPTION_OPEN_TEXTUER_AFTER_FIRST_FRAME = 661;
    public static final int PLAYER_OPTION_OPEN_TEXTURE_AFTER_FIRST_FRAME = 661;
    @Deprecated
    public static final int PLAYER_OPTION_OPERA_EVENT_REPORT_LEVEL = 704;
    public static final int PLAYER_OPTION_OPTIMIZE_ENGINE_THREAD_POOL_IMPL = 967;
    public static final int PLAYER_OPTION_OPTIMIZE_START_TIME_PRERENDER = 42010;
    public static final int PLAYER_OPTION_OPT_AUDIORENDERTIME_REPORT = 594;
    public static final int PLAYER_OPTION_OSPLAYER_IGNORE_HEADERS = 4022;
    public static final int PLAYER_OPTION_OUTPUT_KERNEL_LOG = 1502;
    public static final int PLAYER_OPTION_OUTPUT_LOG = 472;
    public static final int PLAYER_OPTION_OVERLAY_MODE = 650;
    public static final int PLAYER_OPTION_P2P_CDN_TYPE = 301;
    public static final int PLAYER_OPTION_PLAYER_DISPLAY_HEIGHT = 342;
    public static final int PLAYER_OPTION_PLAYER_DISPLAY_WIDTH = 341;
    public static final int PLAYER_OPTION_PLAY_DURATION_EXCLUDE_PLAYER_METHOD = 982;
    public static final int PLAYER_OPTION_POSITION_UPDATE_INTERVAL = 602;
    public static final int PLAYER_OPTION_POST_PREPARE = 482;
    public static final int PLAYER_OPTION_PREFER_BIT_DEPTH = 1072;
    @Deprecated
    public static final int PLAYER_OPTION_PREFER_NEARESTSAMPLE = 311;
    public static final int PLAYER_OPTION_PREFER_NEAREST_MAX_POS_OFFSET = 954;
    public static final int PLAYER_OPTION_PREFER_NEAREST_SAMPLE = 203;
    public static final int PLAYER_OPTION_PREPARE_CACHE_MS = 491;
    public static final int PLAYER_OPTION_PREPARE_DECODE_ONLY = 984;
    public static final int PLAYER_OPTION_PRE_RENDER_BUFFERING_UPDATE_PERCENTAGE = 576;
    @Deprecated
    public static final int PLAYER_OPTION_PRE_RENDER_BUFFERING_UPDATE_PRECENTAGE = 576;
    public static final int PLAYER_OPTION_PRIV_CODEC_NAME = 957;
    public static final int PLAYER_OPTION_QUERYWIN_ENABLE = 953;
    public static final int PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK = 998;
    public static final int PLAYER_OPTION_RANGE_MODE = 473;
    public static final int PLAYER_OPTION_READ_MODE = 483;
    public static final int PLAYER_OPTION_REC_BUFFER_THRESH = 996;
    public static final int PLAYER_OPTION_REC_BUFFER_TYPE = 1122;
    public static final int PLAYER_OPTION_REMOVE_ENGINE_THREAD_POOL_LOCK = 966;
    public static final int PLAYER_OPTION_RENDER_HDR2SDR = 652;
    public static final int PLAYER_OPTION_RENDER_TYPE = 5;
    public static final int PLAYER_OPTION_REPORT_FIRST_FRAME_FRAME_BUFFER_ONLY = 585;
    public static final int PLAYER_OPTION_RESUME_FILEIO_BLOCK_DURATION_THRESHOLD = 668;
    public static final int PLAYER_OPTION_REUSE_SOCKET = 26;
    public static final int PLAYER_OPTION_SEEK_END_FFMPEG_THREADHOLD = 42090;
    public static final int PLAYER_OPTION_SEEK_MODE = 596;
    public static final int PLAYER_OPTION_SEGMENT_FORMAT_FLAG = 489;
    public static final int PLAYER_OPTION_SEG_MAX_RETRY = 42077;
    public static final int PLAYER_OPTION_SELECTOR_MAX_RESOLUTION = 537;
    public static final int PLAYER_OPTION_SELECTOR_MAX_RESOLUTION_QUALITY = 540;
    public static final int PLAYER_OPTION_SELECTOR_MIN_RESOLUTION = 713;
    public static final int PLAYER_OPTION_SEND_ENGINE_MSG_TIMEOUT = 950;
    public static final int PLAYER_OPTION_SERVER_DECODING_MODE_PRIORITY = 519;
    @Deprecated
    public static final int PLAYER_OPTION_SETSURFACESYNC_NOTUSEENGINELOOPER = 712;
    @Deprecated
    public static final int PLAYER_OPTION_SETSURFACESYNC_SENDATFRONTOFQUEUE = 711;
    public static final int PLAYER_OPTION_SETSURFACE_TIMEOUT_CREATED = 740;
    public static final int PLAYER_OPTION_SETSURFACE_TIMEOUT_DESTROY = 741;
    public static final int PLAYER_OPTION_SETTING_CODEC_NAME = 956;
    public static final int PLAYER_OPTION_SETUP_MEDIACODEC = 1133;
    public static final int PLAYER_OPTION_SET_AUDIOTRACK_CONTENTTYPE = 744;
    public static final int PLAYER_OPTION_SET_AUDIO_INFO_ID = 675;
    public static final int PLAYER_OPTION_SET_CODECFRAMESDROP = 856;
    public static final int PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND = 497;
    public static final int PLAYER_OPTION_SET_FIRST_RANGE_SIZE = 486;
    public static final int PLAYER_OPTION_SET_FRAMES_DROP = 207;
    public static final int PLAYER_OPTION_SET_KSY_FRAMES_WAIT = 208;
    public static final int PLAYER_OPTION_SET_LOOP_REFER_VIDEO = 213;
    public static final int PLAYER_OPTION_SET_MASTER_M3U8_VIDEO_BANDWIDTH = 753;
    public static final int PLAYER_OPTION_SET_MAX_FPS = 205;
    public static final int PLAYER_OPTION_SET_MEDIA_CODEC_AUDIO = 216;
    public static final int PLAYER_OPTION_SET_MEDIA_CODEC_RENDER = 215;
    public static final int PLAYER_OPTION_SET_MEDIA_CODEC_SYNC_MODE = 120;
    @Deprecated
    public static final int PLAYER_OPTION_SET_NETSPEED_LEVEL = 487;
    public static final int PLAYER_OPTION_SET_OPEN_VOICE_EARLY = 371;
    public static final int PLAYER_OPTION_SET_ORIGINAL_RETRY = 184;
    public static final int PLAYER_OPTION_SET_OVERLAY_RATIO = 651;
    public static final int PLAYER_OPTION_SET_PLAYER_SURFACE_WITH_LOCK = 1073;
    public static final int PLAYER_OPTION_SET_PRECISE_PAUSE_PTS = 709;
    public static final int PLAYER_OPTION_SET_SKIP_AUDIO_GRAPH = 214;
    public static final int PLAYER_OPTION_SET_SPEEDX_DROP = 358;
    public static final int PLAYER_OPTION_SET_SPEEDX_DROP_FPS_LIMIT = 359;
    public static final int PLAYER_OPTION_SET_STATIC_ENABLE_CPPh265CODEC_OPT = 689;
    public static final int PLAYER_OPTION_SET_STATIC_RENDER_TYPE = 672;
    @Deprecated
    public static final int PLAYER_OPTION_SET_SUPER_RES = 210;
    @Deprecated
    public static final int PLAYER_OPTION_SET_SUPER_RES_FXAA = 211;
    @Deprecated
    public static final int PLAYER_OPTION_SET_SUPER_RES_STRENGTH = 212;
    public static final int PLAYER_OPTION_SET_SURFACE_DIRECTLY = 1135;
    public static final int PLAYER_OPTION_SET_SURFACE_RETRY_COUNT = 988;
    public static final int PLAYER_OPTION_SET_SURFACE_RETRY_INTERVAL = 989;
    @Deprecated
    public static final int PLAYER_OPTION_SET_USE_PLAYER3 = 30;
    public static final int PLAYER_OPTION_SET_USE_PLAYER_DNS = 110;
    public static final int PLAYER_OPTION_SET_VIDEOMODEL_CACHE_NUM = 23;
    public static final int PLAYER_OPTION_SET_VIDEOMODEL_CACHE_TIMEOUT = 22;
    public static final int PLAYER_OPTION_SET_VIDEO_DURATION = 1074;
    public static final int PLAYER_OPTION_SET_VOICE = 430;
    public static final int PLAYER_OPTION_SKIP_BUFFER_TIMEOUT = 516;
    public static final int PLAYER_OPTION_SKIP_FIND_STREAM_INFO = 204;
    public static final int PLAYER_OPTION_SKIP_START_WHEN_PREPARED = 681;
    public static final int PLAYER_OPTION_SPEED_PREDICT_OUT_TYPE = 525;
    @Deprecated
    public static final int PLAYER_OPTION_SPEED_REPORT_SAMPLIING_RATE = 535;
    public static final int PLAYER_OPTION_SPEED_REPORT_SAMPLING_RATE = 535;
    public static final int PLAYER_OPTION_SPEED_REPORT_WINDOW_SIZE = 523;
    public static final int PLAYER_OPTION_STAND_ALONG_ABR_START_UP = 521;
    public static final int PLAYER_OPTION_STARTUP_ALGO_TYPE = 573;
    public static final int PLAYER_OPTION_STARTUP_SPEED_TYPE = 574;
    public static final int PLAYER_OPTION_STOP_CLOSE_IO = 714;
    public static final int PLAYER_OPTION_STOP_SOURCE_ASYNC = 484;
    public static final int PLAYER_OPTION_STREAM_TRACK_INFO = 716;
    public static final int PLAYER_OPTION_STRING_SET_VIDEO_CODEC_TYPE = 1000;
    public static final int PLAYER_OPTION_SUB_FORMAT = 547;
    public static final int PLAYER_OPTION_SUB_HOST_NAME = 531;
    public static final int PLAYER_OPTION_SUB_IDS = 546;
    @Deprecated
    public static final int PLAYER_OPTION_SUB_LANG_IDS = 532;
    public static final int PLAYER_OPTION_SUB_VERSIONS = 549;
    public static final int PLAYER_OPTION_SUPPORTPLAY_NOSURFACE = 707;
    public static final int PLAYER_OPTION_SURFACEHOLDER_BY_KERNEL = 951;
    public static final int PLAYER_OPTION_SWITCH_SUB_ID = 530;
    public static final int PLAYER_OPTION_TEXTURERENDER_SYNC_UPDATESURFACE = 654;
    public static final int PLAYER_OPTION_TEXTURE_RENDER_FORBID_REUSE_TEXTURE = 4010;
    public static final int PLAYER_OPTION_TEXTURE_RENDER_FORBID_REUSE_VIDEOSURFACETEXTURE = 4009;
    public static final int PLAYER_OPTION_THREADNAME_2CHAR_SUFFIX = 1212;
    public static final int PLAYER_OPTION_THREAD_PRIORITY_VALUE = 563;
    public static final int PLAYER_OPTION_THREAD_SAFE_REF_SWITCHER = 677;
    public static final int PLAYER_OPTION_TOKEN_URL_TEMPLATE = 35;
    public static final int PLAYER_OPTION_TR_ENABLE_FRAME_CALLBACK_IN_RENDERTHREAD = 1600;
    public static final int PLAYER_OPTION_TT_HLS_DRM = 250;
    public static final int PLAYER_OPTION_TT_HLS_DRM_TOKEN = 249;
    public static final int PLAYER_OPTION_UPDATE_TIMESTAMP_MODE = 495;
    public static final int PLAYER_OPTION_USER_EXIT_TIME = 1121;
    @Deprecated
    public static final int PLAYER_OPTION_USE_AJ_MEDIACODEC = 412;
    public static final int PLAYER_OPTION_USE_CONFIG_CENTER = 750;
    public static final int PLAYER_OPTION_USE_DNS_CACHE = 18;
    @Deprecated
    public static final int PLAYER_OPTION_USE_EXTERNAL_DIR = 15;
    public static final int PLAYER_OPTION_USE_FALLBACK_API = 492;
    @Deprecated
    public static final int PLAYER_OPTION_USE_PLAYER_SPADE = 111;
    public static final int PLAYER_OPTION_USE_QCOM_LL = 324;
    public static final int PLAYER_OPTION_USE_TEST_ACTION = 16;
    public static final int PLAYER_OPTION_USE_TEXTURE_RENDER = 199;
    @Deprecated
    public static final int PLAYER_OPTION_USE_THREAD_POOL = 411;
    public static final int PLAYER_OPTION_USE_VIDEOMODEL_CACHE = 21;
    public static final int PLAYER_OPTION_USE_VIDEOMODEL_CACHE_FORCE = 299;
    public static final int PLAYER_OPTION_USING_MDL_LIMIT_CACHE_SIZE = 161;
    public static final int PLAYER_OPTION_VC2DEC_REDUCE_PARALELL_FRAME_NUM = 42401;
    public static final int PLAYER_OPTION_VC2_DECODE_LOW_LATENCY = 4017;
    public static final int PLAYER_OPTION_VC2_DYNAMIC_CONTROL = 4019;
    public static final int PLAYER_OPTION_VC2_LOWER_RENDER_CAPACITY = 4014;
    public static final int PLAYER_OPTION_VC2_LOWER_RENDER_CAPACITY_NO_SR = 4016;
    public static final int PLAYER_OPTION_VC2_STACKSIZE_OPT = 4020;
    public static final int PLAYER_OPTION_VC2_STACKSIZE_VALUE = 4021;
    public static final int PLAYER_OPTION_VC2_THREAD_NUM = 4024;
    public static final int PLAYER_OPTION_VC2_THREAD_PRIORITY_VALUE = 4013;
    public static final int PLAYER_OPTION_VC2_WPP_MODE = 4018;
    public static final int PLAYER_OPTION_VIDEO_RANGE_SIZE = 422;
    public static final int PLAYER_OPTION_VIDEO_RANGE_TIME = 474;
    public static final int PLAYER_OPTION_VIDEO_RENDER_STALL_THRESHOLD = 597;
    public static final int PLAYER_OPTION_VOICE_STREAM_TYPE = 255;
    public static final int PLAYER_OPTION_VR_DISPLAY_DISTANCE = 722;
    public static final int PLAYER_OPTION_VR_DISPLAY_FRAME_RATE = 723;
    public static final int PLAYER_OPTION_VR_HEAD_MOVEMENT_DELAY = 725;
    public static final int PLAYER_OPTION_VR_PREDICT_ACCURACY_INTERVAL_MS = 728;
    public static final int PLAYER_OPTION_VR_PREDICT_ACCURACY_THRESHOLD = 729;
    public static final int PLAYER_OPTION_VR_PREDICT_MODE = 718;
    public static final int PLAYER_OPTION_VR_PREDICT_SAMPLE_FULL_ENABLE = 727;
    public static final int PLAYER_OPTION_VR_PREDICT_SAMPLE_INTERVAL_MS = 726;
    public static final int PLAYER_OPTION_VR_SCREEN_REFRESH_RATE = 724;
    public static final int PLAYER_OPTION_WAITING_CODEC_MS = 995;
    public static final int PLAYER_OPTION_WAIT_FETCH_INFO_RESULT = 558;
    public static final int PLAYER_OPTION_WIFI_DEFAULT_RESOLUTION_INDEX = 536;
    public static final int PLAYER_OPTION_WIFI_DEFAULT_RESOLUTION_QUALITY = 539;
    public static final int PLAYER_OPTION_h266_NALSIZE_CHECK = 592;
    @Deprecated
    public static final int PLAYER_REFACTOR_FLAG = 684;
    public static final int PLAYER_SPEED_PREDICT_INPUT_MULTI_DATA = 2;
    public static final int PLAYER_SPEED_PREDICT_INPUT_SING_DATA = 1;
    @Deprecated
    public static final int PLAYER_SPEED_PREDICT_INPUT_UNKNOW = 0;
    public static final int PLAYER_SPEED_PREDICT_INPUT_UNKNOWN = 0;
    public static final int PLAYER_SPEED_PREDICT_OUT_MULTI_DATA = 1;
    public static final int PLAYER_SPEED_PREDICT_OUT_SING_DATA = 0;
    public static final int PLAYER_STRATEGY_STRING_PLAY_BUFFER_CONFIG = 1412;
    public static final int PLAYER_STRATEGY_STRING_PLAY_LOAD_CONFIG = 1410;
    public static final int PLAYER_STRATEGY_STRING_PLAY_RANGE_CONFIG = 1411;
    public static final int PLAYER_TEST_NETSPEED_DIFF = 201;
    public static final int PLAYER_TIME_BASE = 1000000;
    public static final int PLAY_AAC_PROFILE_HE = 4;
    public static final int PLAY_AAC_PROFILE_HEV2 = 28;
    public static final String PLAY_API_KEY_ABVERSION = "ab_version";
    public static final String PLAY_API_KEY_AC = "ac";
    public static final String PLAY_API_KEY_ACTION = "Action";
    public static final String PLAY_API_KEY_APPID = "aid";
    public static final String PLAY_API_KEY_APPNAME = "app_name";
    public static final String PLAY_API_KEY_BARRAGEMASK = "barragemask";
    public static final String PLAY_API_KEY_BASE64 = "base64";
    public static final String PLAY_API_KEY_CDNTYPE = "cdn_type";
    public static final String PLAY_API_KEY_CODEC = "codec_type";
    public static final String PLAY_API_KEY_DEVICEID = "device_id";
    public static final String PLAY_API_KEY_DEVICEPLATFORM = "device_platform";
    public static final String PLAY_API_KEY_DEVICETYPE = "device_type";
    public static final String PLAY_API_KEY_FORCE_CODEC = "force_codec";
    public static final String PLAY_API_KEY_FORMAT = "format_type";
    public static final String PLAY_API_KEY_MENIFESTVERSIONCODE = "menifest_version_code";
    public static final String PLAY_API_KEY_NETWORKCORE = "network_score";
    public static final String PLAY_API_KEY_OSVERSION = "os_version";
    public static final String PLAY_API_KEY_PLAYERVERSION = "player_version";
    public static final String PLAY_API_KEY_PRELOAD = "preload";
    public static final String PLAY_API_KEY_PTOKEN = "ptoken";
    public static final String PLAY_API_KEY_SDK_OPTIONS = "TtPlayerSdkOptions";
    public static final String PLAY_API_KEY_SSL = "ssl";
    public static final String PLAY_API_KEY_UPDATEVERSIONCODE = "update_version_code";
    public static final String PLAY_API_KEY_URLTYPE = "url_type";
    public static final String PLAY_API_KEY_USERID = "user_id";
    public static final String PLAY_API_KEY_VERSION = "Version";
    public static final String PLAY_API_KEY_VERSIONCODE = "version_code";
    public static final String PLAY_API_KEY_VIDEOID = "video_id";
    public static final String PLAY_API_KEY_WEBID = "web_id";
    public static final int PLAY_API_VERSION_0 = 0;
    public static final int PLAY_API_VERSION_1 = 1;
    public static final int PLAY_API_VERSION_2 = 2;
    public static final int PLAY_API_VERSION_3 = 3;
    public static final int PLAY_INFO_BUFFERING_END = 4;
    public static final int PLAY_INFO_BUFFERING_START = 3;
    public static final int PLAY_INFO_CURRENT_BUFFER = 5;
    public static final int PLAY_INFO_LOAD_PERCENT = 2;
    public static final int PLAY_INFO_PLAYING_POS = 1;
    public static final int PLAY_INFO_RENDER_START = 0;
    public static final int PLAY_INFO_SEEK_ACTION = 6;
    public static final int PLAY_OPTION_GET_DOWNLOAD_SPEED = 63;
    public static final int PORTRAIT_CHANGED = 1003;
    public static final int PRELOAD_MEDIA_REMOVE_FLAG_NONE = 0;
    public static final int PRELOAD_MEDIA_REMOVE_FLAG_STOP_TASK = 1;
    public static final int PRELOAD_TIMELINESS_LABEL = 31202;
    public static final int RANGE_MODE_NONE = 0;
    public static final int RANGE_MODE_SIDX_SIZE = 2;
    public static final int RANGE_MODE_SIDX_TIME = 3;
    public static final int RANGE_MODE_SIZE = 1;
    public static final int READ_MODE_COMPLETE = 1;
    public static final int READ_MODE_DIRECT_PARTIAL = 3;
    public static final int READ_MODE_NORMAL = 0;
    public static final int READ_MODE_PARTIAL = 2;
    public static final int REFACTOR_ENGINE_TYPE_NEW = 1;
    public static final int RENDER_DEVICE_MEDIA_CODEC = 4;
    public static final int RENDER_DEVICE_NATIVE_WINDOW = 1;
    public static final int RENDER_DEVICE_OPENGL = 0;
    public static final int RENDER_DEVICE_UNKNOWN = -1;
    public static final int RENDER_TYPE_DEFAULT = 3;
    public static final int RENDER_TYPE_GL3D = 6;
    public static final int RENDER_TYPE_GL3DVR = 7;
    public static final int RENDER_TYPE_NATIVE = 5;
    public static final int RENDER_TYPE_PANO = 1;
    public static final int RENDER_TYPE_PLANE = 0;
    public static final int RENDER_TYPE_VR = 2;
    public static final int REPORT_ENABLE_BRIGHTNESS = 4;
    public static final int REPORT_ENABLE_HEADSET = 8;
    public static final int REPORT_ENABLE_SEEK = 1;
    public static final int REPORT_ENABLE_SWITCH = 2;
    public static final int SEEK_MODE_ACCURATE_ANY = 0;
    public static final int SEEK_MODE_INACCURATE_BACKWARD = 1;
    public static final int SEGMENT_FORMAT_FMP4 = 1;
    public static final int SEGMENT_FORMAT_MP4 = 2;
    public static final int SEGMENT_FORMAT_TS = 3;
    public static final int SEGMENT_FORMAT_UNKNOWN = 0;
    @Deprecated
    public static final int SEGMENT_FORMAT_UNKOWN = 0;
    public static final int SETTINGS_ENABLE = 119;
    public static final int SETTINGS_REGION_CN_HOST = 116;
    public static final int SETTINGS_REGION_SG_HOST = 117;
    public static final int SETTINGS_REGION_US_HOST = 118;
    public static final int SMART_PRELOAD_CONFIG_JSON_UPDATE = 31203;
    public static final int SMART_PRELOAD_RET_LABEL = 31201;
    public static final int SMART_RANGE_REQUEST_LABEL = 31204;
    public static final int TESTSPEED_ANET = 2;
    public static final int TESTSPEED_ANNETIES = 6;
    public static final int TESTSPEED_AWE_DEFAULT = 4;
    public static final int TESTSPEED_AWE_INTELLIGENT = 5;
    public static final int TESTSPEED_HANET = 1;
    public static final int TESTSPEED_HECNET = 0;
    public static final int TESTSPEED_LSTMNET = 3;
    public static final int TEXTURERENDER_FEATURE_OVERLAY_MAIN = 2;
    public static final int TEXTURERENDER_FEATURE_OVERLAY_SUB = 4;
    public static final int TEXTURE_HDR_TYPE_HLG = 2;
    public static final int TEXTURE_HDR_TYPE_NONE = 0;
    public static final int TEXTURE_HDR_TYPE_PQ = 1;
    public static final int TOB_OPEN_API_VERSION_1 = 2;
    public static final int TOB_OPEN_API_VERSION_2 = 4;
    public static final int TRACE_HOST = 122;
    public static final int UPDATE_TIMESTAMP_MODE_ADJUST_DTS = 2;
    public static final int UPDATE_TIMESTAMP_MODE_DTS = 1;
    public static final int UPDATE_TIMESTAMP_MODE_PTS = 0;
    public static final int USE_XYCDN = 1;
    public static final int VIDEO_STREAM = 0;
    public static final int VOICE_AUDIOTRACK = 1;
    public static final int VOICE_AUTO = -1;
    public static final int VOICE_DUMMY = 2;
    public static final int VOICE_EXTERN = 3;
    public static final int VOICE_SLES = 0;
    public static final String REGION_CN = SettingsHelper.REGION_CN;
    public static final String REGION_US = SettingsHelper.REGION_US;
    public static final String REGION_SG = SettingsHelper.REGION_SG;

    void addVideoEngineCallback(VideoEngineCallback videoEngineCallback);

    void asyncInitSR(boolean z10);

    boolean clearSurface(Surface surface, boolean z10);

    void clearTextureRef();

    void configParams(Resolution resolution, Map<Integer, String> map);

    void configResolution(Resolution resolution);

    void createPlayer();

    void createPlayerAsync();

    ArrayList<HashMap<String, Object>> crosstalkHappen(ArrayList<TTVideoEngine> arrayList, HashMap<String, TTVideoEngineMonitor.TTVideoEngineLivePlayerInfo> hashMap);

    void dynamicControlSR(boolean z10);

    void forceDraw();

    String getAPIString();

    int getAudioLatencyTime();

    @Deprecated
    int getAudioLatencytime();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getBufferingType();

    boolean getCacheControlEnabled();

    List<String> getCacheKeys();

    Context getContext();

    String getCurrentPlayPath();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getCurrentPlaybackTime();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getCurrentPlaybackTimeAsync();

    String getCurrentQualityDesc();

    Resolution getCurrentResolution();

    String getDirectUrl();

    String getDubbedMemUrl(List<DubbedInfo> list);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getDuration();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    float getFloatOption(int i10);

    GearStrategyConfig getGearStrategyEngineConfig();

    String getHash();

    IVideoModel getIVideoModel();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getIntOption(int i10);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getLoadState();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getLoadedProgress();

    IVideoEventLogger getLogger();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    long getLongOption(int i10);

    @Deprecated
    boolean getLooping(boolean z10);

    float getMaxVolume();

    MediaPlayer getMediaPlayer();

    MediaTrackInfoModel[] getMediaTrackInfos();

    IMediaMetrics getMetrics(int i10);

    boolean getMirrorHorizontal();

    boolean getMirrorVertical();

    TTVNetClient getNetClientSetByUser();

    int getPlayAPIVersion();

    JSONObject getPlayErrorInfo();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getPlaybackState();

    String getPlayerSessionId();

    String getQualityDescBeforeDowngrade();

    Resolution getResolutionBeforeDowngrade();

    int getRotation();

    @Nullable
    Map<String, Object> getStrategyLogData(String str);

    StrategySource getStrategySource();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    String getStringOption(int i10);

    String getSubTag();

    @Nullable
    String getSubtitleContentInfo(int i10);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    Surface getSurface();

    String getTag();

    VideoSurface getTextureSurface();

    String getTraceId();

    MediaPlayer.TrackInfo[] getTrackInfo();

    EventLoggerSource getVideoEngineDataSource();

    VideoFormatInfo getVideoFormatInfo();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getVideoHeight();

    String getVideoID();

    @Deprecated
    VideoModel getVideoModel();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getVideoWidth();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    float getVolume();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    int getWatchedDuration();

    void ignoreSRResolutionLimit(boolean z10);

    void initSRStrategyConfig(SRStrategyConfig sRStrategyConfig);

    boolean isDashSource();

    boolean isInHousePlayer();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isLooping();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isMute();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isOSPlayer();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isPlayerType(int i10);

    boolean isPrepared();

    boolean isReleased();

    boolean isReportLogEnable();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isShouldPlay();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    boolean isStarted();

    boolean isSupportHDR();

    boolean isSupportSR();

    @Deprecated
    boolean isSystemPlayer();

    boolean isplaybackUsedSR();

    String logcatTag();

    void notifyCacheEnd();

    void openTextureSR(boolean z10, boolean z11);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void pause();

    void pauseByInterruption();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void play();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void prepare();

    void refreshEnginePara(Context context, int i10, Map map);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void release();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void releaseAsync();

    void removeVideoEngineCallback(VideoEngineCallback videoEngineCallback);

    void resetByPool();

    void resetByPoolSyncPart();

    void saveEvent();

    Bitmap saveFrame();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void seekTo(int i10, SeekCompletionListener seekCompletionListener);

    @Deprecated
    void setABRListener(ABRListener aBRListener);

    void setAIBarrageInfoListener(AIBarrageSimpleCallback aIBarrageSimpleCallback);

    void setAIBarrageUrl(String str);

    void setAdditionSubModel(SubModelProvider subModelProvider);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setAsyncInit(boolean z10, int i10);

    void setAudioProcessor(AudioProcessor audioProcessor);

    void setAutoRangeRead(int i10, int i11);

    void setBarrageMaskHeadLen(int i10);

    void setBarrageMaskUrl(String str);

    void setBarrageMaskUrlUseDataLoader(String str, String str2);

    void setBufferProcessCallback(BufferProcessCallback bufferProcessCallback);

    void setBufferThresholdControl(int i10, int i11);

    void setCacheControlEnabled(boolean z10);

    void setCacheFilePathListener(CacheFilePathListener cacheFilePathListener);

    void setCacheInfoLists(String[] strArr, long[] jArr);

    void setCustomHeader(String str, String str2);

    void setCustomHeaderSync(String str, String str2);

    void setCustomInfo(IVideoEventLogger.VideoEventCustomInfo videoEventCustomInfo, Object obj);

    void setCustomStr(String str);

    void setDataSource(IMediaDataSource iMediaDataSource);

    void setDataSource(DataSource dataSource);

    void setDataSource(FileDescriptor fileDescriptor, long j10, long j11);

    void setDecryptionKey(String str);

    @Deprecated
    void setDefaultFileCacheDir(String str);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setDirectURL(String str);

    void setDirectURL(String str, String str2);

    void setDirectUrlUseDataLoader(DirectUrlItem directUrlItem);

    void setDirectUrlUseDataLoader(String str, String str2);

    void setDirectUrlUseDataLoader(String str, String str2, @Nullable String str3);

    void setDirectUrlUseDataLoader(String[] strArr, String str);

    void setDirectUrlUseDataLoader(String[] strArr, String str, @Nullable String str2);

    void setDirectUrlUseDataLoaderByFilePath(String str, String str2);

    void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str);

    void setDirectUrlUseDataLoaderByFilePath(String[] strArr, String str, String str2);

    void setDisplayMode(View view, int i10);

    void setEffect(Bundle bundle);

    void setEncodedKey(String str);

    void setExpectedParams(@NonNull Resolution resolution, @Nullable Map<Integer, String> map);

    void setExternLogListener(ExternVideoLoggerListener externVideoLoggerListener, String str);

    void setExtraSurface(Surface surface, int i10);

    void setFFmpegProtocolObject(TTVideoEngineFFmpegProtocol tTVideoEngineFFmpegProtocol);

    @Deprecated
    void setFileCacheDir(String str);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setFloatOption(int i10, float f10);

    void setGearStrategyEngineConfig(GearStrategyConfig gearStrategyConfig);

    @Deprecated
    void setGearStrategyListener(IGearStrategyListener iGearStrategyListener, Object obj);

    void setGroupID(String str);

    void setGroupIdUseDataLoader(String str);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setIntOption(int i10, int i11);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setIsMute(boolean z10);

    void setLensParams(Bundle bundle);

    @Deprecated
    void setListener(VideoEngineListener videoEngineListener);

    void setLiveID(String str);

    void setLoadControl(LoadControl loadControl);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setLocalURL(String str);

    void setLoggerIntOption(int i10, int i11);

    void setLoggerLongOption(int i10, long j10);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setLongOption(int i10, long j10);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setLooping(boolean z10);

    void setMaskInfoListener(MaskInfoListener maskInfoListener);

    void setMirrorHorizontal(boolean z10);

    void setMirrorVertical(boolean z10);

    void setNetworkClient(TTVNetClient tTVNetClient);

    void setPlayAPIVersion(int i10, String str);

    void setPlayAuthToken(String str);

    @Deprecated
    void setPlayAuthToken(String str, int i10);

    void setPlayInfo(int i10, long j10);

    void setPlayItem(TTVideoEnginePlayItem tTVideoEnginePlayItem);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setPlaybackParams(PlaybackParams playbackParams);

    void setPlayerEventListener(PlayerEventSimpleListener playerEventSimpleListener);

    void setPlayerHLSChooseStreamCallback(TTVideoEnginePlayHLSChooseStreamCallback tTVideoEnginePlayHLSChooseStreamCallback);

    void setPlayerSurface(Surface surface, int i10, int i11);

    void setPreloaderItem(TTAVPreloaderItem tTAVPreloaderItem);

    void setQcomVpp(boolean z10, int i10);

    void setRadioMode(boolean z10);

    void setReportLogEnable(boolean z10);

    void setResolutionMap(HashMap<String, Resolution> hashMap);

    void setRotation(int i10);

    @Deprecated
    void setSARChangeListener(SARChangeListener sARChangeListener);

    void setSRInitConfig(int i10, String str, String str2, String str3);

    void setSRInitConfig(int i10, String str, String str2, String str3, int i11, int i12, int i13);

    void setSpeedShiftConfig(SpeedShiftConfig speedShiftConfig);

    void setSrMaxTextureSize(int i10, int i11);

    @Deprecated
    void setSrMaxTexureSize(int i10, int i11);

    void setStartTime(int i10);

    void setStrategySource(StrategySource strategySource);

    @Deprecated
    void setStreamInfoListener(StreamInfoListener streamInfoListener);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setStringOption(int i10, String str);

    void setSubAuthToken(String str);

    void setSubDesInfoModel(SubDesInfoModelProvider subDesInfoModelProvider);

    void setSubInfoCallBack(SubInfoSimpleCallBack subInfoSimpleCallBack);

    void setSubInfoListener(SubInfoListener subInfoListener);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setSubTag(String str);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setSurface(Surface surface);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setSurfaceHolder(SurfaceHolder surfaceHolder);

    void setSurfaceHolder(SurfaceHolder surfaceHolder, boolean z10);

    void setSurfaceHolderSync(SurfaceHolder surfaceHolder);

    void setSurfaceSync(Surface surface);

    void setSurfaceSync(Surface surface, long j10);

    void setTTHlsDrmToken(String str);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setTag(String str);

    void setTestSpeedEnable(int i10, TestNetSpeedListener testNetSpeedListener);

    void setTokenUrlTemplate(String str);

    void setUnSupportSampleRates(int[] iArr);

    @Deprecated
    void setVideoBufferDetailListener(VideoBufferDetailListener videoBufferDetailListener);

    @Deprecated
    void setVideoBufferListener(VideoBufferListener videoBufferListener);

    void setVideoEngineCallback(VideoEngineCallback videoEngineCallback);

    void setVideoEngineGetInfoListener(VideoEngineGetInfoListener videoEngineGetInfoListener);

    void setVideoEngineInfoListener(VideoEngineInfoListener videoEngineInfoListener);

    @Deprecated
    void setVideoEngineSimpleCallback(VideoEngineSimpleCallback videoEngineSimpleCallback);

    void setVideoID(String str);

    void setVideoInfoListener(VideoInfoListener videoInfoListener);

    void setVideoModel(IVideoModel iVideoModel);

    @Deprecated
    void setVideoModel(VideoModel videoModel);

    @Deprecated
    void setVideoURLRouteListener(VideoURLRouteListener videoURLRouteListener);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void setVolume(float f10, float f11);

    void snapshot(SnapshotListener snapshotListener);

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void start();

    @Override // com.ss.ttvideoengine.ITTVideoEngineInternal
    void stop();

    String[] supportedQualityInfos();

    Resolution[] supportedResolutionTypes();

    List<SubInfo> supportedSubInfoList();

    @Deprecated
    int[] supportedSubtitleLangs();

    boolean supporth265Playback();

    boolean supporth266Playback();

    void updateSRStrategyConfig(SRStrategyConfig sRStrategyConfig);

    default void setObjectOption(int i10, Object obj) {
    }

    default void setTraitObject(int i10, TraitObject traitObject) {
    }
}
