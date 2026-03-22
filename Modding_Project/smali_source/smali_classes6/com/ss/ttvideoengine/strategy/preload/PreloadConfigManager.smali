.class public Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;
.super Ljava/lang/Object;
.source "PreloadConfigManager.java"


# static fields
.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final COUNT_LIMIT:Ljava/lang/String; = "count_limit"

.field private static final FORCE_USE:Ljava/lang/String; = "force_use"

.field private static final SIZE:Ljava/lang/String; = "size"

.field private static final START_BUFFER_LIMIT:Ljava/lang/String; = "start_buffer_limit"

.field private static final STOP_BUFFER_LIMIT:Ljava/lang/String; = "stop_buffer_limit"

.field private static final TAG:Ljava/lang/String; = "Strategy_Preload_Config"


# instance fields
.field private mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

.field private mConfigJson:Ljava/lang/String;

.field private mCountLimit:I

.field private mCustomConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

.field private final mDefaultConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

.field private mForceUseSettings:Z

.field private mSettingsConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCountLimit:I

    .line 7
    .line 8
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->build()Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mDefaultConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->updateConfig()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private updateConfig()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mForceUseSettings:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mSettingsConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCustomConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mSettingsConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mDefaultConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 29
    .line 30
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "updateConfig "

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "Strategy_Preload_Config"

    .line 51
    .line 52
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStartBufferLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getStartBufferLimit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getStopBufferLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getStopBufferLimit()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public setCustomConfig(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setCustomConfig "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Strategy_Preload_Config"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCustomConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;-><init>(Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;->getCount()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCountLimit:I

    .line 40
    .line 41
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setCount(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->build()Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCustomConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 54
    .line 55
    :goto_0
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->updateConfig()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public setSettingsConfig(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "updateSettingsConfig "

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Strategy_Preload_Config"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfigJson:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mConfigJson:Ljava/lang/String;

    .line 45
    .line 46
    const-string v0, "count_limit"

    .line 47
    .line 48
    const/16 v1, 0xa

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCountLimit:I

    .line 55
    .line 56
    const-string v0, "force_use"

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mForceUseSettings:Z

    .line 67
    .line 68
    const-string v0, "count"

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    iget v1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mCountLimit:I

    .line 76
    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const-string/jumbo v1, "size"

    .line 82
    .line 83
    .line 84
    const/16 v2, 0x320

    .line 85
    .line 86
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string/jumbo v2, "start_buffer_limit"

    .line 91
    .line 92
    .line 93
    const/16 v3, 0xe

    .line 94
    .line 95
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    const-string/jumbo v3, "stop_buffer_limit"

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x5

    .line 103
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    new-instance v3, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 108
    .line 109
    invoke-direct {v3}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setCount(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setSize(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setStartBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->setStopBufferLimit(I)Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig$Builder;->build()Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    iput-object p1, p0, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->mSettingsConfig:Lcom/ss/ttvideoengine/strategy/preload/StrategyPreloadConfig;

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/ss/ttvideoengine/strategy/preload/PreloadConfigManager;->updateConfig()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
