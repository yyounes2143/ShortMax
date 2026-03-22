.class public Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;
.super Ljava/lang/Object;
.source "StrategyGearABR.java"


# static fields
.field public static final ASSETS_PATH:Ljava/lang/String; = "vod_settings/vod_gear_strategy_default.json"

.field public static sDefaultConfig:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized defaultConfig()Lorg/json/JSONObject;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->sDefaultConfig:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    sget-object v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    const-string/jumbo v2, "vod_settings/vod_gear_strategy_default.json"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->read(Ljava/io/InputStream;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    new-instance v2, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->sDefaultConfig:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception v1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception v1

    .line 46
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    sget-object v1, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->sDefaultConfig:Lorg/json/JSONObject;

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    new-instance v1, Lorg/json/JSONObject;

    .line 54
    .line 55
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->sDefaultConfig:Lorg/json/JSONObject;

    .line 59
    .line 60
    :cond_2
    sget-object v1, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->sDefaultConfig:Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-object v1

    .line 64
    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    throw v1
.end method

.method public static initGlobalConfig()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "vod_gear_strategy_config"

    .line 6
    .line 7
    .line 8
    invoke-static {v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "TTVideoEngine.GearStrategy"

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->defaultConfig()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, "initGlobalConfig using default config instead online. "

    .line 30
    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v3, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "initGlobalConfig using online config. "

    .line 51
    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v3, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const/4 v1, 0x3

    .line 66
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_1

    .line 75
    .line 76
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_1

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    .line 6
    .line 7
    const/16 v0, 0x1000

    .line 8
    .line 9
    :try_start_1
    new-array v0, v0, [B

    .line 10
    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string/jumbo v0, "utf-8"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 35
    .line 36
    .line 37
    :catch_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 38
    .line 39
    .line 40
    :catch_2
    return-object v0

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    move-object v4, v1

    .line 43
    move-object v1, v0

    .line 44
    move-object v0, v4

    .line 45
    goto :goto_2

    .line 46
    :catch_3
    move-exception v1

    .line 47
    move-object v4, v1

    .line 48
    move-object v1, v0

    .line 49
    move-object v0, v4

    .line 50
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    :goto_2
    if-eqz p0, :cond_1

    .line 52
    .line 53
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 54
    .line 55
    .line 56
    :catch_4
    :cond_1
    if-eqz v1, :cond_2

    .line 57
    .line 58
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 59
    .line 60
    .line 61
    :catch_5
    :cond_2
    throw v0
.end method

.method public static startSpeedPredictor()V
    .locals 6

    .line 1
    const-string/jumbo v0, "vod_gear_strategy_config"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "TTVideoEngine.GearStrategy"

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->defaultConfig()Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string/jumbo v3, "startSpeedPredictor using default config instead online. "

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string/jumbo v3, "startSpeedPredictor using online config. "

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    if-eqz v1, :cond_1

    .line 64
    .line 65
    const-string/jumbo v0, "vod_strategy_speed_predict_config"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .line 74
    :goto_1
    if-eqz v0, :cond_2

    .line 75
    .line 76
    const-string v1, "net_speed_abr_predict_type"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const-string/jumbo v2, "test_speed_interval_ms"

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const-string v3, "is_report_speed_info"

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v4, "report_speed_info_max_window_size"

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const/16 v4, 0x458

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    invoke-static {v4, v5}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntValue(II)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2, v3, v0}, Lcom/ss/ttvideoengine/TTVideoEngine;->startSpeedPredictor(IIII)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public static updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getExtraConfig()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const-string/jumbo v0, "vod_gear_strategy_config"

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "TTVideoEngine.GearStrategy"

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/gear/StrategyGearABR;->defaultConfig()Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v3, "updateSRStrategyConfig using default config instead online. "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v3, "updateSRStrategyConfig using online config. "

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const-string/jumbo v0, "vod_sr_strategy_extra_config"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const/4 v0, 0x0

    .line 84
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_2

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setExtraConfig(Ljava/lang/String;)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method
