.class public final Lcom/startshorts/androidplayer/manager/player/feature/a;
.super Lcom/startshorts/androidplayer/manager/player/feature/b;
.source "ABRStartUpFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/player/feature/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lcom/startshorts/androidplayer/manager/player/feature/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/player/feature/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/player/feature/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/player/feature/a;->d:Lcom/startshorts/androidplayer/manager/player/feature/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/player/feature/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V
    .locals 8
    .param p1    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "player"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/player/feature/b;->a(Lcom/ss/ttvideoengine/TTVideoEngine;Llf/s;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2}, Llf/s;->d()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/player/feature/a;->e:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    sput-boolean v2, Lcom/startshorts/androidplayer/manager/player/feature/a;->e:Z

    .line 27
    .line 28
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->startSpeedPredictor()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->initGearGlobalConfig()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getGlobalConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/16 v3, 0x34

    .line 43
    .line 44
    const/4 v4, 0x2

    .line 45
    invoke-virtual {v1, v3, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setGlobalConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p2}, Llf/s;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    :cond_3
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v6, "init -> maxResolution("

    .line 83
    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, ") userExpectedPlayResolution("

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Llf/s;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v6, ") finalResolution("

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const/16 v6, 0x29

    .line 111
    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    const-string v6, "ABRStartUpFeature"

    .line 120
    .line 121
    invoke-virtual {v4, v6, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/16 v4, 0x247

    .line 125
    .line 126
    invoke-virtual {p1, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 127
    .line 128
    .line 129
    const/16 v4, 0x209

    .line 130
    .line 131
    invoke-virtual {p1, v4, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 132
    .line 133
    .line 134
    const/16 v2, 0x1d

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    invoke-virtual {p1, v2, v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 138
    .line 139
    .line 140
    const/16 v2, 0x3e9

    .line 141
    .line 142
    invoke-virtual {p1, v2, v4}, Lcom/ss/ttvideoengine/TTVideoEngine;->setIntOption(II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/TTVideoEngine;->getGearStrategyEngineConfig()Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    const/16 v7, 0x18

    .line 156
    .line 157
    invoke-virtual {v2, v7, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 158
    .line 159
    .line 160
    const/16 v6, 0x19

    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->F()I

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    invoke-virtual {v2, v6, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 167
    .line 168
    .line 169
    sget-object v5, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->H:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;->b()I

    .line 172
    .line 173
    .line 174
    move-result v6

    .line 175
    const/16 v7, 0x1a

    .line 176
    .line 177
    invoke-virtual {v2, v7, v6}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 178
    .line 179
    .line 180
    const/16 v6, 0x1b

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$a;->a()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-virtual {v2, v6, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 187
    .line 188
    .line 189
    const/16 v5, 0x17

    .line 190
    .line 191
    invoke-virtual {v2, v5, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 192
    .line 193
    .line 194
    const/16 v5, 0xc

    .line 195
    .line 196
    invoke-virtual {v2, v5, v4}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 197
    .line 198
    .line 199
    const/16 v4, 0x13

    .line 200
    .line 201
    invoke-virtual {v2, v4, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 202
    .line 203
    .line 204
    const/16 v4, 0x15

    .line 205
    .line 206
    invoke-virtual {v2, v4, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 207
    .line 208
    .line 209
    const/16 v4, 0x11

    .line 210
    .line 211
    invoke-virtual {v2, v4, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 212
    .line 213
    .line 214
    const/16 v4, 0x12

    .line 215
    .line 216
    invoke-virtual {v2, v4, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    const/4 v4, 0x5

    .line 224
    invoke-virtual {v2, v4, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setIntValue(II)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 225
    .line 226
    .line 227
    new-instance v1, Lcom/startshorts/androidplayer/manager/player/feature/a$b;

    .line 228
    .line 229
    invoke-direct {v1, v0, p2, v3}, Lcom/startshorts/androidplayer/manager/player/feature/a$b;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Llf/s;Lcom/ss/ttvideoengine/Resolution;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;->setGearStrategyListener(Lcom/ss/ttvideoengine/selector/strategy/IGearStrategyListener;)Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1, v2}, Lcom/ss/ttvideoengine/TTVideoEngine;->setGearStrategyEngineConfig(Lcom/ss/ttvideoengine/selector/strategy/GearStrategyConfig;)V

    .line 236
    .line 237
    .line 238
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;->ABR_STARTUP:Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
