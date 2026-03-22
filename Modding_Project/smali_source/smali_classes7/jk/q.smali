.class public final Ljk/q;
.super Ljava/lang/Object;
.source "PurchaseExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lzc/f;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 21
    .param p0    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lzc/f;->a()Lzc/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lzc/c;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "payPendingCoinSku -> "

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v9, "Purchase"

    .line 41
    .line 42
    invoke-virtual {v3, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_8

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto/16 :goto_5

    .line 54
    .line 55
    :cond_1
    :try_start_0
    const-string v3, "prid"

    .line 56
    .line 57
    const/4 v10, 0x2

    .line 58
    const/4 v11, 0x0

    .line 59
    invoke-static {v0, v3, v11, v10, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const-string v12, "pay_pending_coin_sku"

    .line 64
    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    :try_start_1
    const-class v3, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;

    .line 68
    .line 69
    invoke-static {v0, v3}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;

    .line 74
    .line 75
    if-nez v3, :cond_2

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_2
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/PayPendingCoinSku;->parse()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lzc/f;->d()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1, v11}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 96
    .line 97
    const-string v14, "purchased_sku_parse"

    .line 98
    .line 99
    new-instance v15, Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v15, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    const/16 v18, 0x4

    .line 110
    .line 111
    const/16 v19, 0x0

    .line 112
    .line 113
    const-wide/16 v16, 0x0

    .line 114
    .line 115
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    move-object v2, v3

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :cond_3
    :goto_1
    return-object v2

    .line 124
    :cond_4
    const-string v4, "["

    .line 125
    .line 126
    const-string v5, ""

    .line 127
    .line 128
    const/4 v7, 0x4

    .line 129
    const/4 v8, 0x0

    .line 130
    const/4 v6, 0x0

    .line 131
    move-object v3, v0

    .line 132
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const-string v14, "]"

    .line 137
    .line 138
    const-string v15, ""

    .line 139
    .line 140
    const/16 v17, 0x4

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    new-instance v4, Lkotlin/text/Regex;

    .line 151
    .line 152
    const-string v5, "\\s"

    .line 153
    .line 154
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string v5, ""

    .line 158
    .line 159
    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v13

    .line 163
    const-string v3, ","

    .line 164
    .line 165
    filled-new-array {v3}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    const/16 v17, 0x6

    .line 170
    .line 171
    const/16 v18, 0x0

    .line 172
    .line 173
    const/4 v15, 0x0

    .line 174
    const/16 v16, 0x0

    .line 175
    .line 176
    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    const/4 v5, 0x6

    .line 185
    const/4 v6, 0x4

    .line 186
    const/4 v7, 0x3

    .line 187
    const/4 v8, 0x1

    .line 188
    const/16 v13, 0x8

    .line 189
    .line 190
    const/4 v14, 0x5

    .line 191
    if-lt v4, v13, :cond_5

    .line 192
    .line 193
    new-instance v4, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 194
    .line 195
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-static {v3, v11}, Ljk/m;->b(Ljava/util/List;I)I

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    invoke-virtual {v4, v15}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v8}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v3, v10}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuModelConfigId(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v3, v7}, Ljk/m;->b(Ljava/util/List;I)I

    .line 220
    .line 221
    .line 222
    move-result v7

    .line 223
    invoke-virtual {v4, v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPrizeId(I)V

    .line 224
    .line 225
    .line 226
    invoke-static {v3, v6}, Ljk/m;->a(Ljava/util/List;I)F

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRecharge(F)V

    .line 231
    .line 232
    .line 233
    invoke-static {v3, v14}, Ljk/m;->b(Ljava/util/List;I)I

    .line 234
    .line 235
    .line 236
    move-result v6

    .line 237
    invoke-virtual {v4, v6}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->setShortsId(I)V

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v5}, Ljk/m;->b(Ljava/util/List;I)I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->setDramaId(I)V

    .line 245
    .line 246
    .line 247
    const/4 v5, 0x7

    .line 248
    invoke-static {v3, v5}, Ljk/m;->b(Ljava/util/List;I)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->setUnlockingEpisodes(I)V

    .line 253
    .line 254
    .line 255
    invoke-static {v3, v13}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setUserId(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {p0 .. p0}, Lzc/f;->d()Ljava/util/List;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1, v11}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sget-object v13, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 274
    .line 275
    const-string v14, "purchased_sku_parse"

    .line 276
    .line 277
    new-instance v15, Landroid/os/Bundle;

    .line 278
    .line 279
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v15, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 286
    .line 287
    const/16 v18, 0x4

    .line 288
    .line 289
    const/16 v19, 0x0

    .line 290
    .line 291
    const-wide/16 v16, 0x0

    .line 292
    .line 293
    invoke-static/range {v13 .. v19}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    return-object v4

    .line 297
    :cond_5
    move-object v4, v3

    .line 298
    check-cast v4, Ljava/util/Collection;

    .line 299
    .line 300
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-nez v4, :cond_8

    .line 305
    .line 306
    invoke-static {v3, v11}, Ljk/m;->b(Ljava/util/List;I)I

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    const/16 v13, 0xc

    .line 311
    .line 312
    if-ne v4, v13, :cond_6

    .line 313
    .line 314
    new-instance v13, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 315
    .line 316
    invoke-direct {v13}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-static {v3, v14}, Ljk/m;->b(Ljava/util/List;I)I

    .line 320
    .line 321
    .line 322
    move-result v15

    .line 323
    invoke-virtual {v13, v15}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->setShortPlayId(I)V

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :cond_6
    new-instance v13, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 328
    .line 329
    invoke-direct {v13}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;-><init>()V

    .line 330
    .line 331
    .line 332
    :goto_2
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuType(I)V

    .line 333
    .line 334
    .line 335
    invoke-static {v3, v8}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {v3, v10}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuModelConfigId(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    invoke-static {v3, v7}, Ljk/m;->b(Ljava/util/List;I)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPrizeId(I)V

    .line 354
    .line 355
    .line 356
    invoke-static {v3, v6}, Ljk/m;->a(Ljava/util/List;I)F

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    invoke-virtual {v13, v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setRecharge(F)V

    .line 361
    .line 362
    .line 363
    instance-of v4, v13, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 364
    .line 365
    if-eqz v4, :cond_7

    .line 366
    .line 367
    goto :goto_3

    .line 368
    :cond_7
    move v5, v14

    .line 369
    :goto_3
    invoke-static {v3, v5}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-virtual {v13, v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setUserId(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {p0 .. p0}, Lzc/f;->d()Ljava/util/List;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-static {v1, v11}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-virtual {v13, v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    sget-object v14, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 388
    .line 389
    const-string v15, "purchased_sku_parse"

    .line 390
    .line 391
    new-instance v1, Landroid/os/Bundle;

    .line 392
    .line 393
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v1, v12, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 400
    .line 401
    const/16 v19, 0x4

    .line 402
    .line 403
    const/16 v20, 0x0

    .line 404
    .line 405
    const-wide/16 v17, 0x0

    .line 406
    .line 407
    move-object/from16 v16, v1

    .line 408
    .line 409
    invoke-static/range {v14 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 410
    .line 411
    .line 412
    return-object v13

    .line 413
    :goto_4
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 414
    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .line 419
    .line 420
    const-string v4, "parseCoinSku exception -> "

    .line 421
    .line 422
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-virtual {v1, v9, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :cond_8
    :goto_5
    return-object v2
.end method

.method public static final b(Lzc/f;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 17
    .param p0    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Lzc/f;->a()Lzc/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lzc/c;->a()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v0, v2

    .line 21
    :goto_0
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "payPendingSubsSkuJson -> "

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const-string v9, "Purchase"

    .line 41
    .line 42
    invoke-virtual {v3, v9, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    goto/16 :goto_1

    .line 54
    .line 55
    :cond_1
    :try_start_0
    const-string v4, "["

    .line 56
    .line 57
    const-string v5, ""

    .line 58
    .line 59
    const/4 v7, 0x4

    .line 60
    const/4 v8, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v3, v0

    .line 63
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    const-string v11, "]"

    .line 68
    .line 69
    const-string v12, ""

    .line 70
    .line 71
    const/4 v14, 0x4

    .line 72
    const/4 v15, 0x0

    .line 73
    const/4 v13, 0x0

    .line 74
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    new-instance v4, Lkotlin/text/Regex;

    .line 79
    .line 80
    const-string v5, "\\s"

    .line 81
    .line 82
    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v5, ""

    .line 86
    .line 87
    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    const-string v3, ","

    .line 92
    .line 93
    filled-new-array {v3}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    const/4 v14, 0x6

    .line 98
    const/4 v15, 0x0

    .line 99
    const/4 v12, 0x0

    .line 100
    const/4 v13, 0x0

    .line 101
    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    move-object v4, v3

    .line 106
    check-cast v4, Ljava/util/Collection;

    .line 107
    .line 108
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    new-instance v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 115
    .line 116
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;-><init>()V

    .line 117
    .line 118
    .line 119
    const/4 v5, 0x1

    .line 120
    invoke-static {v3, v5}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setProductId(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const/4 v5, 0x2

    .line 128
    invoke-static {v3, v5}, Ljk/m;->a(Ljava/util/List;I)F

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setPayAmount(F)V

    .line 133
    .line 134
    .line 135
    const/4 v5, 0x3

    .line 136
    invoke-static {v3, v5}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSource(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const/4 v5, 0x4

    .line 144
    invoke-static {v3, v5}, Ljk/m;->b(Ljava/util/List;I)I

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setReceiveType(I)V

    .line 149
    .line 150
    .line 151
    const/4 v5, 0x5

    .line 152
    invoke-static {v3, v5}, Ljk/m;->b(Ljava/util/List;I)I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setCoins(I)V

    .line 157
    .line 158
    .line 159
    const/4 v5, 0x6

    .line 160
    invoke-static {v3, v5}, Ljk/m;->b(Ljava/util/List;I)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setBonus(Ljava/lang/Integer;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Lzc/f;->d()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const/4 v3, 0x0

    .line 176
    invoke-static {v1, v3}, Ljk/m;->c(Ljava/util/List;I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->setSkuId(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 184
    .line 185
    const-string v11, "purchased_sku_parse"

    .line 186
    .line 187
    new-instance v12, Landroid/os/Bundle;

    .line 188
    .line 189
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v1, "pay_pending_coin_sku"

    .line 193
    .line 194
    invoke-virtual {v12, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    const/4 v15, 0x4

    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    const-wide/16 v13, 0x0

    .line 203
    .line 204
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    return-object v4

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 210
    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v4, "parseSubsSku exception -> "

    .line 217
    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v1, v9, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_2
    :goto_1
    return-object v2
.end method
