.class public final Lhe/h;
.super Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;
.source "MetaInstallReferrerParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhe/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final d:Lhe/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhe/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhe/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lhe/h;->d:Lhe/h$a;

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

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
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "data"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
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
    const-string v1, "info"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 15
    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "MetaInstallReferrerParser decodedInfo -> "

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v9, "CampaignNewTag"

    .line 34
    .line 35
    invoke-virtual {v1, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "&"

    .line 42
    .line 43
    filled-new-array {v1}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v7, 0x6

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v5, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/lang/Iterable;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x2

    .line 66
    const/4 v5, 0x0

    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    move-object v7, v3

    .line 75
    check-cast v7, Ljava/lang/String;

    .line 76
    .line 77
    const-string/jumbo v8, "utm_content"

    .line 78
    .line 79
    .line 80
    invoke-static {v7, v8, v5, v4, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_0

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    move-object v3, v6

    .line 88
    :goto_0
    move-object v10, v3

    .line 89
    check-cast v10, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v10, :cond_d

    .line 92
    .line 93
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_2

    .line 98
    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_2
    const-string v1, "="

    .line 102
    .line 103
    filled-new-array {v1}, [Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const/4 v14, 0x6

    .line 108
    const/4 v15, 0x0

    .line 109
    const/4 v12, 0x0

    .line 110
    const/4 v13, 0x0

    .line 111
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/String;

    .line 121
    .line 122
    sget-object v7, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 123
    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v10, "utmContentInfo -> "

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v7, v9, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Lorg/json/JSONObject;

    .line 146
    .line 147
    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "source"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    const-string v8, "data"

    .line 158
    .line 159
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    const-string v10, "nonce"

    .line 164
    .line 165
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    sget-object v10, Lfk/u;->a:Lfk/u;

    .line 170
    .line 171
    sget v11, Lcom/startshorts/androidplayer/R$string;->fb_parse_key:I

    .line 172
    .line 173
    invoke-virtual {v10, v11}, Lfk/u;->d(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    invoke-static {v10, v1, v8}, Lhk/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    const-string v10, "MetaInstallReferrerParser decrypt result -> "

    .line 187
    .line 188
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v7, v9, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    if-eqz v1, :cond_b

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    if-nez v7, :cond_3

    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    .line 212
    .line 213
    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string v1, "campaign_group_name"

    .line 217
    .line 218
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    const-string v1, "_"

    .line 226
    .line 227
    filled-new-array {v1}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v11

    .line 231
    const/4 v14, 0x6

    .line 232
    const/4 v15, 0x0

    .line 233
    const/4 v12, 0x0

    .line 234
    const/4 v13, 0x0

    .line 235
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Ljava/lang/Iterable;

    .line 240
    .line 241
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    const-string/jumbo v8, "shortid"

    .line 250
    .line 251
    .line 252
    if-eqz v7, :cond_5

    .line 253
    .line 254
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    move-object v10, v7

    .line 259
    check-cast v10, Ljava/lang/String;

    .line 260
    .line 261
    invoke-static {v10, v8, v5, v4, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    if-eqz v10, :cond_4

    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_5
    move-object v7, v6

    .line 269
    :goto_1
    move-object v10, v7

    .line 270
    check-cast v10, Ljava/lang/String;

    .line 271
    .line 272
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 273
    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string/jumbo v7, "shortIdInfo -> "

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v1, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    if-eqz v10, :cond_9

    .line 296
    .line 297
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_6

    .line 302
    .line 303
    goto :goto_2

    .line 304
    :cond_6
    if-eqz p2, :cond_7

    .line 305
    .line 306
    invoke-static/range {p1 .. p1}, Ljk/v;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v0, v1, v10}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    :cond_7
    const-string v1, "-"

    .line 314
    .line 315
    filled-new-array {v1}, [Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v11

    .line 319
    const/4 v14, 0x6

    .line 320
    const/4 v15, 0x0

    .line 321
    const/4 v12, 0x0

    .line 322
    const/4 v13, 0x0

    .line 323
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-eqz v2, :cond_8

    .line 336
    .line 337
    new-instance v6, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Lhe/h;->a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->getValue()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    check-cast v1, Ljava/lang/String;

    .line 352
    .line 353
    invoke-static {v1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    move-result v12

    .line 365
    const-string v9, ""

    .line 366
    .line 367
    const/4 v10, -0x1

    .line 368
    const-string v11, ""

    .line 369
    .line 370
    move-object v7, v6

    .line 371
    invoke-direct/range {v7 .. v12}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 372
    .line 373
    .line 374
    :cond_8
    return-object v6

    .line 375
    :cond_9
    :goto_2
    if-eqz p2, :cond_a

    .line 376
    .line 377
    const-string/jumbo v1, "shortIdInfo is null"

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    :cond_a
    return-object v6

    .line 384
    :cond_b
    :goto_3
    if-eqz p2, :cond_c

    .line 385
    .line 386
    const-string v1, "decryptResult is null"

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_c
    return-object v6

    .line 392
    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    .line 393
    .line 394
    const-string v1, "keyValue is null"

    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/parser/BaseCampaignParser;->h(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :cond_e
    return-object v6
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MetaInstallReferrerParser"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;->META_INSTALL_REFERRER:Lcom/startshorts/androidplayer/manager/attribution/parser/CampaignParserPriority;

    .line 2
    .line 3
    return-object v0
.end method
