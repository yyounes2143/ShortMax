.class public Lcom/ss/ttvideoengine/superresolution/SRStrategy;
.super Ljava/lang/Object;
.source "SRStrategy.java"


# static fields
.field public static final KEY_BITRATE_AFTER_DOWNGRADE:Ljava/lang/String; = "bad"

.field public static final KEY_BITRATE_BEFORE_DOWNGRADE:Ljava/lang/String; = "bbd"

.field public static final KEY_BITRATE_DOWNGRADE_TYPE:Ljava/lang/String; = "bdt"

.field public static final KEY_CURRENT_QUALITY_DESC:Ljava/lang/String; = "cqd"

.field public static final KEY_CURRENT_RESOLUTION:Ljava/lang/String; = "cr"

.field public static final KEY_DISPLAY_HEIGHT:Ljava/lang/String; = "dh"

.field public static final KEY_DISPLAY_WIDTH:Ljava/lang/String; = "dw"

.field public static final KEY_DOWNGRADE:Ljava/lang/String; = "do"

.field public static final KEY_ENABLE_ABR_SR:Ljava/lang/String; = "eas"

.field public static final KEY_ENABLE_SR_STRATEGY:Ljava/lang/String; = "ess"

.field public static final KEY_FR_PLAYER_TIME:Ljava/lang/String; = "fpt"

.field public static final KEY_FR_TEXTURE_SET_TIME:Ljava/lang/String; = "fts"

.field public static final KEY_FR_TEXTURE_TIME:Ljava/lang/String; = "ftt"

.field public static final KEY_NET_STATE:Ljava/lang/String; = "ns"

.field public static final KEY_ORIGIN_QUALITY_DESC:Ljava/lang/String; = "oqd"

.field public static final KEY_ORIGIN_RESOLUTION:Ljava/lang/String; = "or"

.field public static final KEY_SCREEN_HEIGHT:Ljava/lang/String; = "sh"

.field public static final KEY_SCREEN_WIDTH:Ljava/lang/String; = "sw"

.field public static final KEY_SR_FAIL_REASON:Ljava/lang/String; = "sfr"

.field public static final KEY_SR_MEDIA_INFO:Ljava/lang/String; = "smi"

.field public static final KEY_SR_OPEN:Ljava/lang/String; = "so"

.field public static final KEY_SR_SATISFIED:Ljava/lang/String; = "srs"

.field public static final KEY_SR_STATUS:Ljava/lang/String; = "ss"

.field public static final KEY_SR_STRATEGY_CONFIG:Ljava/lang/String; = "sc"

.field public static final KEY_SR_STRATEGY_MODE:Ljava/lang/String; = "sm"

.field public static final KEY_SR_USE_TEXTURE:Ljava/lang/String; = "sut"

.field public static final KEY_USER_EXPECTED:Ljava/lang/String; = "ue"

.field public static final MEDIAINFO_KEY_BITRATE:Ljava/lang/String; = "br"

.field public static final MEDIAINFO_KEY_CACHE_SIZE:Ljava/lang/String; = "cs"

.field public static final MEDIAINFO_KEY_RESOLUTION:Ljava/lang/String; = "res"

.field public static final MEDIAINFO_KEY_SUPPORT_SR:Ljava/lang/String; = "ss"

.field public static final MEDIAINFO_KEY_WIDTH:Ljava/lang/String; = "w"

.field private static final PRELOAD_INFO_CACHE_SIZE:I = 0x64

.field public static final SCENE_DETAIL:I = 0x2

.field public static final SCENE_FULLSCREEN:I = 0x4

.field public static final SCENE_LIST:I = 0x1

.field public static final SCENE_NONE:I = 0x0

.field public static final SR_CHECK_TYPE_PLAY:I = 0x1

.field public static final SR_CHECK_TYPE_PRELOAD:I = 0x0

.field public static final SR_STATUS_CLOSE:I = 0x0

.field public static final SR_STATUS_NONE:I = -0x1

.field public static final SR_STATUS_OPEN_FAIL:I = 0x2

.field public static final SR_STATUS_OPEN_SUCCESS:I = 0x1

.field public static final SR_STRATEGY_MODE_AUTO:I = 0x0

.field public static final SR_STRATEGY_MODE_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TTVideoEngine.SRStrategy"

.field public static final VIDEO_FORMAT_TYPE_DASH:I = 0x2

.field public static final VIDEO_FORMAT_TYPE_MP4:I = 0x1


# instance fields
.field private mSRBenchmark:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

.field private mSRNotUseReason:I

.field private mSRSatisfied:Z

.field private mSRStatus:I

.field private mSRStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

.field private mSRStrategyMode:I

.field private mShouldUseSRTexture:Z

.field private mStrategyInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyMode:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRSatisfied:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mShouldUseSRTexture:Z

    .line 21
    .line 22
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 26
    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mStrategyInfo:Ljava/util/Map;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->resetAll()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 v3, 0x3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    filled-new-array {v3}, [Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private checkSatisfied()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRSatisfied:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mShouldUseSRTexture:Z

    .line 5
    .line 6
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iget v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/16 v0, -0x1ec2

    .line 14
    .line 15
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableSR()Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSREnable()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    const-string v1, "TTVideoEngine.SRStrategy"

    .line 41
    .line 42
    const-string v2, "[SRLog]checkSatisfied enableSr disabled by VodSettings"

    .line 43
    .line 44
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    if-eqz v0, :cond_e

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getResolutionChanged()Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    const/16 v0, -0x1ec7

    .line 72
    .line 73
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-gtz v0, :cond_4

    .line 83
    .line 84
    const/16 v0, -0x1ec6

    .line 85
    .line 86
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 87
    .line 88
    return-void

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMinDuration()Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxDuration()Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    iget-object v2, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentDuration()Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    int-to-long v3, v3

    .line 118
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    cmp-long v0, v3, v5

    .line 123
    .line 124
    if-ltz v0, :cond_5

    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    int-to-long v2, v0

    .line 131
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    cmp-long v0, v2, v0

    .line 136
    .line 137
    if-lez v0, :cond_6

    .line 138
    .line 139
    :cond_5
    const/16 v0, -0x1ecd

    .line 140
    .line 141
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 142
    .line 143
    return-void

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getVideoFormatType()Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_8

    .line 151
    .line 152
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentVideoFormatType()Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    if-eqz v1, :cond_7

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    and-int/2addr v0, v2

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    :cond_7
    const/16 v0, -0x1ecf

    .line 180
    .line 181
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 182
    .line 183
    return-void

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableHdr()Ljava/lang/Boolean;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-eqz v0, :cond_a

    .line 191
    .line 192
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getIsHdr()Ljava/lang/Boolean;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-nez v0, :cond_a

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_a

    .line 211
    .line 212
    :cond_9
    const/16 v0, -0x1ecb

    .line 213
    .line 214
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 215
    .line 216
    return-void

    .line 217
    :cond_a
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getSupportScene()Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getCurrentScene()Ljava/lang/Integer;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    and-int/2addr v0, v2

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_c

    .line 251
    .line 252
    :cond_b
    const/16 v0, -0x1ecc

    .line 253
    .line 254
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 255
    .line 256
    return-void

    .line 257
    :cond_c
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mShouldUseSRTexture:Z

    .line 259
    .line 260
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 261
    .line 262
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getStrategyType()Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    if-eqz v1, :cond_d

    .line 267
    .line 268
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-ne v0, v1, :cond_d

    .line 273
    .line 274
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableSpeed()Ljava/lang/Boolean;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-eqz v1, :cond_d

    .line 281
    .line 282
    iget-object v2, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 283
    .line 284
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getIsSpeed()Ljava/lang/Boolean;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-nez v1, :cond_d

    .line 293
    .line 294
    if-eqz v2, :cond_d

    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    if-eqz v1, :cond_d

    .line 301
    .line 302
    const/16 v0, -0x1eca

    .line 303
    .line 304
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 305
    .line 306
    return-void

    .line 307
    :cond_d
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRSatisfied:Z

    .line 308
    .line 309
    return-void

    .line 310
    :cond_e
    :goto_0
    const/16 v0, -0x1ed0

    .line 311
    .line 312
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 313
    .line 314
    return-void
.end method

.method public static getResolutionIndex(Lcom/ss/ttvideoengine/model/VideoInfo;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    const/16 v1, 0x20

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    :cond_1
    return v0
.end method


# virtual methods
.method public configString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getConfig()Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConfigJson()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getJson()Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaxHeight()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxHeight()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMaxWidth()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getMaxWidth()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSRBenchmark()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSRNotUseReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 2
    .line 3
    return v0
.end method

.method public getSRStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public getSRStrategyMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyMode:I

    .line 2
    .line 3
    return v0
.end method

.method public getStrategyInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mStrategyInfo:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public isSREnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getEnableSR()Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public isSRSatisfied()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRSatisfied:Z

    .line 2
    .line 3
    return v0
.end method

.method public onSRStatus(II)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x2

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    if-ne v1, v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    iput p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 13
    .line 14
    if-ne v1, p1, :cond_2

    .line 15
    .line 16
    iput p2, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 17
    .line 18
    :cond_2
    return-void
.end method

.method public resetAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->resetAll()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->enableSR(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setEnableHdr(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setIsSpeed(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyMode:I

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRSatisfied:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mShouldUseSRTexture:Z

    .line 31
    .line 32
    iput v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRNotUseReason:I

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStatus:I

    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mStrategyInfo:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public setSRStrategyListener(Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyListener:Lcom/ss/ttvideoengine/superresolution/ISRStrategyListener;

    .line 2
    .line 3
    return-void
.end method

.method public setSRStrategyMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRStrategyMode:I

    .line 2
    .line 3
    return-void
.end method

.method public setStrategyInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mStrategyInfo:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mStrategyInfo:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public shouldUseSRTexture()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mShouldUseSRTexture:Z

    .line 2
    .line 3
    return v0
.end method

.method public updateConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V
    .locals 8

    .line 1
    const-string v0, "TTVideoEngine.SRStrategy"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->instance()Lcom/ss/ttvideoengine/strategy/StrategyManager;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/strategy/StrategyManager;->updateSRStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->updateFrom(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getExtraConfig()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v1, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo p1, "sr"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "benchmark"

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v5, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-ge v6, v7, :cond_1

    .line 92
    .line 93
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getInt(I)I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_0
    move-exception p1

    .line 108
    goto :goto_2

    .line 109
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iput-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 118
    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v1, "[SRLog]updateConfig mSRBenchmark="

    .line 125
    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 130
    .line 131
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v2, "[SRLog]updateConfig exception="

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->checkSatisfied()V

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public videoInfoSupportSR(Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/model/VideoInfo;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getResolutionIndex(Lcom/ss/ttvideoengine/model/VideoInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->getScreenWidth()Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->mSRBenchmark:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/List;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 v1, 0x0

    .line 48
    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_5

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 59
    .line 60
    invoke-static {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getResolutionIndex(Lcom/ss/ttvideoengine/model/VideoInfo;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-ne v5, v3, :cond_3

    .line 85
    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    const/4 v5, 0x3

    .line 89
    invoke-virtual {v1, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-virtual {v2, v5}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-ge v6, v5, :cond_3

    .line 98
    .line 99
    :cond_4
    move-object v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_5
    if-eqz v1, :cond_7

    .line 102
    .line 103
    if-eqz v0, :cond_6

    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    invoke-virtual {v1, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-gt p1, p2, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_7
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 121
    .line 122
    return-object p1
.end method
