.class public final Lcom/startshorts/androidplayer/manager/shorts/feature/d;
.super Ljava/lang/Object;
.source "EventFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/feature/d$a;,
        Lcom/startshorts/androidplayer/manager/shorts/feature/d$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/manager/shorts/feature/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->b:Lcom/startshorts/androidplayer/manager/shorts/feature/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 6
    .line 7
    return-void
.end method

.method private final b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    sget-object v0, Lpf/k;->a:Lpf/k;

    .line 7
    .line 8
    invoke-virtual {v0}, Lpf/k;->s()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains1080pUrl()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string p1, "1080p"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains720pUrl()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const-string p1, "720p"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string p1, "480p"

    .line 33
    .line 34
    :goto_0
    return-object p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "_720"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v0, "720p"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-string v1, "_1080p"

    .line 27
    .line 28
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v0, "1080p"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const-string v1, "_480p"

    .line 38
    .line 39
    invoke-static {p1, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    const-string v0, "480p"

    .line 46
    .line 47
    :cond_3
    :goto_0
    return-object v0
.end method

.method private final e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    sget-object v1, Lpf/k;->a:Lpf/k;

    .line 7
    .line 8
    invoke-virtual {v1}, Lpf/k;->s()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains1080pUrl()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0x438

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->contains720pUrl()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x2d0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/16 v1, 0x1e0

    .line 33
    .line 34
    :goto_0
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v0, p1

    .line 42
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "message"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->b()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v3, Lcom/startshorts/androidplayer/manager/shorts/feature/d$b;->$EnumSwitchMapping$0:[I

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    aget v1, v3, v1

    .line 21
    .line 22
    const-string v3, "ms"

    .line 23
    .line 24
    const-string v4, "seekbar"

    .line 25
    .line 26
    const-string v5, "EventFeature"

    .line 27
    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, -0x1

    .line 30
    const/4 v8, 0x0

    .line 31
    if-eq v1, v6, :cond_22

    .line 32
    .line 33
    const/4 v9, 0x2

    .line 34
    const-string/jumbo v10, "shorts"

    .line 35
    .line 36
    .line 37
    const-string v11, "scene"

    .line 38
    .line 39
    const/4 v12, 0x0

    .line 40
    if-eq v1, v9, :cond_1a

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    const-string v4, "clarity_level"

    .line 44
    .line 45
    if-eq v1, v3, :cond_13

    .line 46
    .line 47
    const/4 v3, 0x4

    .line 48
    if-eq v1, v3, :cond_7

    .line 49
    .line 50
    const/4 v3, 0x5

    .line 51
    if-eq v1, v3, :cond_0

    .line 52
    .line 53
    goto/16 :goto_15

    .line 54
    .line 55
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const-string v3, "err_code"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    move-object v1, v8

    .line 69
    :goto_0
    instance-of v3, v1, Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move-object v1, v8

    .line 77
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->d(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "-9999"

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-nez v3, :cond_3

    .line 88
    .line 89
    const-string v3, "-1"

    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    .line 97
    :cond_3
    if-eqz v2, :cond_4

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-nez v3, :cond_4

    .line 104
    .line 105
    sget-object v3, Lud/b;->a:Lud/b;

    .line 106
    .line 107
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-virtual {v3, v7, v12}, Lud/b;->E3(II)V

    .line 112
    .line 113
    .line 114
    sget-object v3, Lud/a;->a:Lud/a;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v3, v7, v12}, Lud/a;->k0(II)V

    .line 121
    .line 122
    .line 123
    :cond_4
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    if-ne v7, v6, :cond_5

    .line 134
    .line 135
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    goto :goto_2

    .line 140
    :cond_5
    invoke-direct {v0, v3}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    :goto_2
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 145
    .line 146
    new-instance v12, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v13, "onError -> playErrorUrl("

    .line 152
    .line 153
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v13, ") clarity("

    .line 160
    .line 161
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const/16 v13, 0x29

    .line 168
    .line 169
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v12

    .line 176
    invoke-virtual {v9, v5, v12}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 180
    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-ne v5, v6, :cond_6

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_6
    move-object v8, v2

    .line 191
    :goto_3
    invoke-virtual {v13, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 192
    .line 193
    .line 194
    move-result-object v15

    .line 195
    invoke-virtual {v15, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v2, "err_msg"

    .line 199
    .line 200
    invoke-virtual {v15, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    const-string/jumbo v1, "video_url"

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v15, v4, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->A()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string/jumbo v2, "userNetworkType"

    .line 219
    .line 220
    .line 221
    invoke-virtual {v15, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 225
    .line 226
    const/16 v18, 0x4

    .line 227
    .line 228
    const/16 v19, 0x0

    .line 229
    .line 230
    const-string v14, "reel_play_fail"

    .line 231
    .line 232
    const-wide/16 v16, 0x0

    .line 233
    .line 234
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_15

    .line 238
    .line 239
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->d(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const-string v6, "code"

    .line 248
    .line 249
    if-eqz v3, :cond_8

    .line 250
    .line 251
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    goto :goto_4

    .line 256
    :cond_8
    move-object v3, v8

    .line 257
    :goto_4
    instance-of v9, v3, Ljava/lang/Integer;

    .line 258
    .line 259
    if-eqz v9, :cond_9

    .line 260
    .line 261
    check-cast v3, Ljava/lang/Integer;

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_9
    move-object v3, v8

    .line 265
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    const-string v12, "after_first_frame"

    .line 270
    .line 271
    if-eqz v9, :cond_a

    .line 272
    .line 273
    invoke-virtual {v9, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    goto :goto_6

    .line 278
    :cond_a
    move-object v9, v8

    .line 279
    :goto_6
    instance-of v13, v9, Ljava/lang/Integer;

    .line 280
    .line 281
    if-eqz v13, :cond_b

    .line 282
    .line 283
    check-cast v9, Ljava/lang/Integer;

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_b
    move-object v9, v8

    .line 287
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const-string v13, "action"

    .line 292
    .line 293
    if-eqz v2, :cond_c

    .line 294
    .line 295
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    goto :goto_8

    .line 300
    :cond_c
    move-object v2, v8

    .line 301
    :goto_8
    instance-of v14, v2, Ljava/lang/Integer;

    .line 302
    .line 303
    if-eqz v14, :cond_d

    .line 304
    .line 305
    check-cast v2, Ljava/lang/Integer;

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_d
    move-object v2, v8

    .line 309
    :goto_9
    if-eqz v1, :cond_12

    .line 310
    .line 311
    if-eqz v3, :cond_12

    .line 312
    .line 313
    if-nez v2, :cond_e

    .line 314
    .line 315
    goto :goto_c

    .line 316
    :cond_e
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_f

    .line 321
    .line 322
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    goto :goto_a

    .line 327
    :cond_f
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-direct {v0, v5}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    :goto_a
    sget-object v14, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 336
    .line 337
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 338
    .line 339
    .line 340
    move-result v15

    .line 341
    if-eqz v15, :cond_10

    .line 342
    .line 343
    goto :goto_b

    .line 344
    :cond_10
    move-object v8, v1

    .line 345
    :goto_b
    invoke-virtual {v14, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 354
    .line 355
    .line 356
    if-eqz v9, :cond_11

    .line 357
    .line 358
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    :cond_11
    invoke-virtual {v1, v12, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    invoke-virtual {v1, v13, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 379
    .line 380
    const/16 v19, 0x4

    .line 381
    .line 382
    const/16 v20, 0x0

    .line 383
    .line 384
    const-string v15, "reel_play_buffering"

    .line 385
    .line 386
    const-wide/16 v17, 0x0

    .line 387
    .line 388
    move-object/from16 v16, v1

    .line 389
    .line 390
    invoke-static/range {v14 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    goto/16 :goto_15

    .line 394
    .line 395
    :cond_12
    :goto_c
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 396
    .line 397
    const-string v2, "notify -> episode or code or afterFirstFrame or action is null"

    .line 398
    .line 399
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->d(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-nez v1, :cond_14

    .line 408
    .line 409
    return-void

    .line 410
    :cond_14
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    if-eqz v3, :cond_15

    .line 415
    .line 416
    return-void

    .line 417
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    if-eqz v2, :cond_16

    .line 422
    .line 423
    const-string v3, "cost_time"

    .line 424
    .line 425
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    goto :goto_d

    .line 430
    :cond_16
    move-object v2, v8

    .line 431
    :goto_d
    instance-of v3, v2, Ljava/lang/Long;

    .line 432
    .line 433
    if-eqz v3, :cond_17

    .line 434
    .line 435
    move-object v8, v2

    .line 436
    check-cast v8, Ljava/lang/Long;

    .line 437
    .line 438
    :cond_17
    if-eqz v8, :cond_18

    .line 439
    .line 440
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2

    .line 444
    goto :goto_e

    .line 445
    :cond_18
    const-wide/16 v2, 0x0

    .line 446
    .line 447
    :goto_e
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_19

    .line 452
    .line 453
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v5

    .line 457
    goto :goto_f

    .line 458
    :cond_19
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    invoke-direct {v0, v5}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v5

    .line 466
    :goto_f
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 467
    .line 468
    invoke-virtual {v12, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    const-string/jumbo v1, "time"

    .line 473
    .line 474
    .line 475
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v14, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v14, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    invoke-virtual {v14, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 489
    .line 490
    const/16 v17, 0x4

    .line 491
    .line 492
    const/16 v18, 0x0

    .line 493
    .line 494
    const-string v13, "initial_loading_time"

    .line 495
    .line 496
    const-wide/16 v15, 0x0

    .line 497
    .line 498
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_15

    .line 502
    .line 503
    :cond_1a
    iget v1, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 504
    .line 505
    if-ne v1, v7, :cond_1b

    .line 506
    .line 507
    return-void

    .line 508
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    if-eqz v1, :cond_1c

    .line 513
    .line 514
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    goto :goto_10

    .line 519
    :cond_1c
    move-object v1, v8

    .line 520
    :goto_10
    instance-of v4, v1, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;

    .line 521
    .line 522
    if-eqz v4, :cond_1d

    .line 523
    .line 524
    move-object v8, v1

    .line 525
    check-cast v8, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;

    .line 526
    .line 527
    :cond_1d
    if-eqz v8, :cond_1e

    .line 528
    .line 529
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 530
    .line 531
    .line 532
    move-result v1

    .line 533
    goto :goto_11

    .line 534
    :cond_1e
    move v1, v7

    .line 535
    :goto_11
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->d(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 540
    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .line 545
    .line 546
    const-string/jumbo v9, "stopTouch -> "

    .line 547
    .line 548
    .line 549
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v4, v5, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    if-eq v1, v7, :cond_21

    .line 566
    .line 567
    if-nez v2, :cond_1f

    .line 568
    .line 569
    goto :goto_13

    .line 570
    :cond_1f
    iget v3, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 571
    .line 572
    if-ge v1, v3, :cond_20

    .line 573
    .line 574
    goto :goto_12

    .line 575
    :cond_20
    move v6, v12

    .line 576
    :goto_12
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 577
    .line 578
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 579
    .line 580
    .line 581
    move-result-object v15

    .line 582
    invoke-virtual {v15, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 586
    .line 587
    iget v5, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 588
    .line 589
    int-to-long v8, v5

    .line 590
    const-wide/16 v20, 0x3e8

    .line 591
    .line 592
    div-long v8, v8, v20

    .line 593
    .line 594
    invoke-virtual {v4, v8, v9, v12}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v5

    .line 598
    const-string v8, "drag_start_time"

    .line 599
    .line 600
    invoke-virtual {v15, v8, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 604
    .line 605
    const/16 v18, 0x4

    .line 606
    .line 607
    const/16 v19, 0x0

    .line 608
    .line 609
    const-string/jumbo v14, "video_drag_start"

    .line 610
    .line 611
    .line 612
    const-wide/16 v16, 0x0

    .line 613
    .line 614
    move-object v13, v3

    .line 615
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 619
    .line 620
    .line 621
    move-result-object v15

    .line 622
    invoke-virtual {v15, v11, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    int-to-long v8, v1

    .line 626
    div-long v8, v8, v20

    .line 627
    .line 628
    invoke-virtual {v4, v8, v9, v12}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    const-string v4, "drag_end_time"

    .line 633
    .line 634
    invoke-virtual {v15, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget v2, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 638
    .line 639
    sub-int/2addr v1, v2

    .line 640
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 641
    .line 642
    .line 643
    move-result v1

    .line 644
    int-to-long v1, v1

    .line 645
    div-long v1, v1, v20

    .line 646
    .line 647
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    const-string v2, "drag_duration"

    .line 652
    .line 653
    invoke-virtual {v15, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    const-string v1, "is_rewind"

    .line 657
    .line 658
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    invoke-virtual {v15, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    const-string/jumbo v14, "video_drag_end"

    .line 666
    .line 667
    .line 668
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 669
    .line 670
    .line 671
    iput v7, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 672
    .line 673
    goto :goto_15

    .line 674
    :cond_21
    :goto_13
    iput v7, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 675
    .line 676
    return-void

    .line 677
    :cond_22
    iget v1, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 678
    .line 679
    if-ne v1, v7, :cond_26

    .line 680
    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;->a()Ljava/util/HashMap;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    if-eqz v1, :cond_23

    .line 686
    .line 687
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    goto :goto_14

    .line 692
    :cond_23
    move-object v1, v8

    .line 693
    :goto_14
    instance-of v2, v1, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;

    .line 694
    .line 695
    if-eqz v2, :cond_24

    .line 696
    .line 697
    move-object v8, v1

    .line 698
    check-cast v8, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;

    .line 699
    .line 700
    :cond_24
    if-eqz v8, :cond_25

    .line 701
    .line 702
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar;->getProgress()I

    .line 703
    .line 704
    .line 705
    move-result v7

    .line 706
    :cond_25
    iput v7, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 707
    .line 708
    :cond_26
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 709
    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    .line 711
    .line 712
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .line 714
    .line 715
    const-string/jumbo v4, "startTouch -> "

    .line 716
    .line 717
    .line 718
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .line 720
    .line 721
    iget v4, v0, Lcom/startshorts/androidplayer/manager/shorts/feature/d;->a:I

    .line 722
    .line 723
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v2

    .line 733
    invoke-virtual {v1, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    :goto_15
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/shorts/feature/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$a;->a(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;->EVENT:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
