.class public Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;
.super Ljava/lang/Object;
.source "GearStrategy.java"


# static fields
.field public static final GEAR_STRATEGY_DOWNGRADE_NARROW_SCREEN:I = 0x2

.field public static final GEAR_STRATEGY_DOWNGRADE_NONE:I = 0x0

.field public static final GEAR_STRATEGY_DOWNGRADE_SR:I = 0x1

.field public static final GEAR_STRATEGY_ERROR_CONFIG_NULL:I = -0x6

.field public static final GEAR_STRATEGY_ERROR_GEAR_STRATEGY_DISABLED:I = -0x7

.field public static final GEAR_STRATEGY_ERROR_JSON_PARSE_FAIL:I = -0x1

.field public static final GEAR_STRATEGY_ERROR_METHOD_CALLBACK_LISTENER_NULL:I = -0x5

.field public static final GEAR_STRATEGY_ERROR_OK:I = 0x0

.field public static final GEAR_STRATEGY_ERROR_STRATEGY_CENTER_NOT_RUNNING:I = -0x3

.field public static final GEAR_STRATEGY_ERROR_STRATEGY_RESULT_NULL:I = -0x4

.field public static final GEAR_STRATEGY_ERROR_VIDEO_INFO_EMPTY:I = -0x2

.field public static final GEAR_STRATEGY_KEY_ABR_MAX_CACHE_BITRATE:Ljava/lang/String; = "max_cache_bitrate"

.field public static final GEAR_STRATEGY_KEY_ABR_SR_INFO:Ljava/lang/String; = "sr_info"

.field public static final GEAR_STRATEGY_KEY_ABR_STARTUP_AVERAGE_SPEED:Ljava/lang/String; = "average_speed"

.field public static final GEAR_STRATEGY_KEY_ABR_STARTUP_BITRATE_BEFORE_FIT_SCREEN:Ljava/lang/String; = "bitrate_before_fit_screen"

.field public static final GEAR_STRATEGY_KEY_ABR_STARTUP_INFO:Ljava/lang/String; = "startup_info"

.field public static final GEAR_STRATEGY_KEY_ABR_STARTUP_PREDICT_SPEED:Ljava/lang/String; = "predict_speed"

.field public static final GEAR_STRATEGY_KEY_ABR_STARTUP_SPEED:Ljava/lang/String; = "startup_speed"

.field public static final GEAR_STRATEGY_KEY_ABR_VERSION:Ljava/lang/String; = "abr_ver"

.field public static final GEAR_STRATEGY_KEY_AUDIO_BITRATE:Ljava/lang/String; = "audio_bitrarte"

.field public static final GEAR_STRATEGY_KEY_AUDIO_CALC_BITRATE:Ljava/lang/String; = "audio_calc_bitrarte"

.field public static final GEAR_STRATEGY_KEY_BLOCK_DOWNGRADE_BITRATE:Ljava/lang/String; = "bdowngrade_bitrate"

.field public static final GEAR_STRATEGY_KEY_CONFIG_QUALITY:Ljava/lang/String; = "config_quality"

.field public static final GEAR_STRATEGY_KEY_CURVE_ADJUST_FACTOR:Ljava/lang/String; = "curve_adjust_factor"

.field public static final GEAR_STRATEGY_KEY_CURVE_ADJUST_MODE:Ljava/lang/String; = "curve_adjust_mode"

.field public static final GEAR_STRATEGY_KEY_DOWNGRADE_TYPE:Ljava/lang/String; = "downgrade_type"

.field public static final GEAR_STRATEGY_KEY_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final GEAR_STRATEGY_KEY_ERROR_DESC:Ljava/lang/String; = "error_desc"

.field public static final GEAR_STRATEGY_KEY_EXTRA_CONFIG:Ljava/lang/String; = "extra_config"

.field public static final GEAR_STRATEGY_KEY_EXTRA_INFO:Ljava/lang/String; = "extra_info"

.field public static final GEAR_STRATEGY_KEY_INITIAL_SPEED:Ljava/lang/String; = "initial_speed"

.field public static final GEAR_STRATEGY_KEY_SELECT_REASON:Ljava/lang/String; = "select_reason"

.field public static final GEAR_STRATEGY_KEY_SPEED:Ljava/lang/String; = "speed"

.field public static final GEAR_STRATEGY_KEY_SR_GEARS:Ljava/lang/String; = "sr_gears"

.field public static final GEAR_STRATEGY_KEY_STRATEGY_MODULE:Ljava/lang/String; = "strategy_module"

.field public static final GEAR_STRATEGY_KEY_STRATEGY_TYPE:Ljava/lang/String; = "strategy_type"

.field public static final GEAR_STRATEGY_KEY_USER_ENTER_FULLSCREEN:Ljava/lang/String; = "user_enter_fullscreen"

.field public static final GEAR_STRATEGY_KEY_USER_EXPECTED_BITRATE:Ljava/lang/String; = "expected_bitrate"

.field public static final GEAR_STRATEGY_KEY_USER_QUALITY_SENSITIVITY:Ljava/lang/String; = "user_quality_sen"

.field public static final GEAR_STRATEGY_KEY_USE_LAST_NETWORK_SPEED:Ljava/lang/String; = "use_last_network_speed"

.field public static final GEAR_STRATEGY_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrarte"

.field public static final GEAR_STRATEGY_KEY_VIDEO_BITRATE_ORIGIN:Ljava/lang/String; = "video_bitrarte_origin"

.field public static final GEAR_STRATEGY_KEY_VIDEO_BITRATE_USER_SELECTED:Ljava/lang/String; = "video_bitrarte_user_selected"

.field public static final GEAR_STRATEGY_KEY_VIDEO_CALC_BITRATE:Ljava/lang/String; = "video_calc_bitrarte"

.field public static final GEAR_STRATEGY_KEY_VIDEO_QUALITY_DESC:Ljava/lang/String; = "video_quality_desc"

.field public static final GEAR_STRATEGY_KEY_VIDEO_QUALITY_DESC_ORIGIN:Ljava/lang/String; = "video_quality_desc_origin"

.field public static final GEAR_STRATEGY_KEY_VIDEO_RESOLUTION:Ljava/lang/String; = "video_resolution"

.field public static final GEAR_STRATEGY_KEY_VIDEO_RESOLUTION_ORIGIN:Ljava/lang/String; = "video_resolution_origin"

.field public static final GEAR_STRATEGY_REASON_AUTO_BITRATE_SET:I = 0x3

.field public static final GEAR_STRATEGY_REASON_BANDWIDTH_SET:I = 0x4

.field public static final GEAR_STRATEGY_REASON_BEST_RESOLUTION_MAX_CACHE:I = 0xc

.field public static final GEAR_STRATEGY_REASON_CALLBACK:I = 0xd

.field public static final GEAR_STRATEGY_REASON_CONFIG_QUALITY_LOWEST:I = 0xb

.field public static final GEAR_STRATEGY_REASON_Cache1:I = 0x7

.field public static final GEAR_STRATEGY_REASON_Cache2:I = 0x8

.field public static final GEAR_STRATEGY_REASON_DEFAULT_BITRATE:I = 0x2

.field public static final GEAR_STRATEGY_REASON_DEFAULT_GEAR:I = 0x1

.field public static final GEAR_STRATEGY_REASON_FALLBACK:I = 0x6

.field public static final GEAR_STRATEGY_REASON_GEAR_SET:I = 0x5

.field public static final GEAR_STRATEGY_REASON_PRELOAD_CACHE:I = 0xa

.field public static final GEAR_STRATEGY_REASON_USER_SELECTED:I = 0x9

.field public static final GEAR_STRATEGY_SELECT_METHOD_CALLBACK:I = 0x2

.field public static final GEAR_STRATEGY_SELECT_METHOD_NATIVE:I = 0x1

.field public static final GEAR_STRATEGY_SELECT_TYPE_PLAY:I = 0x1

.field public static final GEAR_STRATEGY_SELECT_TYPE_PRELOAD:I = 0x2

.field public static final GEAR_STRATEGY_VALUE_CONFIG_QUALITY_DEFAULT:Ljava/lang/String; = "1"

.field public static final GEAR_STRATEGY_VALUE_CONFIG_QUALITY_HIGH:Ljava/lang/String; = "2"

.field public static final GEAR_STRATEGY_VALUE_CONFIG_QUALITY_LOW:Ljava/lang/String; = "3"

.field public static final GEAR_STRATEGY_VALUE_CONFIG_QUALITY_LOW_LITE:Ljava/lang/String; = "4"

.field public static final GEAR_STRATEGY_VALUE_CURVE_ADJUST_MODE_BITRATE:Ljava/lang/String; = "2"

.field public static final GEAR_STRATEGY_VALUE_CURVE_ADJUST_MODE_SPEED:Ljava/lang/String; = "1"

.field public static final KEY_4G_MAX_QUALITY_DESC:I = 0x14

.field public static final KEY_4G_MAX_RESOLUTION:I = 0x13

.field public static final KEY_ABR_AVERAGE_DOWNLOAD_SPEED:I = 0x27

.field public static final KEY_ABR_AVERAGE_STARTUP_END_NETWORK_SPEED:I = 0x28

.field public static final KEY_ABR_DOWNLOAD_SPEED:I = 0x24

.field public static final KEY_ABR_FIXED_LEVEL:I = 0x2d

.field public static final KEY_ABR_FLOW_JSON:I = 0x35

.field public static final KEY_ABR_NARROW_SCREEN_USE_WIDTH:I = 0x1f

.field public static final KEY_ABR_NETWORK_SPEED:I = 0x25

.field public static final KEY_ABR_NETWORK_SPEED_CONFIDENCE:I = 0x26

.field public static final KEY_ABR_ONCE_TYPE:I = 0x10

.field public static final KEY_ABR_POOL_ENABLE:I = 0x38

.field public static final KEY_ABR_PRELOAD_JSON:I = 0x36

.field public static final KEY_ABR_STARTUP_BANDWIDTH_PARAMETER:I = 0x2f

.field public static final KEY_ABR_STARTUP_FIRST_PARAM:I = 0x30

.field public static final KEY_ABR_STARTUP_FOURTH_PARAM:I = 0x33

.field public static final KEY_ABR_STARTUP_JSON:I = 0x37

.field public static final KEY_ABR_STARTUP_MODEL:I = 0x2e

.field public static final KEY_ABR_STARTUP_SECOND_PARAM:I = 0x31

.field public static final KEY_ABR_STARTUP_SPEED_TYPE:I = 0x9

.field public static final KEY_ABR_STARTUP_THIRD_PARAM:I = 0x32

.field public static final KEY_ABR_STARTUP_USE_CACHE:I = 0x34

.field public static final KEY_ABR_SWITCH_CS_MODEL:I = 0x2c

.field public static final KEY_ABR_USER_ENTER_FULL_SCREEN:I = 0xb

.field public static final KEY_ABR_USER_QUALITY_SENSITIVITY:I = 0xa

.field public static final KEY_ABR_WITH_SR:I = 0xc

.field public static final KEY_CACHE_INFO:I = 0x39

.field public static final KEY_DISPLAY_HEIGHT:I = 0x1b

.field public static final KEY_DISPLAY_WIDTH:I = 0x1a

.field public static final KEY_DOWNGRADE_QUALITY_DESC:I = 0x8

.field public static final KEY_DOWNGRADE_RESOLUTION:I = 0x7

.field public static final KEY_GEAR_STRATEGY_CONFIG:I = 0x3

.field public static final KEY_GEAR_STRATEGY_MODULE:I = 0x2

.field public static final KEY_GEAR_STRATEGY_SELECT_METHOD:I = 0x4

.field public static final KEY_GEAR_STRATEGY_TYPE:I = 0x1

.field public static final KEY_HAR_SCORE:I = 0x2a

.field public static final KEY_HAR_STATUS:I = 0x29

.field public static final KEY_LOG_LEVEL:I = 0x21

.field public static final KEY_QUICK_FILE_CACHE:I = 0x20

.field public static final KEY_QUICK_GET_FILE_CACHE:I = 0x17

.field public static final KEY_SCREEN_HEIGHT:I = 0x19

.field public static final KEY_SCREEN_WIDTH:I = 0x18

.field public static final KEY_SR_BENCHMARK:I = 0xf

.field public static final KEY_SR_ENABLED:I = 0xd

.field public static final KEY_SR_SATISFIED:I = 0xe

.field public static final KEY_SR_STRATEGY_CONFIG:I = 0x1e

.field public static final KEY_SR_SUPPORT_BITRATE:I = 0x2b

.field public static final KEY_SUB_TAG:I = 0x1d

.field public static final KEY_TAG:I = 0x1c

.field public static final KEY_USER_DOWNGRADE_BITRATE:I = 0x23

.field public static final KEY_USER_EXPECTED_BITRATE:I = 0x22

.field public static final KEY_USER_EXPECTED_QUALITY_DESC:I = 0x6

.field public static final KEY_USER_EXPECTED_RESOLUTION:I = 0x5

.field public static final KEY_WIFI_DEFAULT_QUALITY_DESC:I = 0x12

.field public static final KEY_WIFI_DEFAULT_RESOLUTION:I = 0x11

.field public static final KEY_WIFI_MAX_RESOLUTION:I = 0x15

.field public static final KEY_WIFI_MAX_RESOLUTION_QUALITY_DESC:I = 0x16

.field public static final TAG:Ljava/lang/String; = "TTVideoEngine.GearStrategy"

.field private static mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

.field private static mPreloadCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;

    .line 14
    .line 15
    new-instance v0, Landroid/util/LruCache;

    .line 16
    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCache:Landroid/util/LruCache;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static cacheInfoToStrategyParam(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_4

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_4

    .line 20
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lorg/json/JSONArray;

    .line 26
    .line 27
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 28
    .line 29
    .line 30
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v3, 0xf

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-ne p1, v4, :cond_2

    .line 57
    .line 58
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->quickGetCacheFileSize(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-static {v3}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    :goto_1
    new-instance v5, Lorg/json/JSONObject;

    .line 70
    .line 71
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v6, "bitrate"

    .line 75
    .line 76
    const/4 v7, 0x3

    .line 77
    invoke-virtual {v2, v7}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    .line 83
    .line 84
    const-string v2, "fileSize"

    .line 85
    .line 86
    invoke-virtual {v5, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const-string p0, "caches"

    .line 94
    .line 95
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :goto_3
    const/16 p0, 0x39

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :cond_4
    :goto_4
    return-void
.end method

.method private static checkSRInfo(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1e

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    instance-of v1, v0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 11
    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    check-cast v0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 15
    .line 16
    new-instance v1, Lcom/ss/ttvideoengine/superresolution/SRStrategy;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 22
    .line 23
    invoke-interface {p0, v2}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v2, v3

    .line 33
    :goto_0
    sget-object v4, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 34
    .line 35
    invoke-interface {p0, v4}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    or-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentVideoFormatType(I)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x3

    .line 47
    invoke-interface {p0, v2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentDuration(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v4, 0x1

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-lez v5, :cond_3

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_3

    .line 76
    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    check-cast v5, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 82
    .line 83
    const/4 v6, 0x7

    .line 84
    invoke-virtual {v5, v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    if-eqz v5, :cond_2

    .line 89
    .line 90
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    const-string v6, "hdr"

    .line 99
    .line 100
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    move v3, v4

    .line 107
    :cond_3
    invoke-virtual {v0, v3}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setIsHdr(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->updateConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSREnabled()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/16 v2, 0xd

    .line 118
    .line 119
    invoke-virtual {p1, v2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSRSatisfied()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    const/16 v2, 0xe

    .line 127
    .line 128
    invoke-virtual {p1, v2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 129
    .line 130
    .line 131
    const/16 v0, 0xf

    .line 132
    .line 133
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getSRBenchmark()Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p1, v0, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setObjectValue(ILjava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 138
    .line 139
    .line 140
    invoke-static {p0, v1, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getSrSupportBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/superresolution/SRStrategy;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    const-string p1, "ess"

    .line 148
    .line 149
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    const-string p1, "eas"

    .line 157
    .line 158
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getSRNotUseReason()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    const-string/jumbo p1, "sfr"

    .line 170
    .line 171
    .line 172
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSRSatisfied()Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string/jumbo p1, "srs"

    .line 184
    .line 185
    .line 186
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    :cond_4
    return-void
.end method

.method private static configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static configStringToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static getBitrateFromVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;I)I
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Undefine:Lcom/ss/ttvideoengine/Resolution;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-interface {p0, p1, v0, p2}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    if-ne p1, p3, :cond_1

    .line 38
    .line 39
    const/16 p1, 0x2c

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x3

    .line 47
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 p0, -0x1

    .line 53
    :goto_0
    return p0
.end method

.method public static getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getMediaInfoJson(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lorg/json/JSONArray;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_7

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_5

    .line 22
    .line 23
    :cond_1
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_7

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    const/4 v5, 0x3

    .line 54
    const-string v6, "bitrate"

    .line 55
    .line 56
    const-string v7, "mtype"

    .line 57
    .line 58
    if-ne v3, v4, :cond_5

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const/4 v4, -0x1

    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    goto :goto_1

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_4

    .line 88
    :cond_3
    move v3, v4

    .line 89
    :goto_1
    const-string v5, "res"

    .line 90
    .line 91
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v3, "quality"

    .line 95
    .line 96
    const/16 v5, 0x20

    .line 97
    .line 98
    invoke-virtual {v1, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string/jumbo v3, "width"

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    invoke-virtual {v1, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v3, "height"

    .line 117
    .line 118
    const/4 v6, 0x2

    .line 119
    invoke-virtual {v1, v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    if-eq p1, v4, :cond_6

    .line 127
    .line 128
    const/16 v3, 0xf

    .line 129
    .line 130
    invoke-virtual {v1, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-ne v5, p1, :cond_4

    .line 135
    .line 136
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->quickGetCacheFileSize(Ljava/lang/String;)J

    .line 137
    .line 138
    .line 139
    move-result-wide v3

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    invoke-static {v1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getCacheFileSize(Ljava/lang/String;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    :goto_2
    const-string v1, "cache"

    .line 146
    .line 147
    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_5
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    .line 172
    .line 173
    :cond_7
    :goto_5
    return-object v0
.end method

.method public static getMediaInfoString(Lcom/ss/ttvideoengine/model/IVideoModel;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getMediaInfoJson(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lorg/json/JSONArray;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, ""

    .line 13
    .line 14
    :goto_0
    return-object p0
.end method

.method public static getPreloadInfo(Ljava/lang/String;J)Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCache:Landroid/util/LruCache;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/util/Map;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    move-object v1, p0

    .line 33
    check-cast v1, Ljava/util/Map;

    .line 34
    .line 35
    :cond_1
    sget-object p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 38
    .line 39
    .line 40
    return-object v1
.end method

.method public static getSrSupportBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/superresolution/SRStrategy;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    sget v4, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 42
    .line 43
    if-ne v3, v4, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {p1, v2, p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->videoInfoSupportSR(Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/util/List;)Ljava/lang/Boolean;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/16 p0, 0x2b

    .line 69
    .line 70
    invoke-virtual {p2, p0, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setObjectValueIfNotExist(ILjava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static getVideoInfo(Lcom/ss/ttvideoengine/model/IVideoModel;J)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 3
    .param p0    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p1, v0

    .line 8
    .line 9
    if-lez v0, :cond_2

    .line 10
    .line 11
    if-eqz p0, :cond_2

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 36
    .line 37
    if-eq v1, v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    int-to-long v1, v1

    .line 52
    cmp-long v1, v1, p1

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    return-object v0
.end method

.method public static getVideoInfoByBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;II)Lcom/ss/ttvideoengine/model/IVideoInfo;
    .locals 7

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 30
    .line 31
    if-eq v1, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x3

    .line 42
    if-ne v1, p2, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x2c

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    int-to-long v3, v1

    .line 51
    const-wide/16 v5, 0x0

    .line 52
    .line 53
    cmp-long v1, v3, v5

    .line 54
    .line 55
    if-gtz v1, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_1
    int-to-long v3, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    :goto_2
    int-to-long v1, p1

    .line 69
    cmp-long v1, v3, v1

    .line 70
    .line 71
    if-nez v1, :cond_0

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/4 v0, 0x0

    .line 75
    :goto_3
    return-object v0
.end method

.method public static intMapGet(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    :cond_0
    return p2
.end method

.method public static parseABRResult(Lcom/bytedance/vcloud/abrmodule/ABRResult;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/vcloud/abrmodule/ABRResult;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->parseABRResult(Lcom/bytedance/vcloud/abrmodule/ABRResult;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static select(Lcom/ss/ttvideoengine/model/IVideoModel;ILcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "I",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GearStrategy]select selectType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TTVideoEngine.GearStrategy"

    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v6, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 5
    invoke-virtual {v6, v7, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v6

    .line 6
    sget-object v9, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    const/4 v10, 0x2

    .line 7
    invoke-virtual {v9, v10, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v9

    .line 8
    const-string/jumbo v11, "strategy_type"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string/jumbo v11, "strategy_module"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    .line 10
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "video_bitrarte"

    invoke-interface {v3, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "audio_bitrarte"

    invoke-interface {v3, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v15, "error_code"

    invoke-interface {v3, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v12, "error_desc"

    if-nez v2, :cond_0

    const/4 v0, -0x6

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "config is null"

    invoke-interface {v3, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 17
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isGearStrategyEnable()Z

    move-result v16

    if-nez v16, :cond_1

    .line 18
    const-string v0, "select -> GearStrategy is disabled by settings"

    invoke-static {v4, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x7

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "GearStrategy is disabled by settings"

    invoke-interface {v3, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 22
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->parse()V

    if-nez v0, :cond_2

    const/4 v0, -0x2

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v0, "video info empty"

    invoke-interface {v3, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 26
    :cond_2
    invoke-static {v0, v2, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->checkSRInfo(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    const/4 v5, 0x5

    .line 27
    invoke-virtual {v2, v5, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v11

    const/4 v5, 0x6

    .line 28
    const-string v7, ""

    invoke-virtual {v2, v5, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableUseRealBitrate()I

    move-result v10

    .line 30
    invoke-static {v0, v11, v5, v10}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getBitrateFromVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;I)I

    move-result v5

    const/16 v10, 0x22

    .line 31
    invoke-virtual {v2, v10, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 32
    const-string v11, "expected_bitrate"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x7

    .line 33
    invoke-virtual {v2, v5, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v5

    const/16 v11, 0x8

    .line 34
    invoke-virtual {v2, v11, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 35
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableUseRealBitrate()I

    move-result v8

    .line 36
    invoke-static {v0, v5, v11, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getBitrateFromVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/lang/String;I)I

    move-result v5

    const/16 v8, 0x23

    .line 37
    invoke-virtual {v2, v8, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 38
    const-string v11, "bdowngrade_bitrate"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v5, "audio"

    const-string/jumbo v11, "video"

    const-string/jumbo v8, "strategy center not running"

    const/16 v18, -0x3

    const-string v10, "select result null"

    const/16 v19, -0x4

    move-object/from16 v20, v14

    const/4 v14, 0x2

    if-ne v14, v6, :cond_7

    const/4 v6, 0x1

    if-ne v6, v9, :cond_3

    .line 40
    invoke-static {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->select(Lcom/ss/ttvideoengine/model/IVideoModel;ILcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    move-object v8, v0

    move-object v13, v2

    :goto_0
    const/4 v0, 0x2

    goto/16 :goto_4

    .line 41
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getParam()Ljava/util/Map;

    move-result-object v6

    .line 42
    sget-object v9, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    const/16 v14, 0x21

    move-object/from16 v21, v13

    const/4 v13, 0x5

    invoke-static {v9, v14, v6, v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/4 v9, -0x1

    const/16 v13, 0x22

    .line 43
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x23

    .line 44
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x18

    .line 45
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x19

    .line 46
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x1a

    .line 47
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x1b

    .line 48
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v13, 0x1f

    .line 49
    invoke-static {v2, v13, v6, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    const/16 v9, 0x1c

    .line 50
    invoke-static {v2, v9, v6, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configStringToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;Ljava/lang/String;)V

    const/16 v9, 0x1d

    .line 51
    invoke-static {v2, v9, v6, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configStringToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;Ljava/lang/String;)V

    .line 52
    invoke-static {v2, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->speedInfoToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    .line 53
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getHARInfo()Lcom/ss/ttvideoengine/info/HARInfo;

    move-result-object v9

    if-eqz v9, :cond_4

    const/16 v13, 0x29

    .line 54
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-interface {v9}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARStatus()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    .line 56
    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0x2a

    .line 57
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 58
    invoke-interface {v9}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARScore()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-interface {v6, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_4
    invoke-static {v2, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->srInfoToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    .line 61
    invoke-static {v0, v2, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->cacheInfoToStrategyParam(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    .line 62
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    move-result v9

    if-nez v9, :cond_5

    .line 63
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 66
    :cond_5
    new-instance v8, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;-><init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 67
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 68
    new-instance v13, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy$1;

    invoke-direct {v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy$1;-><init>()V

    invoke-virtual {v8, v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)V

    .line 69
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[GearStrategy]before selectResolution param="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 70
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 71
    invoke-static {v4, v13}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v9}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setUserData(Ljava/lang/Object;)V

    .line 73
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v13

    invoke-virtual {v13, v0, v1, v6, v8}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_6

    .line 74
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 77
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GearStrategy]after selectResolution res="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 78
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 79
    invoke-static {v4, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[GearStrategy]after selectResolution strategyResult="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 81
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    invoke-static {v4, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 83
    invoke-static {v6, v11, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->intMapGet(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v8

    .line 84
    invoke-static {v6, v5, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->intMapGet(Ljava/util/Map;Ljava/lang/String;I)I

    move-result v5

    .line 85
    const-string/jumbo v6, "video_bitrate_origin"

    .line 86
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 87
    invoke-static {v9, v6, v10}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    const-string v10, "downgrade_type"

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {v9, v10, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    const-string/jumbo v10, "user_quality_sen"

    const-string v11, "-1.0"

    invoke-static {v9, v10, v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 92
    const-string/jumbo v12, "user_enter_full_screen"

    const-string v13, "-1"

    invoke-static {v9, v12, v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 93
    const-string v14, "max_cache_bitrate"

    invoke-static {v9, v14, v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 94
    const-string v15, "bitrate_before_fit_screen"

    invoke-static {v9, v15, v13}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 95
    const-string/jumbo v15, "startup_speed"

    invoke-static {v9, v15, v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 96
    const-string/jumbo v1, "startup_predict_speed"

    invoke-static {v9, v1, v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    const-string/jumbo v0, "startup_average_speed"

    invoke-static {v9, v0, v11}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string/jumbo v11, "sr_info"

    .line 99
    invoke-static {v9, v11, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    const-string/jumbo v2, "startup_info"

    .line 101
    invoke-static {v9, v2, v7}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v9, v21

    invoke-interface {v3, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, v20

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v5, "video_bitrarte_origin"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "downgrade_type"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v4, "user_quality_sen"

    invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v4, "user_enter_fullscreen"

    invoke-interface {v3, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v4, "max_cache_bitrate"

    invoke-interface {v3, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v4, "bitrate_before_fit_screen"

    invoke-interface {v3, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string/jumbo v4, "startup_speed"

    invoke-interface {v3, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v4, "predict_speed"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "average_speed"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v0, "sr_info"

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v0, "startup_info"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    move-object/from16 v8, p0

    move/from16 v1, p1

    move-object/from16 v13, p2

    goto/16 :goto_4

    :cond_7
    move-object v9, v13

    move-object/from16 v7, v20

    const/4 v4, 0x0

    .line 115
    new-instance v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;-><init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getParam()Ljava/util/Map;

    move-result-object v2

    const/4 v6, 0x4

    move-object/from16 v13, p2

    const/4 v14, -0x1

    .line 117
    invoke-virtual {v13, v6, v14}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v6

    const/4 v14, 0x1

    if-ne v14, v6, :cond_8

    .line 118
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->isRunning()Z

    move-result v14

    if-nez v14, :cond_8

    .line 119
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {v3, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    move-object/from16 v8, p0

    move/from16 v1, p1

    goto/16 :goto_4

    .line 122
    :cond_8
    sget-object v8, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    invoke-virtual {v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getExtraConfig()Ljava/lang/String;

    move-result-object v8

    .line 123
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 124
    const-string v14, "extra_config"

    invoke-interface {v2, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object/from16 v8, p0

    .line 125
    invoke-virtual {v0, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    const/4 v14, 0x2

    if-ne v14, v6, :cond_b

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, -0x5

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "select method is callback but listener is null"

    invoke-interface {v3, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v1

    move/from16 v1, p1

    goto :goto_1

    :cond_a
    move/from16 v1, p1

    .line 130
    invoke-interface {v0, v8, v2, v1}, Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;->selectBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;I)Ljava/util/Map;

    move-result-object v14

    const/16 v0, 0xd

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v2, "select_reason"

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v14, :cond_c

    .line 133
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_b
    move/from16 v1, p1

    .line 136
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    move-result-object v6

    invoke-virtual {v6, v8, v1, v2, v0}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    move-result-object v14

    if-nez v14, :cond_c

    .line 137
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v3, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_1
    if-eqz v14, :cond_f

    .line 140
    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_d
    move v0, v4

    .line 142
    :goto_2
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 143
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v4, v11

    :cond_e
    move v11, v0

    goto :goto_3

    :cond_f
    move v11, v4

    .line 144
    :goto_3
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :goto_4
    if-ne v0, v1, :cond_10

    .line 146
    invoke-static {v8, v13, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setPreloadInfo(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V

    :cond_10
    return-object v3
.end method

.method public static selectBitrate(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/selector/SelectedInfo;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v4, "[GearStrategy]GearStrategy.selectBitrate selectType=%d"

    .line 16
    .line 17
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "TTVideoEngine.GearStrategy"

    .line 22
    .line 23
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-direct {v3, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;-><init>(Lcom/ss/ttvideoengine/TTVideoEngine;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setVideoModel(Lcom/ss/ttvideoengine/model/IVideoModel;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy$2;

    .line 36
    .line 37
    invoke-direct {v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy$2;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;->setUserData(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableSelectStringMapMethod()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, 0x1

    .line 55
    if-ne v5, v6, :cond_0

    .line 56
    .line 57
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolutionStringMap(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->helper()Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/ss/ttvideoengine/strategrycenter/StrategyHelper;->selectResolution(Lcom/ss/ttvideoengine/model/IVideoModel;ILjava/util/Map;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyContext;)Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_0
    const-string v3, "error_desc"

    .line 75
    .line 76
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/String;

    .line 81
    .line 82
    const-string v5, "kTTVideoSelector"

    .line 83
    .line 84
    const/4 v7, 0x0

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-nez v8, :cond_1

    .line 92
    .line 93
    :try_start_0
    const-string v0, "error_code"

    .line 94
    .line 95
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 106
    .line 107
    invoke-direct {v0, v5, v7, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 111
    .line 112
    invoke-direct {v1, v0}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_1
    const-wide/16 v8, 0x0

    .line 117
    .line 118
    if-eqz v1, :cond_9

    .line 119
    .line 120
    const-string/jumbo v3, "video"

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    check-cast v1, Ljava/lang/Integer;

    .line 128
    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move v1, v7

    .line 137
    :goto_1
    :try_start_1
    const-string/jumbo v3, "video_calc_bitrarte"

    .line 138
    .line 139
    .line 140
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 147
    .line 148
    .line 149
    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-wide v2, v8

    .line 152
    :goto_2
    invoke-interface/range {p0 .. p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-lez v1, :cond_7

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v10

    .line 168
    if-eqz v10, :cond_7

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 175
    .line 176
    if-eqz v10, :cond_3

    .line 177
    .line 178
    invoke-virtual {v10}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    sget v12, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 183
    .line 184
    if-eq v11, v12, :cond_3

    .line 185
    .line 186
    invoke-virtual {v10}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    if-nez v11, :cond_4

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_4
    invoke-static {}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getInstance()Lcom/ss/ttvideoengine/EngineGlobalConfig;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    invoke-virtual {v11}, Lcom/ss/ttvideoengine/EngineGlobalConfig;->getEnableUseRealBitrate()I

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    const/4 v12, 0x3

    .line 202
    if-ne v6, v11, :cond_5

    .line 203
    .line 204
    const/16 v11, 0x2c

    .line 205
    .line 206
    invoke-virtual {v10, v11}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    int-to-long v13, v11

    .line 211
    const-wide/16 v15, 0x0

    .line 212
    .line 213
    cmp-long v11, v13, v15

    .line 214
    .line 215
    if-gtz v11, :cond_6

    .line 216
    .line 217
    invoke-virtual {v10, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    :goto_4
    int-to-long v13, v11

    .line 222
    goto :goto_5

    .line 223
    :cond_5
    invoke-virtual {v10, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    goto :goto_4

    .line 228
    :cond_6
    :goto_5
    int-to-long v11, v1

    .line 229
    cmp-long v11, v13, v11

    .line 230
    .line 231
    if-nez v11, :cond_3

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :cond_7
    move-object v10, v4

    .line 235
    :goto_6
    if-nez v10, :cond_8

    .line 236
    .line 237
    new-instance v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 238
    .line 239
    const/16 v0, -0x1f3f

    .line 240
    .line 241
    const-string v1, "null video info fit bitrate"

    .line 242
    .line 243
    invoke-direct {v4, v5, v0, v1}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_8
    move-object v0, v4

    .line 247
    move-object v4, v10

    .line 248
    goto :goto_7

    .line 249
    :cond_9
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 250
    .line 251
    const/16 v1, -0x1f3d

    .line 252
    .line 253
    const-string v2, "native select result null"

    .line 254
    .line 255
    invoke-direct {v0, v5, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    move-wide v2, v8

    .line 259
    :goto_7
    new-instance v1, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 260
    .line 261
    invoke-direct {v1, v4, v0}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/model/IVideoInfo;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 262
    .line 263
    .line 264
    cmpl-double v0, v2, v8

    .line 265
    .line 266
    if-lez v0, :cond_a

    .line 267
    .line 268
    invoke-virtual {v1, v7, v2, v3}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->setDoubleValue(ID)V

    .line 269
    .line 270
    .line 271
    :cond_a
    return-object v1
.end method

.method public static setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sput-object p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->parse()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, -0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mGlobalConfig:Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    invoke-virtual {v3, v4, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v4, v0, :cond_1

    .line 25
    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method private static setPreloadInfo(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-interface {p0, v0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x18

    const/4 v3, -0x1

    .line 3
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    const-string/jumbo v4, "sw"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x19

    .line 5
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    const-string/jumbo v4, "sh"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1a

    .line 7
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 8
    const-string v4, "dw"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1b

    .line 9
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    const-string v4, "dh"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x22

    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 12
    const-string/jumbo v4, "ue"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x23

    .line 13
    invoke-virtual {p1, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    const-string/jumbo v2, "ud"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 16
    const-string v2, "ns"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string/jumbo p1, "video_bitrarte_origin"

    .line 18
    invoke-static {p2, p1, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 19
    const-string/jumbo v2, "vbitrateo"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo p1, "video_bitrarte"

    .line 21
    invoke-static {p2, p1, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "vbitrate"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v2, "downgrade_type"

    .line 24
    invoke-static {p2, v2, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->stringMapGetInt(Ljava/util/Map;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 25
    const-string v2, "downgrade"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p0, v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getMediaInfoJson(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 27
    const-string p2, "minfo"

    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    int-to-long p0, p1

    .line 28
    invoke-static {v0, p0, p1, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setPreloadInfo(Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method public static setPreloadInfo(Ljava/lang/String;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    sget-object v0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    sget-object v1, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCache:Landroid/util/LruCache;

    invoke-virtual {v1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->mPreloadCacheLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static speedInfoToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget v2, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 7
    .line 8
    invoke-interface {v0, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v2, "download_speed"

    .line 15
    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sget-object v3, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 40
    .line 41
    invoke-interface {v3}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getLastPredictConfidence()F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sget-object v4, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 46
    .line 47
    sget v5, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 48
    .line 49
    const/4 v6, 0x1

    .line 50
    invoke-interface {v4, v5, v6, v6}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sget-object v5, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 55
    .line 56
    sget v6, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 57
    .line 58
    const/16 v7, 0x9

    .line 59
    .line 60
    const/4 v8, 0x4

    .line 61
    invoke-virtual {p0, v7, v8}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    invoke-interface {v5, v6, p0, v2}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move p0, v1

    .line 71
    move v0, p0

    .line 72
    move v3, v0

    .line 73
    move v4, v3

    .line 74
    :goto_0
    const/16 v2, 0x24

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x25

    .line 88
    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    const/16 v0, 0x26

    .line 101
    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const/16 v0, 0x27

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    const/16 v0, 0x28

    .line 127
    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method private static srInfoToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v0, p1, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xe

    .line 8
    .line 9
    invoke-static {p0, v0, p1, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->configIntToStrategyParam(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;ILjava/util/Map;I)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xf

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    check-cast v2, Ljava/util/Map;

    .line 22
    .line 23
    new-instance v3, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Ljava/util/Map$Entry;

    .line 47
    .line 48
    new-instance v5, Lorg/json/JSONArray;

    .line 49
    .line 50
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    instance-of v7, v6, Ljava/util/List;

    .line 60
    .line 61
    if-eqz v7, :cond_0

    .line 62
    .line 63
    check-cast v6, Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_0

    .line 74
    .line 75
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    .line 104
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_2
    const/16 v0, 0x2b

    .line 120
    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    if-eqz p0, :cond_4

    .line 126
    .line 127
    check-cast p0, Ljava/util/List;

    .line 128
    .line 129
    new-instance v1, Lorg/json/JSONObject;

    .line 130
    .line 131
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v2, Lorg/json/JSONArray;

    .line 135
    .line 136
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Ljava/lang/Integer;

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_3
    :try_start_1
    const-string p0, "bitrates"

    .line 160
    .line 161
    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :catch_1
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 167
    .line 168
    .line 169
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    :cond_4
    return-void
.end method

.method public static stringMapGetFloat(Ljava/util/Map;Ljava/lang/String;F)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "F)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    return p2
.end method

.method public static stringMapGetInt(Ljava/util/Map;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    return p2
.end method

.method public static stringMapGetLong(Ljava/util/Map;Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    :cond_0
    return-wide p2
.end method

.method public static stringMapGetString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    move-object p2, p0

    .line 10
    :cond_0
    return-object p2
.end method
