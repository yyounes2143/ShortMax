.class public interface abstract Lcom/ss/ttm/player/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/MediaPlayer$TrackInfo;,
        Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnLogListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;,
        Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;
    }
.end annotation


# static fields
.field public static final AE_CLIMITER:I = 0x1

.field public static final AE_COMPRESSOR:I = 0x0

.field public static final AUDIO_MASTER:I = 0x0

.field public static final AVCOL_PRI_BT2020:I = 0x9

.field public static final AVCOL_PRI_BT709:I = 0x1

.field public static final AVCOL_PRI_UNSPECIFIED:I = 0x2

.field public static final AVCOL_SPC_BT2020_CL:I = 0xa

.field public static final AVCOL_SPC_BT2020_NCL:I = 0x9

.field public static final AVCOL_SPC_BT709:I = 0x1

.field public static final AVCOL_SPC_UNSPECIFIED:I = 0x2

.field public static final AVCOL_TRC_ARIB_STD_B67:I = 0x12

.field public static final AVCOL_TRC_BT709:I = 0x1

.field public static final AVCOL_TRC_SMPTE2084:I = 0x10

.field public static final AVCOL_TRC_UNSPECIFIED:I = 0x2

.field public static final AVSeekTypeAny:I = 0x0

.field public static final AVSeekTypeBackWard:I = 0x1

.field public static final CACHE_LOADER:I = 0x4

.field public static final CONSTRAST_IMAGE_ENHANCEMENT:I = 0x1

.field public static final DEFAULT_IMAGE_ENHANCEMENT:I = 0x0

.field public static final DISABLE_DECODE_EXTERN_INFO:I = 0x0

.field public static final DISABLE_TEST_NET_SPEED_VALUE:I = -0x1

.field public static final ENABLE_DECODE_EXTERN_INFO:I = 0x1

.field public static final ENABLE_TEST_NET_SPEED_INTERVAL_VALUE:I = 0x1

.field public static final ENABLE_TEST_NET_SPEED_VALUE:I = 0x0

.field public static final FFMPEG_LOG_DEBUG:I = 0x30

.field public static final FFMPEG_LOG_ERROR:I = 0x10

.field public static final FFMPEG_LOG_TRACE:I = 0x38

.field public static final FRC_DEFAULT:I = 0x1

.field public static final FRC_DISABLE:I = 0x0

.field public static final FRC_HIGH:I = 0x3

.field public static final FRC_MEDIUM:I = 0x2

.field public static final HTTP_LOADER:I = 0x0

.field public static final IMAGE_LAYOUT_ASPECT_FILL:I = 0x2

.field public static final IMAGE_LAYOUT_ASPECT_FIT:I = 0x0

.field public static final IMAGE_LAYOUT_FROM_LEFT_UP:I = 0x3

.field public static final IMAGE_LAYOUT_TO_FILL:I = 0x1

.field public static final IS_EXO_PLAYER:I = 0x5

.field public static final IS_FREEDOM_PLAYER:I = 0x6

.field public static final IS_LIVE_PLAY:I = 0x0

.field public static final IS_OS_PLAYER:I = 0x0

.field public static final IS_TT_IPC_PLAYER:I = 0x2

.field public static final IS_TT_LITE_IPC_PLAYER:I = 0x4

.field public static final IS_TT_LITE_PLAYER:I = 0x3

.field public static final IS_TT_PLAYER:I = 0x1

.field public static final IS_VOD_PLAY:I = 0x1

.field public static final IsBreakpadCrashValue:I = 0x1

.field public static final IsSimpleCrashValue:I = 0x0

.field public static final LANCZOS_SCALE_VALUE:I = 0x1

.field public static final LINEAR_SCALE_VALUE:I = 0x0

.field public static final MEDIA_EXTERN_INFO_STREAM_INFO:I = 0x13

.field public static final MEDIA_INFO_ABR_GET_PREDICT:I = -0xfffffea

.field public static final MEDIA_INFO_AUDIO_DECODE_STALL:I = -0xfffffef

.field public static final MEDIA_INFO_AUDIO_DEMUX_STALL:I = -0xffffff1

.field public static final MEDIA_INFO_AUDIO_PTS_BACK:I = -0xfffffed

.field public static final MEDIA_INFO_AUDIO_RENDER_STALL:I = 0xf00000a

.field public static final MEDIA_INFO_AUDIO_RENDER_START:I = 0xf00000c

.field public static final MEDIA_INFO_AVOUTSYNC_END:I = -0xfffffce

.field public static final MEDIA_INFO_AVOUTSYNC_START:I = -0xfffffcf

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_BARRAGE_MASK_INFO:I = -0xfffffc0

.field public static final MEDIA_INFO_BUFFERING_END:I = 0x2be
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_BUFFERING_START:I = 0x2bd
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_BUFFER_RECVED:I = 0xf000002

.field public static final MEDIA_INFO_DECODER_START:I = -0xfffffcc

.field public static final MEDIA_INFO_DEVICE_OPENED:I = 0xf000005

.field public static final MEDIA_INFO_DUMMY_PLAYER_SESSON_STOP:I = 0x1000001

.field public static final MEDIA_INFO_EXO_FIRST_FRAME:I = 0x4

.field public static final MEDIA_INFO_FIRST_AVSYNC_FRAME:I = -0xfffffba

.field public static final MEDIA_INFO_FIRST_FRAME_AFTER_SEEK:I = 0xf000008

.field public static final MEDIA_INFO_FORMATER_START:I = -0xfffffcd

.field public static final MEDIA_INFO_HTTP_REDIRECT:I = 0xf000001

.field public static final MEDIA_INFO_INFO_ID_CHANGED:I = -0xfffffec

.field public static final MEDIA_INFO_LIVE_FIRST_FRAME_AFTER_SURFACE_CHANGE:I = -0xfffffbb

.field public static final MEDIA_INFO_LIVE_HURRY_SKIP_END:I = 0x44

.field public static final MEDIA_INFO_LIVE_VIDEO_RENDER_START:I = -0xfffffbd

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_POSITION_UPDATE:I = -0xfffffee

.field public static final MEDIA_INFO_PREBUFFERING_START:I = -0xfffffd0

.field public static final MEDIA_INFO_PRECISE_PAUSED:I = -0xfffffeb

.field public static final MEDIA_INFO_REFRESH_SURFACE:I = -0xfffffb9

.field public static final MEDIA_INFO_RENDER_EXCEPTION:I = -0xfffffb7

.field public static final MEDIA_INFO_ROTATION_CHANGED:I = 0xf000003

.field public static final MEDIA_INFO_RTC_AUDIO_DECODE_STALL:I = -0xfffffdf

.field public static final MEDIA_INFO_RTC_EVENT_NOTIFY:I = 0x2b

.field public static final MEDIA_INFO_RTC_LOG_INFO:I = 0x2c

.field public static final MEDIA_INFO_RTC_TRACE_INFO:I = 0x28

.field public static final MEDIA_INFO_RTC_VIDEO_DECODE_STALL:I = -0xfffffe0

.field public static final MEDIA_INFO_SAR_CHANGED:I = 0xf000006

.field public static final MEDIA_INFO_SILENCE_DETECTED:I = 0xf00000d

.field public static final MEDIA_INFO_SOCKET_CONNECTRED:I = 0xf000000

.field public static final MEDIA_INFO_SPEED_CHANGED:I = 0xf000007

.field public static final MEDIA_INFO_SPSPPS_INFO:I = 0x21

.field public static final MEDIA_INFO_STREAM_CHANGED:I = 0xf000004

.field public static final MEDIA_INFO_SUBTITLE_INFO:I = -0xfffffbf

.field public static final MEDIA_INFO_SUBTITLE_TIMED_OUT:I = 0x386
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_UNSUPPORTED_SUBTITLE:I = 0x385
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_VIDEO_ABNORMAL_OCCURED:I = -0xfffffb8

.field public static final MEDIA_INFO_VIDEO_DECODE_STALL:I = -0xffffff0

.field public static final MEDIA_INFO_VIDEO_DEMUX_STALL:I = -0xffffff2

.field public static final MEDIA_INFO_VIDEO_READY_FOR_DISPLAY:I = -0xfffffbe

.field public static final MEDIA_INFO_VIDEO_RENDERING_START:I = 0x3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final MEDIA_INFO_VIDEO_RENDER_STALL:I = 0xf00000b

.field public static final MEDIA_INFO_VIDEO_SECOND_FRAME:I = -0xfffffbc

.field public static final MEDIA_INFO_VIDEO_STREAM_BITRATE_CHANGED:I = 0xf000009

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field public static final MEDIA_NO_AVRENDER_END:I = -0xfffffca

.field public static final MEDIA_NO_AVRENDER_START:I = -0xfffffcb

.field public static final MEDIA_PLAYER_AAC_CODEC_ID:I = 0x2

.field public static final MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE:I = 0xfe

.field public static final MEDIA_PLAYER_ANR_CRASH_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_AUDIO_DECODER_WRITE_ERROR:I = -0x7a10a

.field public static final MEDIA_PLAYER_AUDIO_TRACK_ENABLE_OPTION:I = 0x3d

.field public static final MEDIA_PLAYER_AUDIO_TRACK_VOICE_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_AUTO_TEST_CHANGED_TYPR_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_BYTEVC1_CODEC_FFMPEG:I = 0x0

.field public static final MEDIA_PLAYER_BYTEVC1_CODEC_ID:I = 0x1

.field public static final MEDIA_PLAYER_BYTEVC1_CODEC_JX:I = 0x2

.field public static final MEDIA_PLAYER_BYTEVC1_CODEC_KSY:I = 0x1

.field public static final MEDIA_PLAYER_BYTEVC2_CODEC_ID:I = 0x21

.field public static final MEDIA_PLAYER_CRASHED_ERROR:I = -0x7f7f7f7f

.field public static final MEDIA_PLAYER_CRASH_SIMPLE_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_DECRYPTION_KEY:I = 0x40

.field public static final MEDIA_PLAYER_DECRYPTION_KEY_IS_NULL_ERROR:I = -0x7a105

.field public static final MEDIA_PLAYER_DEFAULT_RENDER:I = 0x31

.field public static final MEDIA_PLAYER_DEFAULT_VOICE:I = 0x30

.field public static final MEDIA_PLAYER_DRM_DECRYPT_FAILED:I = -0x79ff2

.field public static final MEDIA_PLAYER_DRM_OPEN_FAILED:I = -0x79ff3

.field public static final MEDIA_PLAYER_DUMMY_VOICE_VALUE:I = 0x2

.field public static final MEDIA_PLAYER_EGL_VER_2:I = 0x2

.field public static final MEDIA_PLAYER_EGL_VER_3:I = 0x3

.field public static final MEDIA_PLAYER_EXTERN_VOICE_VALUE:I = 0x3

.field public static final MEDIA_PLAYER_H264_CODEC_ID:I = 0x0

.field public static final MEDIA_PLAYER_HIJACK_MEDIA_TYPE_ERROR:I = -0x7a102

.field public static final MEDIA_PLAYER_HIJACK_VID_ERROR:I = -0x7a104

.field public static final MEDIA_PLAYER_HTTP_BAD_REQUEST_ERROR:I = -0x7a0bb

.field public static final MEDIA_PLAYER_HTTP_CONTENT_TYPE_IS_NOT_VALID_ERROR:I = -0x7a0b3

.field public static final MEDIA_PLAYER_HTTP_FORBIDEN_ERROR:I = -0x7a0b9

.field public static final MEDIA_PLAYER_HTTP_NOT_FOUND_ERROR:I = -0x7a0b8

.field public static final MEDIA_PLAYER_HTTP_OTHER_4xx_ERROR:I = -0x7a0b6

.field public static final MEDIA_PLAYER_HTTP_REDIRECT_ERROR:I = -0x7a0b2

.field public static final MEDIA_PLAYER_HTTP_SERVER_ERROR_ERROR:I = -0x7a0b5

.field public static final MEDIA_PLAYER_HTTP_UNAUTHORIZED_ERROR:I = -0x7a0ba

.field public static final MEDIA_PLAYER_HURRY_CATCH_TIME_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_HURRY_SKIP_TIME_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_INVALID_INPUT_DATA_ERROR:I = -0x7a111

.field public static final MEDIA_PLAYER_IS_MOBILE_NETWORK:I = 0x1

.field public static final MEDIA_PLAYER_IS_OTHER_NETWORK:I = 0x2

.field public static final MEDIA_PLAYER_IS_WIFI_NETWORK:I = 0x0

.field public static final MEDIA_PLAYER_LLASH_SWITCH_PERFORMED:I = 0x55

.field public static final MEDIA_PLAYER_MEDIACODEC_DEVICE:I = 0x4

.field public static final MEDIA_PLAYER_MP3_CODEC_ID:I = 0x3

.field public static final MEDIA_PLAYER_NATIVEWINDOW_DEVICE:I = 0x1

.field public static final MEDIA_PLAYER_NDK_CRASH_VALUE:I = 0x2

.field public static final MEDIA_PLAYER_NONE_ERROR:I = 0x0

.field public static final MEDIA_PLAYER_NOSETTING_RENDER_VALUE:I = 0x3

.field public static final MEDIA_PLAYER_OPENGL_DEVICE:I = 0x0

.field public static final MEDIA_PLAYER_OPEN_DECODER_ERROR:I = -0x7a11c

.field public static final MEDIA_PLAYER_OPEN_DEVICE_ERROR:I = -0x7a115

.field public static final MEDIA_PLAYER_OPEN_OUTER_ERROR:I = -0x7a119

.field public static final MEDIA_PLAYER_OPEN_OUTLET_ERROR:I = -0x7a118

.field public static final MEDIA_PLAYER_OPTION_3XX_HAPPEN_TIME:I = 0x24a

.field public static final MEDIA_PLAYER_OPTION_ABNORMAL_DETECT_INTERVAL:I = 0xa53e

.field public static final MEDIA_PLAYER_OPTION_ABNORMAL_DETECT_STRATEGY:I = 0xa53f

.field public static final MEDIA_PLAYER_OPTION_ABR_ABI_VERSION:I = 0x33f

.field public static final MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE:I = 0xae

.field public static final MEDIA_PLAYER_OPTION_ABR_AVERAGE_PLAY_SPEED:I = 0xaf

.field public static final MEDIA_PLAYER_OPTION_ABR_AVREAGE_BITRATE_DIFF:I = 0x262

.field public static final MEDIA_PLAYER_OPTION_ABR_DECISION_INFO_CALLBACK:I = 0x3f9

.field public static final MEDIA_PLAYER_OPTION_ABR_DECISION_INFO_RECORD_MAX_COUNT:I = 0x3fa

.field public static final MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE:I = 0x259

.field public static final MEDIA_PLAYER_OPTION_ABR_EXPECT_BITRATE:I = 0x28a

.field public static final MEDIA_PLAYER_OPTION_ABR_HIGH_THRESHOLD:I = 0xb2

.field public static final MEDIA_PLAYER_OPTION_ABR_HURRY_THRESHOLD:I = 0xb0

.field public static final MEDIA_PLAYER_OPTION_ABR_LOW_THRESHOLD:I = 0xb1

.field public static final MEDIA_PLAYER_OPTION_ABR_PREDICT_VIDEO_BITRATE:I = 0x258

.field public static final MEDIA_PLAYER_OPTION_ABR_PROBE_COUNT:I = 0xb3

.field public static final MEDIA_PLAYER_OPTION_ABR_PROBE_MODE:I = 0x2a6

.field public static final MEDIA_PLAYER_OPTION_ABR_STREAM_INFO:I = 0x93
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_ABR_SWITCH_COUNT:I = 0xad

.field public static final MEDIA_PLAYER_OPTION_ABR_SWITCH_DELAY_TIME:I = 0x241

.field public static final MEDIA_PLAYER_OPTION_ABR_SWITCH_TONEW:I = 0x243

.field public static final MEDIA_PLAYER_OPTION_ABR_SWITCH_WASTE_BYTE:I = 0x242

.field public static final MEDIA_PLAYER_OPTION_ACCURATE_LAYOUT:I = 0xfd

.field public static final MEDIA_PLAYER_OPTION_ADDITION_SUB_INFO:I = 0x640

.field public static final MEDIA_PLAYER_OPTION_ADVANCE_CHECK_BUFFERING_END:I = 0x139

.field public static final MEDIA_PLAYER_OPTION_AE_CONFIG_JSON:I = 0x486

.field public static final MEDIA_PLAYER_OPTION_AE_DEVICE_PLAY_ABILITY:I = 0x488

.field public static final MEDIA_PLAYER_OPTION_AE_GRAPH_CONFIG:I = 0x48a

.field public static final MEDIA_PLAYER_OPTION_AE_LOOKAHEAD_TIME:I = 0x480

.field public static final MEDIA_PLAYER_OPTION_AE_LU_END:I = 0x483

.field public static final MEDIA_PLAYER_OPTION_AE_LU_RANG:I = 0x481

.field public static final MEDIA_PLAYER_OPTION_AE_LU_START:I = 0x482

.field public static final MEDIA_PLAYER_OPTION_AE_MAX_MOM_LU:I = 0x484

.field public static final MEDIA_PLAYER_OPTION_AE_MAX_SHORTERM_LU:I = 0x485

.field public static final MEDIA_PLAYER_OPTION_AE_RELEASE_TIME:I = 0x47f

.field public static final MEDIA_PLAYER_OPTION_AE_SRC_LUFS:I = 0x284

.field public static final MEDIA_PLAYER_OPTION_AE_SRC_PEAK:I = 0x286

.field public static final MEDIA_PLAYER_OPTION_AE_TAR_LUFS:I = 0x285

.field public static final MEDIA_PLAYER_OPTION_AE_VOLUME_INFO_JSON:I = 0x489

.field public static final MEDIA_PLAYER_OPTION_AE_VOLUMINFO_VER:I = 0x487

.field public static final MEDIA_PLAYER_OPTION_AI_BARRAGE_URL:I = 0x2ee

.field public static final MEDIA_PLAYER_OPTION_ALLOW_ALL_EXTENSIONS:I = 0xc545

.field public static final MEDIA_PLAYER_OPTION_ALOG_WRITE_FUNC_ADDR:I = 0xe7

.field public static final MEDIA_PLAYER_OPTION_ALWAYS_DO_AV_SYNC:I = 0x15c

.field public static final MEDIA_PLAYER_OPTION_ANRENDER_REFRESH_SURFACE:I = 0xa420

.field public static final MEDIA_PLAYER_OPTION_APPID:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_ASYNC_INIT_CODEC:I = 0xb5

.field public static final MEDIA_PLAYER_OPTION_ASYNC_MANAGE_RESOURCE:I = 0x40e

.field public static final MEDIA_PLAYER_OPTION_ASYNC_SET_WINDOW:I = 0x524

.field public static final MEDIA_PLAYER_OPTION_AUDIOPTS_MS_CORRECTION_EXTENSION:I = 0x256

.field public static final MEDIA_PLAYER_OPTION_AUDIOTRACK_CONTENTTYPE:I = 0x6d0

.field public static final MEDIA_PLAYER_OPTION_AUDIO_BUFFER_LENGTH:I = 0x49

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CACHED_NUM:I = 0x422

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CHANNEL_CTL:I = 0x3dd

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CHECK_INFO:I = 0xcb

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CODEC:I = 0x1df

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CODEC_ID:I = 0x8c

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CODEC_PROFILE:I = 0x192

.field public static final MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX:I = 0x207

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_AND_GRAPH_MERGE:I = 0x53a

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_BUFLEN:I = 0x25b

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_DB_VALUE:I = 0x2776

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_ERROR:I = 0xde

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_OPENED_TIME:I = 0x278

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME:I = 0x277

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DNS_START_TIME:I = 0x26f

.field public static final MEDIA_PLAYER_OPTION_AUDIO_DOWNLOAD_BYTES:I = 0x27d

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_KNEE:I = 0x29f

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_MODEL_PATH:I = 0x48b

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREDELAY:I = 0x132

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_PREGAIN:I = 0x12f

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_RATIO:I = 0x131

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_THRESHOLD:I = 0x130

.field public static final MEDIA_PLAYER_OPTION_AUDIO_EFFECT_TYPE:I = 0x283

.field public static final MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_FRAME_RENDER_TIME:I = 0x2ba

.field public static final MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_PACKET_READ_TIME:I = 0x2b8

.field public static final MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME:I = 0x10d

.field public static final MEDIA_PLAYER_OPTION_AUDIO_GRAPH_REFACTOR:I = 0x539

.field public static final MEDIA_PLAYER_OPTION_AUDIO_HIT_CDN_CACHE:I = 0x2d3

.field public static final MEDIA_PLAYER_OPTION_AUDIO_HTTPX_CACHED:I = 0x3bb

.field public static final MEDIA_PLAYER_OPTION_AUDIO_HTTP_OPEN_START_TIME:I = 0x24c

.field public static final MEDIA_PLAYER_OPTION_AUDIO_HTTP_REQ_FINSIH_TIME:I = 0x111

.field public static final MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME:I = 0x113

.field public static final MEDIA_PLAYER_OPTION_AUDIO_LIVE_CONNECT_TIME:I = 0x2b6

.field public static final MEDIA_PLAYER_OPTION_AUDIO_LIVE_OPEN_TIME:I = 0x2b4

.field public static final MEDIA_PLAYER_OPTION_AUDIO_OUTLET_DB_VALUE:I = 0x2774

.field public static final MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR:I = 0xfb

.field public static final MEDIA_PLAYER_OPTION_AUDIO_RANGE_SIZE:I = 0xf4

.field public static final MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME:I = 0x104

.field public static final MEDIA_PLAYER_OPTION_AUDIO_RATE:I = 0x1d4

.field public static final MEDIA_PLAYER_OPTION_AUDIO_RENDER_STALL_THRESHOLD:I = 0x141

.field public static final MEDIA_PLAYER_OPTION_AUDIO_REND_FIRST_FRAME_TIME:I = 0x274

.field public static final MEDIA_PLAYER_OPTION_AUDIO_RMS_MONITOR_ENABLE:I = 0x2775

.field public static final MEDIA_PLAYER_OPTION_AUDIO_SAVED_HOST_TIME:I = 0x10b

.field public static final MEDIA_PLAYER_OPTION_AUDIO_SOCKET_CREATE_SUCCESS_TIME:I = 0x24e

.field public static final MEDIA_PLAYER_OPTION_AUDIO_STREAM_DURATION:I = 0x20d

.field public static final MEDIA_PLAYER_OPTION_AUDIO_SWITCH_CACHE_TIME:I = 0x10f

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TIMESCALE_ENABLE:I = 0x1cc

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TIME_FOR_CDN:I = 0x2d7

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TIME_TO_SOURCE:I = 0x2d5

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TOTAL_CACHED_LEN:I = 0x27f

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TRANS_OPEN_START_TIME:I = 0x24d

.field public static final MEDIA_PLAYER_OPTION_AUDIO_TRAN_CONNECT_TIME:I = 0x10c

.field public static final MEDIA_PLAYER_OPTION_AUDIO_USE_DIRECT_BUFFER:I = 0x40f

.field public static final MEDIA_PLAYER_OPTION_AUTO_AUDIO_DEVICE_DETECTION:I = 0x6cf

.field public static final MEDIA_PLAYER_OPTION_AUTO_DISCONNECTED_CPU:I = 0x51e

.field public static final MEDIA_PLAYER_OPTION_AUTO_ROTATION:I = 0x21

.field public static final MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME:I = 0x270

.field public static final MEDIA_PLAYER_OPTION_AVG_DOWNLOAD_BITRATE:I = 0x267

.field public static final MEDIA_PLAYER_OPTION_AVG_PLAY_BITRATE:I = 0x266

.field public static final MEDIA_PLAYER_OPTION_AVG_VIDEO_BUFFER_LENGTH:I = 0x268

.field public static final MEDIA_PLAYER_OPTION_AVNOSYNC_REPORT_THRES:I = 0x1cd

.field public static final MEDIA_PLAYER_OPTION_AVOUTSYNC_MAX_DIFF:I = 0x20e

.field public static final MEDIA_PLAYER_OPTION_AVPH_DNS_PARSE_TIMEOUT:I = 0x290

.field public static final MEDIA_PLAYER_OPTION_AVPH_PARAMS:I = 0x3ad

.field public static final MEDIA_PLAYER_OPTION_AVPTS_DIFF_LIST:I = 0x339

.field public static final MEDIA_PLAYER_OPTION_AVSYNC_DURATION_MS:I = 0x34d

.field public static final MEDIA_PLAYER_OPTION_AVSYNC_INTERRUPT_ENABLE:I = 0x357

.field public static final MEDIA_PLAYER_OPTION_AVSYNC_REFINED:I = 0x3ed

.field public static final MEDIA_PLAYER_OPTION_AVUNSYNC_DIFF_MS:I = 0x349

.field public static final MEDIA_PLAYER_OPTION_AVUNSYNC_DURATION_MS:I = 0x34a

.field public static final MEDIA_PLAYER_OPTION_AVUNSYNC_INFO:I = 0x34c

.field public static final MEDIA_PLAYER_OPTION_AV_NO_SYNC_THRESHOLD:I = 0x15b

.field public static final MEDIA_PLAYER_OPTION_AV_RENDER_SERIES:I = 0x34e

.field public static final MEDIA_PLAYER_OPTION_BACKGROUND_STATUS:I = 0x292

.field public static final MEDIA_PLAYER_OPTION_BANDWIDTH_ESTIMATION_LOWER_BOUND_IN_BITS_PER_SECOND:I = 0xa42d

.field public static final MEDIA_PLAYER_OPTION_BANDWIDTH_ESTIMATION_SAMPLES_STANDARD_DEVIATION:I = 0x471

.field public static final MEDIA_PLAYER_OPTION_BANDWIDTH_ESTIMATION_UPPER_BOUND_IN_BITS_PER_SECOND:I = 0xa42c

.field public static final MEDIA_PLAYER_OPTION_BANDWIDTH_ESTIMATION_WINDOW_LENGTH_IN_MILLISECONDS:I = 0xa42e

.field public static final MEDIA_PLAYER_OPTION_BARRAGE_MASKURL:I = 0x264

.field public static final MEDIA_PLAYER_OPTION_BASEPLAYER_AUDIO_BUFLEN:I = 0x25d

.field public static final MEDIA_PLAYER_OPTION_BASEPLAYER_VIDEO_BUFLEN:I = 0x25c

.field public static final MEDIA_PLAYER_OPTION_BIT_DEPTH:I = 0x43a

.field public static final MEDIA_PLAYER_OPTION_BIT_RATE:I = 0xab

.field public static final MEDIA_PLAYER_OPTION_BOX_DEMUXER:I = 0x1dd

.field public static final MEDIA_PLAYER_OPTION_BT601_CLOSE_CODECASYNC:I = 0x253

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_BEFORE_FIRST_FRAME:I = 0xd3

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_DATA_OF_MILLISECONDS:I = 0x56

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_END_IGNORE_VIDEO:I = 0x136

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_START_IDL_TIME:I = 0x42a

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_THRESHOLD_SIZE:I = 0x2f6

.field public static final MEDIA_PLAYER_OPTION_BUFFERING_TIMEOUT:I = 0x51

.field public static final MEDIA_PLAYER_OPTION_BUFS_WHEN_BUFFER_START:I = 0x261

.field public static final MEDIA_PLAYER_OPTION_BYTEVC1_CODEC_TYPE:I = 0x43

.field public static final MEDIA_PLAYER_OPTION_BYTEVC1_SW_FORBIDDEN:I = 0x18f

.field public static final MEDIA_PLAYER_OPTION_BYTEVC2_LOW_LATENCY:I = 0x245

.field public static final MEDIA_PLAYER_OPTION_BYTEVC2_NALSIZE_CHECK:I = 0x250

.field public static final MEDIA_PLAYER_OPTION_CACHE_AJFRAME_FIELD:I = 0x33e

.field public static final MEDIA_PLAYER_OPTION_CACHE_DIR:I = 0x22

.field public static final MEDIA_PLAYER_OPTION_CACHE_HIT:I = 0x4e3

.field public static final MEDIA_PLAYER_OPTION_CACHE_OPEN_END_TIME:I = 0x4e5

.field public static final MEDIA_PLAYER_OPTION_CACHE_OPEN_START_TIME:I = 0x4e4

.field public static final MEDIA_PLAYER_OPTION_CACHE_READ_EOF_TIME:I = 0x4e6

.field public static final MEDIA_PLAYER_OPTION_CALIBRATION_AUDIO_PTS:I = 0x413

.field public static final MEDIA_PLAYER_OPTION_CALIBRATION_AUDIO_TYPE:I = 0x51f

.field public static final MEDIA_PLAYER_OPTION_CATCHUP_SPEED:I = 0x50

.field public static final MEDIA_PLAYER_OPTION_CELLULAT_NET_ID:I = 0x405

.field public static final MEDIA_PLAYER_OPTION_CERT_VERIFY_DETAIL:I = 0x438

.field public static final MEDIA_PLAYER_OPTION_CERT_VERIFY_FAILED:I = 0x439

.field public static final MEDIA_PLAYER_OPTION_CHANGE_REC_BUFFER_SPEED:I = 0x416

.field public static final MEDIA_PLAYER_OPTION_CHANNELS:I = 0x229

.field public static final MEDIA_PLAYER_OPTION_CLIP_HEAACV2_FIRSTPTS_PACKET:I = 0x22d

.field public static final MEDIA_PLAYER_OPTION_CLOCK_RESUME_RESET_EOF:I = 0xe0

.field public static final MEDIA_PLAYER_OPTION_CLOSE_CODECPOOL:I = 0x410

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_FIRSTSEG_CONNECT_TIME:I = 0x1c5

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_HIT_PUSH:I = 0x2d1

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_MAX_SEQ_NO:I = 0x2ce

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_MIN_SEQ_NO:I = 0x2cc

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_REQUEST_LOG:I = 0x2b3

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_REQ_SEQ_NO:I = 0x2d0

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_REQ_SEQ_NO_SERIES:I = 0x44c

.field public static final MEDIA_PLAYER_OPTION_CMAF_AUDIO_REQ_SEQ_NO_SERIES_RESET:I = 0x44e

.field public static final MEDIA_PLAYER_OPTION_CMAF_CONNECT_TIME:I = 0x1c4

.field public static final MEDIA_PLAYER_OPTION_CMAF_HTTP_REQ_FINISH_TIME:I = 0x1c7

.field public static final MEDIA_PLAYER_OPTION_CMAF_HTTP_RES_FINISH_TIME:I = 0x1c8

.field public static final MEDIA_PLAYER_OPTION_CMAF_MPD_CACHED:I = 0x455

.field public static final MEDIA_PLAYER_OPTION_CMAF_MPD_DNS_TIME:I = 0x1c9

.field public static final MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME:I = 0x1c3

.field public static final MEDIA_PLAYER_OPTION_CMAF_MPD_PRELOAD_SUCC:I = 0x454

.field public static final MEDIA_PLAYER_OPTION_CMAF_MPD_SOCKET_CONNECT_TIME:I = 0x1c2

.field public static final MEDIA_PLAYER_OPTION_CMAF_PARAMS:I = 0x2b1

.field public static final MEDIA_PLAYER_OPTION_CMAF_SEGMENT_SYNC_THRESHOLD:I = 0x2ab

.field public static final MEDIA_PLAYER_OPTION_CMAF_SEG_NUM_DIFF_THRESHOLD:I = 0x2af

.field public static final MEDIA_PLAYER_OPTION_CMAF_SKIP_FIND_AUDIO_STREAM_INFO:I = 0x60

.field public static final MEDIA_PLAYER_OPTION_CMAF_START_SEGMENT_OFFSET:I = 0x2ac

.field public static final MEDIA_PLAYER_OPTION_CMAF_START_SEQ_DIFF:I = 0x2b0

.field public static final MEDIA_PLAYER_OPTION_CMAF_VERSION:I = 0x2ad

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_FIRSTSEG_CONNECT_TIME:I = 0x1c6

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_HIT_PUSH:I = 0x2d2

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_MAX_SEQ_NO:I = 0x2cd

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_MIN_SEQ_NO:I = 0x2cb

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_REQUEST_LOG:I = 0x2b2

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_REQ_SEQ_NO:I = 0x2cf

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_REQ_SEQ_NO_SERIES:I = 0x44d

.field public static final MEDIA_PLAYER_OPTION_CMAF_VIDEO_REQ_SEQ_NO_SERIES_RESET:I = 0x44f

.field public static final MEDIA_PLAYER_OPTION_CODECPOOL_RESPONSE:I = 0x533
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_CODECPOOL_SUPPORT_DYNAMIC_EXTEND:I = 0x531

.field public static final MEDIA_PLAYER_OPTION_CODECPOOL_VERSION:I = 0x540

.field public static final MEDIA_PLAYER_OPTION_CODEC_AND_SURFACE_REUSE:I = 0x3ef

.field public static final MEDIA_PLAYER_OPTION_CODEC_FB_ERR_SOLVER_ENABLE:I = 0xc544

.field public static final MEDIA_PLAYER_OPTION_CODEC_FROM_POOL:I = 0x412

.field public static final MEDIA_PLAYER_OPTION_CODEC_HISTORY_LENGTH:I = 0x543

.field public static final MEDIA_PLAYER_OPTION_CODEC_MAX_USED_COUNT:I = 0x544

.field public static final MEDIA_PLAYER_OPTION_CODEC_STOP_TIMEOUT:I = 0x3b8

.field public static final MEDIA_PLAYER_OPTION_COLOR_PRIMARIES:I = 0x38f

.field public static final MEDIA_PLAYER_OPTION_COLOR_SPACE:I = 0x38e

.field public static final MEDIA_PLAYER_OPTION_COLOR_TRC:I = 0x390

.field public static final MEDIA_PLAYER_OPTION_CRASH_INFO:I = 0x1389

.field public static final MEDIA_PLAYER_OPTION_CRASH_TEST:I = 0x16

.field public static final MEDIA_PLAYER_OPTION_CRASH_TYPE:I = 0x1a

.field public static final MEDIA_PLAYER_OPTION_CREATE_AUDIOTRACK_EARLY:I = 0x52d

.field public static final MEDIA_PLAYER_OPTION_CURRENT_VOLUME:I = 0x35

.field public static final MEDIA_PLAYER_OPTION_DANGER_BUFFER_THRESHOLD:I = 0x126

.field public static final MEDIA_PLAYER_OPTION_DATASPACE:I = 0x43f

.field public static final MEDIA_PLAYER_OPTION_DECODERRENDER_CLEAR_SURFACE:I = 0xfa3

.field public static final MEDIA_PLAYER_OPTION_DECODERRENDER_CONTINUE_RETRY:I = 0xfa2

.field public static final MEDIA_PLAYER_OPTION_DECODERRENDER_VC2PRE_CREATE_RENDER:I = 0xfa7

.field public static final MEDIA_PLAYER_OPTION_DECODERRENDER_VC2RENDER_LATENCY:I = 0xfa6

.field public static final MEDIA_PLAYER_OPTION_DECODER_DROP_FRAME:I = 0x5d

.field public static final MEDIA_PLAYER_OPTION_DECODER_STALL_THRESHOLD:I = 0x16b

.field public static final MEDIA_PLAYER_OPTION_DECODE_AAC_THROUGH_FDKAAC:I = 0x76d

.field public static final MEDIA_PLAYER_OPTION_DECODE_EXTERN_INFO:I = 0x34

.field public static final MEDIA_PLAYER_OPTION_DECODE_FIRST_AUDIO_FRAME_TIME:I = 0x4e

.field public static final MEDIA_PLAYER_OPTION_DECODE_FIRST_VIDEO_FRAME_TIME:I = 0x4d

.field public static final MEDIA_PLAYER_OPTION_DECODE_SECOND_VIDEO_FRAME_TIME:I = 0xa1

.field public static final MEDIA_PLAYER_OPTION_DEC_CREATE_TIME:I = 0x272

.field public static final MEDIA_PLAYER_OPTION_DEFAULT_AUDIO_BITRATE:I = 0x83

.field public static final MEDIA_PLAYER_OPTION_DEFAULT_VIDEO_BITRATE:I = 0x82

.field public static final MEDIA_PLAYER_OPTION_DELAY_BUFFERING_UPDATE:I = 0x107

.field public static final MEDIA_PLAYER_OPTION_DEMUXER_BEGIN_TIME:I = 0x26d

.field public static final MEDIA_PLAYER_OPTION_DEMUXER_CREATE_TIME:I = 0x271

.field public static final MEDIA_PLAYER_OPTION_DEMUXER_STALL_THRESHOLD:I = 0x16a

.field public static final MEDIA_PLAYER_OPTION_DEMUXER_VIDEO_STACK_SIZE:I = 0x212

.field public static final MEDIA_PLAYER_OPTION_DEQUEUE_OUTPUTBUFFER_COUNT:I = 0x549

.field public static final MEDIA_PLAYER_OPTION_DISABLE_ACCURATE_START:I = 0x85

.field public static final MEDIA_PLAYER_OPTION_DISABLE_ALGORITHM:I = 0x28b

.field public static final MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS:I = 0x117

.field public static final MEDIA_PLAYER_OPTION_DISABLE_LOOPER_TIMEOUT:I = 0xf7

.field public static final MEDIA_PLAYER_OPTION_DISABLE_MC_REUSE:I = 0x191

.field public static final MEDIA_PLAYER_OPTION_DISABLE_PLAYER_STAYAWAKE:I = 0x138b

.field public static final MEDIA_PLAYER_OPTION_DISABLE_RESET_SYSTEM_VOLUME:I = 0x62

.field public static final MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK:I = 0xc9

.field public static final MEDIA_PLAYER_OPTION_DISABLE_SPILT_VOICE_WRITE:I = 0x234

.field public static final MEDIA_PLAYER_OPTION_DISABLE_VC2_RECYCLE:I = 0x9ca0

.field public static final MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY1:I = 0x541

.field public static final MEDIA_PLAYER_OPTION_DISCARD_CODEC_STRATEGY2:I = 0x542

.field public static final MEDIA_PLAYER_OPTION_DISCONNECTED_CPU_TRACK:I = 0x528

.field public static final MEDIA_PLAYER_OPTION_DNS_START_TIME:I = 0x26e

.field public static final MEDIA_PLAYER_OPTION_DOLBY_DIALOG_ENHANCE:I = 0x2bf

.field public static final MEDIA_PLAYER_OPTION_DOLBY_END_POINTER:I = 0x2bd

.field public static final MEDIA_PLAYER_OPTION_DOLBY_MIX_LEVEL:I = 0x2c2

.field public static final MEDIA_PLAYER_OPTION_DOLBY_PRESENTATION_ID:I = 0x2c1

.field public static final MEDIA_PLAYER_OPTION_DOLBY_REF_LEVEL:I = 0x2c0

.field public static final MEDIA_PLAYER_OPTION_DOLBY_VIRTUALIZER:I = 0x2be

.field public static final MEDIA_PLAYER_OPTION_DOWNLOAD_SPEED:I = 0x3f

.field public static final MEDIA_PLAYER_OPTION_DRM_CLOSE_ROOT_CHECK:I = 0xd1

.field public static final MEDIA_PLAYER_OPTION_DRM_DOWNGRADE:I = 0xd0

.field public static final MEDIA_PLAYER_OPTION_DRM_TYPE:I = 0xce

.field public static final MEDIA_PLAYER_OPTION_DROP_AUDIO_COST_TIME:I = 0x15a

.field public static final MEDIA_PLAYER_OPTION_DROP_AUDIO_PTS:I = 0x159

.field public static final MEDIA_PLAYER_OPTION_DROP_FRAME_THRESHOLD:I = 0xc47d

.field public static final MEDIA_PLAYER_OPTION_DUMMYSURFACE_FORBID:I = 0x40a

.field public static final MEDIA_PLAYER_OPTION_DUMMY_Player_SESSION_DESCRIPTION:I = 0x2710

.field public static final MEDIA_PLAYER_OPTION_DUMMY_VOICE_SLEEP:I = 0x21b

.field public static final MEDIA_PLAYER_OPTION_DURATION_OF_START_AUTO_SPEED:I = 0x3d4

.field public static final MEDIA_PLAYER_OPTION_DYNAMIC_DROPPING_CHECK_COUNT:I = 0x3f6

.field public static final MEDIA_PLAYER_OPTION_DYNAMIC_FRAME_DROPPING_CHECK_PERIOD:I = 0x3f4

.field public static final MEDIA_PLAYER_OPTION_DYNAMIC_FRAME_DROPPING_MULTIPLE:I = 0x3f3

.field public static final MEDIA_PLAYER_OPTION_DYNAMIC_THREAD_PRIORITY_VALUE:I = 0x238

.field public static final MEDIA_PLAYER_OPTION_EANABLE_DROPPING_DTS_ROLLBACK:I = 0x94

.field public static final MEDIA_PLAYER_OPTION_EGL_NEED_WORKAROUND:I = 0xb7

.field public static final MEDIA_PLAYER_OPTION_EMBELLISH_VOLUME_TIME:I = 0x40

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AI_BARRAGE:I = 0x2ef

.field public static final MEDIA_PLAYER_OPTION_ENABLE_ASYNC:I = 0x106

.field public static final MEDIA_PLAYER_OPTION_ENABLE_ASYNC_DOWNLOAD:I = 0x437

.field public static final MEDIA_PLAYER_OPTION_ENABLE_ASYNC_PROBE:I = 0x446

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AUDIOMEM_INTERGRATION:I = 0x2a1

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AUDIOTRACK_SMOOTH_CLOCK:I = 0x233

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AUDIO_EFFECT:I = 0x12e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AUDIO_SEEKING_NO_ACCURATE:I = 0x76e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_AVPH_DNS_PARSE:I = 0x28f

.field public static final MEDIA_PLAYER_OPTION_ENABLE_BARRAGE_MASK:I = 0x265

.field public static final MEDIA_PLAYER_OPTION_ENABLE_BIT_DEPTH:I = 0x43b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_BUFFERING_LOWERCAPACITY:I = 0x2a2

.field public static final MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL:I = 0x128

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CACHE_INFO:I = 0x43c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CACHE_SEI:I = 0x14e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CHANGE_START_PLAY_BUFFER:I = 0x3dc

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CHECK_DROP_TIME_COST:I = 0x435

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CHECK_PACKET_CORRUPT:I = 0x13d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CHECK_UNBIND_AUDIOPROCESSOR:I = 0x444

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CLOSE_MEDIA_CODEC_RENDER_WHENRESET:I = 0x443

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CMAF_FAST_MODE:I = 0x263

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CMAF_OPTIMIZE_RETRY:I = 0x2a8

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CMAF_SKIP_INIT_SECTION:I = 0x2a9

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CMAF_UPDATE_CMAF_ASYNC:I = 0x2aa

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CODEC_RECYCLE:I = 0x41c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CORRECT_REAL_CLOCK:I = 0xa414

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CPPBYTEVC1CODEC_OPT:I = 0x244

.field public static final MEDIA_PLAYER_OPTION_ENABLE_CPPBYTEVC2CODEC_OPT:I = 0x24f

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DASH_ABR:I = 0xac

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY:I = 0x22c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DECODERRENDER_VC2RENDER_LATENCY:I = 0xfa5

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DECODER_STALL:I = 0x169

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DECODE_MULTI_SEI:I = 0x174

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DECODE_SEI_ONCE:I = 0x288

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEINTERLACE:I = 0x3ec

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_RECYCLE:I = 0x41b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_RW_LOCK:I = 0x2a7

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL:I = 0x168

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DEMUX_NONBLOCK_READ:I = 0x230

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DOWNGRADE_ASYNCCODEC:I = 0x2a3

.field public static final MEDIA_PLAYER_OPTION_ENABLE_DYNAMIC_FRAME_DROPPING:I = 0x3f2

.field public static final MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE:I = 0x202
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC:I = 0x101

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FAST_STOP:I = 0x41a

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FILTER_RECYCLE:I = 0x41d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FLUSH_SEEK:I = 0x337

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FLV_ABR:I = 0x144

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FLV_AUDIO_TAG_FOR_SPEED:I = 0x46b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FLV_DUMMY_ABR:I = 0xa45c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FLV_TAG_BASED_SPEED:I = 0x46a

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FRAG_RANGE:I = 0xf2

.field public static final MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK:I = 0x280

.field public static final MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP:I = 0x124

.field public static final MEDIA_PLAYER_OPTION_ENABLE_HCHIP_ADAPTIVE_WORKAROUND:I = 0x23f

.field public static final MEDIA_PLAYER_OPTION_ENABLE_HEAAVV2_PTS_MS_CORRECTION:I = 0x23d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_HLS_ABR:I = 0xb4

.field public static final MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENAVOUTSYNCING:I = 0x420

.field public static final MEDIA_PLAYER_OPTION_ENABLE_HWDROPFRAME_WHENVOISINDROPSTATE:I = 0x41f

.field public static final MEDIA_PLAYER_OPTION_ENABLE_IGNORE_BACKGROUND_AVNOSYNC:I = 0x29b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_IGNORE_BACKGROUND_RENDERSTALL:I = 0x291

.field public static final MEDIA_PLAYER_OPTION_ENABLE_IMAGE_SCALE:I = 0x1d6

.field public static final MEDIA_PLAYER_OPTION_ENABLE_INDEX_CACHE:I = 0xf1

.field public static final MEDIA_PLAYER_OPTION_ENABLE_KEYFRAME_GET_STRATEGY_PREDICT_BITRATE:I = 0x514

.field public static final MEDIA_PLAYER_OPTION_ENABLE_LIVE_PRELOAD:I = 0x2ae

.field public static final MEDIA_PLAYER_OPTION_ENABLE_LOADCONTROL_BUFFERINGTIMEOUT:I = 0x172

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MCHIP_SKIP_ADAPTIVE_WORKAROUND:I = 0x240

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MEDIACODEC_PIPELINE_CTL:I = 0x535

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MEDIA_CODEC_DEATH_CHECK:I = 0x52e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MEDIA_CODEC_FAIR_MUTEX:I = 0x430

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MEDIA_CODEC_RENDER_CLEAR_SURFACE:I = 0x442

.field public static final MEDIA_PLAYER_OPTION_ENABLE_MP4_CHECK:I = 0x29a

.field public static final MEDIA_PLAYER_OPTION_ENABLE_NATIVE_YV12_RENDER:I = 0x21e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_NOTIFY_RENDER_EXCEPTION:I = 0xa441

.field public static final MEDIA_PLAYER_OPTION_ENABLE_NOTIFY_SEI_IMMEDIATELY_BEFORE_FIRSTFRAME:I = 0x289

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPEN_TIMEOUT:I = 0x123

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_ASYNC_DOWNLOAD:I = 0x448

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_DASH_SEEK:I = 0xa415

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_HWDEC2SWDEC:I = 0x534

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_INACCURATE_START:I = 0x2f9

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_IO:I = 0x43e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_LIVE_PTS_ROLLBACK:I = 0x449

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_MP4_ABR:I = 0x42f

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_PRERENDER:I = 0x434

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_RADIO_MODE:I = 0x44a

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_SEEK_CLK:I = 0x2fa

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_VOLUME2:I = 0x44b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OPT_SUB_SEARCH:I = 0x33d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_OUTLET_DROP_LIMIT:I = 0x95

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PIXEL_FORMAT_FULL_RANGE:I = 0xa474

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PLAYER_RECYCLE:I = 0x41e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PREDEMUX:I = 0x24b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PRELOAD_GEAR:I = 0x2f4

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PREVENT_DTS_BACK:I = 0x281

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PRE_RENDER_BUFFERING_UPDATE:I = 0x23b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PROTOCOL_DOWNGRADE:I = 0x3aa

.field public static final MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION:I = 0x170

.field public static final MEDIA_PLAYER_OPTION_ENABLE_QCOM_LOW_LATENCY:I = 0xd7

.field public static final MEDIA_PLAYER_OPTION_ENABLE_QCOM_VPP:I = 0xd4

.field public static final MEDIA_PLAYER_OPTION_ENABLE_RANGE_OPTIMIZE:I = 0x432

.field public static final MEDIA_PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI:I = 0x29e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_REFRESH_BY_TIME:I = 0x12b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_RENDER_STALL:I = 0x143

.field public static final MEDIA_PLAYER_OPTION_ENABLE_RTCPLAY:I = 0x320

.field public static final MEDIA_PLAYER_OPTION_ENABLE_R_LOW_LATENCY:I = 0x255

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SEEK_BUFFERING:I = 0x2a5

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT:I = 0x203

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SEEK_INTERRUPT:I = 0xf8

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SET_AUDIO_PROCESSOR_AFTER_PLAY:I = 0x431

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SHARP:I = 0xbd

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SKIP_AUDIO_EFFECT:I = 0x47e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SKIP_FIND_UNNECESSARY_STREAM:I = 0x28d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SKIP_NULL_TAG:I = 0x28c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SKIP_ON_BUFFERING_END:I = 0x42b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SOLOPLAY:I = 0xb9

.field public static final MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER:I = 0x17c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_START_PLAY_SYNC:I = 0x525

.field public static final MEDIA_PLAYER_OPTION_ENABLE_START_TIME_SKIP_AVSKIPSERIAL:I = 0x3f5

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SUB:I = 0x26a

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_LAZY_LOADING:I = 0x642

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING:I = 0x641

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SUB_CPU_PROTECTION:I = 0xa427

.field public static final MEDIA_PLAYER_OPTION_ENABLE_SUB_TRY_OPT_LOGIC:I = 0xa429

.field public static final MEDIA_PLAYER_OPTION_ENABLE_TCP_FAST_OPEN:I = 0x13c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_THIRDPARTY_PROTOCOL:I = 0x401

.field public static final MEDIA_PLAYER_OPTION_ENABLE_THREAD_PRIORITY:I = 0x231

.field public static final MEDIA_PLAYER_OPTION_ENABLE_THREAD_SAFE_REF:I = 0x366

.field public static final MEDIA_PLAYER_OPTION_ENABLE_UNSYNC_INFO:I = 0x34b

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VC1_BLOCKLIST:I = 0x23e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VC1_RECYCLE:I = 0x9ca2

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VC2_HEAACV2_SAMPLENUMBER_ADAPTER:I = 0xa5a0

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VIDEO_FRAME_META_CALLBACK:I = 0x14d

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VIDEO_MPD_REFRESH:I = 0x282

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VIDEO_SOFTWARE_DECODER_FIRST:I = 0x6d1

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VIDEO_TIMESTAMP_MONOTONIC:I = 0x22e

.field public static final MEDIA_PLAYER_OPTION_ENABLE_VSYNC_HELPER:I = 0x11c

.field public static final MEDIA_PLAYER_OPTION_ENABLE_XHEAAC_SUPPORT:I = 0x76c

.field public static final MEDIA_PLAYER_OPTION_ENBALE_MEDIACODEC_SYNC_CLOSE:I = 0x2a4

.field public static final MEDIA_PLAYER_OPTION_ENGINE_RETRY:I = 0x545

.field public static final MEDIA_PLAYER_OPTION_ERROR_CODE:I = 0x1388

.field public static final MEDIA_PLAYER_OPTION_ESTIMATED_BANDWIDTH_AVERAGE:I = 0x46f

.field public static final MEDIA_PLAYER_OPTION_ESTIMATED_BANDWIDTH_IN_BITS_PER_SECOND:I = 0x46e

.field public static final MEDIA_PLAYER_OPTION_ESTIMATED_BANDWIDTH_STANDARD_DEVIATION:I = 0x470

.field public static final MEDIA_PLAYER_OPTION_EXTEND_CODEC_NUMS:I = 0x532

.field public static final MEDIA_PLAYER_OPTION_EXTERN_VOICE_OUTPUT_FORMAT:I = 0xa42a

.field public static final MEDIA_PLAYER_OPTION_FALLBACK_IN_MAX_INSTANCE_ERR:I = 0x54b

.field public static final MEDIA_PLAYER_OPTION_FASTOPEN_LIVE_STREAM:I = 0xdc

.field public static final MEDIA_PLAYER_OPTION_FEED_IN_BEFORE_DECODED:I = 0x2f2

.field public static final MEDIA_PLAYER_OPTION_FEED_PACKET_UNTIL_EMPTY:I = 0x22f

.field public static final MEDIA_PLAYER_OPTION_FILEPLAY_NO_BUFFRING:I = 0x227

.field public static final MEDIA_PLAYER_OPTION_FILE_FORMAT:I = 0x204

.field public static final MEDIA_PLAYER_OPTION_FILE_SIZE:I = 0x205

.field public static final MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_DURATION:I = 0x219

.field public static final MEDIA_PLAYER_OPTION_FIND_STREAM_INFO_PROBE_SIZE:I = 0x218

.field public static final MEDIA_PLAYER_OPTION_FIRST_PACKET_TIME:I = 0x46

.field public static final MEDIA_PLAYER_OPTION_FIRST_VIDEO_SEND_OUTLET_TIME:I = 0x1cb

.field public static final MEDIA_PLAYER_OPTION_FIX_SPEED_FILTER_PTS_SHIFT:I = 0x436

.field public static final MEDIA_PLAYER_OPTION_FLUSH_WHEN_SETSURFACE:I = 0x529

.field public static final MEDIA_PLAYER_OPTION_FLV_SPEED_UPDATE_INT_MS:I = 0x46c

.field public static final MEDIA_PLAYER_OPTION_FLV_TAG_BASED_SPEED:I = 0x46d

.field public static final MEDIA_PLAYER_OPTION_FORBID_BUFFERING_VDEC_NOT_FINISHED:I = 0x40b

.field public static final MEDIA_PLAYER_OPTION_FORBID_FALLBACK_NATIVERENDER:I = 0xfa1

.field public static final MEDIA_PLAYER_OPTION_FORCE_CLOSE_CODEC:I = 0x226

.field public static final MEDIA_PLAYER_OPTION_FORMATER_AUDIO_QUEUE_SIZE:I = 0x213

.field public static final MEDIA_PLAYER_OPTION_FORMATER_CREATE_TIME:I = 0x26c

.field public static final MEDIA_PLAYER_OPTION_FORMATER_REC_BUFFER_THRESH:I = 0x520

.field public static final MEDIA_PLAYER_OPTION_FORMATER_REC_BUFFER_TYPE:I = 0x53d

.field public static final MEDIA_PLAYER_OPTION_FORMATER_SLEEP_DURATION:I = 0xa458

.field public static final MEDIA_PLAYER_OPTION_FRAME_DROPPING_DTS_MAX_DIFF:I = 0x27b

.field public static final MEDIA_PLAYER_OPTION_FRAME_DROPPING_TERMINATED_DTS:I = 0x279

.field public static final MEDIA_PLAYER_OPTION_FRAME_NUMS_IN_MEDIACODEC:I = 0x536

.field public static final MEDIA_PLAYER_OPTION_FRC_LEVEL:I = 0x11d

.field public static final MEDIA_PLAYER_OPTION_GET_AUDIO_CODEC_NAME:I = 0x9e

.field public static final MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME:I = 0xa3

.field public static final MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPEN_TIME:I = 0x9c

.field public static final MEDIA_PLAYER_OPTION_GET_AUDIO_DURATION:I = 0x3c5

.field public static final MEDIA_PLAYER_OPTION_GET_AUDIO_PROCESS_TIME:I = 0x3c4

.field public static final MEDIA_PLAYER_OPTION_GET_CLOCK_DIFF:I = 0x98

.field public static final MEDIA_PLAYER_OPTION_GET_CONTAINER_FPS:I = 0x97

.field public static final MEDIA_PLAYER_OPTION_GET_CUR_UI_FPS:I = 0x11b

.field public static final MEDIA_PLAYER_OPTION_GET_DROP_COUNT:I = 0x99

.field public static final MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_POS:I = 0x156

.field public static final MEDIA_PLAYER_OPTION_GET_FIRST_AUDIO_PTS:I = 0x158

.field public static final MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_POS:I = 0x155

.field public static final MEDIA_PLAYER_OPTION_GET_FIRST_VIDEO_PTS:I = 0x157

.field public static final MEDIA_PLAYER_OPTION_GET_HW_CODEC_EXCEPTION:I = 0xbc

.field public static final MEDIA_PLAYER_OPTION_GET_HW_CODEC_NAME:I = 0xbb

.field public static final MEDIA_PLAYER_OPTION_GET_IPLAYER_VERSION:I = 0x387

.field public static final MEDIA_PLAYER_OPTION_GET_LOW_UI_FPS:I = 0x11a

.field public static final MEDIA_PLAYER_OPTION_GET_MASTER_CLOCK_BY_PTS:I = 0x28e

.field public static final MEDIA_PLAYER_OPTION_GET_MAX_SAMPLE_POS_BACK_DIFF:I = 0x299

.field public static final MEDIA_PLAYER_OPTION_GET_NETWORK_CONNECT_COUNT:I = 0x1d5

.field public static final MEDIA_PLAYER_OPTION_GET_PLAYER_HOLDER:I = 0x386

.field public static final MEDIA_PLAYER_OPTION_GET_PLAYER_READ_STATE:I = 0x2f7

.field public static final MEDIA_PLAYER_OPTION_GET_PLAYER_REQ_OFFSET:I = 0x2f5

.field public static final MEDIA_PLAYER_OPTION_GET_PLAY_PREPARED_TIME:I = 0x133

.field public static final MEDIA_PLAYER_OPTION_GET_PLAY_STARTED_TIME:I = 0x134

.field public static final MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA:I = 0xf0

.field public static final MEDIA_PLAYER_OPTION_GET_RES_HEADERS:I = 0x14f

.field public static final MEDIA_PLAYER_OPTION_GET_SESSIONID:I = 0x3c1

.field public static final MEDIA_PLAYER_OPTION_GET_STREAM_INFO_FIND_END_TIME:I = 0x152

.field public static final MEDIA_PLAYER_OPTION_GET_UNDERRUN_COUNT:I = 0x3bf

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEODECODER_FPS:I = 0xba

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_CODEC_NAME:I = 0x9d

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_OPENED_TIME:I = 0xa2

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_OPEN_TIME:I = 0x9b

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_END_TIME:I = 0x151

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_WAIT_START_TIME:I = 0x150

.field public static final MEDIA_PLAYER_OPTION_GET_VIDEO_OUTPUT_FPS:I = 0x96

.field public static final MEDIA_PLAYER_OPTION_GIVEBACK_CODEC_EARLY:I = 0x417

.field public static final MEDIA_PLAYER_OPTION_GS_AUDIOTRACK_POOL_SIZE:I = 0x54f

.field public static final MEDIA_PLAYER_OPTION_GS_ENABLE_GLOBAL_MUTE_FEATURE:I = 0x3f7

.field public static final MEDIA_PLAYER_OPTION_GS_GLOBAL_MUTE:I = 0x3f8

.field public static final MEDIA_PLAYER_OPTION_HANDLE_AUDIO_EXTRADATA:I = 0x11f

.field public static final MEDIA_PLAYER_OPTION_HARDWARECODEC_FLUSH_CLOSE:I = 0x251

.field public static final MEDIA_PLAYER_OPTION_HARDWARE_DECODE_ENABLE:I = 0x3b

.field public static final MEDIA_PLAYER_OPTION_HEADSET_CHANGED_MSG:I = 0xfab

.field public static final MEDIA_PLAYER_OPTION_HEAD_POASE:I = 0xbc4

.field public static final MEDIA_PLAYER_OPTION_HIJACK_CODE:I = 0xcc

.field public static final MEDIA_PLAYER_OPTION_HIJACK_EXIT:I = 0xf6

.field public static final MEDIA_PLAYER_OPTION_HLS_SUB_DEMUXER_PROBE_TYPE:I = 0x42e

.field public static final MEDIA_PLAYER_OPTION_HOST_CACHE_MILLSEC:I = 0x29

.field public static final MEDIA_PLAYER_OPTION_HOST_IP_ADDR:I = 0x47

.field public static final MEDIA_PLAYER_OPTION_HTTP2_AUDIO_REUSED:I = 0x451

.field public static final MEDIA_PLAYER_OPTION_HTTP2_CONTEXT_START_COST:I = 0x3b1

.field public static final MEDIA_PLAYER_OPTION_HTTP2_PARAMS:I = 0x3b0

.field public static final MEDIA_PLAYER_OPTION_HTTP2_REUSED:I = 0x3b3

.field public static final MEDIA_PLAYER_OPTION_HTTPX_AUDIO_RACE_RESULT:I = 0x453

.field public static final MEDIA_PLAYER_OPTION_HTTPX_NEGOTIATE_PROTOCOL:I = 0x3b7

.field public static final MEDIA_PLAYER_OPTION_HTTPX_PUSHED_STREAM_COUNT:I = 0x3bd

.field public static final MEDIA_PLAYER_OPTION_HTTPX_PUSH_URL_LIST:I = 0x3bc

.field public static final MEDIA_PLAYER_OPTION_HTTPX_RACE_RESULT:I = 0x3b6

.field public static final MEDIA_PLAYER_OPTION_HTTP_AUTO_RANGE_OFFSET:I = 0x122

.field public static final MEDIA_PLAYER_OPTION_HTTP_HEADERS:I = 0x14

.field public static final MEDIA_PLAYER_OPTION_HTTP_KEEP_ORIGIN_HOST:I = 0x517

.field public static final MEDIA_PLAYER_OPTION_HTTP_LOADER_TYPE:I = 0xe

.field public static final MEDIA_PLAYER_OPTION_HTTP_LOAD_PER_PERCENT:I = 0x12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_HTTP_OPEN_START_TIME:I = 0x247

.field public static final MEDIA_PLAYER_OPTION_HTTP_RECEIVE_HEADER:I = 0x1e

.field public static final MEDIA_PLAYER_OPTION_HTTP_RECONNECT:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_HTTP_RECONNECT_DELAY_MAX:I = 0x8

.field public static final MEDIA_PLAYER_OPTION_HTTP_REDIRECT:I = 0x20

.field public static final MEDIA_PLAYER_OPTION_HTTP_REQ_FINSIH_TIME:I = 0x335

.field public static final MEDIA_PLAYER_OPTION_HTTP_RES_FINSIH_TIME:I = 0x336

.field public static final MEDIA_PLAYER_OPTION_HTTP_TIMEOUT:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_HTTP_USER_AGENT:I = 0x3fd

.field public static final MEDIA_PLAYER_OPTION_HURRY_CACHE_TYPE:I = 0x428

.field public static final MEDIA_PLAYER_OPTION_HURRY_DELAY_INC_THRESHOLD:I = 0x579

.field public static final MEDIA_PLAYER_OPTION_HURRY_INTERVAL:I = 0x424

.field public static final MEDIA_PLAYER_OPTION_HURRY_MILLISECOND:I = 0x18d

.field public static final MEDIA_PLAYER_OPTION_HURRY_ONCE_MAX:I = 0x425

.field public static final MEDIA_PLAYER_OPTION_HURRY_SKIP_START:I = 0x426

.field public static final MEDIA_PLAYER_OPTION_HURRY_START_MS:I = 0x426

.field public static final MEDIA_PLAYER_OPTION_HURRY_STOP_TYPE:I = 0x429

.field public static final MEDIA_PLAYER_OPTION_HURRY_TIME:I = 0xf

.field public static final MEDIA_PLAYER_OPTION_HURRY_TYPE:I = 0x54

.field public static final MEDIA_PLAYER_OPTION_HW_CONTROL_BY_OPPO:I = 0xb8

.field public static final MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF:I = 0xfc

.field public static final MEDIA_PLAYER_OPTION_HW_DYNAMICDROPPING_CHECKCOUNT:I = 0xc482

.field public static final MEDIA_PLAYER_OPTION_HW_DYNAMICFRAMEDROPPING_CHECKPERIOD:I = 0xc481

.field public static final MEDIA_PLAYER_OPTION_HW_DYNAMICFRAMEDROPPING_MULTIPLE:I = 0xc480

.field public static final MEDIA_PLAYER_OPTION_HW_ENABLE_DYNAMICFRAMEDROPPING:I = 0xc47f

.field public static final MEDIA_PLAYER_OPTION_HW_SETMAXFPS:I = 0xc47e

.field public static final MEDIA_PLAYER_OPTION_IGNORE_AUDIO_RENDER_EOS_DELAYMS:I = 0x298

.field public static final MEDIA_PLAYER_OPTION_IGNORE_SURFACE_CREATED:I = 0x40c

.field public static final MEDIA_PLAYER_OPTION_IMAGE_ENHANCEMENT:I = 0x25

.field public static final MEDIA_PLAYER_OPTION_IMAGE_LAYOUT:I = 0x24

.field public static final MEDIA_PLAYER_OPTION_IMAGE_SCALE:I = 0x26

.field public static final MEDIA_PLAYER_OPTION_IS_AUDIO_EFFECT_ENABLED:I = 0x21d

.field public static final MEDIA_PLAYER_OPTION_IS_MASTER_PLAYER:I = 0x6b9

.field public static final MEDIA_PLAYER_OPTION_IS_TILE_PLAYER:I = 0xbc1

.field public static final MEDIA_PLAYER_OPTION_IS_TOO_LARGE_AV_DIFF:I = 0x15d

.field public static final MEDIA_PLAYER_OPTION_IS_VPP_LEVEL:I = 0xd5

.field public static final MEDIA_PLAYER_OPTION_JX_CODEC_LOW_LATENCY:I = 0xc2

.field public static final MEDIA_PLAYER_OPTION_KEEP_FORMAT_THREAD_ALIVE:I = 0x125

.field public static final MEDIA_PLAYER_OPTION_LAST_AUDIO_DECODE_TIME:I = 0x16f

.field public static final MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME:I = 0x16d

.field public static final MEDIA_PLAYER_OPTION_LAST_AUDIO_RENDER_TIME:I = 0x13f

.field public static final MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME:I = 0x16e

.field public static final MEDIA_PLAYER_OPTION_LAST_VIDEO_DEMUX_TIME:I = 0x16c

.field public static final MEDIA_PLAYER_OPTION_LAST_VIDEO_RENDER_TIME:I = 0x140

.field public static final MEDIA_PLAYER_OPTION_LATENCYTIME:I = 0x237

.field public static final MEDIA_PLAYER_OPTION_LAZY_SEEK:I = 0x92

.field public static final MEDIA_PLAYER_OPTION_LICENSE_DIR:I = 0x1fe
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_LICENSE_FILENAME:I = 0x1ff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_CURRENT_BITRATE:I = 0x3a3

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_ENABLE_BANDWIDTH_STRATEGY:I = 0x3a9

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_PREDICT_BITRATE:I = 0x3c3

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_REQUEST_URL:I = 0x3a5

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_STREAM_INFO:I = 0x93

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_BUFFER_THRESHOLD:I = 0x3a8

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_CLOSE_IO_COST:I = 0x225

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_COST:I = 0x3a2

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_FIND_STREAM_INFO_COST:I = 0x3a4

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_PREV_AUDIO_BUFFER:I = 0x3a7

.field public static final MEDIA_PLAYER_OPTION_LIVE_ABR_SWITCH_PREV_VIDEO_BUFFER:I = 0x3a6

.field public static final MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_ERROR_EXIT:I = 0x2ca

.field public static final MEDIA_PLAYER_OPTION_LIVE_AVPH_READ_RETRY_COUNT:I = 0x2c9

.field public static final MEDIA_PLAYER_OPTION_LIVE_AVPH_STREAM_INFO:I = 0x2c6

.field public static final MEDIA_PLAYER_OPTION_LIVE_AVPH_VIDEO_DIFF_THRESHOLD:I = 0x2c7

.field public static final MEDIA_PLAYER_OPTION_LIVE_OPEN_END_TIME:I = 0x4e8

.field public static final MEDIA_PLAYER_OPTION_LIVE_OPEN_START_TIME:I = 0x4e7

.field public static final MEDIA_PLAYER_OPTION_LIVE_PRELOAD_CONFIG:I = 0x4ea

.field public static final MEDIA_PLAYER_OPTION_LIVE_READ_FIRST_PKT_TIME:I = 0x4e9

.field public static final MEDIA_PLAYER_OPTION_LIVE_SDK_DNS_IP:I = 0x32c

.field public static final MEDIA_PLAYER_OPTION_LIVE_START_INDEX:I = 0x12a

.field public static final MEDIA_PLAYER_OPTION_LIVE_STREAM_MAX_CACHE_SECONDS:I = 0xc6

.field public static final MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID:I = 0x32b

.field public static final MEDIA_PLAYER_OPTION_LLASH_REQUEST_PARAMS:I = 0x473

.field public static final MEDIA_PLAYER_OPTION_LLASH_TARGET_BITRATE_WITH_32_BITS_SUFFIX:I = 0x472

.field public static final MEDIA_PLAYER_OPTION_LOADER_TYPE:I = 0xc8

.field public static final MEDIA_PLAYER_OPTION_LOG_LEVEL:I = 0x3d8

.field public static final MEDIA_PLAYER_OPTION_LOG_LEVEL_PERCISE:I = 0x5dd

.field public static final MEDIA_PLAYER_OPTION_LOOP_COUNT:I = 0xc1

.field public static final MEDIA_PLAYER_OPTION_LOOP_END_TIME:I = 0x8a

.field public static final MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO:I = 0xc3

.field public static final MEDIA_PLAYER_OPTION_LOOP_START_TIME:I = 0x89

.field public static final MEDIA_PLAYER_OPTION_LOWER_AUDIOMEM_CAPACITY:I = 0xfa9

.field public static final MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING:I = 0x708

.field public static final MEDIA_PLAYER_OPTION_MASK_DOWNLOAD_SIZE:I = 0x709

.field public static final MEDIA_PLAYER_OPTION_MASK_HEADER_LEN:I = 0x70b

.field public static final MEDIA_PLAYER_OPTION_MASK_RANGE_OPT:I = 0x70a

.field public static final MEDIA_PLAYER_OPTION_MASK_STREAM_OPENED_TIME:I = 0x354

.field public static final MEDIA_PLAYER_OPTION_MASK_STREAM_OPEN_TIME:I = 0x353

.field public static final MEDIA_PLAYER_OPTION_MASTER_M3U8_OPTIMIZE_ENABLE:I = 0x65

.field public static final MEDIA_PLAYER_OPTION_MASTER_TYPE:I = 0xd

.field public static final MEDIA_PLAYER_OPTION_MAX_AV_POS_GAP:I = 0x25e

.field public static final MEDIA_PLAYER_OPTION_MAX_BUFFERING_DATA_OF_MILLISECONDS:I = 0x6e

.field public static final MEDIA_PLAYER_OPTION_MAX_CACHE_SECONDS:I = 0x18

.field public static final MEDIA_PLAYER_OPTION_MAX_CODEC_NUMS_IN_POOL:I = 0x411

.field public static final MEDIA_PLAYER_OPTION_MAX_DROP_FRAME_COST:I = 0x42d

.field public static final MEDIA_PLAYER_OPTION_MAX_FRAME_NUMS_IN_MEDIACODEC:I = 0x53b

.field public static final MEDIA_PLAYER_OPTION_MAX_VOLUME:I = 0x36

.field public static final MEDIA_PLAYER_OPTION_MCMONITOR_QUEUE_SIZE:I = 0x54a

.field public static final MEDIA_PLAYER_OPTION_MC_MAX_HEIGHT:I = 0x3f1

.field public static final MEDIA_PLAYER_OPTION_MC_MAX_WIDTH:I = 0x3f0

.field public static final MEDIA_PLAYER_OPTION_MC_RENDER_HANDLE_SAR:I = 0x538

.field public static final MEDIA_PLAYER_OPTION_MDAT_POS:I = 0x260

.field public static final MEDIA_PLAYER_OPTION_MDL_SEEK_REOPEN:I = 0x23a

.field public static final MEDIA_PLAYER_OPTION_MEDIACODEC_ASYNC_ENABLE:I = 0x3e8

.field public static final MEDIA_PLAYER_OPTION_MEDIACODEC_DROP_NONREF:I = 0xd8

.field public static final MEDIA_PLAYER_OPTION_MEDIA_ACCUMULATE_DOWNLOAD_BYTES:I = 0x1dc

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_AUTO_RECOVERY:I = 0x5b

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_CHECK_INTERVAL_MS:I = 0x52f

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_TIMEOUT_MS:I = 0x530

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_REAL_TIME:I = 0xa4

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_RENDER:I = 0x58

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_SIDE_DATA:I = 0x84

.field public static final MEDIA_PLAYER_OPTION_MEDIA_CODEC_SYNC_MODE:I = 0x5a

.field public static final MEDIA_PLAYER_OPTION_MEDIA_COMMENT:I = 0x2f

.field public static final MEDIA_PLAYER_OPTION_MEDIA_DOWNLOAD_BYTES:I = 0x2d

.field public static final MEDIA_PLAYER_OPTION_MEDIA_FILE_KEY:I = 0x11

.field public static final MEDIA_PLAYER_OPTION_MEDIA_FILE_LOADED_SIZE:I = 0x15

.field public static final MEDIA_PLAYER_OPTION_MEDIA_FILE_MAX_CACHE_SIZE:I = 0x13

.field public static final MEDIA_PLAYER_OPTION_MEDIA_FORMAT:I = 0x2c

.field public static final MEDIA_PLAYER_OPTION_MEDIA_PLAY_BYTES:I = 0x2e

.field public static final MEDIA_PLAYER_OPTION_META_DATA_INFO:I = 0x8e

.field public static final MEDIA_PLAYER_OPTION_MIN_AUDIO_FRAME_SZIE:I = 0x2f0

.field public static final MEDIA_PLAYER_OPTION_MIN_BUFFER_MS_STOP_DROP:I = 0x42c

.field public static final MEDIA_PLAYER_OPTION_MIN_FRAME_DURATION:I = 0x37

.field public static final MEDIA_PLAYER_OPTION_MIN_VIDEO_FRAME_SZIE:I = 0x2f1

.field public static final MEDIA_PLAYER_OPTION_MOCK_FIRST_LAGGING_TIME:I = 0x6ca

.field public static final MEDIA_PLAYER_OPTION_MOCK_LAGGING_END_TIME:I = 0x6cb

.field public static final MEDIA_PLAYER_OPTION_MOCK_MAX_LAGGING_CNT:I = 0x6c6

.field public static final MEDIA_PLAYER_OPTION_MOCK_MIN_LAGGING_INTERVAL:I = 0x6c8

.field public static final MEDIA_PLAYER_OPTION_MOCK_Single_LAGGING_DUR:I = 0x6c7

.field public static final MEDIA_PLAYER_OPTION_MOCK_TRIGGER_LAGGING_RATIO:I = 0x6c9

.field public static final MEDIA_PLAYER_OPTION_MODULE_ID:I = 0x201
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_MODULE_NAME:I = 0x1fd

.field public static final MEDIA_PLAYER_OPTION_MOOV_POS:I = 0x25f

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_FAST_PLAY_BUFFER_THRESHOLD:I = 0x6c2

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_FORBID_PLAY_SPEED_CHANGE:I = 0x6c1

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_OUT_OF_SYNC_THRESHOLD:I = 0x6be

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_RESYNC_THRESHOLD:I = 0x6bd

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_SHOULD_CHECK_BUFFER_STATE:I = 0x6c0

.field public static final MEDIA_PLAYER_OPTION_MULTISTREAM_SYNC_THRESHOLD:I = 0x6bc

.field public static final MEDIA_PLAYER_OPTION_MULTI_AUDIO_TRACK_ENABLE:I = 0xa421

.field public static final MEDIA_PLAYER_OPTION_NEED_CHECK_DROP_AUDIO:I = 0x154

.field public static final MEDIA_PLAYER_OPTION_NETWORK_AUTO_RECONNECT:I = 0x7

.field public static final MEDIA_PLAYER_OPTION_NETWORK_CLASS:I = 0x3c2

.field public static final MEDIA_PLAYER_OPTION_NETWORK_RECONNECT_COUNT:I = 0x21a

.field public static final MEDIA_PLAYER_OPTION_NETWORK_TIMEOUT:I = 0x9

.field public static final MEDIA_PLAYER_OPTION_NETWORK_TRY_COUNT:I = 0xe6

.field public static final MEDIA_PLAYER_OPTION_NETWORK_TYPE:I = 0x27

.field public static final MEDIA_PLAYER_OPTION_NOTIFY_ALL_SEI_THRESHOLD:I = 0x171

.field public static final MEDIA_PLAYER_OPTION_NOTIFY_COMPLETED_IMMEDIATELY:I = 0x293

.field public static final MEDIA_PLAYER_OPTION_NOTIFY_DEAD_LOCK:I = 0x12d

.field public static final MEDIA_PLAYER_OPTION_NO_AV_SYNC:I = 0x334

.field public static final MEDIA_PLAYER_OPTION_NO_BUFFERING_UPDATE:I = 0x228

.field public static final MEDIA_PLAYER_OPTION_NO_VARENDER_THRESHOLD:I = 0x3d5

.field public static final MEDIA_PLAYER_OPTION_ONLY_DECODER_SEI:I = 0x2

.field public static final MEDIA_PLAYER_OPTION_ONLY_PLAY_AUDIO_FOR_BOTH_STREAM:I = 0x3fc

.field public static final MEDIA_PLAYER_OPTION_OPEN_FAIL_TRY_AGINE:I = 0x52

.field public static final MEDIA_PLAYER_OPTION_OPEN_INPUT_TIME:I = 0x3ca

.field public static final MEDIA_PLAYER_OPTION_OPEN_RAISR:I = 0x59

.field public static final MEDIA_PLAYER_OPTION_OPEN_SUB_RETRY_TIMES:I = 0x355

.field public static final MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE:I = 0x33b

.field public static final MEDIA_PLAYER_OPTION_OPT_AUDIORENDERTIME_REPORT:I = 0x252

.field public static final MEDIA_PLAYER_OPTION_OPT_REUSE_OF_SUB_DETACHING:I = 0x356

.field public static final MEDIA_PLAYER_OPTION_OPT_SUB_FIRST_LOAD_TIME:I = 0x33c

.field public static final MEDIA_PLAYER_OPTION_OUTLET_CREATE_TIME:I = 0x273

.field public static final MEDIA_PLAYER_OPTION_OUTLET_DROP_FRAME_TYPE:I = 0x5c

.field public static final MEDIA_PLAYER_OPTION_OUTLET_FORBID_DROP_FRAME_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_OPTION_OUTLET_HURRY_DROP:I = 0x2

.field public static final MEDIA_PLAYER_OPTION_OUTLET_LIMIT_MAX_FRAME_RATE_DROP_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_OPTION_OUTLET_THREAD_OPTIMIZE:I = 0xa42b

.field public static final MEDIA_PLAYER_OPTION_OUTPUT_LOG:I = 0xdf

.field public static final MEDIA_PLAYER_OPTION_OUT_OF_SYNC_WHEN_MASTER_REMOVED:I = 0x6bf

.field public static final MEDIA_PLAYER_OPTION_OUT_OF_SYNC_WHEN_PROGRESS_AHEAD:I = 0x6c4

.field public static final MEDIA_PLAYER_OPTION_OUT_OF_SYNC_WHEN_PROGRESS_DELAYED:I = 0x6c3

.field public static final MEDIA_PLAYER_OPTION_PANO_VIDEO_TYPE:I = 0xbc3

.field public static final MEDIA_PLAYER_OPTION_PLAYER_DBEUG_STATE:I = 0x1da

.field public static final MEDIA_PLAYER_OPTION_PLAYER_ID:I = 0x6ba

.field public static final MEDIA_PLAYER_OPTION_PLAYER_LIB_NAME:I = 0x447

.field public static final MEDIA_PLAYER_OPTION_PLAYER_SLEEP_DURATION:I = 0xa459

.field public static final MEDIA_PLAYER_OPTION_PLAY_LOG_INFO:I = 0x138a

.field public static final MEDIA_PLAYER_OPTION_PLAY_SPEED_EXTEND_ENABLE:I = 0x63

.field public static final MEDIA_PLAYER_OPTION_PLAY_SPLIT_STREAM:I = 0x57

.field public static final MEDIA_PLAYER_OPTION_PLAY_TYPE:I = 0x145

.field public static final MEDIA_PLAYER_OPTION_POSITION_UPDATE_INTERVAL:I = 0x287

.field public static final MEDIA_PLAYER_OPTION_POST_PREPARE:I = 0x114

.field public static final MEDIA_PLAYER_OPTION_PREFER_NEAREST_MAX_POS_OFFSET:I = 0x3d9

.field public static final MEDIA_PLAYER_OPTION_PREFER_NEAREST_SAMPLE:I = 0x5f

.field public static final MEDIA_PLAYER_OPTION_PRELOAD_GEAR:I = 0x2f3

.field public static final MEDIA_PLAYER_OPTION_PREPARE_CACHE_MS:I = 0x11e

.field public static final MEDIA_PLAYER_OPTION_PREPARE_DECODE_ONLY:I = 0x427

.field public static final MEDIA_PLAYER_OPTION_PREPROCESS_AUDIO_EFFECT_TYPE:I = 0xa47e

.field public static final MEDIA_PLAYER_OPTION_PRE_DECODE_AUTO_PAUSE:I = 0xc4

.field public static final MEDIA_PLAYER_OPTION_PRE_RENDER_BUFFERING_UPDATE_PRECENTAGE:I = 0x23c

.field public static final MEDIA_PLAYER_OPTION_PRIMING_WORK_AROUND:I = 0x173

.field public static final MEDIA_PLAYER_OPTION_PRIV_CODEC_NAME:I = 0x3ea

.field public static final MEDIA_PLAYER_OPTION_PROTOCOL_RETRY_TIMES:I = 0x3ab

.field public static final MEDIA_PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK:I = 0x521

.field public static final MEDIA_PLAYER_OPTION_QUERY_WINSIZE:I = 0x3d6

.field public static final MEDIA_PLAYER_OPTION_QUEUE_INPUTBUFFER_COUNT:I = 0x548

.field public static final MEDIA_PLAYER_OPTION_QUEUE_MAX_FULL:I = 0x17b

.field public static final MEDIA_PLAYER_OPTION_QUIC_AUDIO_CHLO_COUNT:I = 0x452

.field public static final MEDIA_PLAYER_OPTION_QUIC_AUDIO_CONFIG_CACHED:I = 0x450

.field public static final MEDIA_PLAYER_OPTION_QUIC_CHLO_COUNT:I = 0x160

.field public static final MEDIA_PLAYER_OPTION_QUIC_CONFIG_CACHED:I = 0x15f

.field public static final MEDIA_PLAYER_OPTION_QUIC_CONFIG_OPTIMIZE:I = 0x39f

.field public static final MEDIA_PLAYER_OPTION_QUIC_CONNECTION_ID:I = 0x400

.field public static final MEDIA_PLAYER_OPTION_QUIC_ENABLE_CERT_VERIFY:I = 0x162

.field public static final MEDIA_PLAYER_OPTION_QUIC_ENABLE_MTU_DISCOVERY:I = 0x165

.field public static final MEDIA_PLAYER_OPTION_QUIC_ENABLE_UNRELIABLE:I = 0x18c

.field public static final MEDIA_PLAYER_OPTION_QUIC_FIFO_SIZE:I = 0x3ee

.field public static final MEDIA_PLAYER_OPTION_QUIC_FIX_PROCESS_TIMER:I = 0x399

.field public static final MEDIA_PLAYER_OPTION_QUIC_FIX_STREAM_FIN_AND_RST:I = 0x39c

.field public static final MEDIA_PLAYER_OPTION_QUIC_FIX_WILLING_AND_ABLE_TO_WRITE:I = 0x398

.field public static final MEDIA_PLAYER_OPTION_QUIC_INIT_MTU:I = 0x164

.field public static final MEDIA_PLAYER_OPTION_QUIC_INIT_RTT:I = 0x184

.field public static final MEDIA_PLAYER_OPTION_QUIC_MAX_ACK_DELAY:I = 0x189

.field public static final MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSIONS:I = 0x185

.field public static final MEDIA_PLAYER_OPTION_QUIC_MAX_CRYPTO_RETRANSMISSION_TIME_MS:I = 0x186

.field public static final MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSIONS:I = 0x187

.field public static final MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSION_TIME_MS:I = 0x188

.field public static final MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION:I = 0x18a

.field public static final MEDIA_PLAYER_OPTION_QUIC_OPEN_RESULT:I = 0x163

.field public static final MEDIA_PLAYER_OPTION_QUIC_PAD_HELLO:I = 0x18b

.field public static final MEDIA_PLAYER_OPTION_QUIC_PARAMS:I = 0x3ac

.field public static final MEDIA_PLAYER_OPTION_QUIC_READ_BLOCK_MODE:I = 0x39b

.field public static final MEDIA_PLAYER_OPTION_QUIC_READ_BLOCK_TIMEOUT:I = 0x39a

.field public static final MEDIA_PLAYER_OPTION_QUIC_REJ_COUNT:I = 0x3b4

.field public static final MEDIA_PLAYER_OPTION_QUIC_REJ_REASONS:I = 0x3b5

.field public static final MEDIA_PLAYER_OPTION_QUIC_REPORT_INFO:I = 0x3b9

.field public static final MEDIA_PLAYER_OPTION_QUIC_SCFG_ADDRESS:I = 0x161

.field public static final MEDIA_PLAYER_OPTION_QUIC_SESSION_RECEIVED_WINDOW:I = 0x3a0

.field public static final MEDIA_PLAYER_OPTION_QUIC_STREAM_RECEIVED_WINDOW:I = 0x3a1

.field public static final MEDIA_PLAYER_OPTION_QUIC_TIMER_VERSION:I = 0x39e

.field public static final MEDIA_PLAYER_OPTION_QUIC_VERSION:I = 0x39d

.field public static final MEDIA_PLAYER_OPTION_RANGE_MODE:I = 0x102

.field public static final MEDIA_PLAYER_OPTION_READ_CACHE_MODE:I = 0x121

.field public static final MEDIA_PLAYER_OPTION_READ_MODE:I = 0x115

.field public static final MEDIA_PLAYER_OPTION_REAL_STREAM_FORMAT:I = 0x4e2

.field public static final MEDIA_PLAYER_OPTION_REAL_TIME_META_DATA_INFO:I = 0x5dc

.field public static final MEDIA_PLAYER_OPTION_RECEIVE_FIRST_AUDIO_FRAME_TIME:I = 0x4c

.field public static final MEDIA_PLAYER_OPTION_RECEIVE_FIRST_AUDIO_PACKET_TIME:I = 0x79f

.field public static final MEDIA_PLAYER_OPTION_RECEIVE_FIRST_VIDEO_FRAME_TIME:I = 0x4b

.field public static final MEDIA_PLAYER_OPTION_RECEIVE_FIRST_VIDEO_PACKET_TIME:I = 0x79e

.field public static final MEDIA_PLAYER_OPTION_REDIRECT_URL:I = 0x254

.field public static final MEDIA_PLAYER_OPTION_REFRESH_HANDLER:I = 0x515

.field public static final MEDIA_PLAYER_OPTION_RENDER_DEVICE:I = 0x8b

.field public static final MEDIA_PLAYER_OPTION_RENDER_ERR_NO_VIDEO:I = 0x1d3

.field public static final MEDIA_PLAYER_OPTION_RENDER_STALL_200:I = 0x17d

.field public static final MEDIA_PLAYER_OPTION_RENDER_STALL_300:I = 0x17e

.field public static final MEDIA_PLAYER_OPTION_RENDER_STALL_400:I = 0x17f

.field public static final MEDIA_PLAYER_OPTION_RENDER_STALL_500:I = 0x180

.field public static final MEDIA_PLAYER_OPTION_REND_FIRST_FRAME_TIME:I = 0xd2

.field public static final MEDIA_PLAYER_OPTION_REPORT_CCFB_TAG_IN_SHLO:I = 0x4b9

.field public static final MEDIA_PLAYER_OPTION_REPORT_CCRE_TAG_IN_CHLO:I = 0x4b4

.field public static final MEDIA_PLAYER_OPTION_REPORT_CCTK_FRAME_DATA:I = 0x4ba

.field public static final MEDIA_PLAYER_OPTION_REPORT_CCTK_TAG_IN_CHLO:I = 0x4b7

.field public static final MEDIA_PLAYER_OPTION_REPORT_FIRST_AVSYNC_FRAME:I = 0x1db

.field public static final MEDIA_PLAYER_OPTION_REPORT_FIRST_FRAME_FRAME_BUFFER_ONLY:I = 0x246

.field public static final MEDIA_PLAYER_OPTION_REPORT_IRTT_TAG_IN_CHLO:I = 0x4b6

.field public static final MEDIA_PLAYER_OPTION_REPORT_JCCO_TAG_IN_CHLO:I = 0x4bb

.field public static final MEDIA_PLAYER_OPTION_REPORT_NTYP_TAG_IN_CHLO:I = 0x4b8

.field public static final MEDIA_PLAYER_OPTION_REPORT_SSR_TAG_IN_CHLO:I = 0x4b5

.field public static final MEDIA_PLAYER_OPTION_RESET_WHEN_REUSE:I = 0x516

.field public static final MEDIA_PLAYER_OPTION_REUSE_SOCKET:I = 0x9a

.field public static final MEDIA_PLAYER_OPTION_ROTATION:I = 0x22b

.field public static final MEDIA_PLAYER_OPTION_RTC_ANSWER_RECV_TIME:I = 0x328

.field public static final MEDIA_PLAYER_OPTION_RTC_CUSTOM_LOG:I = 0x333

.field public static final MEDIA_PLAYER_OPTION_RTC_EARLY_INIT_RENDER:I = 0x330
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_RTC_ENABLE_DTLS:I = 0x32e

.field public static final MEDIA_PLAYER_OPTION_RTC_ENABLE_PLUGIN_LOAD:I = 0x375

.field public static final MEDIA_PLAYER_OPTION_RTC_ENABLE_RTC_UNINIT_LOCK_FREE:I = 0x372
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_RTC_FALLBACK_THRESHLOD:I = 0x32d

.field public static final MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE:I = 0x370

.field public static final MEDIA_PLAYER_OPTION_RTC_HARDWARE_DECODE_WITH_OES:I = 0x373

.field public static final MEDIA_PLAYER_OPTION_RTC_ICE_CONNECTED_TIME:I = 0x342

.field public static final MEDIA_PLAYER_OPTION_RTC_INITED_TIME:I = 0x326

.field public static final MEDIA_PLAYER_OPTION_RTC_MAX_JITTER_BUFFER_DELAY:I = 0x371

.field public static final MEDIA_PLAYER_OPTION_RTC_MAX_RECONNECT_COUNT:I = 0x323

.field public static final MEDIA_PLAYER_OPTION_RTC_MIN_JITTER_BUFFER:I = 0x32f

.field public static final MEDIA_PLAYER_OPTION_RTC_OFFER_SEND_TIME:I = 0x327

.field public static final MEDIA_PLAYER_OPTION_RTC_PARAMS_JSON:I = 0x331

.field public static final MEDIA_PLAYER_OPTION_RTC_PLAY_TIMEINFO:I = 0x34f

.field public static final MEDIA_PLAYER_OPTION_RTC_PLUGIN_CLASS_PATH_NAME:I = 0x376

.field public static final MEDIA_PLAYER_OPTION_RTC_PLUGIN_PACKAGE_NAME:I = 0x377

.field public static final MEDIA_PLAYER_OPTION_RTC_PRELOADING:I = 0x340

.field public static final MEDIA_PLAYER_OPTION_RTC_PRELOAD_RESULT:I = 0x341

.field public static final MEDIA_PLAYER_OPTION_RTC_PROFILE_CONFIG:I = 0x332

.field public static final MEDIA_PLAYER_OPTION_RTC_RECONNECT_INTERVAL:I = 0x324

.field public static final MEDIA_PLAYER_OPTION_RTC_START_TIME:I = 0x329

.field public static final MEDIA_PLAYER_OPTION_RTC_STATS_REPORT_ENABLE:I = 0x322

.field public static final MEDIA_PLAYER_OPTION_RTC_STATS_REPORT_INTERVAL:I = 0x325

.field public static final MEDIA_PLAYER_OPTION_RTC_STAT_INFO:I = 0x32a

.field public static final MEDIA_PLAYER_OPTION_RTC_STOP_INFO:I = 0x374

.field public static final MEDIA_PLAYER_OPTION_RTC_VENDOR_TYPE:I = 0x321

.field public static final MEDIA_PLAYER_OPTION_RTM_DATA_ICE_CONNECT_START_TIME:I = 0x348

.field public static final MEDIA_PLAYER_OPTION_RTM_DNS_TIME:I = 0x344

.field public static final MEDIA_PLAYER_OPTION_RTM_SIGNAL_ANSWER_UPDATED_TIME:I = 0x347

.field public static final MEDIA_PLAYER_OPTION_RTM_SIGNAL_OFFER_CREATED_TIME:I = 0x343

.field public static final MEDIA_PLAYER_OPTION_RTM_SIGNAL_TRANSPORT_CONNECTED_TIME:I = 0x345

.field public static final MEDIA_PLAYER_OPTION_RTM_TLS_HANDSHAKE_TIME:I = 0x346

.field public static final MEDIA_PLAYER_OPTION_SAMPLE_RATE:I = 0x22a

.field public static final MEDIA_PLAYER_OPTION_SAVED_HOST_TIME:I = 0x44

.field public static final MEDIA_PLAYER_OPTION_SECURE_BUFFER_THRESHOLD:I = 0x127

.field public static final MEDIA_PLAYER_OPTION_SEEK_END_ENABLE:I = 0x8f

.field public static final MEDIA_PLAYER_OPTION_SEEK_TIMECOST_INFO:I = 0x1e1

.field public static final MEDIA_PLAYER_OPTION_SERVER_IP:I = 0x4b1

.field public static final MEDIA_PLAYER_OPTION_SETTING_CODEC_NAME:I = 0x3eb

.field public static final MEDIA_PLAYER_OPTION_SETTING_RENDER_TYPE:I = 0x38

.field public static final MEDIA_PLAYER_OPTION_SET_AUDIO_DEVICE_TYPE:I = 0x17a

.field public static final MEDIA_PLAYER_OPTION_SET_AUDIO_INFO_ID:I = 0x294

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_MAXDURATION:I = 0x149

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_PROBESIZE:I = 0x148

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_AUDIO_QUERY:I = 0x178

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_EXIT:I = 0x2c8

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_AUTO_REOPEN:I = 0x14c

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_MAX_AV_DIFF:I = 0x14b

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_OPEN_VIDEO_FIRST:I = 0x14a

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_MAXDURATION:I = 0x147

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_PROBESIZE:I = 0x146

.field public static final MEDIA_PLAYER_OPTION_SET_AVPH_VIDEO_QUERY:I = 0x179

.field public static final MEDIA_PLAYER_OPTION_SET_CHECK_SILENCE_INTERVAL:I = 0x153

.field public static final MEDIA_PLAYER_OPTION_SET_CODECFRAMESDROP:I = 0x421

.field public static final MEDIA_PLAYER_OPTION_SET_DEFAULT_AUDIO_INFO_ID:I = 0x296

.field public static final MEDIA_PLAYER_OPTION_SET_DEFAULT_CODEC_ID:I = 0xb6

.field public static final MEDIA_PLAYER_OPTION_SET_DEFAULT_VIDEO_INFO_ID:I = 0x297

.field public static final MEDIA_PLAYER_OPTION_SET_EGL_VER:I = 0x100

.field public static final MEDIA_PLAYER_OPTION_SET_FFMPEG_LOG_LEVEL:I = 0x119

.field public static final MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_MS_GAPS:I = 0x176

.field public static final MEDIA_PLAYER_OPTION_SET_FORCE_DECODE_SWITCH:I = 0x175

.field public static final MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS:I = 0x177

.field public static final MEDIA_PLAYER_OPTION_SET_FRAMES_DROP:I = 0x9f

.field public static final MEDIA_PLAYER_OPTION_SET_HLSPROXY_PROTOCOL_HANDLE:I = 0x1f6

.field public static final MEDIA_PLAYER_OPTION_SET_KSY_FRAME_WAIT:I = 0xc0

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_BANDWIDTH_DOWN_PARAMETER:I = 0x3e6

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_BITRATE_4UP_CEILING:I = 0x220

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_ENHANCE:I = 0x215

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CHECK_INTERVAL:I = 0x216

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_CLOSE_IO_IMMEDIATELY:I = 0x224

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_COUNTER_THRESHOLD:I = 0x3e4

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_ENABLE_STARTUP_BITRATE:I = 0x222

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_METHOD:I = 0x217

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD:I = 0x21f

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_PID_KD:I = 0x3e3

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_PID_KI:I = 0x3e2

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_PID_KP:I = 0x3e1

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_REBUFF_PENALTY:I = 0x3de

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SAFE_BUFFER:I = 0x3e0

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SHOULD_USE_PENALIZED:I = 0x3e7

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_STARTUP_DOWNLOAD_SPEED:I = 0x223

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_ACTION:I = 0x221

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_DOWN_BUFFER_THRESHOLD:I = 0x3ff

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_SWITCH_NUMBER_THRESHOLD:I = 0x3fe

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_TARGET_BUFFER:I = 0x3df

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_ABR_UPGRADE_TIME_THRESHOLD:I = 0x3e5

.field public static final MEDIA_PLAYER_OPTION_SET_LIVE_PROTOCOL_HANDLE:I = 0x1f5

.field public static final MEDIA_PLAYER_OPTION_SET_LLASH_FAST_OPEN:I = 0x214

.field public static final MEDIA_PLAYER_OPTION_SET_MAX_FPS:I = 0x86

.field public static final MEDIA_PLAYER_OPTION_SET_MDL_PROTOCOL_HANDLE:I = 0x1f4

.field public static final MEDIA_PLAYER_OPTION_SET_MEDIA_ID:I = 0x385

.field public static final MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY:I = 0xc5

.field public static final MEDIA_PLAYER_OPTION_SET_PCDN_AND_FLV_ADAPT_ENABLE:I = 0x30f

.field public static final MEDIA_PLAYER_OPTION_SET_PCDN_ENABLE:I = 0x30c

.field public static final MEDIA_PLAYER_OPTION_SET_PCDN_H2P_CACHE:I = 0x30e

.field public static final MEDIA_PLAYER_OPTION_SET_PCDN_WATCH_THRESHOLD:I = 0x30d

.field public static final MEDIA_PLAYER_OPTION_SET_PIPE_DECLARE_LENGTH:I = 0x88

.field public static final MEDIA_PLAYER_OPTION_SET_PIPE_START_OFFSET:I = 0x87

.field public static final MEDIA_PLAYER_OPTION_SET_PRECISE_CACHE:I = 0x388

.field public static final MEDIA_PLAYER_OPTION_SET_PRECISE_PAUSE_PTS:I = 0x29c

.field public static final MEDIA_PLAYER_OPTION_SET_RADIO_MODE:I = 0x105

.field public static final MEDIA_PLAYER_OPTION_SET_SESSIONID:I = 0x3c0

.field public static final MEDIA_PLAYER_OPTION_SET_SURFACE_RETRY_COUNT:I = 0x414

.field public static final MEDIA_PLAYER_OPTION_SET_SURFACE_RETRY_INTERVAL:I = 0x415

.field public static final MEDIA_PLAYER_OPTION_SET_TRACK_VOLUME:I = 0x5e

.field public static final MEDIA_PLAYER_OPTION_SET_UNSUPPORT_SAMPLERATE:I = 0x6f

.field public static final MEDIA_PLAYER_OPTION_SET_VIDEO_INFO_ID:I = 0x295

.field public static final MEDIA_PLAYER_OPTION_SIDX_AUDIO_WINDOW_SIZE:I = 0x20b

.field public static final MEDIA_PLAYER_OPTION_SIDX_INFOS:I = 0x209

.field public static final MEDIA_PLAYER_OPTION_SIDX_VIDEO_WINDOW_SIZE:I = 0x20a

.field public static final MEDIA_PLAYER_OPTION_SINGLE_MEDIA_CODEC:I = 0x40d

.field public static final MEDIA_PLAYER_OPTION_SINGLE_PLAY_DOWNLOAD_BYTES:I = 0x91

.field public static final MEDIA_PLAYER_OPTION_SKIP_AUDIO_GRAPH:I = 0xc7

.field public static final MEDIA_PLAYER_OPTION_SKIP_BUFFERING_BEFORE_FIRST_FRAME:I = 0x43d

.field public static final MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT:I = 0x129

.field public static final MEDIA_PLAYER_OPTION_SKIP_FIND_STREAM_INFO:I = 0x60

.field public static final MEDIA_PLAYER_OPTION_SLOW_PLAY_MILLISECOND:I = 0x18e

.field public static final MEDIA_PLAYER_OPTION_SLOW_PLAY_SPEED:I = 0xbf

.field public static final MEDIA_PLAYER_OPTION_SLOW_PLAY_TIME:I = 0xbe

.field public static final MEDIA_PLAYER_OPTION_SMOOTH_DELAYED_SEC:I = 0x28

.field public static final MEDIA_PLAYER_OPTION_SOCKET_CREATE_SUCCESS_TIME:I = 0x249

.field public static final MEDIA_PLAYER_OPTION_SOCKET_ERR_CODE:I = 0x1d2

.field public static final MEDIA_PLAYER_OPTION_SOCKET_ERR_TYPE:I = 0x1d1

.field public static final MEDIA_PLAYER_OPTION_SOCKET_RECV_BUFFER_SIZE:I = 0x19

.field public static final MEDIA_PLAYER_OPTION_SPADE:I = 0x90

.field public static final MEDIA_PLAYER_OPTION_SPADE_EXPIRE_TIME:I = 0x1d7

.field public static final MEDIA_PLAYER_OPTION_SPADE_LOCAL_TIME:I = 0x1d8

.field public static final MEDIA_PLAYER_OPTION_SPADE_UNIONINFO:I = 0x1ce

.field public static final MEDIA_PLAYER_OPTION_SPEEDX_DROP:I = 0x166

.field public static final MEDIA_PLAYER_OPTION_SPEEDX_DROP_FPS_LIMIT:I = 0x167

.field public static final MEDIA_PLAYER_OPTION_SSR_ALWAYS:I = 0x4b2

.field public static final MEDIA_PLAYER_OPTION_START_DIRECTLLY_AFTER_PREPARED:I = 0x137

.field public static final MEDIA_PLAYER_OPTION_START_PLAY_BUFFER_THRES:I = 0x135

.field public static final MEDIA_PLAYER_OPTION_START_PLAY_BUFFER_WAIT_TIME:I = 0x2f8

.field public static final MEDIA_PLAYER_OPTION_START_PLAY_TIME:I = 0x64

.field public static final MEDIA_PLAYER_OPTION_STOP_CLOSE_IO:I = 0x2a0

.field public static final MEDIA_PLAYER_OPTION_STOP_SOURCE_ASYNC:I = 0x116

.field public static final MEDIA_PLAYER_OPTION_STRATEGY_PARAMS_CALLBACK:I = 0x3fb

.field public static final MEDIA_PLAYER_OPTION_STREAM_FORMAT:I = 0x13b

.field public static final MEDIA_PLAYER_OPTION_STREAM_TRACK_INFO:I = 0x1d9

.field public static final MEDIA_PLAYER_OPTION_STREAM_VOICE_DB_ENABLE:I = 0x3db

.field public static final MEDIA_PLAYER_OPTION_STREAM_VOICE_DB_VALUE:I = 0x3da

.field public static final MEDIA_PLAYER_OPTION_SUBTITLE_DOWNLOAD_SIZE:I = 0x358

.field public static final MEDIA_PLAYER_OPTION_SUB_CPU_PROTECTION_GAP:I = 0xa428

.field public static final MEDIA_PLAYER_OPTION_SUB_FIRST_LOAD_TIME:I = 0x352

.field public static final MEDIA_PLAYER_OPTION_SUB_PATH_INFO:I = 0x269

.field public static final MEDIA_PLAYER_OPTION_SUGGEST_SENDING_RATE:I = 0x4b3

.field public static final MEDIA_PLAYER_OPTION_SUPER_RES_FXAA_OPTION:I = 0xa6

.field public static final MEDIA_PLAYER_OPTION_SUPER_RES_OPTION:I = 0xa5

.field public static final MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION:I = 0xa7

.field public static final MEDIA_PLAYER_OPTION_SWITCH_SUBID:I = 0x26b

.field public static final MEDIA_PLAYER_OPTION_SYNCHRONIZATION_GROUP_ID:I = 0x6b8

.field public static final MEDIA_PLAYER_OPTION_SYNCHRONIZER_RENDERING_PTS_DIFF:I = 0x6bb

.field public static final MEDIA_PLAYER_OPTION_SYNC_GROUP_STAT_INFO:I = 0x6c5

.field public static final MEDIA_PLAYER_OPTION_SYS_ERROR_CODE:I = 0x1f

.field public static final MEDIA_PLAYER_OPTION_TCP_FAST_OPEN_SUCCESS:I = 0x206

.field public static final MEDIA_PLAYER_OPTION_TEST_ACTION:I = 0x53

.field public static final MEDIA_PLAYER_OPTION_TEST_NET_SPEED:I = 0x4f

.field public static final MEDIA_PLAYER_OPTION_TEST_NET_SPEED_DIFF:I = 0x42

.field public static final MEDIA_PLAYER_OPTION_TEST_WINDOW_CHNAGE_TYPE:I = 0x55

.field public static final MEDIA_PLAYER_OPTION_TFO_FALL_BACK_TIME:I = 0x13e

.field public static final MEDIA_PLAYER_OPTION_THIRDPARTY_AVDICTIONARY_PTR:I = 0x404

.field public static final MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_NAME:I = 0x403

.field public static final MEDIA_PLAYER_OPTION_THIRDPARTY_PROTOCOL_PTR:I = 0x402

.field public static final MEDIA_PLAYER_OPTION_THREADNAME_TWO_CHAR_PAD:I = 0x433

.field public static final MEDIA_PLAYER_OPTION_THREAD_PRIORITY_VALUE:I = 0x232

.field public static final MEDIA_PLAYER_OPTION_THREAD_RUN_REFACTOR:I = 0x537

.field public static final MEDIA_PLAYER_OPTION_THREAD_TIDS:I = 0x70c

.field public static final MEDIA_PLAYER_OPTION_TILE_HEAD_ROTATE_DELAY:I = 0xbc2

.field public static final MEDIA_PLAYER_OPTION_TIME_BAR_PERCENTAGE:I = 0x138

.field public static final MEDIA_PLAYER_OPTION_TLS_LOG:I = 0x1e0

.field public static final MEDIA_PLAYER_OPTION_TOKEN_URL_TEMPLATE:I = 0xcf

.field public static final MEDIA_PLAYER_OPTION_TO_DECODE_FIRST_AUDIO_FRAME_TIME:I = 0x7a1

.field public static final MEDIA_PLAYER_OPTION_TO_DECODE_FIRST_VIDEO_FRAME_TIME:I = 0x7a0

.field public static final MEDIA_PLAYER_OPTION_TRANS_OPEN_START_TIME:I = 0x248

.field public static final MEDIA_PLAYER_OPTION_TRAN_CONNECT_TIME:I = 0x45

.field public static final MEDIA_PLAYER_OPTION_TTMP_DNS_PARSE_ENABLE:I = 0x3ae

.field public static final MEDIA_PLAYER_OPTION_TTMP_DNS_PARSE_TIMEOUT:I = 0x3af

.field public static final MEDIA_PLAYER_OPTION_TTQUIC_SDK_VERSION:I = 0x3b2

.field public static final MEDIA_PLAYER_OPTION_TT_HLS_DRM:I = 0xfa

.field public static final MEDIA_PLAYER_OPTION_TT_HLS_DRM_TOKEN:I = 0xf9

.field public static final MEDIA_PLAYER_OPTION_UDP_REAL_SPEED:I = 0x3d7

.field public static final MEDIA_PLAYER_OPTION_UNBIND_AUDIO_PROCESSOR_STATUS:I = 0x445

.field public static final MEDIA_PLAYER_OPTION_UPDATE_TIMESTAMP_MODE:I = 0x120

.field public static final MEDIA_PLAYER_OPTION_USER_EXIT_TIME:I = 0x53c

.field public static final MEDIA_PLAYER_OPTION_USE_CODEC_POOL:I = 0x190

.field public static final MEDIA_PLAYER_OPTION_USE_MEDIA_CODEC_AUDIO:I = 0x61

.field public static final MEDIA_PLAYER_OPTION_USE_TARGET_WINDOW:I = 0xa411
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEDIA_PLAYER_OPTION_VALID_HTTP_CONTENT:I = 0x1d

.field public static final MEDIA_PLAYER_OPTION_VC2_THREAD_NUM:I = 0xfaa

.field public static final MEDIA_PLAYER_OPTION_VC2_WPP_MODE:I = 0xfa8

.field public static final MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN:I = 0x118

.field public static final MEDIA_PLAYER_OPTION_VIDEO_BUFFER_LENGTH:I = 0x48

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CACHED_NUM:I = 0x423

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CHECK_INFO:I = 0xca

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CODEC:I = 0x1de

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CODEC_ID:I = 0x8d

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CODEC_PROFILE:I = 0x193

.field public static final MEDIA_PLAYER_OPTION_VIDEO_CURRENT_DOWNLOAD_INDEX:I = 0x208

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_BUFLEN:I = 0x25a

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_ERROR:I = 0xdd

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_OPENED_TIME:I = 0x276

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_OUTFPS_LIST:I = 0x338

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_POST_STALL_500:I = 0x183

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_PRE_STALL_500:I = 0x182

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_STACK:I = 0xa0

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DECODER_START_TIME:I = 0x275

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DEMUXER_STALL_500:I = 0x181

.field public static final MEDIA_PLAYER_OPTION_VIDEO_DOWNLOAD_BYTES:I = 0x27c

.field public static final MEDIA_PLAYER_OPTION_VIDEO_FIRST_LIVE_FRAME_RENDER_TIME:I = 0x2bb

.field public static final MEDIA_PLAYER_OPTION_VIDEO_FIRST_LIVE_PACKET_READ_TIME:I = 0x2b9

.field public static final MEDIA_PLAYER_OPTION_VIDEO_FIRST_PACKET_TIME:I = 0x10a

.field public static final MEDIA_PLAYER_OPTION_VIDEO_HIT_CDN_CACHE:I = 0x2d4

.field public static final MEDIA_PLAYER_OPTION_VIDEO_HTTPX_CACHED:I = 0x3ba

.field public static final MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME:I = 0x110

.field public static final MEDIA_PLAYER_OPTION_VIDEO_HTTP_RES_FINSIH_TIME:I = 0x112

.field public static final MEDIA_PLAYER_OPTION_VIDEO_HW_ERR_REASON:I = 0x21c

.field public static final MEDIA_PLAYER_OPTION_VIDEO_ID:I = 0xcd

.field public static final MEDIA_PLAYER_OPTION_VIDEO_LINE_STRIDE:I = 0x239

.field public static final MEDIA_PLAYER_OPTION_VIDEO_LIVE_CONNECT_TIME:I = 0x2b7

.field public static final MEDIA_PLAYER_OPTION_VIDEO_LIVE_OPEN_TIME:I = 0x2b5

.field public static final MEDIA_PLAYER_OPTION_VIDEO_OUTLET_DROPCOUNT_ONCE:I = 0x33a

.field public static final MEDIA_PLAYER_OPTION_VIDEO_PARAM_SEND_OUTLET_TIME:I = 0x1ca

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RANGE_SIZE:I = 0xf3

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME:I = 0x103

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RENDER_ERROR:I = 0xf5

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_COUNT:I = 0x351

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_DIFF_LIST:I = 0x350

.field public static final MEDIA_PLAYER_OPTION_VIDEO_RENDER_STALL_THRESHOLD:I = 0x142

.field public static final MEDIA_PLAYER_OPTION_VIDEO_SAVED_HOST_TIME:I = 0x108

.field public static final MEDIA_PLAYER_OPTION_VIDEO_SECOND_FRAME:I = 0x419

.field public static final MEDIA_PLAYER_OPTION_VIDEO_STREAM_DURATION:I = 0x20c

.field public static final MEDIA_PLAYER_OPTION_VIDEO_SWITCH_CACHE_TIME:I = 0x10e

.field public static final MEDIA_PLAYER_OPTION_VIDEO_TIME_FOR_CDN:I = 0x2d8

.field public static final MEDIA_PLAYER_OPTION_VIDEO_TIME_TO_SOURCE:I = 0x2d6

.field public static final MEDIA_PLAYER_OPTION_VIDEO_TOTAL_CACHED_LEN:I = 0x27e

.field public static final MEDIA_PLAYER_OPTION_VIDEO_TRAN_CONNECT_TIME:I = 0x109

.field public static final MEDIA_PLAYER_OPTION_VIEW_HEIGHT:I = 0x1d0

.field public static final MEDIA_PLAYER_OPTION_VIEW_WIDTH:I = 0x1cf

.field public static final MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE:I = 0xff

.field public static final MEDIA_PLAYER_OPTION_VR_SET_FOV_PREDICTOR_HANDLE:I = 0xbc0

.field public static final MEDIA_PLAYER_OPTION_WAITING_CODEC:I = 0x418

.field public static final MEDIA_PLAYER_OPTION_WAIT_TIME_AFTER_FIRST_FRAME:I = 0x13a

.field public static final MEDIA_PLAYER_PANO_RENDER_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_PCMS16LE_CODEC_ID:I = 0x4

.field public static final MEDIA_PLAYER_PLAN_RENDER_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_SAVE_FILE_MODE_TYPE:I = 0x3a

.field public static final MEDIA_PLAYER_SETTING_CODEC_ERROR:I = -0x7a11e

.field public static final MEDIA_PLAYER_SETTING_IS_NULL_ERROR:I = -0x7a11f

.field public static final MEDIA_PLAYER_SETTING_OUTER_ERROR:I = -0x7a11b

.field public static final MEDIA_PLAYER_SETTING_OUTLET_ERROR:I = -0x7a11a

.field public static final MEDIA_PLAYER_SETTING_URI_IS_ERROR:I = -0x7a113

.field public static final MEDIA_PLAYER_SETTING_URI_IS_NULL_ERROR:I = -0x7a114

.field public static final MEDIA_PLAYER_SLES_VOICE_VALUE:I = 0x0

.field public static final MEDIA_PLAYER_START_DECODER_ERROR:I = -0x7a11d

.field public static final MEDIA_PLAYER_START_OUTLET_ERROR:I = -0x7a116

.field public static final MEDIA_PLAYER_START_OUTPUTER_ERROR:I = -0x7a117

.field public static final MEDIA_PLAYER_SUPPORT_SAMPLERATES:[I

.field public static final MEDIA_PLAYER_TCP_FAILED_TO_RESOLVE_HOSTNAME_ERROR:I = -0x7a057

.field public static final MEDIA_PLAYER_TCP_READ_NETWORK_TIMEOUT_ERROR:I = -0x7a051

.field public static final MEDIA_PLAYER_TCP_RECEIVE_DATA_FAILED_ERROR:I = -0x7a052

.field public static final MEDIA_PLAYER_TCP_SEND_DATA_FAILED_ERROR:I = -0x7a053

.field public static final MEDIA_PLAYER_TCP_WRITE_NETWORK_TIMEOUT_ERROR:I = -0x7a050

.field public static final MEDIA_PLAYER_TEST_SURFACE_CHANGED_VALUE:I = 0x2

.field public static final MEDIA_PLAYER_TEST_VIEW_CHANGED_VALUE:I = 0x1

.field public static final MEDIA_PLAYER_URL_IS_NOT_MP4_ERROR:I = -0x7a112

.field public static final MEDIA_PLAYER_VIDEO_DECODER_WRITE_ERROR:I = -0x7a109

.field public static final MEDIA_PLAYER_VIDEO_TRACK_ENABLE_OPTION:I = 0x3e

.field public static final MEDIA_PLAYER_VR_RENDER_VALUE:I = 0x2

.field public static final MEDIA_QUICU_FRAME_DROP:I = 0x3b

.field public static final MEDIA_QUIC_ALOG_REPORT:I = 0x3f

.field public static final MEDIA_STARTTIME_NO_VIDEO_FRAME:I = -0xfffffc9

.field public static final MEIDA_PLAYER_OPTION_IGNORE_DIRECTLY_BUFFERING:I = 0x236

.field public static final MEIDA_PLAYER_OPTION_NATIVE_RENDER_ROTATION_ADAPT:I = 0x235

.field public static final MouseDown:I = 0x1

.field public static final MouseMove:I = 0x2

.field public static final MouseUp:I = 0x3

.field public static final NEAREST_SCALE_VALUE:I = 0x2

.field public static final NHTTP_LOADER:I = 0x1

.field public static final NOT_SAVE_FILE_MODE:I = 0x0

.field public static final OPEN_FILE_MODE:I = 0x1

.field public static final PANO_AUTO_ROTATION_DISABLE:I = 0x0

.field public static final PANO_AUTO_ROTATION_ENABLE:I = 0x1

.field public static final PANO_VIDEO_TYPE_BEAC_3D_TOP_AND_BOTTOM_180:I = 0x2

.field public static final PANO_VIDEO_TYPE_BEAC_3D_TOP_AND_BOTTOM_360:I = 0x1

.field public static final PANO_VIDEO_TYPE_ERP_2D_360:I = 0x0

.field public static final PANO_VIDEO_TYPE_ERP_3D_TOP_AND_BOTTOM_180:I = 0x3

.field public static final PanoIsGestureControl:I = 0x1

.field public static final PanoIsSensorControl:I = 0x0

.field public static final REAL_MASTER:I = 0x1

.field public static final REPLACE_FILE_MODE:I = 0x0

.field public static final SAVE_FILE_MODE:I = 0x1

.field public static final TestANRCrashValue:I = 0x0

.field public static final TestNativeCrashValue:I = 0x2

.field public static final TestSimpleCrashValue:I = 0x1

.field public static final VIDEO_MASTER:I = 0x2

.field public static final VIEW_ROTATION_LEFT:I = 0x1

.field public static final VIEW_ROTATION_NONE:I = 0x0

.field public static final VIEW_ROTATION_OPTION:I = 0x17

.field public static final VIEW_ROTATION_RIGHT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttm/player/TTPlayerKeys;->SupportSampleRates:[I

    .line 2
    .line 3
    sput-object v0, Lcom/ss/ttm/player/MediaPlayer;->MEDIA_PLAYER_SUPPORT_SAMPLERATES:[I

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract deselectTrack(I)V
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDataSource()Ljava/lang/String;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getFloatOption(IF)F
.end method

.method public abstract getIntOption(II)I
.end method

.method public abstract getLongOption(IJ)J
.end method

.method public abstract getPlayerType()I
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getStringOption(I)Ljava/lang/String;
.end method

.method public abstract getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
.end method

.method public abstract getVideoHeight()I
.end method

.method public abstract getVideoType()I
.end method

.method public abstract getVideoWidth()I
.end method

.method public abstract isLooping()Z
.end method

.method public abstract isMute()Z
.end method

.method public abstract isOSPlayer()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract mouseEvent(III)V
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract prevClose()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract releaseAsync()V
.end method

.method public abstract reset()V
.end method

.method public abstract rotateCamera(FF)V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract selectTrack(I)V
.end method

.method public abstract setCacheFile(Ljava/lang/String;I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDisplay(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract setFloatOption(IF)I
.end method

.method public setFloatOptionArray([I[F)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setIntOption(II)V
.end method

.method public setIntOptionArray([I[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setIsMute(Z)V
.end method

.method public abstract setLongOption(IJ)J
.end method

.method public setLongOptionArray([I[J)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/ss/ttm/player/MediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/ss/ttm/player/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/ss/ttm/player/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnExternInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnExternInfoListener;)V
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setOnInfoListener(Lcom/ss/ttm/player/MediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnLogListener(Lcom/ss/ttm/player/MediaPlayer$OnLogListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/ss/ttm/player/MediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSARChangedListener(Lcom/ss/ttm/player/MediaPlayer$onSARChangedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/ss/ttm/player/MediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setOnVideoSizeChangedListener(Lcom/ss/ttm/player/MediaPlayer$OnVideoSizeChangedListener;)V
.end method

.method public abstract setPanoVideoControlModel(I)V
.end method

.method public abstract setPlaybackParams(Lcom/ss/ttm/player/PlaybackParams;)V
.end method

.method public abstract setScreenOnWhilePlaying(Z)V
.end method

.method public abstract setStringOption(ILjava/lang/String;)V
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

.method public abstract switchStream(II)V
.end method

.method public abstract takeScreenshot(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
.end method
