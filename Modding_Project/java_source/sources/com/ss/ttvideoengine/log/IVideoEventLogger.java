package com.ss.ttvideoengine.log;

import android.os.Bundle;
import com.bytedance.vcloud.networkpredictor.SpeedPredictorResultCollection;
import com.ss.ttm.player.PlaybackParams;
import com.ss.ttvideoengine.metrics.IMediaMetrics;
import com.ss.ttvideoengine.model.IVideoModel;
import com.ss.ttvideoengine.model.VideoModel;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import com.ss.ttvideoengine.utils.Error;
import java.util.ArrayList;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public interface IVideoEventLogger {
    public static final String CAST_INFO_IS_CAST_LIVE = "is_cast_live";
    public static final String CAST_INFO_PROTOCAL = "cast_protocal";
    public static final String CAST_INFO_SCENE_ID = "cast_scene_id";
    public static final String CAST_INFO_SOURCE_APP_ID = "cast_source_app_id";
    public static final int EXPIRE_PLAY_CODE_URL = 1;
    public static final int EXPIRE_PLAY_CODE_VM = 2;
    public static final int EXPIRE_PLAY_CODE_VM_RETRY = 3;
    public static final String FEATURE_KEY_ABR = "abr";
    public static final String FEATURE_KEY_ABR_STARTUP = "abr_startup";
    public static final String FEATURE_KEY_AI_BARRAGE = "ai_barrage";
    public static final String FEATURE_KEY_ASYNC_INIT = "async_init";
    public static final String FEATURE_KEY_ASYNC_MANAGE_RESOURCE = "async_res";
    public static final String FEATURE_KEY_ASYNC_POSITION = "async_pos";
    public static final String FEATURE_KEY_ASYNC_SET_SURFACE = "async_set_surface";
    public static final String FEATURE_KEY_AUDIO_HW = "a_hw";
    public static final String FEATURE_KEY_AUDIO_RENDER_TYPE = "audio_render_type";
    public static final String FEATURE_KEY_AUDIO_USE_DIRECTBUFFER = "a_directbuf";
    public static final String FEATURE_KEY_AUTO_DISCONNECTED_CPU = "auto_disconnect_cpu";
    public static final String FEATURE_KEY_AUTO_RANGE = "auto_range";
    public static final String FEATURE_KEY_AV_INTERLACED_CHECK = "av_interlaced_check";
    public static final String FEATURE_KEY_BASH = "bash";
    public static final String FEATURE_KEY_BUFFER_DIRECTLY = "buffer_directly";
    public static final String FEATURE_KEY_BUFFER_TIMEOUT = "buffer_timeout";
    public static final String FEATURE_KEY_CACHE = "cache";
    public static final String FEATURE_KEY_CHANGE_REC_BUFFER_SPEED = "change_rec_buf_speed";
    public static final String FEATURE_KEY_CLEAR_MDL_CACHE = "clear_mdl_cache";
    public static final String FEATURE_KEY_CODECPOOL_SUPPORT_DYNAMIC_EXTEND = "codecpool_extend";
    public static final String FEATURE_KEY_CODEC_AND_SURFACE_REUSE = "codec_surface_reuse";
    public static final String FEATURE_KEY_CODEC_FRC_LEVEL = "frc_level";
    public static final String FEATURE_KEY_CODEC_POOL = "codec_pool";
    public static final String FEATURE_KEY_CREATE_AUDIO_TRACK_EARLY = "create_audiotrack_early";
    public static final String FEATURE_KEY_DECODER_DROP = "decoder_drop";
    public static final String FEATURE_KEY_DEMUX_NONBLOCK_READ = "demux_nonblock_read";
    public static final String FEATURE_KEY_DISABLE_SHORT_SEEK = "dis_short_seek";
    public static final String FEATURE_KEY_DISABLE_SPLIT_VOICE = "disable_split_voice";
    public static final String FEATURE_KEY_ENABLE_ASYNC_PREPARE = "async_prepare";
    public static final String FEATURE_KEY_ENABLE_AUDIOMEM_INTERGRATION = "audiomem_intergration";
    public static final String FEATURE_KEY_ENABLE_BUFFERING_LOWERCAPACITY = "lower_buffering_capacity";
    public static final String FEATURE_KEY_ENABLE_CPPh266CODEC_OPT = "h266_opt";
    public static final String FEATURE_KEY_ENABLE_DOWNGRADE_ASYNCCODEC = "downgrade_asynccodec";
    public static final String FEATURE_KEY_ENABLE_LOAD_CONTROL = "enable_loadcontrol";
    public static final String FEATURE_KEY_ENABLE_MEDIACODEC_SYNC_CLOSE = "mediacodec_sync_clode";
    public static final String FEATURE_KEY_ENABLE_OPTIMIZE_HWDEC2SWDEC = "opti_hwdec2swdec";
    public static final String FEATURE_KEY_ENABLE_OUTLET_DROP_LIMIT = "drop_limit";
    public static final String FEATURE_KEY_ENABLE_OUT_THREAD_OPTIMIZE = "out_thread_optimize";
    public static final String FEATURE_KEY_ENABLE_PCDN_AUTO = "enable_pcdn_auto";
    public static final String FEATURE_KEY_ENABLE_SEEK_BUFFERING = "seek_buffering";
    public static final String FEATURE_KEY_ENABLE_STRATEGY_CENTER = "strategy_center";
    public static final String FEATURE_KEY_ENABLE_VIDEO_SECOND_FRAME = "v_2nd_frame";
    public static final String FEATURE_KEY_ENABLE_h265_DECODER_OPTIMIZE = "h265_decoder_opt";
    public static final String FEATURE_KEY_ENABLE_xHEAAC = "xHEAAC_audio_support";
    public static final String FEATURE_KEY_ENGINE_LOOPER = "engine_looper";
    public static final String FEATURE_KEY_FALLBACK_API = "fallback_api";
    public static final String FEATURE_KEY_FIRST_BUFFER_END_MS = "first_buf_end_ms";
    public static final String FEATURE_KEY_FORCE_DISABLE_OES_RENDER = "force_disable_oes_render";
    public static final String FEATURE_KEY_GEAR_STRATEGY = "gear_strategy";
    public static final String FEATURE_KEY_GIVEBACK_CODEC_EARLY = "giveback_codec_early";
    public static final String FEATURE_KEY_HDR_HLG = "hdr_hlg";
    public static final String FEATURE_KEY_HDR_PQ = "hdr_pq";
    public static final String FEATURE_KEY_HEAACV2 = "heaacv2";
    public static final String FEATURE_KEY_HIJACK = "enable_hijack";
    public static final String FEATURE_KEY_HIJACK_RETRY = "hijack_retry";
    public static final String FEATURE_KEY_HTTPS = "enable_https";
    public static final String FEATURE_KEY_HW_DECODER_DROP = "hw_decoder_drop";
    public static final String FEATURE_KEY_HW_DROP = "hw_drop";
    public static final String FEATURE_KEY_IMAGE_SCALE = "image_scale";
    public static final String FEATURE_KEY_IS_FROM_ENGINEPOOL = "from_engpool";
    public static final String FEATURE_KEY_KEEP_FORMAT_THREAD_ALIVE = "keep_formater_alive";
    public static final String FEATURE_KEY_LAZY_SEEK = "lazy_seek";
    public static final String FEATURE_KEY_LOADCONTROL_REBUF = "loadcontrol_rebuf";
    public static final String FEATURE_KEY_LOADCONTROL_START = "loadcontrol_start";
    public static final String FEATURE_KEY_MASK_DELAY_LOADING = "mask_delay_loading";
    public static final String FEATURE_KEY_MASK_ENABLE_DATALOADER = "mask_loader";
    public static final String FEATURE_KEY_MASK_ENABLE_RANGE_REQUEST = "mask_range_req";
    public static final String FEATURE_KEY_MASK_THREAD = "mask_thread_enable";
    public static final String FEATURE_KEY_MC_MONITOR = "mc_monitor";
    public static final String FEATURE_KEY_MC_RENDER = "mc_render";
    public static final String FEATURE_KEY_MDL_BACKUP_IP = "mdl_backip";
    public static final String FEATURE_KEY_MDL_DNS_PARALLEL_PARSE = "mdl_dns_parallel";
    public static final String FEATURE_KEY_MDL_DNS_REFRESH = "mdl_dns_refresh";
    public static final String FEATURE_KEY_MDL_ENABLE_EXTERN_DNS = "mdl_externdns";
    public static final String FEATURE_KEY_MDL_HTTPDNS = "mdl_httpdns";
    public static final String FEATURE_KEY_MDL_PREPARSE_DNS = "mdl_predns";
    public static final String FEATURE_KEY_MDL_PRE_CONNECT = "mdl_preconn";
    public static final String FEATURE_KEY_MDL_SEEK_REOPEN = "mdl_seek_reopen";
    public static final String FEATURE_KEY_MDL_SESSION_REUSE = "mdl_session_reuse";
    public static final String FEATURE_KEY_MDL_SOCKET_MONITOR = "mdl_socket_monitor";
    public static final String FEATURE_KEY_MDL_SOCKET_REUSE = "mdl_socket_reuse";
    public static final String FEATURE_KEY_MDL_TLS_VERSION = "mdl_tls_ver";
    public static final String FEATURE_KEY_MDL_TYPE = "mdl_type";
    public static final String FEATURE_KEY_MEDIACODEC_ASYNC = "mediacodec_async";
    public static final String FEATURE_KEY_METRICS_ABILITY = "metrics";
    public static final String FEATURE_KEY_MOV_PREFER_NEAR_SAMPLE = "pref_near_sample";
    public static final String FEATURE_KEY_MULTI_BITRATE_REFACTOR = "mb_refactor";
    public static final String FEATURE_KEY_NATIVE_YV12_RENDER = "yv12";
    public static final String FEATURE_KEY_NETWORK_TIMEOUT = "network_timeout";
    public static final String FEATURE_KEY_NO_BUFFER_UPDATE = " no_buffer_update";
    public static final String FEATURE_KEY_OES_TEXTURE = "oes_texture";
    public static final String FEATURE_KEY_PRECISE_CACHE = "precise_cache";
    public static final String FEATURE_KEY_PRECISE_PAUSE = "precise_pause";
    public static final String FEATURE_KEY_PRELOAD = "preload";
    public static final String FEATURE_KEY_PRELOAD_GEAR = "preload_gear";
    public static final String FEATURE_KEY_PREPARE_DECODE_ONLY = "pre_decode";
    public static final String FEATURE_KEY_PRE_DEMUX = "pre_demux";
    public static final String FEATURE_KEY_QUERY_ADAPTIVE_PLAYBACK = "query_adapt_playback";
    public static final String FEATURE_KEY_QUERY_WIN = "query_win";
    public static final String FEATURE_KEY_RENDER_TYPE = "render_type";
    public static final String FEATURE_KEY_REUSE_CODEC_FROM_POOL = "reuse_codec";
    public static final String FEATURE_KEY_SETTINGS_HARDWARE = "st_hw";
    public static final String FEATURE_KEY_SET_OPEN_VOICE_EARLY = "open_voice_early";
    public static final String FEATURE_KEY_SKIP_AUDIO_OUT = "skip_audio_out";
    public static final String FEATURE_KEY_SKIP_FIND_STREAM_INFO = "skip_find_stream";
    public static final String FEATURE_KEY_SMOOTH_CLOCK = "smooth_clock";
    public static final String FEATURE_KEY_SOCKET_REUSE = "socket_reuse";
    public static final String FEATURE_KEY_SOURCE_REFRESH = "source_refresh";
    public static final String FEATURE_KEY_SPEED_PREDICT = "speed_predict";
    public static final String FEATURE_KEY_SR = "sr";
    public static final String FEATURE_KEY_SR_STRATEGY = "sr_strategy";
    public static final String FEATURE_KEY_SUB_THREAD = "sub_thread_enable";
    public static final String FEATURE_KEY_THREAD_PRIORITY = "thread_priority";
    public static final String FEATURE_KEY_VIDEO_HW = "v_hw";
    public static final String FEATURE_KEY_VOLUME_BALANCE = "volume_balance";
    public static final String FEATURE_KEY_VOLUME_BALANCEV2 = "volume_balancev2";
    public static final String FEATURE_KEY_VOLUME_BALANCE_TOB = "volume_balance_tob";
    public static final String FEATURE_KEY_h265 = "h265";
    public static final String FEATURE_KEY_h266 = "h266";
    public static final float FLOAT_EMPTY_VALUE = Float.MIN_VALUE;
    public static final float FLOAT_INVALID_VALUE = -1.0f;
    public static final String GEAR_STRATEGY_KEY_BITRATE = "gs_bitrate";
    public static final String GEAR_STRATEGY_KEY_ERROR = "gs_error";
    public static final String GEAR_STRATEGY_KEY_HEADERS = "headers";
    public static final String GEAR_STRATEGY_KEY_ON_AFTER_BEGIN = "gs_on_after_begin";
    public static final String GEAR_STRATEGY_KEY_ON_AFTER_END = "gs_on_after_end";
    public static final String GEAR_STRATEGY_KEY_ON_BEFORE_BEGIN = "gs_on_before_begin";
    public static final String GEAR_STRATEGY_KEY_ON_BEFORE_END = "gs_on_before_end";
    public static final String GEAR_STRATEGY_KEY_REASON = "gs_reason";
    public static final String GEAR_STRATEGY_KEY_SELECT_BEGIN = "gs_select_begin";
    public static final String GEAR_STRATEGY_KEY_SELECT_END = "gs_select_end";
    public static final String GEAR_STRATEGY_KEY_SPEED = "gs_speed";
    public static final int INTEGER_EMPTY_VALUE = Integer.MIN_VALUE;
    public static final int INTEGER_INVALID_VALUE = -1;
    public static final String LOGGER_DNS_TYPE_CUSTOM = "customDNS";
    public static final String LOGGER_DNS_TYPE_CUSTOM_INNER_BYTEDANCE_HTTPDNS = "customDNSInnerByteDanceHTTPDNS";
    public static final String LOGGER_DNS_TYPE_HTTP = "httpDNS";
    public static final String LOGGER_DNS_TYPE_HTTP_GOOGLE = "httpDNS_google";
    public static final String LOGGER_DNS_TYPE_HTTP_OWN = "httpDNS_own";
    public static final String LOGGER_DNS_TYPE_LOCAL = "localDNS";
    public static final int LOGGER_LEAVE_METHOD_FINISH_ERROR = 4;
    public static final int LOGGER_LEAVE_METHOD_FINISH_NORMAL = 3;
    public static final int LOGGER_LEAVE_METHOD_FINISH_STATUS_EXCP = 5;
    public static final int LOGGER_LEAVE_METHOD_RELEASE = 1;
    public static final int LOGGER_LEAVE_METHOD_RELEASE_ASYNC = 2;
    public static final int LOGGER_LEAVE_METHOD_RESET = 6;
    public static final int LOGGER_LEAVE_METHOD_STOP = 0;
    public static final int LOGGER_OPTION_ABR_STARTUP = 91;
    public static final int LOGGER_OPTION_AE_TYPE = 54;
    public static final int LOGGER_OPTION_AUDIO_BITRATE = 56;
    public static final int LOGGER_OPTION_AUDIO_HW = 16;
    public static final int LOGGER_OPTION_AUDIO_RENDER_TYPE = 39;
    public static final int LOGGER_OPTION_AUDIO_STREAM_DISABLED = 13;
    public static final int LOGGER_OPTION_AUDIO_STREAM_DURATION = 99;
    public static final int LOGGER_OPTION_BITRATE = 21;
    public static final int LOGGER_OPTION_BITRATE_AFTER_DOWNGRADE = 137;
    public static final int LOGGER_OPTION_BITRATE_BEFORE_DOWNGRADE = 136;
    public static final int LOGGER_OPTION_BUFFERING_DIRECTLY = 26;
    public static final int LOGGER_OPTION_BUFFERING_TIMEOUT = 24;
    public static final int LOGGER_OPTION_CODEC_FRC_LEVEL = 42;
    public static final int LOGGER_OPTION_COLOR_TRC = 89;
    public static final int LOGGER_OPTION_CUSTOM_SET_RADIO_MODE = 45;
    @Deprecated
    public static final int LOGGER_OPTION_DISABLE_EVENTV3_ASYNC = 10;
    public static final int LOGGER_OPTION_DISABLE_SPLIT_VOICE = 94;
    public static final int LOGGER_OPTION_DNS_TYPE = 86;
    public static final int LOGGER_OPTION_ENABLE_ABR_SR = 134;
    public static final int LOGGER_OPTION_ENABLE_ASYNC_POSITION = 35;
    public static final int LOGGER_OPTION_ENABLE_ASYNC_PREPARE = 41;
    public static final int LOGGER_OPTION_ENABLE_AUTO_RANGE = 31;
    public static final int LOGGER_OPTION_ENABLE_ENGINE_LOOPER = 30;
    public static final int LOGGER_OPTION_ENABLE_FALLBACK_API = 34;
    public static final int LOGGER_OPTION_ENABLE_GEAR_STRATEGY = 127;
    public static final int LOGGER_OPTION_ENABLE_HTTPS = 33;
    public static final int LOGGER_OPTION_ENABLE_HW_DROP_NON_REF = 32;
    public static final int LOGGER_OPTION_ENABLE_LOADCONTROL = 36;
    public static final int LOGGER_OPTION_ENABLE_MASK = 48;
    public static final int LOGGER_OPTION_ENABLE_MASK_THREAD = 46;
    public static final int LOGGER_OPTION_ENABLE_MDL_ON_FIRST_PLAY = 173;
    public static final int LOGGER_OPTION_ENABLE_NATIVE_YV12 = 55;
    public static final int LOGGER_OPTION_ENABLE_OPT_SUB_LOAD = 50;
    public static final int LOGGER_OPTION_ENABLE_OUTLET_DROP_LIMIT = 97;
    @Deprecated
    public static final int LOGGER_OPTION_ENABLE_PLAYER_DEGRADE = 51;
    public static final int LOGGER_OPTION_ENABLE_POWER_STATISTICS = 126;
    public static final int LOGGER_OPTION_ENABLE_SMOOTH_CLOCK = 93;
    public static final int LOGGER_OPTION_ENABLE_SPEED_REPORT = 18;
    @Deprecated
    public static final int LOGGER_OPTION_ENABLE_SR = 28;
    public static final int LOGGER_OPTION_ENABLE_SR_STRATEGY = 133;
    public static final int LOGGER_OPTION_ENABLE_STRATEGY_CENTER = 96;
    public static final int LOGGER_OPTION_ENABLE_SUB = 49;
    public static final int LOGGER_OPTION_ENABLE_SUB_THREAD = 47;
    public static final int LOGGER_OPTION_ENABLE_THREAD_PRIORITY = 92;
    public static final int LOGGER_OPTION_ENABLE_TMP_LOG = 112;
    public static final int LOGGER_OPTION_ENABLE_VOLUME_ABLANCE = 29;
    public static final int LOGGER_OPTION_ENGINEPOOL_COREPOOLSIZE_BEFORE_GETENGINE = 130;
    public static final int LOGGER_OPTION_ENGINEPOOL_COREPOOLSIZE_UPPERLIMIT = 129;
    public static final int LOGGER_OPTION_ENGINEPOOL_COUNT_ENGINE_IN_USE = 131;
    public static final int LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION = 168;
    public static final int LOGGER_OPTION_ENGINE_HASHCODE = 132;
    public static final int LOGGER_OPTION_EVENT_REPORT_LEVEL = 100;
    public static final int LOGGER_OPTION_EXPIRE_PLAY_CODE = 142;
    public static final int LOGGER_OPTION_FIRST_BUF_END_MS = 27;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_BITRATE = 101;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_ERROR = 104;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_HEADERS = 141;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_ON_AFTER_BEGIN = 109;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_ON_AFTER_END = 110;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_ON_BEFORE_BEGIN = 107;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_ON_BEFORE_END = 108;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_REASON = 102;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_SELECT_BEGIN = 105;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_SELECT_END = 106;
    public static final int LOGGER_OPTION_GEAR_STRATEGY_SPEED = 103;
    public static final int LOGGER_OPTION_HARDWARE_CONF_TYPE = 95;
    public static final int LOGGER_OPTION_HDR_TYPE = 90;
    public static final int LOGGER_OPTION_IMAGE_SCALE = 38;
    @Deprecated
    public static final int LOGGER_OPTION_IS_DEGRADE_RELEASE = 52;
    public static final int LOGGER_OPTION_IS_FROM_ENGINEPOOL = 128;
    public static final int LOGGER_OPTION_IS_REPLAY = 14;
    public static final int LOGGER_OPTION_KEEP_FORMAT_THREAD_ALIVE = 44;
    public static final int LOGGER_OPTION_LAZY_SEEK = 43;
    public static final int LOGGER_OPTION_LOADTYPE_WHEN_SEEKING = 155;
    public static final int LOGGER_OPTION_LOG_ID = 15;
    public static final int LOGGER_OPTION_MASK_DELAY_LOADING = 145;
    public static final int LOGGER_OPTION_MASK_ENABLE_DATALOADER = 144;
    public static final int LOGGER_OPTION_MASK_FILE_HASH = 146;
    public static final int LOGGER_OPTION_MASK_FILE_SIZE = 147;
    public static final int LOGGER_OPTION_MASK_RANGE_OPT = 143;
    public static final int LOGGER_OPTION_MDL_GROUP_ID = 156;
    public static final int LOGGER_OPTION_MDL_INITIALIZE_ERROR = 176;
    public static final int LOGGER_OPTION_MDL_INITIALIZE_STATE = 175;
    public static final int LOGGER_OPTION_MDL_INVALID_CODE = 174;
    public static final int LOGGER_OPTION_MEDIA_ID = 154;
    public static final int LOGGER_OPTION_NETLEVEL_MAX_SAMPLE_COUNT = 23;
    public static final int LOGGER_OPTION_NETLEVEL_SAMPLE_INTERVAL = 22;
    public static final int LOGGER_OPTION_NETLEVEL_SPEED_FOR_AUDIO = 177;
    public static final int LOGGER_OPTION_NETWORK_QUALITY_VAR_STRING = 113;
    public static final int LOGGER_OPTION_NETWORK_TIMEOUT = 25;
    public static final int LOGGER_OPTION_NNSR = 79;
    public static final int LOGGER_OPTION_NOSURFACE_WHENAUDIORENDERSTART = 111;
    public static final int LOGGER_OPTION_ORIGIN_VIDEOID = 53;
    public static final int LOGGER_OPTION_OVERLAY_SHOWN = 58;
    public static final int LOGGER_OPTION_OVERLAY_TYPE = 57;
    public static final int LOGGER_OPTION_PRELOAD_MISS_REASON = 181;
    public static final int LOGGER_OPTION_PRELOAD_MISS_REASON_DASH_AUDIO = 183;
    public static final int LOGGER_OPTION_PRELOAD_MISS_REASON_DASH_VIDEO = 182;
    public static final int LOGGER_OPTION_PRE_RANGE_OFF = 81;
    public static final int LOGGER_OPTION_PROJECT_MODEL = 186;
    public static final int LOGGER_OPTION_RADIO_MODE = 11;
    public static final int LOGGER_OPTION_READ_CACHE_MODE = 80;
    public static final int LOGGER_OPTION_RENDER_TYPE = 37;
    public static final int LOGGER_OPTION_SEEKCOMPLETETIME = 169;
    public static final int LOGGER_OPTION_SEEKLOADINGBEGINTIME = 170;
    public static final int LOGGER_OPTION_SEEKLOADINGENDTIME = 171;
    public static final int LOGGER_OPTION_SET_AUDIO_FILE_HASH = 153;
    public static final int LOGGER_OPTION_SET_VIDEO_FILE_HASH = 152;
    public static final int LOGGER_OPTION_SKIP_FIND_STREAM_INFO = 40;
    public static final int LOGGER_OPTION_SPEED_INTERVAL = 17;
    public static final int LOGGER_OPTION_SPEED_REPORT_SAMPLING_RATE = 20;
    public static final int LOGGER_OPTION_SPEED_REPORT_WINDOW_SIZE = 19;
    public static final int LOGGER_OPTION_SR_FAIL_REASON = 139;
    public static final int LOGGER_OPTION_SR_MEDIA_INFO = 151;
    public static final int LOGGER_OPTION_SR_OPEN = 150;
    public static final int LOGGER_OPTION_SR_PROCESS_COST_TIME = 166;
    public static final int LOGGER_OPTION_SR_PROCESS_SUCCESS_RATE = 167;
    public static final int LOGGER_OPTION_SR_SATISFIED = 148;
    public static final int LOGGER_OPTION_SR_STATUS = 138;
    public static final int LOGGER_OPTION_SR_STRATEGY_CONFIG = 135;
    public static final int LOGGER_OPTION_SR_STRATEGY_MODE = 140;
    public static final int LOGGER_OPTION_SR_USE_TEXTURE = 149;
    public static final int LOGGER_OPTION_TIME_AUDIO_DNS_START = 66;
    public static final int LOGGER_OPTION_TIME_AVFORMAT_OPEN = 68;
    public static final int LOGGER_OPTION_TIME_A_DEC_OPENED = 75;
    public static final int LOGGER_OPTION_TIME_A_DEC_START = 73;
    public static final int LOGGER_OPTION_TIME_A_HTTP_OPEN = 121;
    public static final int LOGGER_OPTION_TIME_A_RENDER_F = 77;
    public static final int LOGGER_OPTION_TIME_A_SOCK_CREATE = 125;
    public static final int LOGGER_OPTION_TIME_A_TRAN_OPEN = 123;
    public static final int LOGGER_OPTION_TIME_DEC_CREATE = 70;
    public static final int LOGGER_OPTION_TIME_DEMUXER_BEGIN = 78;
    public static final int LOGGER_OPTION_TIME_DEMUXER_CREATE = 69;
    public static final int LOGGER_OPTION_TIME_FORMATER_CREATE = 67;
    public static final int LOGGER_OPTION_TIME_HTTP_RESPONSE = 87;
    public static final int LOGGER_OPTION_TIME_MASK_OPEN = 84;
    public static final int LOGGER_OPTION_TIME_MASK_OPENED = 85;
    public static final int LOGGER_OPTION_TIME_OUTLET_CREATE = 71;
    public static final int LOGGER_OPTION_TIME_PLAYER_PREPARED = 88;
    public static final int LOGGER_OPTION_TIME_PREPARE_CALL = 65;
    public static final int LOGGER_OPTION_TIME_PT_NEW = 64;
    public static final int LOGGER_OPTION_TIME_SET_DATASOURCE = 63;
    public static final int LOGGER_OPTION_TIME_SUB_LOAD_FINISH = 82;
    public static final int LOGGER_OPTION_TIME_SUB_REQ_FINISH = 83;
    public static final int LOGGER_OPTION_TIME_V_DEC_OPENED = 74;
    public static final int LOGGER_OPTION_TIME_V_DEC_START = 72;
    public static final int LOGGER_OPTION_TIME_V_HTTP_OPEN = 120;
    public static final int LOGGER_OPTION_TIME_V_RENDER_F = 76;
    public static final int LOGGER_OPTION_TIME_V_SOCK_CREATE = 124;
    public static final int LOGGER_OPTION_TIME_V_TRAN_OPEN = 122;
    public static final int LOGGER_OPTION_TR_EFFECT_CHAIN_AVERAGE_TIME = 164;
    public static final int LOGGER_OPTION_TR_ERROR_CODE = 165;
    public static final int LOGGER_OPTION_TR_FPS = 162;
    public static final int LOGGER_OPTION_TR_PER_EFFECT_AVERAGE_TIME = 163;
    public static final int LOGGER_OPTION_TR_VERSION = 161;
    public static final int LOGGER_OPTION_VIDEO_ABNORMAL_CODE = 178;
    public static final int LOGGER_OPTION_VIDEO_ABNORMAL_INTERVAL = 179;
    public static final int LOGGER_OPTION_VIDEO_ABNORMAL_STRATEGY = 180;
    public static final int LOGGER_OPTION_VIDEO_DIMENSION = 185;
    public static final int LOGGER_OPTION_VIDEO_STREAM_DISABLED = 12;
    public static final int LOGGER_OPTION_VIDEO_STREAM_DURATION = 98;
    public static final int LOGGER_OPTION_VIDEO_STYLE = 184;
    public static final int LOGGER_OPTION_VIEW_SIZE = 187;
    public static final int LOGGER_OPTION_VMODEL_HAS_FALLBACK_API = 172;
    public static final String LOG_CALLBACK_BEGIN_POS = "begin_pos";
    public static final String LOG_CALLBACK_CLOCK_DIFF = "clock_diff";
    public static final String LOG_CALLBACK_CODEC = "codec";
    public static final String LOG_CALLBACK_CONTAINER_FPS = "container_fps";
    public static final String LOG_CALLBACK_DECODE_HARDWARE = "hw";
    public static final String LOG_CALLBACK_DECODE_TIME = "decode_time";
    public static final String LOG_CALLBACK_ENABLE_NNSR = "enable_nnsr";
    public static final String LOG_CALLBACK_END_POS = "end_pos";
    public static final String LOG_CALLBACK_FIRST_FRAME_COST = "first_frame_cost";
    public static final String LOG_CALLBACK_LAST_SEEK_TIME = "seek_t";
    public static final String LOG_CALLBACK_LAST_SWITCH_RESOLUTION_TIME = "switch_resolution_t";
    public static final String LOG_CALLBACK_PLAY_START_TIME = "ps_t";
    public static final String LOG_CALLBACK_RENDER_DROP_COUNT = "render_drop_cnt";
    public static final String LOG_CALLBACK_TEXTURE_RENDER_ERROR = "surface_error_code";
    public static final String LOG_CALLBACK_TIME = "t";
    public static final String LOG_CALLBACK_TYPE = "type";
    public static final String LOG_CALLBACK_VIDEO_OUT_FPS = "video_out_fps";
    public static final String LOG_CALLBCK_QUALITY_DESC = "quality_desc";
    public static final String LOG_CALLBCK_RESOLUTION = "resolution";
    public static final int MDL_MODE_LOCAL_SERVER = 1;
    public static final int MDL_MODE_PROTOCOL = 2;
    public static final int PLAYER_DECODER_DROP_DYNAMIC = 2;
    public static final int PLAYER_DECODER_DROP_MAX_FPS = 1;
    public static final int PLAYER_HW_DECODER_DROP_DYNAMICDROP = 3;
    public static final int PLAYER_HW_DECODER_DROP_WHENAVOUTSYNCING = 2;
    public static final int PLAYER_HW_DECODER_DROP_WHENVOISINDROPSTATE = 1;
    public static final String SET_SURFACE_TYPE_EXTERNAL = "external";
    public static final String SET_SURFACE_TYPE_INTERNAL = "internal";
    public static final String SET_SURFACE_TYPE_SURFACE_CREATED = "surface created";
    public static final String SET_SURFACE_TYPE_SURFACE_DESTROYED = "surface destroyed";
    public static final int SPEED_IS_FIRST_FRAME = 0;
    public static final int SPEED_IS_PLAY_END = 1;

    /* loaded from: classes6.dex */
    public enum MdlInitializeState {
        Default,
        Initializing,
        InitializeComplete,
        InitializeError
    }

    /* loaded from: classes6.dex */
    public enum MdlInvalidCode {
        None,
        EmptyKey,
        EmptyFilepath,
        OptionNotSet,
        StateError,
        ProxyNotSupport,
        ParamsWrong
    }

    /* loaded from: classes6.dex */
    public enum VideoEventCustomInfo {
        VIDEOEVENT_CUSTOM_INFO_FFTIME_CLICK,
        VIDEOEVENT_CUSTOM_INFO_FFTIME_VIDEOMODEL,
        VIDEOEVENT_CUSTOM_INFO_FFTIME_CUSTOMPLAY,
        VIDEOEVENT_CUSTOM_INFO_FFTIME_INITENGINE,
        VIDEOEVENT_CUSTOM_INFO_FFTIME_PLAYENGINE,
        VIDEOEVENT_CUSTOM_INFO_CAST_OBJECT,
        VIDEOEVENT_CUSTOM_INFO_OTT_PLUGIN_VERSION,
        VIDEOEVENT_CUSTOM_INFO_COMPANY_ID,
        VIDEOEVENT_CUSTOM_INFO_CUSTOM_PLAY_SESSION_ID
    }

    void AVNoRenderEnd(int i10);

    void AVNoRenderStart(int i10, int i11);

    void AVOutSyncEnd(int i10);

    void AVOutSyncStart(int i10);

    void abrEventEnd(long j10);

    void abrEventStart(long j10, long j11);

    void accuBuffingTime(long j10);

    void accumulateSize();

    void addFeature(String str, Object obj);

    void addLabelUsage(Map<String, Object> map);

    void addSubtitleSwitchTime();

    void addWatchedDuration(int i10);

    void beginToPlay(String str, long j10, String str2);

    void bufferDataSeconds(int i10);

    IMediaMetrics buildMetrics(int i10);

    void clockDiff(long j10);

    void codecName(int i10, int i11);

    void configResolution(String str, String str2);

    void containerFps(float f10);

    void crosstalkHappen(int i10, ArrayList arrayList);

    void curAudioDecodeError(int i10);

    void curPlayBackTime(int i10);

    void curVideoDecodeError(int i10);

    void curVideoDecoderFps(int i10);

    void curVideoOutputFps(float f10);

    void curVideoRenderError(int i10);

    void deviceStartTime(int i10, long j10);

    void devicedOpenedTime(int i10, long j10);

    void didSentEvent(int i10);

    void dropCount(int i10);

    void enableSharp(int i10);

    void enableStartPlayAutomatically(boolean z10);

    void engineState(int i10);

    void fetchInfoComplete(IVideoModel iVideoModel, Error error);

    void fetchInfoComplete(VideoModel videoModel, Error error);

    void fetchedAndLeaveByUser(int i10);

    void firstDNSFailed(Error error);

    int getAsyncInit();

    Map<String, Object> getCoreEventParam();

    long getCurDecoderBufferAccuT();

    int getCurDecoderBufferCount();

    String getEncryptKey();

    String getExtraInfo();

    Error getFirstError();

    default int getIntOption(int i10) {
        return -1;
    }

    long getLeaveWaitTime();

    int getMovieStalledType();

    long getStalledAudioBufferTime();

    long getStalledVideoBufferTime();

    String getStringOption(int i10);

    String getTraceID();

    void hwCodecException(int i10);

    void hwCodecName(String str);

    void initContentReporterIfNeeded(String str);

    boolean isUploadLogEnabled();

    void logFirstError(Error error);

    void logMessage(String str);

    void logPluginException(String str);

    void loopAgain();

    void mdlRetryResult(int i10, String str, Error error);

    void movieBufferDidReachEnd();

    void movieFinish(int i10);

    void movieFinish(int i10, String str);

    void movieFinish(Error error, int i10);

    void moviePreStalled(int i10);

    void movieShouldRetry(Error error, int i10, int i11);

    void movieStallEnd(int i10);

    void movieStalled(int i10, int i11);

    void needRetryToFetch(Error error, int i10);

    void onAVBadInterlaced(long j10);

    void onVideoInfoIdChanged(int i10);

    void pause();

    void play(boolean z10);

    void playbackBufferEnd();

    void playbackBufferStart();

    void prepareEnd();

    void prepareStart();

    void recordBlockReason(int i10, boolean z10);

    void renderSeekCompleted(int i10);

    void reportBufferingMetrics();

    void reset();

    void retryFinish();

    void saveEvent();

    void seekCompleted();

    void seekTo(int i10, int i11, boolean z10);

    void setAbrGeneralInfo(Map<String, Object> map);

    void setAbrInfo(Map<String, Object> map);

    void setAudioBufferLength(long j10);

    void setAudioDNSParseTime(long j10, int i10);

    void setAudioTranConnectTime(long j10);

    void setAudioTranFirstPacketTime(long j10);

    void setCheckHijack(int i10);

    void setCurHost(String str);

    void setCurIP(String str);

    void setCurQuality(String str);

    void setCurResolution(String str);

    void setCurURL(String str);

    void setCurrentQualityDesc(String str);

    void setCustomInfo(VideoEventCustomInfo videoEventCustomInfo, Object obj);

    void setCustomP2PCDNType(int i10);

    void setCustomStr(String str);

    void setDNSEndTime(long j10);

    void setDNSParseTime(long j10, int i10);

    void setDNSStartTime(long j10, int i10);

    void setDashAudioCacheSize(long j10);

    void setDashVideoCacheSize(long j10);

    void setDecodeFirstAudioFrameTime(long j10);

    void setDecodeFirstVideoFrameTime(long j10);

    void setDisableAccurateStart(int i10);

    void setDnsMode(int i10);

    void setDrmTokenUrl(String str);

    void setDrmType(int i10);

    void setDuration(int i10);

    void setEffect(Bundle bundle);

    void setEnableBash(int i10);

    void setEnableBmfSr(int i10);

    void setEnableMDL(int i10);

    void setEncryptKey(String str);

    void setFeed(IVideoModel iVideoModel);

    void setFeed(VideoModel videoModel);

    void setFirstPlayerFirstFrameTime(long j10);

    void setFloatOption(int i10, float f10);

    void setFramesDropNum(int i10);

    void setGearStrategyEvent(Map<String, Object> map);

    void setHijackCode(int i10);

    void setHijackRetry(int i10);

    void setInitialHost(String str);

    void setInitialIP(String str);

    void setInitialQuality(String str);

    void setInitialQualityType(int i10);

    void setInitialResolution(String str);

    void setInitialURL(String str, String str2);

    void setIntOption(int i10, int i11);

    void setIsEnableABR(int i10);

    void setIsMultiDimensionsInput(int i10);

    void setIsMultiDimensionsOut(int i10);

    void setIsVideoModelCache(int i10);

    void setLoggerTimes(int i10);

    void setLongOption(int i10, long j10);

    void setLooping(boolean z10);

    void setMaskErrorCode(int i10);

    void setMaskUrl(String str);

    void setMediaCodecRender(int i10);

    void setNetWorkTryCount(int i10);

    void setNetworkSpeedFrom(double d10, int i10);

    void setP2PCDNType(int i10);

    void setP2PSDKVersion(String str);

    void setP2PUrl(String str);

    void setPlayAPIVersion(int i10, String str);

    void setPlayType(int i10);

    void setPlaybackParams(PlaybackParams playbackParams);

    void setPlayerCreatedT(long j10);

    void setPlayerHostAddr(String str);

    void setPlayerSurface(String str);

    void setPlayerViewSize(int i10, int i11);

    void setProxyUrl(String str);

    void setReceiveFirstAudioFrameTime(long j10);

    void setReceiveFirstVideoFrameTime(long j10);

    void setSRPreloadInfo(Map<String, Object> map);

    void setSRStrategyInfo(SRStrategy sRStrategy);

    void setSourceRefreshLog(JSONObject jSONObject);

    void setSourceType(int i10, String str);

    void setSpeedPredictorAlgoType(int i10);

    void setSrAlgorithm(int i10);

    void setSrScaleType(int i10);

    void setStartPlayHeight(int i10);

    void setStartPlayWidth(int i10);

    void setStartTime(int i10);

    void setStringOption(int i10, String str);

    void setSubTag(String str);

    void setSubtitleError(String str);

    void setSubtitleIdsCount(int i10);

    void setSubtitleRequestUrl(String str);

    void setSurface(String str);

    void setSurfaceBegin();

    void setSurfaceEnd();

    void setSurfaceSourceType(String str);

    void setTag(String str);

    void setTextureRenderError(String str);

    void setTraceID(String str);

    void setTranConnectTime(long j10);

    void setTranFirstPacketTime(long j10);

    void setUploadLogEnabled(boolean z10);

    void setVUArray(ArrayList arrayList);

    void setVideoBufferLength(long j10);

    void setVideoCacheSize(long j10);

    void setVrDisplayDistance(float f10);

    void setVrDisplayFrameRate(float f10);

    void setVrHeadMovementDelay(long j10);

    void setVrScreenRefreshRate(int i10);

    void showedFirstAVSyncVideoFrame(long j10);

    void showedFirstFrame();

    void showedOneFrame();

    void stop(int i10);

    @Deprecated
    void switchResolution();

    void switchResolution(String str, String str2, boolean z10);

    void switchResolutionEnd(boolean z10);

    void updateGlobalNetworkSpeed(long j10, long j11, int i10);

    void updateNetworkSpeedPredictorSampleMutiValue(SpeedPredictorResultCollection speedPredictorResultCollection, SpeedPredictorResultCollection speedPredictorResultCollection2, long j10);

    void updateNetworkSpeedPredictorSampleValue(String str, String str2, float f10, float f11, float f12, float f13, long j10, Map<String, String> map, Map<String, String> map2);

    void updateVideoInfo(IVideoModel iVideoModel);

    void updateVideoInfo(VideoModel videoModel);

    void useAsyncInit(int i10, int i11);

    void useCodecPool(int i10);

    void useHardwareDecode(int i10);

    void useTextureRender(int i10);

    void validateVideoMetaInfoFail(Error error);

    void watchFinish();

    default void updateMultiNetworkSpeed(String str) {
    }
}
