.class public final Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;
.super Ljava/lang/Object;
.source "ThirdPartyPaymentSkuResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThirdPartyPaymentSkuResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThirdPartyPaymentSkuResult.kt\ncom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,99:1\n216#2,2:100\n*S KotlinDebug\n*F\n+ 1 ThirdPartyPaymentSkuResult.kt\ncom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult\n*L\n71#1:100,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HIGH_LIGHT_COLOR:Ljava/lang/String; = "#FF442C"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ThirdPartyPaymentSkuResult"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final enable:Z

.field private final ratio:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->Companion:Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->ratio:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic formatUrl$default(Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->formatUrl(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final enable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->ratio:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 30
    :goto_1
    return v0
.end method

.method public final formatUrl(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Ljava/lang/String;
    .locals 21
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "scene"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v3, v1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    if-eqz v3, :cond_b

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    iget-object v5, v1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v1, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 39
    .line 40
    const-string v6, "?"

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x2

    .line 44
    const/4 v9, 0x0

    .line 45
    invoke-static {v5, v6, v7, v8, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    const-string v10, "&"

    .line 50
    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v6, "scene="

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v2, 0x26

    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v5, "platform=android&"

    .line 86
    .line 87
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v5, "openType=browser&"

    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string/jumbo v6, "statusBarHeight="

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 107
    .line 108
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sget-object v5, Lud/b;->a:Lud/b;

    .line 126
    .line 127
    invoke-virtual {v5}, Lud/b;->f0()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    if-eqz v5, :cond_2

    .line 132
    .line 133
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getABTestIds()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    if-eqz v5, :cond_2

    .line 138
    .line 139
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-lez v6, :cond_2

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v11, "cmsAbTestId="

    .line 151
    .line 152
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :cond_2
    if-eqz p3, :cond_3

    .line 169
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    const-string/jumbo v6, "shortPlayId="

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v6, "reel_id="

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v6, "episode="

    .line 231
    .line 232
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    :cond_3
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 253
    .line 254
    const/4 v6, 0x1

    .line 255
    invoke-static {v5, v9, v6, v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->u(Lcom/startshorts/androidplayer/manager/event/EventManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    if-eqz v5, :cond_4

    .line 260
    .line 261
    invoke-virtual {v5}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    if-eqz v12, :cond_4

    .line 274
    .line 275
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v12

    .line 279
    check-cast v12, Ljava/lang/String;

    .line 280
    .line 281
    new-instance v13, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const/16 v14, 0x3d

    .line 290
    .line 291
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v12

    .line 298
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v12

    .line 308
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_4
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 313
    .line 314
    invoke-static {v2, v9, v6, v9}, Lcom/startshorts/androidplayer/manager/api/base/o$a;->b(Lcom/startshorts/androidplayer/manager/api/base/o$a;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/HashMap;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    const-string v5, "clientPlatform"

    .line 319
    .line 320
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    const-string v5, "Authorization"

    .line 324
    .line 325
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string v5, "TraceId"

    .line 329
    .line 330
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    const-string v5, "hasProxy"

    .line 334
    .line 335
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    const-string v5, "model"

    .line 339
    .line 340
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v11

    .line 344
    check-cast v11, Ljava/lang/String;

    .line 345
    .line 346
    const-string v12, "encode(...)"

    .line 347
    .line 348
    const-string v13, "UTF-8"

    .line 349
    .line 350
    if-eqz v11, :cond_6

    .line 351
    .line 352
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 353
    .line 354
    .line 355
    move-result v14

    .line 356
    if-nez v14, :cond_5

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_5
    invoke-static {v11, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v15

    .line 363
    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const/16 v19, 0x4

    .line 367
    .line 368
    const/16 v20, 0x0

    .line 369
    .line 370
    const-string v16, "+"

    .line 371
    .line 372
    const-string v17, "%20"

    .line 373
    .line 374
    const/16 v18, 0x0

    .line 375
    .line 376
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    invoke-interface {v2, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_7

    .line 396
    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    check-cast v5, Ljava/util/Map$Entry;

    .line 402
    .line 403
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    check-cast v11, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v11, "="

    .line 413
    .line 414
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    check-cast v5, Ljava/lang/String;

    .line 422
    .line 423
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    goto :goto_3

    .line 430
    :cond_7
    sget-object v2, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 431
    .line 432
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    if-eqz v2, :cond_8

    .line 437
    .line 438
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getFormatNickname(Landroid/content/Context;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-static {v0, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-string v15, "+"

    .line 450
    .line 451
    const-string v16, "%20"

    .line 452
    .line 453
    const/16 v18, 0x4

    .line 454
    .line 455
    const/16 v19, 0x0

    .line 456
    .line 457
    const/16 v17, 0x0

    .line 458
    .line 459
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    goto :goto_4

    .line 464
    :catch_0
    move-exception v0

    .line 465
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 466
    .line 467
    new-instance v11, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .line 471
    .line 472
    const-string v12, "encode nickname exception -> "

    .line 473
    .line 474
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    const-string v11, "ThirdPartyPaymentSkuResult"

    .line 489
    .line 490
    invoke-virtual {v5, v11, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    :goto_4
    const-string/jumbo v0, "userCode="

    .line 494
    .line 495
    .line 496
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v0

    .line 503
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    const-string v0, "&nickname="

    .line 507
    .line 508
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 518
    .line 519
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->k()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    if-eqz v0, :cond_9

    .line 524
    .line 525
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 526
    .line 527
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 528
    .line 529
    .line 530
    move-result-wide v4

    .line 531
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRetentionSeconds()J

    .line 532
    .line 533
    .line 534
    move-result-wide v11

    .line 535
    const/16 v2, 0x3e8

    .line 536
    .line 537
    int-to-long v13, v2

    .line 538
    mul-long/2addr v11, v13

    .line 539
    add-long/2addr v4, v11

    .line 540
    const-string v2, "retentionTimestamp="

    .line 541
    .line 542
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    const-string v2, "&skuId="

    .line 549
    .line 550
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    const-string v2, "&skuProductId="

    .line 561
    .line 562
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    const-string/jumbo v2, "toString(...)"

    .line 577
    .line 578
    .line 579
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    invoke-static {v0, v10, v7, v8, v9}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_a

    .line 587
    .line 588
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->B1(Ljava/lang/String;I)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    :cond_a
    return-object v0

    .line 593
    :cond_b
    :goto_5
    return-object v4
.end method

.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()Landroid/text/Spanned;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->ratio:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    const-string v1, "#FF442C"

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljk/v;->u(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
