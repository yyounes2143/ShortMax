.class public interface abstract Lcom/ss/ttvideoengine/log/IVideoEventLogger;
.super Ljava/lang/Object;
.source "IVideoEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/log/IVideoEventLogger$VideoEventCustomInfo;,
        Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInitializeState;,
        Lcom/ss/ttvideoengine/log/IVideoEventLogger$MdlInvalidCode;
    }
.end annotation


# static fields
.field public static final CAST_INFO_IS_CAST_LIVE:Ljava/lang/String; = "is_cast_live"

.field public static final CAST_INFO_PROTOCAL:Ljava/lang/String; = "cast_protocal"

.field public static final CAST_INFO_SCENE_ID:Ljava/lang/String; = "cast_scene_id"

.field public static final CAST_INFO_SOURCE_APP_ID:Ljava/lang/String; = "cast_source_app_id"

.field public static final EXPIRE_PLAY_CODE_URL:I = 0x1

.field public static final EXPIRE_PLAY_CODE_VM:I = 0x2

.field public static final EXPIRE_PLAY_CODE_VM_RETRY:I = 0x3

.field public static final FEATURE_KEY_ABR:Ljava/lang/String; = "abr"

.field public static final FEATURE_KEY_ABR_STARTUP:Ljava/lang/String; = "abr_startup"

.field public static final FEATURE_KEY_AI_BARRAGE:Ljava/lang/String; = "ai_barrage"

.field public static final FEATURE_KEY_ASYNC_INIT:Ljava/lang/String; = "async_init"

.field public static final FEATURE_KEY_ASYNC_MANAGE_RESOURCE:Ljava/lang/String; = "async_res"

.field public static final FEATURE_KEY_ASYNC_POSITION:Ljava/lang/String; = "async_pos"

.field public static final FEATURE_KEY_ASYNC_SET_SURFACE:Ljava/lang/String; = "async_set_surface"

.field public static final FEATURE_KEY_AUDIO_HW:Ljava/lang/String; = "a_hw"

.field public static final FEATURE_KEY_AUDIO_RENDER_TYPE:Ljava/lang/String; = "audio_render_type"

.field public static final FEATURE_KEY_AUDIO_USE_DIRECTBUFFER:Ljava/lang/String; = "a_directbuf"

.field public static final FEATURE_KEY_AUTO_DISCONNECTED_CPU:Ljava/lang/String; = "auto_disconnect_cpu"

.field public static final FEATURE_KEY_AUTO_RANGE:Ljava/lang/String; = "auto_range"

.field public static final FEATURE_KEY_AV_INTERLACED_CHECK:Ljava/lang/String; = "av_interlaced_check"

.field public static final FEATURE_KEY_BASH:Ljava/lang/String; = "bash"

.field public static final FEATURE_KEY_BUFFER_DIRECTLY:Ljava/lang/String; = "buffer_directly"

.field public static final FEATURE_KEY_BUFFER_TIMEOUT:Ljava/lang/String; = "buffer_timeout"

.field public static final FEATURE_KEY_CACHE:Ljava/lang/String; = "cache"

.field public static final FEATURE_KEY_CHANGE_REC_BUFFER_SPEED:Ljava/lang/String; = "change_rec_buf_speed"

.field public static final FEATURE_KEY_CLEAR_MDL_CACHE:Ljava/lang/String; = "clear_mdl_cache"

.field public static final FEATURE_KEY_CODECPOOL_SUPPORT_DYNAMIC_EXTEND:Ljava/lang/String; = "codecpool_extend"

.field public static final FEATURE_KEY_CODEC_AND_SURFACE_REUSE:Ljava/lang/String; = "codec_surface_reuse"

.field public static final FEATURE_KEY_CODEC_FRC_LEVEL:Ljava/lang/String; = "frc_level"

.field public static final FEATURE_KEY_CODEC_POOL:Ljava/lang/String; = "codec_pool"

.field public static final FEATURE_KEY_CREATE_AUDIO_TRACK_EARLY:Ljava/lang/String; = "create_audiotrack_early"

.field public static final FEATURE_KEY_DECODER_DROP:Ljava/lang/String; = "decoder_drop"

.field public static final FEATURE_KEY_DEMUX_NONBLOCK_READ:Ljava/lang/String; = "demux_nonblock_read"

.field public static final FEATURE_KEY_DISABLE_SHORT_SEEK:Ljava/lang/String; = "dis_short_seek"

.field public static final FEATURE_KEY_DISABLE_SPLIT_VOICE:Ljava/lang/String; = "disable_split_voice"

.field public static final FEATURE_KEY_ENABLE_ASYNC_PREPARE:Ljava/lang/String; = "async_prepare"

.field public static final FEATURE_KEY_ENABLE_AUDIOMEM_INTERGRATION:Ljava/lang/String; = "audiomem_intergration"

.field public static final FEATURE_KEY_ENABLE_BUFFERING_LOWERCAPACITY:Ljava/lang/String; = "lower_buffering_capacity"

.field public static final FEATURE_KEY_ENABLE_CPPh266CODEC_OPT:Ljava/lang/String; = "h266_opt"

.field public static final FEATURE_KEY_ENABLE_DOWNGRADE_ASYNCCODEC:Ljava/lang/String; = "downgrade_asynccodec"

.field public static final FEATURE_KEY_ENABLE_LOAD_CONTROL:Ljava/lang/String; = "enable_loadcontrol"

.field public static final FEATURE_KEY_ENABLE_MEDIACODEC_SYNC_CLOSE:Ljava/lang/String; = "mediacodec_sync_clode"

.field public static final FEATURE_KEY_ENABLE_OPTIMIZE_HWDEC2SWDEC:Ljava/lang/String; = "opti_hwdec2swdec"

.field public static final FEATURE_KEY_ENABLE_OUTLET_DROP_LIMIT:Ljava/lang/String; = "drop_limit"

.field public static final FEATURE_KEY_ENABLE_OUT_THREAD_OPTIMIZE:Ljava/lang/String; = "out_thread_optimize"

.field public static final FEATURE_KEY_ENABLE_PCDN_AUTO:Ljava/lang/String; = "enable_pcdn_auto"

.field public static final FEATURE_KEY_ENABLE_SEEK_BUFFERING:Ljava/lang/String; = "seek_buffering"

.field public static final FEATURE_KEY_ENABLE_STRATEGY_CENTER:Ljava/lang/String; = "strategy_center"

.field public static final FEATURE_KEY_ENABLE_VIDEO_SECOND_FRAME:Ljava/lang/String; = "v_2nd_frame"

.field public static final FEATURE_KEY_ENABLE_h265_DECODER_OPTIMIZE:Ljava/lang/String; = "h265_decoder_opt"

.field public static final FEATURE_KEY_ENABLE_xHEAAC:Ljava/lang/String; = "xHEAAC_audio_support"

.field public static final FEATURE_KEY_ENGINE_LOOPER:Ljava/lang/String; = "engine_looper"

.field public static final FEATURE_KEY_FALLBACK_API:Ljava/lang/String; = "fallback_api"

.field public static final FEATURE_KEY_FIRST_BUFFER_END_MS:Ljava/lang/String; = "first_buf_end_ms"

.field public static final FEATURE_KEY_FORCE_DISABLE_OES_RENDER:Ljava/lang/String; = "force_disable_oes_render"

.field public static final FEATURE_KEY_GEAR_STRATEGY:Ljava/lang/String; = "gear_strategy"

.field public static final FEATURE_KEY_GIVEBACK_CODEC_EARLY:Ljava/lang/String; = "giveback_codec_early"

.field public static final FEATURE_KEY_HDR_HLG:Ljava/lang/String; = "hdr_hlg"

.field public static final FEATURE_KEY_HDR_PQ:Ljava/lang/String; = "hdr_pq"

.field public static final FEATURE_KEY_HEAACV2:Ljava/lang/String; = "heaacv2"

.field public static final FEATURE_KEY_HIJACK:Ljava/lang/String; = "enable_hijack"

.field public static final FEATURE_KEY_HIJACK_RETRY:Ljava/lang/String; = "hijack_retry"

.field public static final FEATURE_KEY_HTTPS:Ljava/lang/String; = "enable_https"

.field public static final FEATURE_KEY_HW_DECODER_DROP:Ljava/lang/String; = "hw_decoder_drop"

.field public static final FEATURE_KEY_HW_DROP:Ljava/lang/String; = "hw_drop"

.field public static final FEATURE_KEY_IMAGE_SCALE:Ljava/lang/String; = "image_scale"

.field public static final FEATURE_KEY_IS_FROM_ENGINEPOOL:Ljava/lang/String; = "from_engpool"

.field public static final FEATURE_KEY_KEEP_FORMAT_THREAD_ALIVE:Ljava/lang/String; = "keep_formater_alive"

.field public static final FEATURE_KEY_LAZY_SEEK:Ljava/lang/String; = "lazy_seek"

.field public static final FEATURE_KEY_LOADCONTROL_REBUF:Ljava/lang/String; = "loadcontrol_rebuf"

.field public static final FEATURE_KEY_LOADCONTROL_START:Ljava/lang/String; = "loadcontrol_start"

.field public static final FEATURE_KEY_MASK_DELAY_LOADING:Ljava/lang/String; = "mask_delay_loading"

.field public static final FEATURE_KEY_MASK_ENABLE_DATALOADER:Ljava/lang/String; = "mask_loader"

.field public static final FEATURE_KEY_MASK_ENABLE_RANGE_REQUEST:Ljava/lang/String; = "mask_range_req"

.field public static final FEATURE_KEY_MASK_THREAD:Ljava/lang/String; = "mask_thread_enable"

.field public static final FEATURE_KEY_MC_MONITOR:Ljava/lang/String; = "mc_monitor"

.field public static final FEATURE_KEY_MC_RENDER:Ljava/lang/String; = "mc_render"

.field public static final FEATURE_KEY_MDL_BACKUP_IP:Ljava/lang/String; = "mdl_backip"

.field public static final FEATURE_KEY_MDL_DNS_PARALLEL_PARSE:Ljava/lang/String; = "mdl_dns_parallel"

.field public static final FEATURE_KEY_MDL_DNS_REFRESH:Ljava/lang/String; = "mdl_dns_refresh"

.field public static final FEATURE_KEY_MDL_ENABLE_EXTERN_DNS:Ljava/lang/String; = "mdl_externdns"

.field public static final FEATURE_KEY_MDL_HTTPDNS:Ljava/lang/String; = "mdl_httpdns"

.field public static final FEATURE_KEY_MDL_PREPARSE_DNS:Ljava/lang/String; = "mdl_predns"

.field public static final FEATURE_KEY_MDL_PRE_CONNECT:Ljava/lang/String; = "mdl_preconn"

.field public static final FEATURE_KEY_MDL_SEEK_REOPEN:Ljava/lang/String; = "mdl_seek_reopen"

.field public static final FEATURE_KEY_MDL_SESSION_REUSE:Ljava/lang/String; = "mdl_session_reuse"

.field public static final FEATURE_KEY_MDL_SOCKET_MONITOR:Ljava/lang/String; = "mdl_socket_monitor"

.field public static final FEATURE_KEY_MDL_SOCKET_REUSE:Ljava/lang/String; = "mdl_socket_reuse"

.field public static final FEATURE_KEY_MDL_TLS_VERSION:Ljava/lang/String; = "mdl_tls_ver"

.field public static final FEATURE_KEY_MDL_TYPE:Ljava/lang/String; = "mdl_type"

.field public static final FEATURE_KEY_MEDIACODEC_ASYNC:Ljava/lang/String; = "mediacodec_async"

.field public static final FEATURE_KEY_METRICS_ABILITY:Ljava/lang/String; = "metrics"

.field public static final FEATURE_KEY_MOV_PREFER_NEAR_SAMPLE:Ljava/lang/String; = "pref_near_sample"

.field public static final FEATURE_KEY_MULTI_BITRATE_REFACTOR:Ljava/lang/String; = "mb_refactor"

.field public static final FEATURE_KEY_NATIVE_YV12_RENDER:Ljava/lang/String; = "yv12"

.field public static final FEATURE_KEY_NETWORK_TIMEOUT:Ljava/lang/String; = "network_timeout"

.field public static final FEATURE_KEY_NO_BUFFER_UPDATE:Ljava/lang/String; = " no_buffer_update"

.field public static final FEATURE_KEY_OES_TEXTURE:Ljava/lang/String; = "oes_texture"

.field public static final FEATURE_KEY_PRECISE_CACHE:Ljava/lang/String; = "precise_cache"

.field public static final FEATURE_KEY_PRECISE_PAUSE:Ljava/lang/String; = "precise_pause"

.field public static final FEATURE_KEY_PRELOAD:Ljava/lang/String; = "preload"

.field public static final FEATURE_KEY_PRELOAD_GEAR:Ljava/lang/String; = "preload_gear"

.field public static final FEATURE_KEY_PREPARE_DECODE_ONLY:Ljava/lang/String; = "pre_decode"

.field public static final FEATURE_KEY_PRE_DEMUX:Ljava/lang/String; = "pre_demux"

.field public static final FEATURE_KEY_QUERY_ADAPTIVE_PLAYBACK:Ljava/lang/String; = "query_adapt_playback"

.field public static final FEATURE_KEY_QUERY_WIN:Ljava/lang/String; = "query_win"

.field public static final FEATURE_KEY_RENDER_TYPE:Ljava/lang/String; = "render_type"

.field public static final FEATURE_KEY_REUSE_CODEC_FROM_POOL:Ljava/lang/String; = "reuse_codec"

.field public static final FEATURE_KEY_SETTINGS_HARDWARE:Ljava/lang/String; = "st_hw"

.field public static final FEATURE_KEY_SET_OPEN_VOICE_EARLY:Ljava/lang/String; = "open_voice_early"

.field public static final FEATURE_KEY_SKIP_AUDIO_OUT:Ljava/lang/String; = "skip_audio_out"

.field public static final FEATURE_KEY_SKIP_FIND_STREAM_INFO:Ljava/lang/String; = "skip_find_stream"

.field public static final FEATURE_KEY_SMOOTH_CLOCK:Ljava/lang/String; = "smooth_clock"

.field public static final FEATURE_KEY_SOCKET_REUSE:Ljava/lang/String; = "socket_reuse"

.field public static final FEATURE_KEY_SOURCE_REFRESH:Ljava/lang/String; = "source_refresh"

.field public static final FEATURE_KEY_SPEED_PREDICT:Ljava/lang/String; = "speed_predict"

.field public static final FEATURE_KEY_SR:Ljava/lang/String; = "sr"

.field public static final FEATURE_KEY_SR_STRATEGY:Ljava/lang/String; = "sr_strategy"

.field public static final FEATURE_KEY_SUB_THREAD:Ljava/lang/String; = "sub_thread_enable"

.field public static final FEATURE_KEY_THREAD_PRIORITY:Ljava/lang/String; = "thread_priority"

.field public static final FEATURE_KEY_VIDEO_HW:Ljava/lang/String; = "v_hw"

.field public static final FEATURE_KEY_VOLUME_BALANCE:Ljava/lang/String; = "volume_balance"

.field public static final FEATURE_KEY_VOLUME_BALANCEV2:Ljava/lang/String; = "volume_balancev2"

.field public static final FEATURE_KEY_VOLUME_BALANCE_TOB:Ljava/lang/String; = "volume_balance_tob"

.field public static final FEATURE_KEY_h265:Ljava/lang/String; = "h265"

.field public static final FEATURE_KEY_h266:Ljava/lang/String; = "h266"

.field public static final FLOAT_EMPTY_VALUE:F = 1.4E-45f

.field public static final FLOAT_INVALID_VALUE:F = -1.0f

.field public static final GEAR_STRATEGY_KEY_BITRATE:Ljava/lang/String; = "gs_bitrate"

.field public static final GEAR_STRATEGY_KEY_ERROR:Ljava/lang/String; = "gs_error"

.field public static final GEAR_STRATEGY_KEY_HEADERS:Ljava/lang/String; = "headers"

.field public static final GEAR_STRATEGY_KEY_ON_AFTER_BEGIN:Ljava/lang/String; = "gs_on_after_begin"

.field public static final GEAR_STRATEGY_KEY_ON_AFTER_END:Ljava/lang/String; = "gs_on_after_end"

.field public static final GEAR_STRATEGY_KEY_ON_BEFORE_BEGIN:Ljava/lang/String; = "gs_on_before_begin"

.field public static final GEAR_STRATEGY_KEY_ON_BEFORE_END:Ljava/lang/String; = "gs_on_before_end"

.field public static final GEAR_STRATEGY_KEY_REASON:Ljava/lang/String; = "gs_reason"

.field public static final GEAR_STRATEGY_KEY_SELECT_BEGIN:Ljava/lang/String; = "gs_select_begin"

.field public static final GEAR_STRATEGY_KEY_SELECT_END:Ljava/lang/String; = "gs_select_end"

.field public static final GEAR_STRATEGY_KEY_SPEED:Ljava/lang/String; = "gs_speed"

.field public static final INTEGER_EMPTY_VALUE:I = -0x80000000

.field public static final INTEGER_INVALID_VALUE:I = -0x1

.field public static final LOGGER_DNS_TYPE_CUSTOM:Ljava/lang/String; = "customDNS"

.field public static final LOGGER_DNS_TYPE_CUSTOM_INNER_BYTEDANCE_HTTPDNS:Ljava/lang/String; = "customDNSInnerByteDanceHTTPDNS"

.field public static final LOGGER_DNS_TYPE_HTTP:Ljava/lang/String; = "httpDNS"

.field public static final LOGGER_DNS_TYPE_HTTP_GOOGLE:Ljava/lang/String; = "httpDNS_google"

.field public static final LOGGER_DNS_TYPE_HTTP_OWN:Ljava/lang/String; = "httpDNS_own"

.field public static final LOGGER_DNS_TYPE_LOCAL:Ljava/lang/String; = "localDNS"

.field public static final LOGGER_LEAVE_METHOD_FINISH_ERROR:I = 0x4

.field public static final LOGGER_LEAVE_METHOD_FINISH_NORMAL:I = 0x3

.field public static final LOGGER_LEAVE_METHOD_FINISH_STATUS_EXCP:I = 0x5

.field public static final LOGGER_LEAVE_METHOD_RELEASE:I = 0x1

.field public static final LOGGER_LEAVE_METHOD_RELEASE_ASYNC:I = 0x2

.field public static final LOGGER_LEAVE_METHOD_RESET:I = 0x6

.field public static final LOGGER_LEAVE_METHOD_STOP:I = 0x0

.field public static final LOGGER_OPTION_ABR_STARTUP:I = 0x5b

.field public static final LOGGER_OPTION_AE_TYPE:I = 0x36

.field public static final LOGGER_OPTION_AUDIO_BITRATE:I = 0x38

.field public static final LOGGER_OPTION_AUDIO_HW:I = 0x10

.field public static final LOGGER_OPTION_AUDIO_RENDER_TYPE:I = 0x27

.field public static final LOGGER_OPTION_AUDIO_STREAM_DISABLED:I = 0xd

.field public static final LOGGER_OPTION_AUDIO_STREAM_DURATION:I = 0x63

.field public static final LOGGER_OPTION_BITRATE:I = 0x15

.field public static final LOGGER_OPTION_BITRATE_AFTER_DOWNGRADE:I = 0x89

.field public static final LOGGER_OPTION_BITRATE_BEFORE_DOWNGRADE:I = 0x88

.field public static final LOGGER_OPTION_BUFFERING_DIRECTLY:I = 0x1a

.field public static final LOGGER_OPTION_BUFFERING_TIMEOUT:I = 0x18

.field public static final LOGGER_OPTION_CODEC_FRC_LEVEL:I = 0x2a

.field public static final LOGGER_OPTION_COLOR_TRC:I = 0x59

.field public static final LOGGER_OPTION_CUSTOM_SET_RADIO_MODE:I = 0x2d

.field public static final LOGGER_OPTION_DISABLE_EVENTV3_ASYNC:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGGER_OPTION_DISABLE_SPLIT_VOICE:I = 0x5e

.field public static final LOGGER_OPTION_DNS_TYPE:I = 0x56

.field public static final LOGGER_OPTION_ENABLE_ABR_SR:I = 0x86

.field public static final LOGGER_OPTION_ENABLE_ASYNC_POSITION:I = 0x23

.field public static final LOGGER_OPTION_ENABLE_ASYNC_PREPARE:I = 0x29

.field public static final LOGGER_OPTION_ENABLE_AUTO_RANGE:I = 0x1f

.field public static final LOGGER_OPTION_ENABLE_ENGINE_LOOPER:I = 0x1e

.field public static final LOGGER_OPTION_ENABLE_FALLBACK_API:I = 0x22

.field public static final LOGGER_OPTION_ENABLE_GEAR_STRATEGY:I = 0x7f

.field public static final LOGGER_OPTION_ENABLE_HTTPS:I = 0x21

.field public static final LOGGER_OPTION_ENABLE_HW_DROP_NON_REF:I = 0x20

.field public static final LOGGER_OPTION_ENABLE_LOADCONTROL:I = 0x24

.field public static final LOGGER_OPTION_ENABLE_MASK:I = 0x30

.field public static final LOGGER_OPTION_ENABLE_MASK_THREAD:I = 0x2e

.field public static final LOGGER_OPTION_ENABLE_MDL_ON_FIRST_PLAY:I = 0xad

.field public static final LOGGER_OPTION_ENABLE_NATIVE_YV12:I = 0x37

.field public static final LOGGER_OPTION_ENABLE_OPT_SUB_LOAD:I = 0x32

.field public static final LOGGER_OPTION_ENABLE_OUTLET_DROP_LIMIT:I = 0x61

.field public static final LOGGER_OPTION_ENABLE_PLAYER_DEGRADE:I = 0x33
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGGER_OPTION_ENABLE_POWER_STATISTICS:I = 0x7e

.field public static final LOGGER_OPTION_ENABLE_SMOOTH_CLOCK:I = 0x5d

.field public static final LOGGER_OPTION_ENABLE_SPEED_REPORT:I = 0x12

.field public static final LOGGER_OPTION_ENABLE_SR:I = 0x1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGGER_OPTION_ENABLE_SR_STRATEGY:I = 0x85

.field public static final LOGGER_OPTION_ENABLE_STRATEGY_CENTER:I = 0x60

.field public static final LOGGER_OPTION_ENABLE_SUB:I = 0x31

.field public static final LOGGER_OPTION_ENABLE_SUB_THREAD:I = 0x2f

.field public static final LOGGER_OPTION_ENABLE_THREAD_PRIORITY:I = 0x5c

.field public static final LOGGER_OPTION_ENABLE_TMP_LOG:I = 0x70

.field public static final LOGGER_OPTION_ENABLE_VOLUME_ABLANCE:I = 0x1d

.field public static final LOGGER_OPTION_ENGINEPOOL_COREPOOLSIZE_BEFORE_GETENGINE:I = 0x82

.field public static final LOGGER_OPTION_ENGINEPOOL_COREPOOLSIZE_UPPERLIMIT:I = 0x81

.field public static final LOGGER_OPTION_ENGINEPOOL_COUNT_ENGINE_IN_USE:I = 0x83

.field public static final LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION:I = 0xa8

.field public static final LOGGER_OPTION_ENGINE_HASHCODE:I = 0x84

.field public static final LOGGER_OPTION_EVENT_REPORT_LEVEL:I = 0x64

.field public static final LOGGER_OPTION_EXPIRE_PLAY_CODE:I = 0x8e

.field public static final LOGGER_OPTION_FIRST_BUF_END_MS:I = 0x1b

.field public static final LOGGER_OPTION_GEAR_STRATEGY_BITRATE:I = 0x65

.field public static final LOGGER_OPTION_GEAR_STRATEGY_ERROR:I = 0x68

.field public static final LOGGER_OPTION_GEAR_STRATEGY_HEADERS:I = 0x8d

.field public static final LOGGER_OPTION_GEAR_STRATEGY_ON_AFTER_BEGIN:I = 0x6d

.field public static final LOGGER_OPTION_GEAR_STRATEGY_ON_AFTER_END:I = 0x6e

.field public static final LOGGER_OPTION_GEAR_STRATEGY_ON_BEFORE_BEGIN:I = 0x6b

.field public static final LOGGER_OPTION_GEAR_STRATEGY_ON_BEFORE_END:I = 0x6c

.field public static final LOGGER_OPTION_GEAR_STRATEGY_REASON:I = 0x66

.field public static final LOGGER_OPTION_GEAR_STRATEGY_SELECT_BEGIN:I = 0x69

.field public static final LOGGER_OPTION_GEAR_STRATEGY_SELECT_END:I = 0x6a

.field public static final LOGGER_OPTION_GEAR_STRATEGY_SPEED:I = 0x67

.field public static final LOGGER_OPTION_HARDWARE_CONF_TYPE:I = 0x5f

.field public static final LOGGER_OPTION_HDR_TYPE:I = 0x5a

.field public static final LOGGER_OPTION_IMAGE_SCALE:I = 0x26

.field public static final LOGGER_OPTION_IS_DEGRADE_RELEASE:I = 0x34
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOGGER_OPTION_IS_FROM_ENGINEPOOL:I = 0x80

.field public static final LOGGER_OPTION_IS_REPLAY:I = 0xe

.field public static final LOGGER_OPTION_KEEP_FORMAT_THREAD_ALIVE:I = 0x2c

.field public static final LOGGER_OPTION_LAZY_SEEK:I = 0x2b

.field public static final LOGGER_OPTION_LOADTYPE_WHEN_SEEKING:I = 0x9b

.field public static final LOGGER_OPTION_LOG_ID:I = 0xf

.field public static final LOGGER_OPTION_MASK_DELAY_LOADING:I = 0x91

.field public static final LOGGER_OPTION_MASK_ENABLE_DATALOADER:I = 0x90

.field public static final LOGGER_OPTION_MASK_FILE_HASH:I = 0x92

.field public static final LOGGER_OPTION_MASK_FILE_SIZE:I = 0x93

.field public static final LOGGER_OPTION_MASK_RANGE_OPT:I = 0x8f

.field public static final LOGGER_OPTION_MDL_GROUP_ID:I = 0x9c

.field public static final LOGGER_OPTION_MDL_INITIALIZE_ERROR:I = 0xb0

.field public static final LOGGER_OPTION_MDL_INITIALIZE_STATE:I = 0xaf

.field public static final LOGGER_OPTION_MDL_INVALID_CODE:I = 0xae

.field public static final LOGGER_OPTION_MEDIA_ID:I = 0x9a

.field public static final LOGGER_OPTION_NETLEVEL_MAX_SAMPLE_COUNT:I = 0x17

.field public static final LOGGER_OPTION_NETLEVEL_SAMPLE_INTERVAL:I = 0x16

.field public static final LOGGER_OPTION_NETLEVEL_SPEED_FOR_AUDIO:I = 0xb1

.field public static final LOGGER_OPTION_NETWORK_QUALITY_VAR_STRING:I = 0x71

.field public static final LOGGER_OPTION_NETWORK_TIMEOUT:I = 0x19

.field public static final LOGGER_OPTION_NNSR:I = 0x4f

.field public static final LOGGER_OPTION_NOSURFACE_WHENAUDIORENDERSTART:I = 0x6f

.field public static final LOGGER_OPTION_ORIGIN_VIDEOID:I = 0x35

.field public static final LOGGER_OPTION_OVERLAY_SHOWN:I = 0x3a

.field public static final LOGGER_OPTION_OVERLAY_TYPE:I = 0x39

.field public static final LOGGER_OPTION_PRELOAD_MISS_REASON:I = 0xb5

.field public static final LOGGER_OPTION_PRELOAD_MISS_REASON_DASH_AUDIO:I = 0xb7

.field public static final LOGGER_OPTION_PRELOAD_MISS_REASON_DASH_VIDEO:I = 0xb6

.field public static final LOGGER_OPTION_PRE_RANGE_OFF:I = 0x51

.field public static final LOGGER_OPTION_PROJECT_MODEL:I = 0xba

.field public static final LOGGER_OPTION_RADIO_MODE:I = 0xb

.field public static final LOGGER_OPTION_READ_CACHE_MODE:I = 0x50

.field public static final LOGGER_OPTION_RENDER_TYPE:I = 0x25

.field public static final LOGGER_OPTION_SEEKCOMPLETETIME:I = 0xa9

.field public static final LOGGER_OPTION_SEEKLOADINGBEGINTIME:I = 0xaa

.field public static final LOGGER_OPTION_SEEKLOADINGENDTIME:I = 0xab

.field public static final LOGGER_OPTION_SET_AUDIO_FILE_HASH:I = 0x99

.field public static final LOGGER_OPTION_SET_VIDEO_FILE_HASH:I = 0x98

.field public static final LOGGER_OPTION_SKIP_FIND_STREAM_INFO:I = 0x28

.field public static final LOGGER_OPTION_SPEED_INTERVAL:I = 0x11

.field public static final LOGGER_OPTION_SPEED_REPORT_SAMPLING_RATE:I = 0x14

.field public static final LOGGER_OPTION_SPEED_REPORT_WINDOW_SIZE:I = 0x13

.field public static final LOGGER_OPTION_SR_FAIL_REASON:I = 0x8b

.field public static final LOGGER_OPTION_SR_MEDIA_INFO:I = 0x97

.field public static final LOGGER_OPTION_SR_OPEN:I = 0x96

.field public static final LOGGER_OPTION_SR_PROCESS_COST_TIME:I = 0xa6

.field public static final LOGGER_OPTION_SR_PROCESS_SUCCESS_RATE:I = 0xa7

.field public static final LOGGER_OPTION_SR_SATISFIED:I = 0x94

.field public static final LOGGER_OPTION_SR_STATUS:I = 0x8a

.field public static final LOGGER_OPTION_SR_STRATEGY_CONFIG:I = 0x87

.field public static final LOGGER_OPTION_SR_STRATEGY_MODE:I = 0x8c

.field public static final LOGGER_OPTION_SR_USE_TEXTURE:I = 0x95

.field public static final LOGGER_OPTION_TIME_AUDIO_DNS_START:I = 0x42

.field public static final LOGGER_OPTION_TIME_AVFORMAT_OPEN:I = 0x44

.field public static final LOGGER_OPTION_TIME_A_DEC_OPENED:I = 0x4b

.field public static final LOGGER_OPTION_TIME_A_DEC_START:I = 0x49

.field public static final LOGGER_OPTION_TIME_A_HTTP_OPEN:I = 0x79

.field public static final LOGGER_OPTION_TIME_A_RENDER_F:I = 0x4d

.field public static final LOGGER_OPTION_TIME_A_SOCK_CREATE:I = 0x7d

.field public static final LOGGER_OPTION_TIME_A_TRAN_OPEN:I = 0x7b

.field public static final LOGGER_OPTION_TIME_DEC_CREATE:I = 0x46

.field public static final LOGGER_OPTION_TIME_DEMUXER_BEGIN:I = 0x4e

.field public static final LOGGER_OPTION_TIME_DEMUXER_CREATE:I = 0x45

.field public static final LOGGER_OPTION_TIME_FORMATER_CREATE:I = 0x43

.field public static final LOGGER_OPTION_TIME_HTTP_RESPONSE:I = 0x57

.field public static final LOGGER_OPTION_TIME_MASK_OPEN:I = 0x54

.field public static final LOGGER_OPTION_TIME_MASK_OPENED:I = 0x55

.field public static final LOGGER_OPTION_TIME_OUTLET_CREATE:I = 0x47

.field public static final LOGGER_OPTION_TIME_PLAYER_PREPARED:I = 0x58

.field public static final LOGGER_OPTION_TIME_PREPARE_CALL:I = 0x41

.field public static final LOGGER_OPTION_TIME_PT_NEW:I = 0x40

.field public static final LOGGER_OPTION_TIME_SET_DATASOURCE:I = 0x3f

.field public static final LOGGER_OPTION_TIME_SUB_LOAD_FINISH:I = 0x52

.field public static final LOGGER_OPTION_TIME_SUB_REQ_FINISH:I = 0x53

.field public static final LOGGER_OPTION_TIME_V_DEC_OPENED:I = 0x4a

.field public static final LOGGER_OPTION_TIME_V_DEC_START:I = 0x48

.field public static final LOGGER_OPTION_TIME_V_HTTP_OPEN:I = 0x78

.field public static final LOGGER_OPTION_TIME_V_RENDER_F:I = 0x4c

.field public static final LOGGER_OPTION_TIME_V_SOCK_CREATE:I = 0x7c

.field public static final LOGGER_OPTION_TIME_V_TRAN_OPEN:I = 0x7a

.field public static final LOGGER_OPTION_TR_EFFECT_CHAIN_AVERAGE_TIME:I = 0xa4

.field public static final LOGGER_OPTION_TR_ERROR_CODE:I = 0xa5

.field public static final LOGGER_OPTION_TR_FPS:I = 0xa2

.field public static final LOGGER_OPTION_TR_PER_EFFECT_AVERAGE_TIME:I = 0xa3

.field public static final LOGGER_OPTION_TR_VERSION:I = 0xa1

.field public static final LOGGER_OPTION_VIDEO_ABNORMAL_CODE:I = 0xb2

.field public static final LOGGER_OPTION_VIDEO_ABNORMAL_INTERVAL:I = 0xb3

.field public static final LOGGER_OPTION_VIDEO_ABNORMAL_STRATEGY:I = 0xb4

.field public static final LOGGER_OPTION_VIDEO_DIMENSION:I = 0xb9

.field public static final LOGGER_OPTION_VIDEO_STREAM_DISABLED:I = 0xc

.field public static final LOGGER_OPTION_VIDEO_STREAM_DURATION:I = 0x62

.field public static final LOGGER_OPTION_VIDEO_STYLE:I = 0xb8

.field public static final LOGGER_OPTION_VIEW_SIZE:I = 0xbb

.field public static final LOGGER_OPTION_VMODEL_HAS_FALLBACK_API:I = 0xac

.field public static final LOG_CALLBACK_BEGIN_POS:Ljava/lang/String; = "begin_pos"

.field public static final LOG_CALLBACK_CLOCK_DIFF:Ljava/lang/String; = "clock_diff"

.field public static final LOG_CALLBACK_CODEC:Ljava/lang/String; = "codec"

.field public static final LOG_CALLBACK_CONTAINER_FPS:Ljava/lang/String; = "container_fps"

.field public static final LOG_CALLBACK_DECODE_HARDWARE:Ljava/lang/String; = "hw"

.field public static final LOG_CALLBACK_DECODE_TIME:Ljava/lang/String; = "decode_time"

.field public static final LOG_CALLBACK_ENABLE_NNSR:Ljava/lang/String; = "enable_nnsr"

.field public static final LOG_CALLBACK_END_POS:Ljava/lang/String; = "end_pos"

.field public static final LOG_CALLBACK_FIRST_FRAME_COST:Ljava/lang/String; = "first_frame_cost"

.field public static final LOG_CALLBACK_LAST_SEEK_TIME:Ljava/lang/String; = "seek_t"

.field public static final LOG_CALLBACK_LAST_SWITCH_RESOLUTION_TIME:Ljava/lang/String; = "switch_resolution_t"

.field public static final LOG_CALLBACK_PLAY_START_TIME:Ljava/lang/String; = "ps_t"

.field public static final LOG_CALLBACK_RENDER_DROP_COUNT:Ljava/lang/String; = "render_drop_cnt"

.field public static final LOG_CALLBACK_TEXTURE_RENDER_ERROR:Ljava/lang/String; = "surface_error_code"

.field public static final LOG_CALLBACK_TIME:Ljava/lang/String; = "t"

.field public static final LOG_CALLBACK_TYPE:Ljava/lang/String; = "type"

.field public static final LOG_CALLBACK_VIDEO_OUT_FPS:Ljava/lang/String; = "video_out_fps"

.field public static final LOG_CALLBCK_QUALITY_DESC:Ljava/lang/String; = "quality_desc"

.field public static final LOG_CALLBCK_RESOLUTION:Ljava/lang/String; = "resolution"

.field public static final MDL_MODE_LOCAL_SERVER:I = 0x1

.field public static final MDL_MODE_PROTOCOL:I = 0x2

.field public static final PLAYER_DECODER_DROP_DYNAMIC:I = 0x2

.field public static final PLAYER_DECODER_DROP_MAX_FPS:I = 0x1

.field public static final PLAYER_HW_DECODER_DROP_DYNAMICDROP:I = 0x3

.field public static final PLAYER_HW_DECODER_DROP_WHENAVOUTSYNCING:I = 0x2

.field public static final PLAYER_HW_DECODER_DROP_WHENVOISINDROPSTATE:I = 0x1

.field public static final SET_SURFACE_TYPE_EXTERNAL:Ljava/lang/String; = "external"

.field public static final SET_SURFACE_TYPE_INTERNAL:Ljava/lang/String; = "internal"

.field public static final SET_SURFACE_TYPE_SURFACE_CREATED:Ljava/lang/String; = "surface created"

.field public static final SET_SURFACE_TYPE_SURFACE_DESTROYED:Ljava/lang/String; = "surface destroyed"

.field public static final SPEED_IS_FIRST_FRAME:I = 0x0

.field public static final SPEED_IS_PLAY_END:I = 0x1


# virtual methods
.method public abstract AVNoRenderEnd(I)V
.end method

.method public abstract AVNoRenderStart(II)V
.end method

.method public abstract AVOutSyncEnd(I)V
.end method

.method public abstract AVOutSyncStart(I)V
.end method

.method public abstract abrEventEnd(J)V
.end method

.method public abstract abrEventStart(JJ)V
.end method

.method public abstract accuBuffingTime(J)V
.end method

.method public abstract accumulateSize()V
.end method

.method public abstract addFeature(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract addLabelUsage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addSubtitleSwitchTime()V
.end method

.method public abstract addWatchedDuration(I)V
.end method

.method public abstract beginToPlay(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract bufferDataSeconds(I)V
.end method

.method public abstract buildMetrics(I)Lcom/ss/ttvideoengine/metrics/IMediaMetrics;
.end method

.method public abstract clockDiff(J)V
.end method

.method public abstract codecName(II)V
.end method

.method public abstract configResolution(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract containerFps(F)V
.end method

.method public abstract crosstalkHappen(ILjava/util/ArrayList;)V
.end method

.method public abstract curAudioDecodeError(I)V
.end method

.method public abstract curPlayBackTime(I)V
.end method

.method public abstract curVideoDecodeError(I)V
.end method

.method public abstract curVideoDecoderFps(I)V
.end method

.method public abstract curVideoOutputFps(F)V
.end method

.method public abstract curVideoRenderError(I)V
.end method

.method public abstract deviceStartTime(IJ)V
.end method

.method public abstract devicedOpenedTime(IJ)V
.end method

.method public abstract didSentEvent(I)V
.end method

.method public abstract dropCount(I)V
.end method

.method public abstract enableSharp(I)V
.end method

.method public abstract enableStartPlayAutomatically(Z)V
.end method

.method public abstract engineState(I)V
.end method

.method public abstract fetchInfoComplete(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract fetchInfoComplete(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract fetchedAndLeaveByUser(I)V
.end method

.method public abstract firstDNSFailed(Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract getAsyncInit()I
.end method

.method public abstract getCoreEventParam()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurDecoderBufferAccuT()J
.end method

.method public abstract getCurDecoderBufferCount()I
.end method

.method public abstract getEncryptKey()Ljava/lang/String;
.end method

.method public abstract getExtraInfo()Ljava/lang/String;
.end method

.method public abstract getFirstError()Lcom/ss/ttvideoengine/utils/Error;
.end method

.method public getIntOption(I)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    .line 2
    return p1
.end method

.method public abstract getLeaveWaitTime()J
.end method

.method public abstract getMovieStalledType()I
.end method

.method public abstract getStalledAudioBufferTime()J
.end method

.method public abstract getStalledVideoBufferTime()J
.end method

.method public abstract getStringOption(I)Ljava/lang/String;
.end method

.method public abstract getTraceID()Ljava/lang/String;
.end method

.method public abstract hwCodecException(I)V
.end method

.method public abstract hwCodecName(Ljava/lang/String;)V
.end method

.method public abstract initContentReporterIfNeeded(Ljava/lang/String;)V
.end method

.method public abstract isUploadLogEnabled()Z
.end method

.method public abstract logFirstError(Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract logMessage(Ljava/lang/String;)V
.end method

.method public abstract logPluginException(Ljava/lang/String;)V
.end method

.method public abstract loopAgain()V
.end method

.method public abstract mdlRetryResult(ILjava/lang/String;Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract movieBufferDidReachEnd()V
.end method

.method public abstract movieFinish(I)V
.end method

.method public abstract movieFinish(ILjava/lang/String;)V
.end method

.method public abstract movieFinish(Lcom/ss/ttvideoengine/utils/Error;I)V
.end method

.method public abstract moviePreStalled(I)V
.end method

.method public abstract movieShouldRetry(Lcom/ss/ttvideoengine/utils/Error;II)V
.end method

.method public abstract movieStallEnd(I)V
.end method

.method public abstract movieStalled(II)V
.end method

.method public abstract needRetryToFetch(Lcom/ss/ttvideoengine/utils/Error;I)V
.end method

.method public abstract onAVBadInterlaced(J)V
.end method

.method public abstract onVideoInfoIdChanged(I)V
.end method

.method public abstract pause()V
.end method

.method public abstract play(Z)V
.end method

.method public abstract playbackBufferEnd()V
.end method

.method public abstract playbackBufferStart()V
.end method

.method public abstract prepareEnd()V
.end method

.method public abstract prepareStart()V
.end method

.method public abstract recordBlockReason(IZ)V
.end method

.method public abstract renderSeekCompleted(I)V
.end method

.method public abstract reportBufferingMetrics()V
.end method

.method public abstract reset()V
.end method

.method public abstract retryFinish()V
.end method

.method public abstract saveEvent()V
.end method

.method public abstract seekCompleted()V
.end method

.method public abstract seekTo(IIZ)V
.end method

.method public abstract setAbrGeneralInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAbrInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAudioBufferLength(J)V
.end method

.method public abstract setAudioDNSParseTime(JI)V
.end method

.method public abstract setAudioTranConnectTime(J)V
.end method

.method public abstract setAudioTranFirstPacketTime(J)V
.end method

.method public abstract setCheckHijack(I)V
.end method

.method public abstract setCurHost(Ljava/lang/String;)V
.end method

.method public abstract setCurIP(Ljava/lang/String;)V
.end method

.method public abstract setCurQuality(Ljava/lang/String;)V
.end method

.method public abstract setCurResolution(Ljava/lang/String;)V
.end method

.method public abstract setCurURL(Ljava/lang/String;)V
.end method

.method public abstract setCurrentQualityDesc(Ljava/lang/String;)V
.end method

.method public abstract setCustomInfo(Lcom/ss/ttvideoengine/log/IVideoEventLogger$VideoEventCustomInfo;Ljava/lang/Object;)V
.end method

.method public abstract setCustomP2PCDNType(I)V
.end method

.method public abstract setCustomStr(Ljava/lang/String;)V
.end method

.method public abstract setDNSEndTime(J)V
.end method

.method public abstract setDNSParseTime(JI)V
.end method

.method public abstract setDNSStartTime(JI)V
.end method

.method public abstract setDashAudioCacheSize(J)V
.end method

.method public abstract setDashVideoCacheSize(J)V
.end method

.method public abstract setDecodeFirstAudioFrameTime(J)V
.end method

.method public abstract setDecodeFirstVideoFrameTime(J)V
.end method

.method public abstract setDisableAccurateStart(I)V
.end method

.method public abstract setDnsMode(I)V
.end method

.method public abstract setDrmTokenUrl(Ljava/lang/String;)V
.end method

.method public abstract setDrmType(I)V
.end method

.method public abstract setDuration(I)V
.end method

.method public abstract setEffect(Landroid/os/Bundle;)V
.end method

.method public abstract setEnableBash(I)V
.end method

.method public abstract setEnableBmfSr(I)V
.end method

.method public abstract setEnableMDL(I)V
.end method

.method public abstract setEncryptKey(Ljava/lang/String;)V
.end method

.method public abstract setFeed(Lcom/ss/ttvideoengine/model/IVideoModel;)V
.end method

.method public abstract setFeed(Lcom/ss/ttvideoengine/model/VideoModel;)V
.end method

.method public abstract setFirstPlayerFirstFrameTime(J)V
.end method

.method public abstract setFloatOption(IF)V
.end method

.method public abstract setFramesDropNum(I)V
.end method

.method public abstract setGearStrategyEvent(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setHijackCode(I)V
.end method

.method public abstract setHijackRetry(I)V
.end method

.method public abstract setInitialHost(Ljava/lang/String;)V
.end method

.method public abstract setInitialIP(Ljava/lang/String;)V
.end method

.method public abstract setInitialQuality(Ljava/lang/String;)V
.end method

.method public abstract setInitialQualityType(I)V
.end method

.method public abstract setInitialResolution(Ljava/lang/String;)V
.end method

.method public abstract setInitialURL(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIntOption(II)V
.end method

.method public abstract setIsEnableABR(I)V
.end method

.method public abstract setIsMultiDimensionsInput(I)V
.end method

.method public abstract setIsMultiDimensionsOut(I)V
.end method

.method public abstract setIsVideoModelCache(I)V
.end method

.method public abstract setLoggerTimes(I)V
.end method

.method public abstract setLongOption(IJ)V
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setMaskErrorCode(I)V
.end method

.method public abstract setMaskUrl(Ljava/lang/String;)V
.end method

.method public abstract setMediaCodecRender(I)V
.end method

.method public abstract setNetWorkTryCount(I)V
.end method

.method public abstract setNetworkSpeedFrom(DI)V
.end method

.method public abstract setP2PCDNType(I)V
.end method

.method public abstract setP2PSDKVersion(Ljava/lang/String;)V
.end method

.method public abstract setP2PUrl(Ljava/lang/String;)V
.end method

.method public abstract setPlayAPIVersion(ILjava/lang/String;)V
.end method

.method public abstract setPlayType(I)V
.end method

.method public abstract setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
.end method

.method public abstract setPlayerCreatedT(J)V
.end method

.method public abstract setPlayerHostAddr(Ljava/lang/String;)V
.end method

.method public abstract setPlayerSurface(Ljava/lang/String;)V
.end method

.method public abstract setPlayerViewSize(II)V
.end method

.method public abstract setProxyUrl(Ljava/lang/String;)V
.end method

.method public abstract setReceiveFirstAudioFrameTime(J)V
.end method

.method public abstract setReceiveFirstVideoFrameTime(J)V
.end method

.method public abstract setSRPreloadInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSRStrategyInfo(Lcom/ss/ttvideoengine/superresolution/SRStrategy;)V
.end method

.method public abstract setSourceRefreshLog(Lorg/json/JSONObject;)V
.end method

.method public abstract setSourceType(ILjava/lang/String;)V
.end method

.method public abstract setSpeedPredictorAlgoType(I)V
.end method

.method public abstract setSrAlgorithm(I)V
.end method

.method public abstract setSrScaleType(I)V
.end method

.method public abstract setStartPlayHeight(I)V
.end method

.method public abstract setStartPlayWidth(I)V
.end method

.method public abstract setStartTime(I)V
.end method

.method public abstract setStringOption(ILjava/lang/String;)V
.end method

.method public abstract setSubTag(Ljava/lang/String;)V
.end method

.method public abstract setSubtitleError(Ljava/lang/String;)V
.end method

.method public abstract setSubtitleIdsCount(I)V
.end method

.method public abstract setSubtitleRequestUrl(Ljava/lang/String;)V
.end method

.method public abstract setSurface(Ljava/lang/String;)V
.end method

.method public abstract setSurfaceBegin()V
.end method

.method public abstract setSurfaceEnd()V
.end method

.method public abstract setSurfaceSourceType(Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract setTextureRenderError(Ljava/lang/String;)V
.end method

.method public abstract setTraceID(Ljava/lang/String;)V
.end method

.method public abstract setTranConnectTime(J)V
.end method

.method public abstract setTranFirstPacketTime(J)V
.end method

.method public abstract setUploadLogEnabled(Z)V
.end method

.method public abstract setVUArray(Ljava/util/ArrayList;)V
.end method

.method public abstract setVideoBufferLength(J)V
.end method

.method public abstract setVideoCacheSize(J)V
.end method

.method public abstract setVrDisplayDistance(F)V
.end method

.method public abstract setVrDisplayFrameRate(F)V
.end method

.method public abstract setVrHeadMovementDelay(J)V
.end method

.method public abstract setVrScreenRefreshRate(I)V
.end method

.method public abstract showedFirstAVSyncVideoFrame(J)V
.end method

.method public abstract showedFirstFrame()V
.end method

.method public abstract showedOneFrame()V
.end method

.method public abstract stop(I)V
.end method

.method public abstract switchResolution()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract switchResolution(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract switchResolutionEnd(Z)V
.end method

.method public abstract updateGlobalNetworkSpeed(JJI)V
.end method

.method public updateMultiNetworkSpeed(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract updateNetworkSpeedPredictorSampleMutiValue(Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;Lcom/bytedance/vcloud/networkpredictor/SpeedPredictorResultCollection;J)V
.end method

.method public abstract updateNetworkSpeedPredictorSampleValue(Ljava/lang/String;Ljava/lang/String;FFFFJLjava/util/Map;Ljava/util/Map;)V
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
.end method

.method public abstract updateVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;)V
.end method

.method public abstract updateVideoInfo(Lcom/ss/ttvideoengine/model/VideoModel;)V
.end method

.method public abstract useAsyncInit(II)V
.end method

.method public abstract useCodecPool(I)V
.end method

.method public abstract useHardwareDecode(I)V
.end method

.method public abstract useTextureRender(I)V
.end method

.method public abstract validateVideoMetaInfoFail(Lcom/ss/ttvideoengine/utils/Error;)V
.end method

.method public abstract watchFinish()V
.end method
