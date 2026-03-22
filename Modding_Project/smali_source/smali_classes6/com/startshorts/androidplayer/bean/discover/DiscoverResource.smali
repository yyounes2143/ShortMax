.class public final Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;
.super Ljava/lang/Object;
.source "DiscoverResource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/discover/DiscoverResource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverResource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverResource.kt\ncom/startshorts/androidplayer/bean/discover/DiscoverResource\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,163:1\n216#2,2:164\n*S KotlinDebug\n*F\n+ 1 DiscoverResource.kt\ncom/startshorts/androidplayer/bean/discover/DiscoverResource\n*L\n109#1:164,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverResource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DiscoverResource"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private contentType:I

.field private contentUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contentValueName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coverId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recommendId:I

.field private shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverResource$Companion;

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
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 6
    .line 7
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic toActResource$default(Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    move-object p2, v0

    .line 7
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 8
    .line 9
    if-eqz p4, :cond_1

    .line 10
    .line 11
    move-object p3, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->toActResource(ILjava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method


# virtual methods
.method public final formatBrowserUrl(I)Ljava/lang/String;
    .locals 20
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentUrl:Ljava/lang/String;

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    if-eqz v2, :cond_e

    .line 10
    .line 11
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    iget v4, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 20
    .line 21
    sget-object v5, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 22
    .line 23
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ne v4, v5, :cond_1

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v5, "?"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v7, 0x2

    .line 39
    const/4 v8, 0x0

    .line 40
    invoke-static {v2, v5, v6, v7, v8}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v9, "&"

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    :goto_0
    const-string v2, "platform=android&"

    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "openType=browser&"

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string/jumbo v5, "statusBarHeight="

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 77
    .line 78
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/16 v5, 0x26

    .line 86
    .line 87
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    sget-object v2, Lud/b;->a:Lud/b;

    .line 98
    .line 99
    invoke-virtual {v2}, Lud/b;->f0()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getABTestIds()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_3

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-lez v10, :cond_3

    .line 116
    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v11, "cmsAbTestId="

    .line 123
    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    :cond_3
    iget-object v2, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->moduleId:Ljava/lang/String;

    .line 141
    .line 142
    if-eqz v2, :cond_5

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v10, "moduleId="

    .line 157
    .line 158
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v10, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->moduleId:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    :cond_5
    :goto_1
    const/4 v2, -0x1

    .line 177
    if-eq v0, v2, :cond_6

    .line 178
    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v10, "positionId="

    .line 185
    .line 186
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    :cond_6
    iget v0, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 203
    .line 204
    if-lez v0, :cond_7

    .line 205
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v2, "audienceRecommendId="

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget v2, v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 232
    .line 233
    const/4 v2, 0x1

    .line 234
    invoke-static {v0, v8, v2, v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->u(Lcom/startshorts/androidplayer/manager/event/EventManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/Bundle;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    if-eqz v11, :cond_8

    .line 253
    .line 254
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    check-cast v11, Ljava/lang/String;

    .line 259
    .line 260
    new-instance v12, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const/16 v13, 0x3d

    .line 269
    .line 270
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v11

    .line 287
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 292
    .line 293
    invoke-static {v0, v8, v2, v8}, Lcom/startshorts/androidplayer/manager/api/base/o$a;->b(Lcom/startshorts/androidplayer/manager/api/base/o$a;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/HashMap;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v5, "clientPlatform"

    .line 298
    .line 299
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-string v5, "Authorization"

    .line 303
    .line 304
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    const-string v5, "TraceId"

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    const-string v5, "hasProxy"

    .line 313
    .line 314
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    const-string v5, "model"

    .line 318
    .line 319
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v10

    .line 323
    check-cast v10, Ljava/lang/String;

    .line 324
    .line 325
    const-string v11, "encode(...)"

    .line 326
    .line 327
    const-string v12, "UTF-8"

    .line 328
    .line 329
    if-eqz v10, :cond_a

    .line 330
    .line 331
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-nez v13, :cond_9

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_9
    invoke-static {v10, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/16 v18, 0x4

    .line 346
    .line 347
    const/16 v19, 0x0

    .line 348
    .line 349
    const-string v15, "+"

    .line 350
    .line 351
    const-string v16, "%20"

    .line 352
    .line 353
    const/16 v17, 0x0

    .line 354
    .line 355
    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v10

    .line 359
    invoke-interface {v0, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v5

    .line 374
    if-eqz v5, :cond_b

    .line 375
    .line 376
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    check-cast v5, Ljava/util/Map$Entry;

    .line 381
    .line 382
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    check-cast v10, Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v10, "="

    .line 392
    .line 393
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    check-cast v5, Ljava/lang/String;

    .line 401
    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_b
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    if-eqz v5, :cond_c

    .line 416
    .line 417
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 418
    .line 419
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/bean/account/Account;->getFormatNickname(Landroid/content/Context;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {v0, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    const-string v14, "+"

    .line 435
    .line 436
    const-string v15, "%20"

    .line 437
    .line 438
    const/16 v17, 0x4

    .line 439
    .line 440
    const/16 v18, 0x0

    .line 441
    .line 442
    const/16 v16, 0x0

    .line 443
    .line 444
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    goto :goto_5

    .line 449
    :catch_0
    move-exception v0

    .line 450
    sget-object v10, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 451
    .line 452
    new-instance v11, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v12, "encode nickname exception -> "

    .line 458
    .line 459
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    const-string v11, "DiscoverResource"

    .line 474
    .line 475
    invoke-virtual {v10, v11, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    :goto_5
    const-string/jumbo v0, "userCode="

    .line 479
    .line 480
    .line 481
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v0, "&nickname="

    .line 492
    .line 493
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    const-string/jumbo v3, "toString(...)"

    .line 507
    .line 508
    .line 509
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v0, v9, v6, v7, v8}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    move-result v3

    .line 516
    if-eqz v3, :cond_d

    .line 517
    .line 518
    invoke-static {v0, v2}, Lkotlin/text/StringsKt;->B1(Ljava/lang/String;I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    :cond_d
    return-object v0

    .line 523
    :cond_e
    :goto_6
    return-object v3
.end method

.method public final getContentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getContentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentValueName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentValueName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCoverId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMarketingCampaignResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecommendId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayResponse()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isActBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isBrandAdBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isH5BrowserBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 12
    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method public final isH5WebViewBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isProgrammaticAdBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->PROGRAMMATIC_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final isShortsBanner()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final setContentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setContentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setContentValueName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentValueName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCoverId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->coverId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMarketingCampaignResponse(Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->moduleId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayResponse(Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    return-void
.end method

.method public final toActResource(ILjava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 27
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 4
    .line 5
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, ""

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-eq v1, v2, :cond_5

    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_OFFICIAL:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eq v1, v2, :cond_5

    .line 23
    .line 24
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->H5_BROWSER_THIRD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eq v1, v2, :cond_5

    .line 31
    .line 32
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->BRAND_AD:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ne v1, v2, :cond_0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->MARKETING_CAMPAIGN:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eq v1, v2, :cond_4

    .line 48
    .line 49
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->COMBINATION_ACT:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-ne v1, v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/act/SkipType;->SHORTS:Lcom/startshorts/androidplayer/manager/act/SkipType;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/act/SkipType;->getType()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-ne v1, v2, :cond_3

    .line 65
    .line 66
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    :goto_0
    move-object v8, v1

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    move-object v8, v4

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    move-object v8, v3

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;->getLinkUrl()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_0

    .line 89
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentUrl:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :goto_3
    iget v7, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 93
    .line 94
    iget-object v14, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->coverId:Ljava/lang/String;

    .line 95
    .line 96
    new-instance v1, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 97
    .line 98
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 102
    .line 103
    if-eqz v2, :cond_6

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_4

    .line 110
    :cond_6
    move-object v2, v4

    .line 111
    :goto_4
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->setCampaignId(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 115
    .line 116
    if-eqz v2, :cond_7

    .line 117
    .line 118
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;->getCampaignName()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    :cond_7
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->setCampaignName(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    iget v2, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 128
    .line 129
    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 130
    .line 131
    if-eqz v4, :cond_9

    .line 132
    .line 133
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-nez v4, :cond_8

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_8
    move-object/from16 v23, v4

    .line 141
    .line 142
    goto :goto_6

    .line 143
    :cond_9
    :goto_5
    move-object/from16 v23, v3

    .line 144
    .line 145
    :goto_6
    new-instance v3, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 146
    .line 147
    move-object v5, v3

    .line 148
    const/4 v6, -0x1

    .line 149
    const/4 v9, 0x1

    .line 150
    const-wide/16 v10, -0x1

    .line 151
    .line 152
    const-wide/16 v12, -0x1

    .line 153
    .line 154
    const/4 v15, 0x0

    .line 155
    const/16 v16, 0x0

    .line 156
    .line 157
    const/16 v22, 0x0

    .line 158
    .line 159
    const/16 v24, 0x0

    .line 160
    .line 161
    const v25, 0x14000

    .line 162
    .line 163
    .line 164
    const/16 v26, 0x0

    .line 165
    .line 166
    move-object/from16 v17, v1

    .line 167
    .line 168
    move/from16 v18, v2

    .line 169
    .line 170
    move/from16 v19, p1

    .line 171
    .line 172
    move-object/from16 v20, p2

    .line 173
    .line 174
    move-object/from16 v21, p3

    .line 175
    .line 176
    invoke-direct/range {v5 .. v26}, Lcom/startshorts/androidplayer/bean/act/ActResource;-><init>(IILjava/lang/String;IJJLjava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 177
    .line 178
    .line 179
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DiscoverResource(contentType="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentType:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", coverId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->coverId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", contentUrl="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", contentValueName="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->contentValueName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", shortPlayResponse="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->shortPlayResponse:Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", marketingCampaignResponse="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->marketingCampaignResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverAct;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", recommendId="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->recommendId:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x29

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
