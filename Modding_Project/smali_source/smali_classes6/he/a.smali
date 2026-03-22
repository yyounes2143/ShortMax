.class public final Lhe/a;
.super Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;
.source "AFConversionDataParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lhe/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhe/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhe/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhe/a;->d:Lhe/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "deeplink"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "af_dp"

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "campaign"

    .line 26
    .line 27
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method protected k(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "info"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "AFConversionDataParser info -> "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "CampaignNewTag"

    .line 30
    .line 31
    invoke-virtual {v2, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v3, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v5, "deeplink"

    .line 40
    .line 41
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const-string v7, ""

    .line 46
    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v5, "af_dp"

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_1

    .line 61
    .line 62
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v5, v7

    .line 68
    :goto_0
    const-string v6, "campaign"

    .line 69
    .line 70
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    if-eqz v8, :cond_2

    .line 75
    .line 76
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    move-object v8, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object v8, v7

    .line 83
    :goto_1
    const/4 v3, 0x0

    .line 84
    if-eqz v5, :cond_3

    .line 85
    .line 86
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-nez v6, :cond_4

    .line 91
    .line 92
    :cond_3
    if-eqz v8, :cond_f

    .line 93
    .line 94
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-nez v6, :cond_4

    .line 99
    .line 100
    goto/16 :goto_9

    .line 101
    .line 102
    :cond_4
    const/16 v6, 0x29

    .line 103
    .line 104
    const-string v14, ") shortsId("

    .line 105
    .line 106
    const-string v15, "adSource("

    .line 107
    .line 108
    const-string/jumbo v13, "shortid"

    .line 109
    .line 110
    .line 111
    if-eqz v5, :cond_8

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-nez v9, :cond_5

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_5
    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v8, "decodedDeepLink -> "

    .line 130
    .line 131
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    if-eqz v5, :cond_6

    .line 153
    .line 154
    invoke-static {v5}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    move-object v5, v3

    .line 164
    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    if-nez v1, :cond_7

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_7
    move-object v7, v1

    .line 172
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v2, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string/jumbo v2, "shortid:"

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v7, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :cond_8
    :goto_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    const-string v2, "_"

    .line 226
    .line 227
    filled-new-array {v2}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    const/4 v12, 0x6

    .line 232
    const/4 v2, 0x0

    .line 233
    const/4 v10, 0x0

    .line 234
    const/4 v11, 0x0

    .line 235
    move-object v5, v13

    .line 236
    move-object v13, v2

    .line 237
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    check-cast v2, Ljava/lang/Iterable;

    .line 242
    .line 243
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_a

    .line 252
    .line 253
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    move-object v8, v7

    .line 258
    check-cast v8, Ljava/lang/String;

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x2

    .line 262
    invoke-static {v8, v5, v9, v10, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    if-eqz v8, :cond_9

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_a
    move-object v7, v3

    .line 270
    :goto_5
    check-cast v7, Ljava/lang/String;

    .line 271
    .line 272
    if-eqz v7, :cond_c

    .line 273
    .line 274
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-nez v2, :cond_b

    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_b
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 282
    .line 283
    new-instance v5, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string/jumbo v8, "shortIdInfo -> "

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v5, "-"

    .line 305
    .line 306
    filled-new-array {v5}, [Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    const/4 v12, 0x6

    .line 311
    const/4 v13, 0x0

    .line 312
    const/4 v10, 0x0

    .line 313
    const/4 v11, 0x0

    .line 314
    move-object v8, v7

    .line 315
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    const/4 v8, 0x1

    .line 320
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    check-cast v5, Ljava/lang/String;

    .line 325
    .line 326
    invoke-static/range {p1 .. p1}, Ljk/v;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    invoke-virtual {v2, v4, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v1, v7}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_c
    :goto_6
    move-object v5, v3

    .line 362
    :goto_7
    if-eqz v5, :cond_e

    .line 363
    .line 364
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_d

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_d
    new-instance v3, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 372
    .line 373
    invoke-virtual/range {p0 .. p0}, Lhe/a;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v7

    .line 381
    const-string v10, ""

    .line 382
    .line 383
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v11

    .line 387
    const-string v8, ""

    .line 388
    .line 389
    const/4 v9, -0x1

    .line 390
    move-object v6, v3

    .line 391
    invoke-direct/range {v6 .. v11}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    :cond_e
    :goto_8
    return-object v3

    .line 395
    :cond_f
    :goto_9
    const-string v1, "deepLink and campaign is null"

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-object v3
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AFConversionDataParser"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AF_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    return-object v0
.end method
