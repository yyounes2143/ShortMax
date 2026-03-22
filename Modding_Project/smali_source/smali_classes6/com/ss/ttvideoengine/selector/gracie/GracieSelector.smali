.class public Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;
.super Ljava/lang/Object;
.source "GracieSelector.java"

# interfaces
.implements Lcom/ss/ttvideoengine/selector/Selector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;,
        Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;
    }
.end annotation


# static fields
.field private static final DEFAULT_ONCE_TYPE:I = 0x8

.field public static final SELECT_SCENE_PRELOAD:I = 0x0

.field public static final SELECT_SCENE_STARTUP:I = 0x1

.field private static sSpeedType:I = 0x4


# instance fields
.field private final mOnceT:I

.field private final mScene:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mScene:I

    .line 4
    iput p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mOnceT:I

    return-void
.end method

.method private static getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I
    .locals 2
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Ljava/lang/Integer;

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move p0, v1

    .line 22
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eq p0, v1, :cond_1

    .line 31
    .line 32
    sget-object p2, Lcom/ss/ttvideoengine/Resolution;->Auto:Lcom/ss/ttvideoengine/Resolution;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/Resolution;->getIndex()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-ne p0, p2, :cond_2

    .line 39
    .line 40
    :cond_1
    if-nez p1, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 49
    .line 50
    .line 51
    instance-of v0, p1, Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    const/16 v0, 0x20

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-static {p0}, Lcom/ss/ttvideoengine/Resolution;->valueOf(I)Lcom/ss/ttvideoengine/Resolution;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 p1, 0x1

    .line 71
    invoke-interface {p3, p0, p2, p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfo(Lcom/ss/ttvideoengine/Resolution;Ljava/util/Map;Z)Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_4

    .line 76
    .line 77
    const/4 p1, 0x3

    .line 78
    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :cond_4
    return v1
.end method

.method public static setSpeedType(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->sSpeedType:I

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public select(Lcom/ss/ttvideoengine/model/IVideoModel;Ljava/util/Map;)Lcom/ss/ttvideoengine/selector/SelectedInfo;
    .locals 25
    .param p1    # Lcom/ss/ttvideoengine/model/IVideoModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/model/IVideoModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ss/ttvideoengine/selector/SelectedInfo;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/16 v3, -0x1f3f

    .line 8
    .line 9
    const-string v4, "kTTVideoSelector"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 14
    .line 15
    const-string v2, "null video model"

    .line 16
    .line 17
    invoke-direct {v1, v4, v3, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 21
    .line 22
    invoke-direct {v2, v1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    const/4 v6, 0x2

    .line 32
    invoke-interface {v1, v6}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    const-string v8, ""

    .line 37
    .line 38
    if-eqz v2, :cond_9

    .line 39
    .line 40
    sget-object v11, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SCREEN_WIDTH:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 41
    .line 42
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    instance-of v12, v11, Ljava/lang/Integer;

    .line 55
    .line 56
    if-eqz v12, :cond_1

    .line 57
    .line 58
    check-cast v11, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v11, -0x1

    .line 66
    :goto_0
    sget-object v12, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SCREEN_HEIGHT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 67
    .line 68
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v12

    .line 76
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    instance-of v13, v12, Ljava/lang/Integer;

    .line 81
    .line 82
    if-eqz v13, :cond_2

    .line 83
    .line 84
    check-cast v12, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v12

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v12, -0x1

    .line 92
    :goto_1
    sget-object v13, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DISPLAY_WIDTH:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 93
    .line 94
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 95
    .line 96
    .line 97
    move-result v13

    .line 98
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    instance-of v14, v13, Ljava/lang/Integer;

    .line 107
    .line 108
    if-eqz v14, :cond_3

    .line 109
    .line 110
    check-cast v13, Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const/4 v13, -0x1

    .line 118
    :goto_2
    sget-object v14, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DISPLAY_HEIGHT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 119
    .line 120
    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v14

    .line 128
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v14

    .line 132
    instance-of v15, v14, Ljava/lang/Integer;

    .line 133
    .line 134
    if-eqz v15, :cond_4

    .line 135
    .line 136
    check-cast v14, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v14

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    const/4 v14, -0x1

    .line 144
    :goto_3
    sget-object v15, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SR_STRATEGY_CONFIG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 145
    .line 146
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    .line 147
    .line 148
    .line 149
    move-result v15

    .line 150
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v15

    .line 154
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    instance-of v9, v15, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 159
    .line 160
    if-eqz v9, :cond_5

    .line 161
    .line 162
    check-cast v15, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    const/4 v15, 0x0

    .line 166
    :goto_4
    sget-object v9, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->WIFI_DEFAULT_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    sget-object v16, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->WIFI_DEFAULT_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 173
    .line 174
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v9, v3, v2, v1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    sget-object v9, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->USER_EXPECTED_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    sget-object v16, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->USER_EXPECTED_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 189
    .line 190
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 191
    .line 192
    .line 193
    move-result v10

    .line 194
    invoke-static {v9, v10, v2, v1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    sget-object v10, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->CELLULAR_MAX_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 199
    .line 200
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    sget-object v16, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->CELLULAR_MAX_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 205
    .line 206
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    invoke-static {v10, v6, v2, v1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    sget-object v10, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->GRACIE_MAX_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    sget-object v16, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->GRACIE_MAX_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 221
    .line 222
    move/from16 v17, v3

    .line 223
    .line 224
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    invoke-static {v10, v3, v2, v1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    sget-object v10, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DOWNGRADE_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 233
    .line 234
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    sget-object v16, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DOWNGRADE_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 239
    .line 240
    move/from16 v18, v3

    .line 241
    .line 242
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    invoke-static {v10, v3, v2, v1}, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->getBitrate(IILjava/util/Map;Lcom/ss/ttvideoengine/model/IVideoModel;)I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    sget-object v10, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->TAG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 251
    .line 252
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    move/from16 v16, v3

    .line 265
    .line 266
    instance-of v3, v10, Ljava/lang/String;

    .line 267
    .line 268
    if-eqz v3, :cond_6

    .line 269
    .line 270
    check-cast v10, Ljava/lang/String;

    .line 271
    .line 272
    goto :goto_5

    .line 273
    :cond_6
    move-object v10, v8

    .line 274
    :goto_5
    sget-object v3, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SUB_TAG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    move/from16 v19, v6

    .line 289
    .line 290
    instance-of v6, v3, Ljava/lang/String;

    .line 291
    .line 292
    if-eqz v6, :cond_7

    .line 293
    .line 294
    move-object v8, v3

    .line 295
    check-cast v8, Ljava/lang/String;

    .line 296
    .line 297
    :cond_7
    sget-object v3, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->AGGR_PORTRAIT_LOW_BIT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    instance-of v3, v2, Ljava/lang/Integer;

    .line 312
    .line 313
    if-eqz v3, :cond_8

    .line 314
    .line 315
    check-cast v2, Ljava/lang/Integer;

    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    move-object v6, v8

    .line 322
    move-object v8, v10

    .line 323
    move/from16 v3, v17

    .line 324
    .line 325
    move/from16 v10, v18

    .line 326
    .line 327
    move/from16 v18, v2

    .line 328
    .line 329
    :goto_6
    move-object/from16 v17, v4

    .line 330
    .line 331
    move/from16 v4, v16

    .line 332
    .line 333
    move-object/from16 v16, v7

    .line 334
    .line 335
    move/from16 v7, v19

    .line 336
    .line 337
    goto :goto_7

    .line 338
    :cond_8
    move-object v6, v8

    .line 339
    move-object v8, v10

    .line 340
    move/from16 v3, v17

    .line 341
    .line 342
    move/from16 v10, v18

    .line 343
    .line 344
    const/16 v18, -0x1

    .line 345
    .line 346
    goto :goto_6

    .line 347
    :cond_9
    move-object/from16 v17, v4

    .line 348
    .line 349
    move-object/from16 v16, v7

    .line 350
    .line 351
    move-object v6, v8

    .line 352
    const/4 v3, -0x1

    .line 353
    const/4 v4, -0x1

    .line 354
    const/4 v7, -0x1

    .line 355
    const/4 v9, -0x1

    .line 356
    const/4 v10, -0x1

    .line 357
    const/4 v11, -0x1

    .line 358
    const/4 v12, -0x1

    .line 359
    const/4 v13, -0x1

    .line 360
    const/4 v14, -0x1

    .line 361
    const/4 v15, 0x0

    .line 362
    const/16 v18, -0x1

    .line 363
    .line 364
    :goto_7
    if-eqz v15, :cond_e

    .line 365
    .line 366
    new-instance v2, Lcom/ss/ttvideoengine/superresolution/SRStrategy;

    .line 367
    .line 368
    invoke-direct {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;-><init>()V

    .line 369
    .line 370
    .line 371
    move-object/from16 v21, v6

    .line 372
    .line 373
    sget-object v6, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->DASH:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 374
    .line 375
    invoke-interface {v1, v6}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 376
    .line 377
    .line 378
    move-result v6

    .line 379
    move-object/from16 v22, v8

    .line 380
    .line 381
    if-eqz v6, :cond_a

    .line 382
    .line 383
    const/4 v6, 0x2

    .line 384
    goto :goto_8

    .line 385
    :cond_a
    const/4 v6, 0x0

    .line 386
    :goto_8
    sget-object v8, Lcom/ss/ttvideoengine/model/IVideoModel$Format;->MP4:Lcom/ss/ttvideoengine/model/IVideoModel$Format;

    .line 387
    .line 388
    invoke-interface {v1, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->hasFormat(Lcom/ss/ttvideoengine/model/IVideoModel$Format;)Z

    .line 389
    .line 390
    .line 391
    move-result v8

    .line 392
    if-eqz v8, :cond_b

    .line 393
    .line 394
    or-int/lit8 v6, v6, 0x1

    .line 395
    .line 396
    :cond_b
    invoke-virtual {v15, v6}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentVideoFormatType(I)V

    .line 397
    .line 398
    .line 399
    const/4 v6, 0x3

    .line 400
    invoke-interface {v1, v6}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefInt(I)I

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    invoke-virtual {v15, v8}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentDuration(I)V

    .line 405
    .line 406
    .line 407
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    if-eqz v6, :cond_d

    .line 412
    .line 413
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 414
    .line 415
    .line 416
    move-result v8

    .line 417
    if-lez v8, :cond_d

    .line 418
    .line 419
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-eqz v8, :cond_d

    .line 428
    .line 429
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v8

    .line 433
    check-cast v8, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 434
    .line 435
    move-object/from16 v23, v6

    .line 436
    .line 437
    const/4 v6, 0x7

    .line 438
    invoke-virtual {v8, v6}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    if-eqz v8, :cond_c

    .line 443
    .line 444
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    const-string v8, "hdr"

    .line 449
    .line 450
    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    if-eqz v6, :cond_c

    .line 455
    .line 456
    const/4 v6, 0x1

    .line 457
    goto :goto_a

    .line 458
    :cond_c
    move-object/from16 v6, v23

    .line 459
    .line 460
    goto :goto_9

    .line 461
    :cond_d
    const/4 v6, 0x0

    .line 462
    :goto_a
    invoke-virtual {v15, v6}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setIsHdr(Z)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, v15}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->updateConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 466
    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_e
    move-object/from16 v21, v6

    .line 470
    .line 471
    move-object/from16 v22, v8

    .line 472
    .line 473
    const/4 v2, 0x0

    .line 474
    :goto_b
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 475
    .line 476
    .line 477
    move-result-object v6

    .line 478
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/abr/ABRPool;->getFromCache()Lcom/bytedance/vcloud/abrmodule/IABRModule;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    if-nez v6, :cond_f

    .line 483
    .line 484
    new-instance v6, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;

    .line 485
    .line 486
    invoke-direct {v6}, Lcom/bytedance/vcloud/abrmodule/DefaultABRModule;-><init>()V

    .line 487
    .line 488
    .line 489
    move-object/from16 v23, v15

    .line 490
    .line 491
    const/4 v8, 0x0

    .line 492
    goto :goto_c

    .line 493
    :cond_f
    move-object/from16 v23, v15

    .line 494
    .line 495
    const/4 v8, 0x1

    .line 496
    :goto_c
    const/16 v15, 0xe

    .line 497
    .line 498
    move/from16 v24, v8

    .line 499
    .line 500
    iget v8, v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mScene:I

    .line 501
    .line 502
    invoke-interface {v6, v15, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 503
    .line 504
    .line 505
    const/4 v8, 0x6

    .line 506
    invoke-interface {v6, v8, v13}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 507
    .line 508
    .line 509
    const/4 v8, 0x7

    .line 510
    invoke-interface {v6, v8, v14}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 511
    .line 512
    .line 513
    const/16 v8, 0x22

    .line 514
    .line 515
    invoke-interface {v6, v8, v11}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 516
    .line 517
    .line 518
    const/16 v8, 0x23

    .line 519
    .line 520
    invoke-interface {v6, v8, v12}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 521
    .line 522
    .line 523
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 524
    .line 525
    .line 526
    move-result-object v8

    .line 527
    const-string/jumbo v11, "sw"

    .line 528
    .line 529
    .line 530
    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v8

    .line 537
    const-string/jumbo v11, "sh"

    .line 538
    .line 539
    .line 540
    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .line 542
    .line 543
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 544
    .line 545
    .line 546
    move-result-object v8

    .line 547
    const-string v11, "dw"

    .line 548
    .line 549
    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v8

    .line 556
    const-string v11, "dh"

    .line 557
    .line 558
    invoke-interface {v5, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    const/16 v8, 0xc

    .line 562
    .line 563
    int-to-long v11, v3

    .line 564
    invoke-interface {v6, v8, v11, v12}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 565
    .line 566
    .line 567
    int-to-long v7, v7

    .line 568
    const/4 v3, 0x2

    .line 569
    invoke-interface {v6, v3, v7, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 570
    .line 571
    .line 572
    const/16 v3, 0xd

    .line 573
    .line 574
    int-to-long v7, v10

    .line 575
    invoke-interface {v6, v3, v7, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 576
    .line 577
    .line 578
    const/16 v3, 0x16

    .line 579
    .line 580
    int-to-long v7, v9

    .line 581
    invoke-interface {v6, v3, v7, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 582
    .line 583
    .line 584
    const/16 v3, 0x21

    .line 585
    .line 586
    int-to-long v7, v4

    .line 587
    invoke-interface {v6, v3, v7, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setLongOptionForKey(IJ)V

    .line 588
    .line 589
    .line 590
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    const-string/jumbo v7, "ue"

    .line 595
    .line 596
    .line 597
    invoke-interface {v5, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    const-string/jumbo v4, "ud"

    .line 605
    .line 606
    .line 607
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    new-instance v3, Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    .line 615
    new-instance v4, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-interface/range {p1 .. p1}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoInfoList()Ljava/util/List;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    if-nez v7, :cond_10

    .line 625
    .line 626
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    :cond_10
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 631
    .line 632
    .line 633
    move-result-object v8

    .line 634
    :cond_11
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 635
    .line 636
    .line 637
    move-result v9

    .line 638
    if-eqz v9, :cond_16

    .line 639
    .line 640
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v9

    .line 644
    check-cast v9, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 645
    .line 646
    if-nez v9, :cond_12

    .line 647
    .line 648
    goto :goto_d

    .line 649
    :cond_12
    invoke-virtual {v9}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 650
    .line 651
    .line 652
    move-result v10

    .line 653
    sget v11, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 654
    .line 655
    const/16 v13, 0x2c

    .line 656
    .line 657
    const/16 v14, 0x8

    .line 658
    .line 659
    const/16 v15, 0xf

    .line 660
    .line 661
    if-ne v10, v11, :cond_15

    .line 662
    .line 663
    new-instance v10, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;

    .line 664
    .line 665
    invoke-direct {v10}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;-><init>()V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v9, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v11

    .line 672
    invoke-virtual {v10, v11}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setStreamId(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    const/4 v15, 0x3

    .line 676
    invoke-virtual {v9, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 677
    .line 678
    .line 679
    move-result v12

    .line 680
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setBandWidth(I)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {v9, v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v12

    .line 687
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setCodec(Ljava/lang/String;)V

    .line 688
    .line 689
    .line 690
    invoke-virtual {v9, v13}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 691
    .line 692
    .line 693
    move-result v12

    .line 694
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setRealBitrate(I)V

    .line 695
    .line 696
    .line 697
    const/4 v12, 0x1

    .line 698
    invoke-virtual {v9, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 699
    .line 700
    .line 701
    move-result v13

    .line 702
    const/4 v12, 0x2

    .line 703
    invoke-virtual {v9, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 704
    .line 705
    .line 706
    move-result v14

    .line 707
    invoke-virtual {v10, v13}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setWidth(I)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v10, v14}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setHeight(I)V

    .line 711
    .line 712
    .line 713
    const/4 v12, -0x1

    .line 714
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setFrameRate(I)V

    .line 715
    .line 716
    .line 717
    const/16 v12, 0x1388

    .line 718
    .line 719
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setSegmentDuration(I)V

    .line 720
    .line 721
    .line 722
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 723
    .line 724
    .line 725
    move-result v11

    .line 726
    if-nez v11, :cond_13

    .line 727
    .line 728
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    :cond_13
    if-eqz v2, :cond_14

    .line 732
    .line 733
    invoke-virtual {v2, v9, v7}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->videoInfoSupportSR(Lcom/ss/ttvideoengine/model/VideoInfo;Ljava/util/List;)Ljava/lang/Boolean;

    .line 734
    .line 735
    .line 736
    move-result-object v11

    .line 737
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 738
    .line 739
    .line 740
    move-result v11

    .line 741
    goto :goto_e

    .line 742
    :cond_14
    const/4 v11, 0x0

    .line 743
    :goto_e
    invoke-static {v9}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getResolutionIndex(Lcom/ss/ttvideoengine/model/VideoInfo;)I

    .line 744
    .line 745
    .line 746
    move-result v9

    .line 747
    invoke-virtual {v10, v11}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setSupportSR(I)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v10, v9}, Lcom/bytedance/vcloud/abrmodule/ABRVideoStream;->setResolution(I)V

    .line 751
    .line 752
    .line 753
    goto :goto_d

    .line 754
    :cond_15
    new-instance v10, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;

    .line 755
    .line 756
    invoke-direct {v10}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-virtual {v9, v15}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v11

    .line 763
    invoke-virtual {v10, v11}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setStreamId(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    const/4 v12, 0x3

    .line 767
    invoke-virtual {v9, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 768
    .line 769
    .line 770
    move-result v15

    .line 771
    invoke-virtual {v10, v15}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setBandWidth(I)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v9, v14}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueStr(I)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v12

    .line 778
    invoke-virtual {v10, v12}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setCodec(Ljava/lang/String;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v9, v13}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 782
    .line 783
    .line 784
    move-result v9

    .line 785
    invoke-virtual {v10, v9}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setRealBitrate(I)V

    .line 786
    .line 787
    .line 788
    const/4 v9, -0x1

    .line 789
    invoke-virtual {v10, v9}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setSampleRate(I)V

    .line 790
    .line 791
    .line 792
    const/16 v9, 0x1388

    .line 793
    .line 794
    invoke-virtual {v10, v9}, Lcom/bytedance/vcloud/abrmodule/ABRAudioStream;->setSegmentDuration(I)V

    .line 795
    .line 796
    .line 797
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 798
    .line 799
    .line 800
    move-result v9

    .line 801
    if-nez v9, :cond_11

    .line 802
    .line 803
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    .line 805
    .line 806
    goto/16 :goto_d

    .line 807
    .line 808
    :cond_16
    invoke-interface {v6, v3, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setMediaInfo(Ljava/util/List;Ljava/util/List;)V

    .line 809
    .line 810
    .line 811
    sget-object v3, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 812
    .line 813
    const/4 v4, 0x0

    .line 814
    if-eqz v3, :cond_18

    .line 815
    .line 816
    sget v8, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 817
    .line 818
    invoke-interface {v3, v8}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getDownloadSpeed(I)Ljava/util/Map;

    .line 819
    .line 820
    .line 821
    move-result-object v3

    .line 822
    if-eqz v3, :cond_17

    .line 823
    .line 824
    const-string v8, "download_speed"

    .line 825
    .line 826
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v9

    .line 830
    if-eqz v9, :cond_17

    .line 831
    .line 832
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v3

    .line 836
    check-cast v3, Ljava/lang/String;

    .line 837
    .line 838
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    :cond_17
    sget-object v3, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 843
    .line 844
    const/4 v12, 0x0

    .line 845
    invoke-interface {v3, v12}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getPredictSpeed(I)F

    .line 846
    .line 847
    .line 848
    move-result v3

    .line 849
    sget-object v8, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 850
    .line 851
    invoke-interface {v8}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getLastPredictConfidence()F

    .line 852
    .line 853
    .line 854
    move-result v8

    .line 855
    sget-object v9, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 856
    .line 857
    sget v10, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 858
    .line 859
    const/4 v11, 0x3

    .line 860
    invoke-interface {v9, v10, v11, v12}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 861
    .line 862
    .line 863
    move-result v9

    .line 864
    sget-object v10, Lcom/ss/ttvideoengine/strategrycenter/StrategyCenter;->sNetAbrSpeedPredictor:Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;

    .line 865
    .line 866
    sget v11, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 867
    .line 868
    sget v13, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->sSpeedType:I

    .line 869
    .line 870
    invoke-interface {v10, v11, v13, v12}, Lcom/bytedance/vcloud/networkpredictor/ISpeedPredictor;->getAverageDownloadSpeed(IIZ)F

    .line 871
    .line 872
    .line 873
    move-result v10

    .line 874
    goto :goto_f

    .line 875
    :cond_18
    const/4 v12, 0x0

    .line 876
    move v3, v4

    .line 877
    move v8, v3

    .line 878
    move v9, v8

    .line 879
    move v10, v9

    .line 880
    :goto_f
    const/16 v11, 0x19

    .line 881
    .line 882
    invoke-interface {v6, v11, v4}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 883
    .line 884
    .line 885
    const/16 v4, 0x17

    .line 886
    .line 887
    invoke-interface {v6, v4, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 888
    .line 889
    .line 890
    const/16 v3, 0x18

    .line 891
    .line 892
    invoke-interface {v6, v3, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 893
    .line 894
    .line 895
    const/16 v3, 0x1b

    .line 896
    .line 897
    invoke-interface {v6, v3, v9}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 898
    .line 899
    .line 900
    const/16 v3, 0x1c

    .line 901
    .line 902
    invoke-interface {v6, v3, v10}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 903
    .line 904
    .line 905
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 906
    .line 907
    .line 908
    move-result-object v3

    .line 909
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getCurrentAccessType()I

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    const/16 v4, 0x15

    .line 914
    .line 915
    invoke-interface {v6, v4, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 916
    .line 917
    .line 918
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 919
    .line 920
    .line 921
    move-result-object v3

    .line 922
    const-string v4, "ns"

    .line 923
    .line 924
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    invoke-static {}, Lcom/ss/ttvideoengine/TTVideoEngine;->getHARInfo()Lcom/ss/ttvideoengine/info/HARInfo;

    .line 928
    .line 929
    .line 930
    move-result-object v3

    .line 931
    if-eqz v3, :cond_19

    .line 932
    .line 933
    const/16 v4, 0x46

    .line 934
    .line 935
    invoke-interface {v3}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARStatus()I

    .line 936
    .line 937
    .line 938
    move-result v8

    .line 939
    invoke-interface {v6, v4, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 940
    .line 941
    .line 942
    const/16 v4, 0x47

    .line 943
    .line 944
    invoke-interface {v3}, Lcom/ss/ttvideoengine/info/HARInfo;->getHARScore()I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    invoke-interface {v6, v4, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 949
    .line 950
    .line 951
    :cond_19
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 952
    .line 953
    .line 954
    move-result-object v3

    .line 955
    const-string v4, "abr_params"

    .line 956
    .line 957
    invoke-virtual {v3, v4}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 958
    .line 959
    .line 960
    move-result-object v3

    .line 961
    const-string v4, "Selector"

    .line 962
    .line 963
    if-eqz v3, :cond_1a

    .line 964
    .line 965
    const-string/jumbo v8, "user_quality_sensitivity"

    .line 966
    .line 967
    .line 968
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 969
    .line 970
    .line 971
    move-result-wide v8

    .line 972
    double-to-float v8, v8

    .line 973
    const-string/jumbo v9, "user_enter_full_screen"

    .line 974
    .line 975
    .line 976
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    const/16 v9, 0x48

    .line 981
    .line 982
    invoke-interface {v6, v9, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setFloatOptionForKey(IF)V

    .line 983
    .line 984
    .line 985
    const/16 v9, 0x49

    .line 986
    .line 987
    invoke-interface {v6, v9, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 988
    .line 989
    .line 990
    new-instance v9, Ljava/lang/StringBuilder;

    .line 991
    .line 992
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .line 994
    .line 995
    const-string v10, "GracieSelector select set user_quality_sensitivity="

    .line 996
    .line 997
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    const-string v8, " user_enter_full_screen"

    .line 1004
    .line 1005
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    invoke-static {v4, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    :cond_1a
    if-eqz v2, :cond_1b

    .line 1019
    .line 1020
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSREnabled()Z

    .line 1021
    .line 1022
    .line 1023
    move-result v3

    .line 1024
    const/16 v8, 0x27

    .line 1025
    .line 1026
    invoke-interface {v6, v8, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSRSatisfied()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v3

    .line 1033
    const/16 v8, 0x28

    .line 1034
    .line 1035
    invoke-interface {v6, v8, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 1036
    .line 1037
    .line 1038
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getSRBenchmark()Ljava/util/Map;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v3

    .line 1042
    invoke-interface {v6, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setSRBenchmarkMap(Ljava/util/Map;)V

    .line 1043
    .line 1044
    .line 1045
    :cond_1b
    const/16 v3, 0x42

    .line 1046
    .line 1047
    const/4 v8, 0x3

    .line 1048
    invoke-interface {v1, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefInt(I)I

    .line 1049
    .line 1050
    .line 1051
    move-result v9

    .line 1052
    invoke-interface {v6, v3, v9}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 1053
    .line 1054
    .line 1055
    const/16 v3, 0xed

    .line 1056
    .line 1057
    invoke-interface {v1, v3}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v3

    .line 1061
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v8

    .line 1065
    if-nez v8, :cond_1c

    .line 1066
    .line 1067
    const/16 v8, 0x45

    .line 1068
    .line 1069
    invoke-interface {v6, v8, v3}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    :cond_1c
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    if-nez v3, :cond_1d

    .line 1077
    .line 1078
    const/16 v3, 0x4b

    .line 1079
    .line 1080
    move-object/from16 v10, v22

    .line 1081
    .line 1082
    invoke-interface {v6, v3, v10}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    :cond_1d
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v3

    .line 1089
    if-nez v3, :cond_1e

    .line 1090
    .line 1091
    const/16 v3, 0x4c

    .line 1092
    .line 1093
    move-object/from16 v8, v21

    .line 1094
    .line 1095
    invoke-interface {v6, v3, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setStringOptionForKey(ILjava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    :cond_1e
    const/16 v3, 0x52

    .line 1099
    .line 1100
    move/from16 v8, v18

    .line 1101
    .line 1102
    invoke-interface {v6, v3, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->setIntOptionForKey(II)V

    .line 1103
    .line 1104
    .line 1105
    iget v3, v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mOnceT:I

    .line 1106
    .line 1107
    iget v8, v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mScene:I

    .line 1108
    .line 1109
    invoke-interface {v6, v3, v8}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->onceSelect(II)Lcom/bytedance/vcloud/abrmodule/ABRResult;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v3

    .line 1113
    if-eqz v24, :cond_20

    .line 1114
    .line 1115
    const/4 v8, 0x2

    .line 1116
    invoke-interface {v1, v8}, Lcom/ss/ttvideoengine/model/IVideoModel;->getVideoRefStr(I)Ljava/lang/String;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v9

    .line 1120
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v8

    .line 1124
    if-eqz v8, :cond_1f

    .line 1125
    .line 1126
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v8

    .line 1130
    invoke-virtual {v8, v6}, Lcom/ss/ttvideoengine/abr/ABRPool;->giveBack(Lcom/bytedance/vcloud/abrmodule/IABRModule;)V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_10

    .line 1134
    :cond_1f
    invoke-static {}, Lcom/ss/ttvideoengine/abr/ABRPool;->getInstance()Lcom/ss/ttvideoengine/abr/ABRPool;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v8

    .line 1138
    invoke-virtual {v8, v9, v6}, Lcom/ss/ttvideoengine/abr/ABRPool;->preloadDone(Ljava/lang/String;Lcom/bytedance/vcloud/abrmodule/IABRModule;)V

    .line 1139
    .line 1140
    .line 1141
    goto :goto_10

    .line 1142
    :cond_20
    invoke-interface {v6}, Lcom/bytedance/vcloud/abrmodule/IABRModule;->release()V

    .line 1143
    .line 1144
    .line 1145
    :goto_10
    if-nez v3, :cond_21

    .line 1146
    .line 1147
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 1148
    .line 1149
    const/16 v2, -0x1f3d

    .line 1150
    .line 1151
    const-string v3, "null abr result"

    .line 1152
    .line 1153
    move-object/from16 v6, v17

    .line 1154
    .line 1155
    invoke-direct {v1, v6, v2, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1156
    .line 1157
    .line 1158
    new-instance v2, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 1159
    .line 1160
    invoke-direct {v2, v1}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 1161
    .line 1162
    .line 1163
    return-object v2

    .line 1164
    :cond_21
    move-object/from16 v6, v17

    .line 1165
    .line 1166
    invoke-static {v3}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->parseABRResult(Lcom/bytedance/vcloud/abrmodule/ABRResult;)Ljava/util/Map;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    if-eqz v3, :cond_25

    .line 1171
    .line 1172
    const-string/jumbo v10, "video_bitrarte"

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v10

    .line 1179
    if-eqz v10, :cond_22

    .line 1180
    .line 1181
    check-cast v10, Ljava/lang/Long;

    .line 1182
    .line 1183
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 1184
    .line 1185
    .line 1186
    move-result-wide v10

    .line 1187
    goto :goto_11

    .line 1188
    :cond_22
    const-wide/16 v10, 0x0

    .line 1189
    .line 1190
    :goto_11
    const-string/jumbo v13, "video_bitrarte_origin"

    .line 1191
    .line 1192
    .line 1193
    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v13

    .line 1197
    if-eqz v13, :cond_23

    .line 1198
    .line 1199
    check-cast v13, Ljava/lang/Long;

    .line 1200
    .line 1201
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    .line 1202
    .line 1203
    .line 1204
    move-result-wide v13

    .line 1205
    goto :goto_12

    .line 1206
    :cond_23
    const-wide/16 v13, 0x0

    .line 1207
    .line 1208
    :goto_12
    const-string v15, "downgrade_type"

    .line 1209
    .line 1210
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v15

    .line 1214
    if-eqz v15, :cond_24

    .line 1215
    .line 1216
    check-cast v15, Ljava/lang/Integer;

    .line 1217
    .line 1218
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 1219
    .line 1220
    .line 1221
    move-result v15

    .line 1222
    goto :goto_13

    .line 1223
    :cond_24
    move v15, v12

    .line 1224
    goto :goto_13

    .line 1225
    :cond_25
    move v15, v12

    .line 1226
    const-wide/16 v10, 0x0

    .line 1227
    .line 1228
    const-wide/16 v13, 0x0

    .line 1229
    .line 1230
    :goto_13
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1231
    .line 1232
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1233
    .line 1234
    .line 1235
    const-string v8, "[GearStrategy]GracieSelector.select parseABRResult videoBitrate="

    .line 1236
    .line 1237
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    .line 1239
    .line 1240
    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    const-string v8, " bitrateOrigin="

    .line 1244
    .line 1245
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    const-string v8, " downgradeType="

    .line 1252
    .line 1253
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    .line 1256
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1257
    .line 1258
    .line 1259
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1260
    .line 1261
    .line 1262
    move-result-object v8

    .line 1263
    invoke-static {v4, v8}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v4

    .line 1270
    const-string/jumbo v8, "vbitrateo"

    .line 1271
    .line 1272
    .line 1273
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .line 1275
    .line 1276
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v4

    .line 1280
    const-string/jumbo v8, "vbitrate"

    .line 1281
    .line 1282
    .line 1283
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    .line 1285
    .line 1286
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v4

    .line 1290
    const-string v8, "downgrade"

    .line 1291
    .line 1292
    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    .line 1294
    .line 1295
    const-wide/16 v8, 0x0

    .line 1296
    .line 1297
    cmp-long v4, v10, v8

    .line 1298
    .line 1299
    if-lez v4, :cond_2c

    .line 1300
    .line 1301
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v4

    .line 1305
    const-wide/16 v7, -0x1

    .line 1306
    .line 1307
    const/4 v9, 0x0

    .line 1308
    :cond_26
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1309
    .line 1310
    .line 1311
    move-result v12

    .line 1312
    if-eqz v12, :cond_2a

    .line 1313
    .line 1314
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1315
    .line 1316
    .line 1317
    move-result-object v12

    .line 1318
    check-cast v12, Lcom/ss/ttvideoengine/model/VideoInfo;

    .line 1319
    .line 1320
    if-eqz v12, :cond_27

    .line 1321
    .line 1322
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getMediatype()I

    .line 1323
    .line 1324
    .line 1325
    move-result v13

    .line 1326
    sget v14, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_AUDIO:I

    .line 1327
    .line 1328
    if-eq v13, v14, :cond_27

    .line 1329
    .line 1330
    invoke-virtual {v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v13

    .line 1334
    if-nez v13, :cond_28

    .line 1335
    .line 1336
    :cond_27
    const/4 v13, 0x3

    .line 1337
    const-wide/16 v17, 0x0

    .line 1338
    .line 1339
    goto :goto_14

    .line 1340
    :cond_28
    const/4 v13, 0x3

    .line 1341
    invoke-virtual {v12, v13}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 1342
    .line 1343
    .line 1344
    move-result v14

    .line 1345
    int-to-long v14, v14

    .line 1346
    const-wide/16 v17, 0x0

    .line 1347
    .line 1348
    cmp-long v19, v7, v17

    .line 1349
    .line 1350
    if-ltz v19, :cond_29

    .line 1351
    .line 1352
    sub-long v21, v14, v10

    .line 1353
    .line 1354
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(J)J

    .line 1355
    .line 1356
    .line 1357
    move-result-wide v21

    .line 1358
    cmp-long v19, v21, v7

    .line 1359
    .line 1360
    if-gez v19, :cond_26

    .line 1361
    .line 1362
    :cond_29
    sub-long/2addr v14, v10

    .line 1363
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 1364
    .line 1365
    .line 1366
    move-result-wide v7

    .line 1367
    move-object v9, v12

    .line 1368
    goto :goto_14

    .line 1369
    :cond_2a
    if-eqz v9, :cond_2c

    .line 1370
    .line 1371
    new-instance v4, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 1372
    .line 1373
    invoke-direct {v4, v9}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/model/IVideoInfo;)V

    .line 1374
    .line 1375
    .line 1376
    if-eqz v2, :cond_2b

    .line 1377
    .line 1378
    new-instance v7, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 1379
    .line 1380
    invoke-direct {v7}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;-><init>()V

    .line 1381
    .line 1382
    .line 1383
    const/4 v12, 0x1

    .line 1384
    invoke-virtual {v9, v12}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 1385
    .line 1386
    .line 1387
    move-result v8

    .line 1388
    invoke-virtual {v7, v8}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentWidth(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v8

    .line 1392
    const/4 v13, 0x2

    .line 1393
    invoke-virtual {v9, v13}, Lcom/ss/ttvideoengine/model/VideoInfo;->getValueInt(I)I

    .line 1394
    .line 1395
    .line 1396
    move-result v9

    .line 1397
    invoke-virtual {v8, v9}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setCurrentHeight(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v2, v7}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->updateConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)V

    .line 1401
    .line 1402
    .line 1403
    goto :goto_15

    .line 1404
    :cond_2b
    const/4 v12, 0x1

    .line 1405
    :goto_15
    move-object v9, v4

    .line 1406
    goto :goto_16

    .line 1407
    :cond_2c
    const/4 v12, 0x1

    .line 1408
    const/4 v9, 0x0

    .line 1409
    :goto_16
    if-nez v9, :cond_2d

    .line 1410
    .line 1411
    new-instance v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 1412
    .line 1413
    const-string v7, "null video info fit bitrate"

    .line 1414
    .line 1415
    const/16 v8, -0x1f3f

    .line 1416
    .line 1417
    invoke-direct {v4, v6, v8, v7}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    new-instance v9, Lcom/ss/ttvideoengine/selector/SelectedInfo;

    .line 1421
    .line 1422
    invoke-direct {v9, v4}, Lcom/ss/ttvideoengine/selector/SelectedInfo;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 1423
    .line 1424
    .line 1425
    :cond_2d
    if-eqz v2, :cond_30

    .line 1426
    .line 1427
    iget v4, v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mScene:I

    .line 1428
    .line 1429
    if-nez v4, :cond_30

    .line 1430
    .line 1431
    if-eqz v23, :cond_2e

    .line 1432
    .line 1433
    move v4, v12

    .line 1434
    goto :goto_17

    .line 1435
    :cond_2e
    const/4 v4, 0x0

    .line 1436
    :goto_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v4

    .line 1440
    const-string v6, "ess"

    .line 1441
    .line 1442
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    if-eqz v23, :cond_2f

    .line 1446
    .line 1447
    move/from16 v20, v12

    .line 1448
    .line 1449
    goto :goto_18

    .line 1450
    :cond_2f
    const/16 v20, 0x0

    .line 1451
    .line 1452
    :goto_18
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v4

    .line 1456
    const-string v6, "eas"

    .line 1457
    .line 1458
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->getSRNotUseReason()I

    .line 1462
    .line 1463
    .line 1464
    move-result v4

    .line 1465
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1466
    .line 1467
    .line 1468
    move-result-object v4

    .line 1469
    const-string/jumbo v6, "sfr"

    .line 1470
    .line 1471
    .line 1472
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v2}, Lcom/ss/ttvideoengine/superresolution/SRStrategy;->isSRSatisfied()Z

    .line 1476
    .line 1477
    .line 1478
    move-result v2

    .line 1479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v2

    .line 1483
    const-string/jumbo v4, "srs"

    .line 1484
    .line 1485
    .line 1486
    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    .line 1488
    .line 1489
    :cond_30
    iget v2, v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;->mScene:I

    .line 1490
    .line 1491
    if-nez v2, :cond_32

    .line 1492
    .line 1493
    const/4 v2, -0x1

    .line 1494
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->getMediaInfoJson(Lcom/ss/ttvideoengine/model/IVideoModel;I)Lorg/json/JSONArray;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v1

    .line 1498
    if-eqz v1, :cond_31

    .line 1499
    .line 1500
    const-string v2, "minfo"

    .line 1501
    .line 1502
    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    .line 1504
    .line 1505
    :cond_31
    move-object/from16 v1, v16

    .line 1506
    .line 1507
    invoke-static {v1, v10, v11, v5}, Lcom/ss/ttvideoengine/selector/strategy/GearStrategy;->setPreloadInfo(Ljava/lang/String;JLjava/util/Map;)V

    .line 1508
    .line 1509
    .line 1510
    :cond_32
    invoke-virtual {v9, v3}, Lcom/ss/ttvideoengine/selector/SelectedInfo;->setGearResult(Ljava/util/Map;)V

    .line 1511
    .line 1512
    .line 1513
    return-object v9
.end method
