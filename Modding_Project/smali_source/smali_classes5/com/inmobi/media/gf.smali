.class public final Lcom/inmobi/media/gf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/lf;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    const-string v0, "visibilityTracker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "isPaused"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/inmobi/media/gf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    new-instance p2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p2, p0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 29
    .line 30
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p0, Lcom/inmobi/media/gf;->d:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/inmobi/media/gf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/inmobi/media/gf;->d:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/inmobi/media/lf;

    .line 19
    .line 20
    if-eqz v1, :cond_14

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    iput-boolean v3, v1, Lcom/inmobi/media/lf;->m:Z

    .line 24
    .line 25
    iget-object v4, v1, Lcom/inmobi/media/lf;->a:Ljava/util/WeakHashMap;

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_14

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Landroid/view/View;

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Lcom/inmobi/media/if;

    .line 58
    .line 59
    iget v7, v5, Lcom/inmobi/media/if;->a:I

    .line 60
    .line 61
    iget-object v8, v5, Lcom/inmobi/media/if;->c:Landroid/view/View;

    .line 62
    .line 63
    iget-object v5, v5, Lcom/inmobi/media/if;->d:Ljava/lang/Object;

    .line 64
    .line 65
    iget-byte v9, v1, Lcom/inmobi/media/lf;->d:B

    .line 66
    .line 67
    const/4 v10, 0x1

    .line 68
    if-ne v9, v10, :cond_2

    .line 69
    .line 70
    iget-object v9, v1, Lcom/inmobi/media/lf;->b:Lcom/inmobi/media/ff;

    .line 71
    .line 72
    invoke-interface {v9, v8, v6, v7, v5}, Lcom/inmobi/media/ff;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_1

    .line 77
    .line 78
    invoke-interface {v9, v6, v6, v7}, Lcom/inmobi/media/ff;->a(Landroid/view/View;Landroid/view/View;I)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    iget-object v5, v0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v5, v0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v11, 0x2

    .line 97
    if-ne v9, v11, :cond_12

    .line 98
    .line 99
    iget-object v9, v1, Lcom/inmobi/media/lf;->b:Lcom/inmobi/media/ff;

    .line 100
    .line 101
    const-string v12, "null cannot be cast to non-null type com.inmobi.ads.viewability.inmobi.HtmlPollingVisibilityTracker.HtmlVisibilityChecker"

    .line 102
    .line 103
    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    check-cast v9, Lcom/inmobi/media/W4;

    .line 107
    .line 108
    check-cast v9, Lcom/inmobi/media/P4;

    .line 109
    .line 110
    invoke-virtual {v9, v8, v6, v7, v5}, Lcom/inmobi/media/P4;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-virtual {v9, v6, v6, v7}, Lcom/inmobi/media/P4;->a(Landroid/view/View;Landroid/view/View;I)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    const-string v8, "view"

    .line 119
    .line 120
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    instance-of v8, v6, Lcom/inmobi/media/ec;

    .line 124
    .line 125
    if-nez v8, :cond_3

    .line 126
    .line 127
    goto/16 :goto_c

    .line 128
    .line 129
    :cond_3
    new-instance v8, Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 135
    .line 136
    .line 137
    move-result v9

    .line 138
    if-nez v9, :cond_4

    .line 139
    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_4
    move-object v9, v6

    .line 143
    check-cast v9, Lcom/inmobi/media/ec;

    .line 144
    .line 145
    new-array v12, v11, [I

    .line 146
    .line 147
    invoke-virtual {v9, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v9}, Lcom/inmobi/media/ec;->getViewableFrameArray()[I

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    aget v14, v12, v3

    .line 155
    .line 156
    if-eqz v13, :cond_5

    .line 157
    .line 158
    aget v15, v13, v3

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    move v15, v3

    .line 162
    :goto_1
    add-int/2addr v14, v15

    .line 163
    aget v12, v12, v10

    .line 164
    .line 165
    if-eqz v13, :cond_6

    .line 166
    .line 167
    aget v15, v13, v10

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move v15, v3

    .line 171
    :goto_2
    add-int/2addr v12, v15

    .line 172
    new-instance v15, Landroid/graphics/Rect;

    .line 173
    .line 174
    if-eqz v13, :cond_7

    .line 175
    .line 176
    aget v16, v13, v11

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    move/from16 v16, v3

    .line 180
    .line 181
    :goto_3
    add-int v2, v14, v16

    .line 182
    .line 183
    const/16 v16, 0x3

    .line 184
    .line 185
    if-eqz v13, :cond_8

    .line 186
    .line 187
    aget v13, v13, v16

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_8
    move v13, v3

    .line 191
    :goto_4
    add-int/2addr v13, v12

    .line 192
    invoke-direct {v15, v14, v12, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v8, v15}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_10

    .line 200
    .line 201
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 210
    .line 211
    invoke-static {v2, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    const-string v8, "createBitmap(...)"

    .line 216
    .line 217
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    new-instance v8, Landroid/graphics/Canvas;

    .line 221
    .line 222
    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 223
    .line 224
    .line 225
    new-instance v12, Landroid/graphics/Paint;

    .line 226
    .line 227
    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 228
    .line 229
    .line 230
    const/4 v13, 0x0

    .line 231
    invoke-virtual {v8, v2, v13, v13, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v9, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    int-to-float v8, v8

    .line 242
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    div-float/2addr v8, v12

    .line 247
    invoke-static {v8}, Lcom/inmobi/media/B2;->b(F)I

    .line 248
    .line 249
    .line 250
    move-result v8

    .line 251
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    int-to-float v12, v12

    .line 256
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    div-float/2addr v12, v13

    .line 261
    invoke-static {v12}, Lcom/inmobi/media/B2;->b(F)I

    .line 262
    .line 263
    .line 264
    move-result v12

    .line 265
    invoke-static {v2, v8, v12, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    const-string v8, "createScaledBitmap(...)"

    .line 270
    .line 271
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v9}, Lcom/inmobi/media/ec;->getViewableFrameArray()[I

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    if-eqz v8, :cond_9

    .line 283
    .line 284
    aget v13, v8, v3

    .line 285
    .line 286
    goto :goto_5

    .line 287
    :cond_9
    move v13, v3

    .line 288
    :goto_5
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 293
    .line 294
    .line 295
    move-result v13

    .line 296
    if-eqz v8, :cond_a

    .line 297
    .line 298
    aget v14, v8, v10

    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_a
    move v14, v3

    .line 302
    :goto_6
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    .line 303
    .line 304
    .line 305
    move-result v13

    .line 306
    if-eqz v8, :cond_b

    .line 307
    .line 308
    aget v11, v8, v11

    .line 309
    .line 310
    goto :goto_7

    .line 311
    :cond_b
    move v11, v3

    .line 312
    :goto_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 313
    .line 314
    .line 315
    move-result v14

    .line 316
    sub-int/2addr v14, v12

    .line 317
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    .line 318
    .line 319
    .line 320
    move-result v11

    .line 321
    if-eqz v8, :cond_c

    .line 322
    .line 323
    aget v8, v8, v16

    .line 324
    .line 325
    goto :goto_8

    .line 326
    :cond_c
    move v8, v3

    .line 327
    :goto_8
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 328
    .line 329
    .line 330
    move-result v14

    .line 331
    sub-int/2addr v14, v13

    .line 332
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-lez v11, :cond_e

    .line 337
    .line 338
    if-gtz v8, :cond_d

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_d
    invoke-static {v2, v12, v13, v11, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    move-object/from16 v17, v2

    .line 346
    .line 347
    goto :goto_a

    .line 348
    :cond_e
    :goto_9
    const/16 v17, 0x0

    .line 349
    .line 350
    :goto_a
    if-eqz v17, :cond_10

    .line 351
    .line 352
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    .line 357
    .line 358
    .line 359
    move-result v8

    .line 360
    mul-int/2addr v8, v2

    .line 361
    new-array v2, v8, [I

    .line 362
    .line 363
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    .line 364
    .line 365
    .line 366
    move-result v20

    .line 367
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    .line 368
    .line 369
    .line 370
    move-result v23

    .line 371
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    .line 372
    .line 373
    .line 374
    move-result v24

    .line 375
    const/16 v21, 0x0

    .line 376
    .line 377
    const/16 v22, 0x0

    .line 378
    .line 379
    const/16 v19, 0x0

    .line 380
    .line 381
    move-object/from16 v18, v2

    .line 382
    .line 383
    invoke-virtual/range {v17 .. v24}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 384
    .line 385
    .line 386
    move v11, v3

    .line 387
    move v12, v11

    .line 388
    :goto_b
    if-ge v11, v8, :cond_10

    .line 389
    .line 390
    aget v13, v2, v11

    .line 391
    .line 392
    const/high16 v14, -0x1000000

    .line 393
    .line 394
    if-le v13, v14, :cond_f

    .line 395
    .line 396
    if-gez v13, :cond_f

    .line 397
    .line 398
    add-int/lit8 v12, v12, 0x1

    .line 399
    .line 400
    invoke-virtual {v9}, Lcom/inmobi/media/ec;->getMinimumPixelsPainted()I

    .line 401
    .line 402
    .line 403
    move-result v13

    .line 404
    if-lt v12, v13, :cond_f

    .line 405
    .line 406
    goto :goto_d

    .line 407
    :cond_f
    add-int/lit8 v11, v11, 0x1

    .line 408
    .line 409
    goto :goto_b

    .line 410
    :cond_10
    :goto_c
    move v10, v3

    .line 411
    :goto_d
    if-eqz v5, :cond_11

    .line 412
    .line 413
    if-eqz v7, :cond_11

    .line 414
    .line 415
    if-eqz v10, :cond_11

    .line 416
    .line 417
    iget-object v2, v0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 418
    .line 419
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_11
    iget-object v2, v0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 425
    .line 426
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto/16 :goto_0

    .line 430
    .line 431
    :cond_12
    iget-object v2, v1, Lcom/inmobi/media/lf;->b:Lcom/inmobi/media/ff;

    .line 432
    .line 433
    invoke-interface {v2, v8, v6, v7, v5}, Lcom/inmobi/media/ff;->a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-eqz v5, :cond_13

    .line 438
    .line 439
    invoke-interface {v2, v6, v6, v7}, Lcom/inmobi/media/ff;->a(Landroid/view/View;Landroid/view/View;I)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_13

    .line 444
    .line 445
    iget-object v2, v0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    goto/16 :goto_0

    .line 451
    .line 452
    :cond_13
    iget-object v2, v0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 453
    .line 454
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    goto/16 :goto_0

    .line 458
    .line 459
    :cond_14
    if-eqz v1, :cond_15

    .line 460
    .line 461
    iget-object v2, v1, Lcom/inmobi/media/lf;->j:Lcom/inmobi/media/hf;

    .line 462
    .line 463
    goto :goto_e

    .line 464
    :cond_15
    const/4 v2, 0x0

    .line 465
    :goto_e
    if-eqz v2, :cond_16

    .line 466
    .line 467
    iget-object v3, v0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 468
    .line 469
    iget-object v4, v0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 470
    .line 471
    invoke-interface {v2, v3, v4}, Lcom/inmobi/media/hf;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 472
    .line 473
    .line 474
    :cond_16
    iget-object v2, v0, Lcom/inmobi/media/gf;->b:Ljava/util/ArrayList;

    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 477
    .line 478
    .line 479
    iget-object v2, v0, Lcom/inmobi/media/gf;->c:Ljava/util/ArrayList;

    .line 480
    .line 481
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 482
    .line 483
    .line 484
    if-eqz v1, :cond_17

    .line 485
    .line 486
    invoke-virtual {v1}, Lcom/inmobi/media/lf;->d()V

    .line 487
    .line 488
    .line 489
    :cond_17
    return-void
.end method
