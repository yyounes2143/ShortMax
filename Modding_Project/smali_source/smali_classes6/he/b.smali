.class public final Lhe/b;
.super Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;
.source "AJConversionDataParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lhe/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhe/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhe/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhe/b;->d:Lhe/b$a;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

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
    const-string v0, "adj_deep_link"

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
    const-string v0, "campaign"

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x1

    .line 26
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
    const-string v4, "AJConversionDataParser info -> "

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
    const-string v5, "adj_deep_link"

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
    move-object v5, v7

    .line 55
    :goto_0
    const-string v6, "campaign"

    .line 56
    .line 57
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    if-eqz v8, :cond_1

    .line 62
    .line 63
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object v8, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move-object v8, v7

    .line 70
    :goto_1
    const/4 v3, 0x0

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-nez v6, :cond_3

    .line 78
    .line 79
    :cond_2
    if-eqz v8, :cond_e

    .line 80
    .line 81
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    if-nez v6, :cond_3

    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_3
    const/16 v6, 0x29

    .line 90
    .line 91
    const-string v14, ") shortsId("

    .line 92
    .line 93
    const-string v15, "AJConversionDataParser adSource("

    .line 94
    .line 95
    const-string/jumbo v13, "shortid"

    .line 96
    .line 97
    .line 98
    if-eqz v5, :cond_7

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v8, "AJConversionDataParser decodedDeepLink -> "

    .line 117
    .line 118
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    invoke-static {v5}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    goto :goto_2

    .line 150
    :cond_5
    move-object v5, v3

    .line 151
    :goto_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    if-nez v1, :cond_6

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_6
    move-object v7, v1

    .line 159
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v2, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string/jumbo v2, "shortid:"

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v7, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_7

    .line 208
    .line 209
    :cond_7
    :goto_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const-string v2, "_"

    .line 213
    .line 214
    filled-new-array {v2}, [Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    const/4 v12, 0x6

    .line 219
    const/4 v2, 0x0

    .line 220
    const/4 v10, 0x0

    .line 221
    const/4 v11, 0x0

    .line 222
    move-object v5, v13

    .line 223
    move-object v13, v2

    .line 224
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    check-cast v2, Ljava/lang/Iterable;

    .line 229
    .line 230
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    if-eqz v7, :cond_9

    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    move-object v8, v7

    .line 245
    check-cast v8, Ljava/lang/String;

    .line 246
    .line 247
    const/4 v9, 0x0

    .line 248
    const/4 v10, 0x2

    .line 249
    invoke-static {v8, v5, v9, v10, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v8

    .line 253
    if-eqz v8, :cond_8

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_9
    move-object v7, v3

    .line 257
    :goto_5
    check-cast v7, Ljava/lang/String;

    .line 258
    .line 259
    if-eqz v7, :cond_b

    .line 260
    .line 261
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    if-nez v2, :cond_a

    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_a
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 269
    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v8, "AJConversionDataParser shortIdInfo -> "

    .line 276
    .line 277
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v2, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    const-string v5, "-"

    .line 291
    .line 292
    filled-new-array {v5}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v9

    .line 296
    const/4 v12, 0x6

    .line 297
    const/4 v13, 0x0

    .line 298
    const/4 v10, 0x0

    .line 299
    const/4 v11, 0x0

    .line 300
    move-object v8, v7

    .line 301
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    const/4 v9, 0x1

    .line 310
    if-le v8, v9, :cond_b

    .line 311
    .line 312
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    check-cast v8, Ljava/lang/String;

    .line 317
    .line 318
    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v8

    .line 322
    if-eqz v8, :cond_b

    .line 323
    .line 324
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v5

    .line 328
    check-cast v5, Ljava/lang/String;

    .line 329
    .line 330
    invoke-static/range {p1 .. p1}, Ljk/v;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-virtual {v2, v4, v6}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0, v1, v7}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto :goto_7

    .line 365
    :cond_b
    :goto_6
    move-object v5, v3

    .line 366
    :goto_7
    if-eqz v5, :cond_c

    .line 367
    .line 368
    invoke-static {v5}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    if-eqz v1, :cond_c

    .line 377
    .line 378
    invoke-static {v1}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    goto :goto_8

    .line 383
    :cond_c
    move-object v1, v3

    .line 384
    :goto_8
    if-eqz v1, :cond_d

    .line 385
    .line 386
    new-instance v3, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 387
    .line 388
    invoke-virtual/range {p0 .. p0}, Lhe/b;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    const-string v8, ""

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    const-string v6, ""

    .line 403
    .line 404
    const/4 v7, -0x1

    .line 405
    move-object v4, v3

    .line 406
    invoke-direct/range {v4 .. v9}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 407
    .line 408
    .line 409
    :cond_d
    return-object v3

    .line 410
    :cond_e
    :goto_9
    const-string v1, "deepLink and campaign is null"

    .line 411
    .line 412
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    return-object v3
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AJConversionDataParser"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    return-object v0
.end method
