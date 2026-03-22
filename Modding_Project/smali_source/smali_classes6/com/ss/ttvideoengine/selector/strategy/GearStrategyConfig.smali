.class public Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
.super Ljava/lang/Object;
.source "GearStrategyConfig.java"


# instance fields
.field private final mConfigValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraConfig:Ljava/lang/String;

.field private mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

.field private final mParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParsedStrategyConfigString:Ljava/lang/String;

.field private mUserData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mUserData:Ljava/lang/Object;

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mParam:Ljava/util/Map;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public getDoubleValue(I)D
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleValue(ID)D
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(IDZ)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleValue(IDZ)D
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    if-eqz p4, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object p4

    if-ne p4, p0, :cond_1

    return-wide p2

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getDoubleValue(IDZ)D

    move-result-wide p1

    return-wide p1

    :cond_2
    return-wide p2
.end method

.method public getExtraConfig()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloatValue(I)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getFloatValue(IF)F

    move-result p1

    return p1
.end method

.method public getFloatValue(IF)F
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getFloatValue(IFZ)F

    move-result p1

    return p1
.end method

.method public getFloatValue(IFZ)F
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object p3

    if-ne p3, p0, :cond_1

    return p2

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getFloatValue(IFZ)F

    move-result p1

    return p1

    :cond_2
    return p2
.end method

.method public getGearStrategyListener()Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIntValue(I)I
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(II)I

    move-result p1

    return p1
.end method

.method public getIntValue(II)I
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(IIZ)I

    move-result p1

    return p1
.end method

.method public getIntValue(IIZ)I
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object p3

    if-ne p3, p0, :cond_1

    return p2

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getIntValue(IIZ)I

    move-result p1

    return p1

    :cond_2
    return p2
.end method

.method public getObjectValue(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObjectValue(ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;Z)TT;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p3, :cond_2

    .line 4
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object p3

    if-ne p3, p0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getObjectValue(ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getParam()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mParam:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringValue(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    if-eqz p3, :cond_2

    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    move-result-object p3

    if-ne p3, p0, :cond_1

    return-object p2

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, p1, p2, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mUserData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public parse()V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->getStringValue(ILjava/lang/String;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-class v3, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v4, v4, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mParsedStrategyConfigString:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    const-string v0, "TTVideoEngine.GearStrategy"

    .line 33
    .line 34
    const-string v1, "global parsed already"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    monitor-exit v3

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_1
    iget-object v4, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mParsedStrategyConfigString:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    const-string v0, "TTVideoEngine.GearStrategy"

    .line 53
    .line 54
    const-string v1, "parsed already"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v3

    .line 60
    return-void

    .line 61
    :cond_2
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mParsedStrategyConfigString:Ljava/lang/String;

    .line 62
    .line 63
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v4, "vod_strategy_select_bitrate"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v3, "TTVideoEngine.GearStrategy"

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "parse success "

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    const-string v3, "TTVideoEngine.GearStrategy"

    .line 104
    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "parse error "

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v3, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    if-nez v1, :cond_3

    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    const-string/jumbo v0, "strategy_type"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v3, 0x1

    .line 136
    const/4 v4, -0x1

    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    const-string/jumbo v0, "strategy_type"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 147
    .line 148
    .line 149
    :cond_4
    const-string/jumbo v0, "strategy_module"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    const/4 v5, 0x2

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    const-string/jumbo v0, "strategy_module"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    invoke-virtual {p0, v5, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 167
    .line 168
    .line 169
    :cond_5
    const-string/jumbo v0, "switch_cs_model"

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    const-string/jumbo v0, "switch_cs_model"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    const/16 v3, 0x2c

    .line 186
    .line 187
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 188
    .line 189
    .line 190
    :cond_6
    const-string v0, "fixed_level"

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    const-string v0, "fixed_level"

    .line 199
    .line 200
    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    const/16 v3, 0x2d

    .line 205
    .line 206
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 207
    .line 208
    .line 209
    :cond_7
    const-string/jumbo v0, "startup_model"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_8

    .line 217
    .line 218
    const-string/jumbo v0, "startup_model"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    const/16 v3, 0x2e

    .line 226
    .line 227
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 228
    .line 229
    .line 230
    :cond_8
    const-string/jumbo v0, "startup_bandwidth_parameter"

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_9

    .line 238
    .line 239
    const-string/jumbo v0, "startup_bandwidth_parameter"

    .line 240
    .line 241
    .line 242
    const v3, 0x3f666666    # 0.9f

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v0, v3}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeParseFloat(Lorg/json/JSONObject;Ljava/lang/String;F)F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    const/16 v3, 0x2f

    .line 250
    .line 251
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setFloatValue(IF)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 252
    .line 253
    .line 254
    :cond_9
    const-string/jumbo v0, "startup_first_param_str"

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_a

    .line 262
    .line 263
    const-string/jumbo v0, "startup_first_param_str"

    .line 264
    .line 265
    .line 266
    const-wide/16 v5, 0x0

    .line 267
    .line 268
    invoke-static {v1, v0, v5, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeParseDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    const/16 v0, 0x30

    .line 273
    .line 274
    invoke-virtual {p0, v0, v5, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setDoubleValue(ID)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 275
    .line 276
    .line 277
    :cond_a
    const-string/jumbo v0, "startup_second_param_str"

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_b

    .line 285
    .line 286
    const-string/jumbo v0, "startup_second_param_str"

    .line 287
    .line 288
    .line 289
    const-wide v5, 0x3efc18c9b09963b1L    # 2.67952228E-5

    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    invoke-static {v1, v0, v5, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeParseDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    .line 295
    .line 296
    .line 297
    move-result-wide v5

    .line 298
    const/16 v0, 0x31

    .line 299
    .line 300
    invoke-virtual {p0, v0, v5, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setDoubleValue(ID)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 301
    .line 302
    .line 303
    :cond_b
    const-string/jumbo v0, "startup_third_param_str"

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-eqz v0, :cond_c

    .line 311
    .line 312
    const-string/jumbo v0, "startup_third_param_str"

    .line 313
    .line 314
    .line 315
    const-wide v5, 0x3fc36f83b5458b69L    # 0.151840652

    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    invoke-static {v1, v0, v5, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeParseDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    .line 321
    .line 322
    .line 323
    move-result-wide v5

    .line 324
    const/16 v0, 0x32

    .line 325
    .line 326
    invoke-virtual {p0, v0, v5, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setDoubleValue(ID)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 327
    .line 328
    .line 329
    :cond_c
    const-string/jumbo v0, "startup_fourth_param_str"

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_d

    .line 337
    .line 338
    const-string/jumbo v0, "startup_fourth_param_str"

    .line 339
    .line 340
    .line 341
    const-wide v5, 0x405140ae5c9f3d48L    # 69.0106422

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    invoke-static {v1, v0, v5, v6}, Lcom/ss/ttvideoengine/utils/TTHelper;->safeParseDouble(Lorg/json/JSONObject;Ljava/lang/String;D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v5

    .line 350
    const/16 v0, 0x33

    .line 351
    .line 352
    invoke-virtual {p0, v0, v5, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setDoubleValue(ID)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 353
    .line 354
    .line 355
    :cond_d
    const-string/jumbo v0, "startup_use_cache"

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_e

    .line 363
    .line 364
    const-string/jumbo v0, "startup_use_cache"

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    const/16 v3, 0x34

    .line 372
    .line 373
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 374
    .line 375
    .line 376
    :cond_e
    const-string v0, "flow_json"

    .line 377
    .line 378
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-eqz v0, :cond_f

    .line 383
    .line 384
    const-string v0, "flow_json"

    .line 385
    .line 386
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    const/16 v3, 0x35

    .line 391
    .line 392
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 393
    .line 394
    .line 395
    :cond_f
    const-string v0, "preload_json"

    .line 396
    .line 397
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_10

    .line 402
    .line 403
    const-string v0, "preload_json"

    .line 404
    .line 405
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const/16 v3, 0x36

    .line 410
    .line 411
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 412
    .line 413
    .line 414
    :cond_10
    const-string/jumbo v0, "startup_json"

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-eqz v0, :cond_11

    .line 422
    .line 423
    const-string/jumbo v0, "startup_json"

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    const/16 v3, 0x37

    .line 431
    .line 432
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 433
    .line 434
    .line 435
    :cond_11
    const-string v0, "abr_pool_enable"

    .line 436
    .line 437
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_12

    .line 442
    .line 443
    const-string v0, "abr_pool_enable"

    .line 444
    .line 445
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    const/16 v3, 0x38

    .line 450
    .line 451
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 452
    .line 453
    .line 454
    :cond_12
    const-string/jumbo v0, "startup_algo_type"

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_13

    .line 462
    .line 463
    const-string/jumbo v0, "startup_algo_type"

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    const/16 v3, 0x10

    .line 471
    .line 472
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 473
    .line 474
    .line 475
    :cond_13
    const-string/jumbo v0, "startup_speed_type"

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_14

    .line 483
    .line 484
    const-string/jumbo v0, "startup_speed_type"

    .line 485
    .line 486
    .line 487
    const/4 v3, 0x4

    .line 488
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    const/16 v3, 0x9

    .line 493
    .line 494
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 495
    .line 496
    .line 497
    :cond_14
    const-string/jumbo v0, "wifi_default_resolution_index"

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_15

    .line 505
    .line 506
    const-string/jumbo v0, "wifi_default_resolution_index"

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    const/16 v3, 0x11

    .line 514
    .line 515
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 516
    .line 517
    .line 518
    :cond_15
    const-string/jumbo v0, "wifi_max_resolution_index"

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 522
    .line 523
    .line 524
    move-result v0

    .line 525
    if-eqz v0, :cond_16

    .line 526
    .line 527
    const-string/jumbo v0, "wifi_max_resolution_index"

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    const/16 v3, 0x15

    .line 535
    .line 536
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 537
    .line 538
    .line 539
    :cond_16
    const-string v0, "cellular_max_resolution_index"

    .line 540
    .line 541
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    if-eqz v0, :cond_17

    .line 546
    .line 547
    const-string v0, "cellular_max_resolution_index"

    .line 548
    .line 549
    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    const/16 v3, 0x13

    .line 554
    .line 555
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 556
    .line 557
    .line 558
    :cond_17
    const-string/jumbo v0, "wifi_default_resolution_quality"

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 562
    .line 563
    .line 564
    move-result v0

    .line 565
    if-eqz v0, :cond_18

    .line 566
    .line 567
    const-string/jumbo v0, "wifi_default_resolution_quality"

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    const/16 v3, 0x12

    .line 575
    .line 576
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 577
    .line 578
    .line 579
    :cond_18
    const-string/jumbo v0, "wifi_max_resolution_quality"

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 583
    .line 584
    .line 585
    move-result v0

    .line 586
    if-eqz v0, :cond_19

    .line 587
    .line 588
    const-string/jumbo v0, "wifi_max_resolution_quality"

    .line 589
    .line 590
    .line 591
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    const/16 v3, 0x16

    .line 596
    .line 597
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 598
    .line 599
    .line 600
    :cond_19
    const-string v0, "cellular_max_resolution_quality"

    .line 601
    .line 602
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_1a

    .line 607
    .line 608
    const-string v0, "cellular_max_resolution_quality"

    .line 609
    .line 610
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v0

    .line 614
    const/16 v3, 0x14

    .line 615
    .line 616
    invoke-virtual {p0, v3, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 617
    .line 618
    .line 619
    :cond_1a
    const-string/jumbo v0, "startup_narrow_screen_use_width"

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_1b

    .line 627
    .line 628
    const-string/jumbo v0, "startup_narrow_screen_use_width"

    .line 629
    .line 630
    .line 631
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    const/16 v1, 0x1f

    .line 636
    .line 637
    invoke-virtual {p0, v1, v0}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 638
    .line 639
    .line 640
    :cond_1b
    return-void

    .line 641
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    throw v0
.end method

.method public setDoubleValue(ID)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public setExtraConfig(Ljava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mExtraConfig:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFloatValue(IF)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mGearStrategyListener:Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public setIntValueIfNotExist(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    :cond_0
    return-object p0
.end method

.method public setObjectValue(ILjava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setObjectValueIfNotExist(ILjava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0
.end method

.method public setStringValue(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setStringValueIfNotExist(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mConfigValue:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0
.end method

.method public setUserData(Ljava/lang/Object;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->mUserData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method
