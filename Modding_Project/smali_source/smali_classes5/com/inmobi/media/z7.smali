.class public final Lcom/inmobi/media/z7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/ec;

.field public final b:Ljava/lang/String;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:I

.field public h:I

.field public i:F

.field public j:Lorg/json/JSONArray;

.field public k:Landroid/view/MotionEvent;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 1

    .line 1
    const-string v0, "mListener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/z7;->a:Lcom/inmobi/media/ec;

    .line 10
    .line 11
    const-class p1, Lcom/inmobi/media/z7;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 18
    .line 19
    const p1, 0x7fffffff

    .line 20
    .line 21
    .line 22
    iput p1, p0, Lcom/inmobi/media/z7;->l:I

    .line 23
    .line 24
    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/inmobi/media/z7;->g:I

    .line 26
    .line 27
    iput p1, p0, Lcom/inmobi/media/z7;->h:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "event"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const-string v4, "TAG"

    .line 15
    .line 16
    if-eqz v3, :cond_1a

    .line 17
    .line 18
    const/4 v5, 0x5

    .line 19
    const-string v6, "\');"

    .line 20
    .line 21
    const-string v7, "movementGestureDetector"

    .line 22
    .line 23
    const/4 v8, 0x2

    .line 24
    const-string v9, " \n "

    .line 25
    .line 26
    const/4 v10, -0x1

    .line 27
    const/4 v11, 0x1

    .line 28
    if-eq v3, v11, :cond_14

    .line 29
    .line 30
    const-string v12, "Index for mPtrID1="

    .line 31
    .line 32
    const-string v13, " | Pointer count="

    .line 33
    .line 34
    const-string v14, " is "

    .line 35
    .line 36
    const/4 v15, 0x0

    .line 37
    if-eq v3, v8, :cond_e

    .line 38
    .line 39
    const/4 v8, 0x3

    .line 40
    if-eq v3, v8, :cond_d

    .line 41
    .line 42
    if-eq v3, v5, :cond_a

    .line 43
    .line 44
    const/4 v2, 0x6

    .line 45
    if-eq v3, v2, :cond_0

    .line 46
    .line 47
    goto/16 :goto_b

    .line 48
    .line 49
    :cond_0
    iget-object v2, v0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    iput v10, v0, Lcom/inmobi/media/z7;->h:I

    .line 58
    .line 59
    iget v2, v0, Lcom/inmobi/media/z7;->i:F

    .line 60
    .line 61
    const/high16 v3, 0x41f00000    # 30.0f

    .line 62
    .line 63
    cmpl-float v2, v2, v3

    .line 64
    .line 65
    const-string v3, "endEvent"

    .line 66
    .line 67
    const-string v5, "initialEvent"

    .line 68
    .line 69
    if-lez v2, :cond_5

    .line 70
    .line 71
    iget-object v2, v0, Lcom/inmobi/media/z7;->k:Landroid/view/MotionEvent;

    .line 72
    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget-object v10, v0, Lcom/inmobi/media/z7;->a:Lcom/inmobi/media/ec;

    .line 76
    .line 77
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v12, v10, Lcom/inmobi/media/ec;->e:Z

    .line 87
    .line 88
    if-nez v12, :cond_3

    .line 89
    .line 90
    invoke-virtual {v10}, Lcom/inmobi/media/ec;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    invoke-virtual {v12}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_1

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_1
    iget-object v8, v10, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 111
    .line 112
    if-eqz v8, :cond_2

    .line 113
    .line 114
    sget-object v12, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 115
    .line 116
    const-string v13, " Rotation detected "

    .line 117
    .line 118
    invoke-static {v12, v4, v13}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    move-result-object v13

    .line 122
    iget v14, v0, Lcom/inmobi/media/z7;->i:F

    .line 123
    .line 124
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v13

    .line 143
    invoke-static {v13}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    check-cast v8, Lcom/inmobi/media/A5;

    .line 148
    .line 149
    invoke-virtual {v8, v12, v13}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_2
    new-instance v8, Lorg/json/JSONArray;

    .line 153
    .line 154
    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v12, Lorg/json/JSONArray;

    .line 158
    .line 159
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-static {v13}, Lcom/inmobi/media/B2;->c(F)I

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    .line 172
    .line 173
    .line 174
    move-result v14

    .line 175
    invoke-static {v14}, Lcom/inmobi/media/B2;->c(F)I

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v14

    .line 183
    filled-new-array {v13, v14}, [Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    invoke-direct {v12, v13}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 195
    .line 196
    .line 197
    new-instance v12, Lorg/json/JSONArray;

    .line 198
    .line 199
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    invoke-static {v13}, Lcom/inmobi/media/B2;->c(F)I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    invoke-virtual {v2, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    invoke-static {v2}, Lcom/inmobi/media/B2;->c(F)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    filled-new-array {v13, v2}, [Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-direct {v12, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 235
    .line 236
    .line 237
    new-instance v2, Lorg/json/JSONArray;

    .line 238
    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 240
    .line 241
    .line 242
    move-result v12

    .line 243
    invoke-static {v12}, Lcom/inmobi/media/B2;->c(F)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v12

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    invoke-static {v13}, Lcom/inmobi/media/B2;->c(F)I

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    filled-new-array {v12, v13}, [Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    invoke-direct {v2, v12}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 275
    .line 276
    .line 277
    new-instance v2, Lorg/json/JSONArray;

    .line 278
    .line 279
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 280
    .line 281
    .line 282
    move-result v12

    .line 283
    invoke-static {v12}, Lcom/inmobi/media/B2;->c(F)I

    .line 284
    .line 285
    .line 286
    move-result v12

    .line 287
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v12

    .line 291
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    invoke-static {v13}, Lcom/inmobi/media/B2;->c(F)I

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v13

    .line 303
    filled-new-array {v12, v13}, [Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object v12

    .line 307
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 308
    .line 309
    .line 310
    move-result-object v12

    .line 311
    invoke-direct {v2, v12}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 315
    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v12, "window.imraidview.onGestureDetected(\'3\', \'"

    .line 320
    .line 321
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v10, v2}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    goto :goto_1

    .line 338
    :cond_3
    :goto_0
    iget-object v2, v10, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 339
    .line 340
    if-eqz v2, :cond_4

    .line 341
    .line 342
    sget-object v8, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    check-cast v2, Lcom/inmobi/media/A5;

    .line 348
    .line 349
    const-string v10, "Rotation gesture is disabled from config"

    .line 350
    .line 351
    invoke-virtual {v2, v8, v10}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    :cond_4
    :goto_1
    iput v15, v0, Lcom/inmobi/media/z7;->i:F

    .line 355
    .line 356
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 369
    .line 370
    .line 371
    move-result v12

    .line 372
    sub-float/2addr v2, v8

    .line 373
    mul-float/2addr v2, v2

    .line 374
    sub-float/2addr v10, v12

    .line 375
    mul-float/2addr v10, v10

    .line 376
    add-float/2addr v10, v2

    .line 377
    float-to-double v12, v10

    .line 378
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    .line 379
    .line 380
    .line 381
    move-result-wide v12

    .line 382
    double-to-int v2, v12

    .line 383
    iget v8, v0, Lcom/inmobi/media/z7;->l:I

    .line 384
    .line 385
    sub-int/2addr v2, v8

    .line 386
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    const/16 v8, 0x1f4

    .line 391
    .line 392
    if-le v2, v8, :cond_1b

    .line 393
    .line 394
    iget-object v2, v0, Lcom/inmobi/media/z7;->k:Landroid/view/MotionEvent;

    .line 395
    .line 396
    if-eqz v2, :cond_9

    .line 397
    .line 398
    iget-object v8, v0, Lcom/inmobi/media/z7;->a:Lcom/inmobi/media/ec;

    .line 399
    .line 400
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    iget-boolean v3, v8, Lcom/inmobi/media/ec;->e:Z

    .line 410
    .line 411
    if-nez v3, :cond_8

    .line 412
    .line 413
    invoke-virtual {v8}, Lcom/inmobi/media/ec;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    const/4 v5, 0x4

    .line 422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v3

    .line 430
    if-nez v3, :cond_6

    .line 431
    .line 432
    goto :goto_2

    .line 433
    :cond_6
    iget-object v3, v8, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 434
    .line 435
    if-eqz v3, :cond_7

    .line 436
    .line 437
    sget-object v5, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v7, " onScaleDetected\n "

    .line 445
    .line 446
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v2

    .line 462
    invoke-static {v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    check-cast v3, Lcom/inmobi/media/A5;

    .line 467
    .line 468
    invoke-virtual {v3, v5, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    :cond_7
    new-instance v2, Lorg/json/JSONArray;

    .line 472
    .line 473
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 474
    .line 475
    .line 476
    new-instance v3, Lorg/json/JSONArray;

    .line 477
    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 479
    .line 480
    .line 481
    move-result v4

    .line 482
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 483
    .line 484
    .line 485
    move-result v5

    .line 486
    add-float/2addr v5, v4

    .line 487
    const/4 v4, 0x2

    .line 488
    int-to-float v4, v4

    .line 489
    div-float/2addr v5, v4

    .line 490
    invoke-static {v5}, Lcom/inmobi/media/B2;->c(F)I

    .line 491
    .line 492
    .line 493
    move-result v5

    .line 494
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 499
    .line 500
    .line 501
    move-result v7

    .line 502
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    add-float/2addr v1, v7

    .line 507
    div-float/2addr v1, v4

    .line 508
    invoke-static {v1}, Lcom/inmobi/media/B2;->c(F)I

    .line 509
    .line 510
    .line 511
    move-result v1

    .line 512
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    filled-new-array {v5, v1}, [Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 528
    .line 529
    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v3, "window.imraidview.onGestureDetected(\'4\', \'"

    .line 533
    .line 534
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v8, v1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    goto :goto_3

    .line 551
    :cond_8
    :goto_2
    iget-object v1, v8, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 552
    .line 553
    if-eqz v1, :cond_9

    .line 554
    .line 555
    sget-object v2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 556
    .line 557
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    check-cast v1, Lcom/inmobi/media/A5;

    .line 561
    .line 562
    const-string v3, "Pinch gesture is disabled from config"

    .line 563
    .line 564
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    :cond_9
    :goto_3
    const v1, 0x7fffffff

    .line 568
    .line 569
    .line 570
    iput v1, v0, Lcom/inmobi/media/z7;->l:I

    .line 571
    .line 572
    goto/16 :goto_b

    .line 573
    .line 574
    :cond_a
    iget-object v3, v0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 575
    .line 576
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 583
    .line 584
    .line 585
    move-result v3

    .line 586
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    iput v3, v0, Lcom/inmobi/media/z7;->h:I

    .line 591
    .line 592
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    iput-object v3, v0, Lcom/inmobi/media/z7;->k:Landroid/view/MotionEvent;

    .line 597
    .line 598
    iget v3, v0, Lcom/inmobi/media/z7;->g:I

    .line 599
    .line 600
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    iget v4, v0, Lcom/inmobi/media/z7;->h:I

    .line 605
    .line 606
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 607
    .line 608
    .line 609
    move-result v4

    .line 610
    if-ltz v3, :cond_b

    .line 611
    .line 612
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 613
    .line 614
    .line 615
    move-result v5

    .line 616
    iput v5, v0, Lcom/inmobi/media/z7;->e:F

    .line 617
    .line 618
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    iput v3, v0, Lcom/inmobi/media/z7;->f:F

    .line 623
    .line 624
    goto :goto_4

    .line 625
    :cond_b
    sget-object v5, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 626
    .line 627
    new-instance v5, Lcom/inmobi/media/f2;

    .line 628
    .line 629
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 630
    .line 631
    new-instance v7, Ljava/lang/StringBuilder;

    .line 632
    .line 633
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    iget v8, v0, Lcom/inmobi/media/z7;->g:I

    .line 637
    .line 638
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v3

    .line 661
    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    invoke-direct {v5, v6}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 665
    .line 666
    .line 667
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    sget-object v3, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 671
    .line 672
    invoke-virtual {v3, v5}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 673
    .line 674
    .line 675
    :goto_4
    if-ltz v4, :cond_c

    .line 676
    .line 677
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 678
    .line 679
    .line 680
    move-result v2

    .line 681
    iput v2, v0, Lcom/inmobi/media/z7;->c:F

    .line 682
    .line 683
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 684
    .line 685
    .line 686
    move-result v1

    .line 687
    iput v1, v0, Lcom/inmobi/media/z7;->d:F

    .line 688
    .line 689
    goto :goto_5

    .line 690
    :cond_c
    sget-object v3, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 691
    .line 692
    new-instance v3, Lcom/inmobi/media/f2;

    .line 693
    .line 694
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 695
    .line 696
    new-instance v6, Ljava/lang/StringBuilder;

    .line 697
    .line 698
    const-string v7, "Index for mPtrID2="

    .line 699
    .line 700
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    iget v7, v0, Lcom/inmobi/media/z7;->h:I

    .line 704
    .line 705
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 718
    .line 719
    .line 720
    move-result v1

    .line 721
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    invoke-direct {v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    invoke-direct {v3, v5}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 732
    .line 733
    .line 734
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 738
    .line 739
    invoke-virtual {v1, v3}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 740
    .line 741
    .line 742
    :goto_5
    iget v1, v0, Lcom/inmobi/media/z7;->e:F

    .line 743
    .line 744
    iget v2, v0, Lcom/inmobi/media/z7;->c:F

    .line 745
    .line 746
    iget v3, v0, Lcom/inmobi/media/z7;->f:F

    .line 747
    .line 748
    iget v4, v0, Lcom/inmobi/media/z7;->d:F

    .line 749
    .line 750
    sub-float/2addr v1, v2

    .line 751
    mul-float/2addr v1, v1

    .line 752
    sub-float/2addr v3, v4

    .line 753
    mul-float/2addr v3, v3

    .line 754
    add-float/2addr v3, v1

    .line 755
    float-to-double v1, v3

    .line 756
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 757
    .line 758
    .line 759
    move-result-wide v1

    .line 760
    double-to-int v1, v1

    .line 761
    iput v1, v0, Lcom/inmobi/media/z7;->l:I

    .line 762
    .line 763
    goto/16 :goto_b

    .line 764
    .line 765
    :cond_d
    iget-object v2, v0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 766
    .line 767
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    iput v10, v0, Lcom/inmobi/media/z7;->g:I

    .line 774
    .line 775
    iput v10, v0, Lcom/inmobi/media/z7;->h:I

    .line 776
    .line 777
    goto/16 :goto_b

    .line 778
    .line 779
    :cond_e
    iget-object v3, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 780
    .line 781
    iget v4, v0, Lcom/inmobi/media/z7;->g:I

    .line 782
    .line 783
    if-eq v4, v10, :cond_13

    .line 784
    .line 785
    iget v5, v0, Lcom/inmobi/media/z7;->h:I

    .line 786
    .line 787
    if-eq v5, v10, :cond_13

    .line 788
    .line 789
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 790
    .line 791
    .line 792
    move-result v3

    .line 793
    iget v4, v0, Lcom/inmobi/media/z7;->h:I

    .line 794
    .line 795
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 796
    .line 797
    .line 798
    move-result v4

    .line 799
    if-ltz v3, :cond_f

    .line 800
    .line 801
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 802
    .line 803
    .line 804
    move-result v5

    .line 805
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    goto :goto_6

    .line 810
    :cond_f
    sget-object v5, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 811
    .line 812
    new-instance v5, Lcom/inmobi/media/f2;

    .line 813
    .line 814
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 815
    .line 816
    new-instance v7, Ljava/lang/StringBuilder;

    .line 817
    .line 818
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget v8, v0, Lcom/inmobi/media/z7;->g:I

    .line 822
    .line 823
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    .line 834
    .line 835
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 836
    .line 837
    .line 838
    move-result v3

    .line 839
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    invoke-direct {v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    invoke-direct {v5, v6}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 850
    .line 851
    .line 852
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    sget-object v3, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 856
    .line 857
    invoke-virtual {v3, v5}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 858
    .line 859
    .line 860
    move v3, v15

    .line 861
    move v5, v3

    .line 862
    :goto_6
    if-ltz v4, :cond_10

    .line 863
    .line 864
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 865
    .line 866
    .line 867
    move-result v15

    .line 868
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 869
    .line 870
    .line 871
    move-result v1

    .line 872
    move/from16 v16, v15

    .line 873
    .line 874
    move v15, v1

    .line 875
    move/from16 v1, v16

    .line 876
    .line 877
    goto :goto_7

    .line 878
    :cond_10
    sget-object v6, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 879
    .line 880
    new-instance v6, Lcom/inmobi/media/f2;

    .line 881
    .line 882
    new-instance v7, Ljava/lang/IllegalArgumentException;

    .line 883
    .line 884
    new-instance v8, Ljava/lang/StringBuilder;

    .line 885
    .line 886
    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    iget v9, v0, Lcom/inmobi/media/z7;->h:I

    .line 890
    .line 891
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    .line 902
    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-direct {v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    invoke-direct {v6, v7}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 918
    .line 919
    .line 920
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 924
    .line 925
    invoke-virtual {v1, v6}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 926
    .line 927
    .line 928
    move v1, v15

    .line 929
    :goto_7
    iget v2, v0, Lcom/inmobi/media/z7;->c:F

    .line 930
    .line 931
    iget v4, v0, Lcom/inmobi/media/z7;->d:F

    .line 932
    .line 933
    iget v6, v0, Lcom/inmobi/media/z7;->e:F

    .line 934
    .line 935
    iget v7, v0, Lcom/inmobi/media/z7;->f:F

    .line 936
    .line 937
    sub-float/2addr v4, v7

    .line 938
    float-to-double v7, v4

    .line 939
    sub-float/2addr v2, v6

    .line 940
    float-to-double v9, v2

    .line 941
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    .line 942
    .line 943
    .line 944
    move-result-wide v6

    .line 945
    double-to-float v2, v6

    .line 946
    sub-float/2addr v15, v3

    .line 947
    float-to-double v3, v15

    .line 948
    sub-float/2addr v1, v5

    .line 949
    float-to-double v5, v1

    .line 950
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    .line 951
    .line 952
    .line 953
    move-result-wide v3

    .line 954
    double-to-float v1, v3

    .line 955
    sub-float/2addr v2, v1

    .line 956
    float-to-double v1, v2

    .line 957
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    .line 958
    .line 959
    .line 960
    move-result-wide v1

    .line 961
    double-to-float v1, v1

    .line 962
    const/16 v2, 0x168

    .line 963
    .line 964
    int-to-float v2, v2

    .line 965
    rem-float/2addr v1, v2

    .line 966
    const/high16 v2, -0x3ccc0000    # -180.0f

    .line 967
    .line 968
    cmpg-float v2, v1, v2

    .line 969
    .line 970
    const/high16 v3, 0x43b40000    # 360.0f

    .line 971
    .line 972
    if-gez v2, :cond_11

    .line 973
    .line 974
    add-float/2addr v1, v3

    .line 975
    :cond_11
    const/high16 v2, 0x43340000    # 180.0f

    .line 976
    .line 977
    cmpl-float v2, v1, v2

    .line 978
    .line 979
    if-lez v2, :cond_12

    .line 980
    .line 981
    sub-float/2addr v1, v3

    .line 982
    :cond_12
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 983
    .line 984
    .line 985
    move-result v1

    .line 986
    iput v1, v0, Lcom/inmobi/media/z7;->i:F

    .line 987
    .line 988
    goto/16 :goto_b

    .line 989
    .line 990
    :cond_13
    if-eq v4, v10, :cond_1b

    .line 991
    .line 992
    if-eqz v3, :cond_1b

    .line 993
    .line 994
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    if-lez v2, :cond_1b

    .line 999
    .line 1000
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 1001
    .line 1002
    .line 1003
    move-result v2

    .line 1004
    const/16 v4, 0x32

    .line 1005
    .line 1006
    if-ge v2, v4, :cond_1b

    .line 1007
    .line 1008
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1009
    .line 1010
    .line 1011
    move-result v2

    .line 1012
    invoke-static {v2}, Lcom/inmobi/media/B2;->c(F)I

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1017
    .line 1018
    .line 1019
    move-result v1

    .line 1020
    invoke-static {v1}, Lcom/inmobi/media/B2;->c(F)I

    .line 1021
    .line 1022
    .line 1023
    move-result v1

    .line 1024
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 1025
    .line 1026
    .line 1027
    move-result v4

    .line 1028
    sub-int/2addr v4, v11

    .line 1029
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v4

    .line 1033
    new-instance v5, Lorg/json/JSONArray;

    .line 1034
    .line 1035
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v2

    .line 1039
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v1

    .line 1043
    filled-new-array {v2, v1}, [Ljava/lang/Integer;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1052
    .line 1053
    .line 1054
    const/4 v1, 0x0

    .line 1055
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getInt(I)I

    .line 1056
    .line 1057
    .line 1058
    move-result v2

    .line 1059
    int-to-float v2, v2

    .line 1060
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getInt(I)I

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    int-to-float v1, v1

    .line 1065
    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getInt(I)I

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    int-to-float v4, v4

    .line 1070
    invoke-virtual {v5, v11}, Lorg/json/JSONArray;->getInt(I)I

    .line 1071
    .line 1072
    .line 1073
    move-result v6

    .line 1074
    int-to-float v6, v6

    .line 1075
    sub-float/2addr v2, v1

    .line 1076
    mul-float/2addr v2, v2

    .line 1077
    sub-float/2addr v4, v6

    .line 1078
    mul-float/2addr v4, v4

    .line 1079
    add-float/2addr v4, v2

    .line 1080
    float-to-double v1, v4

    .line 1081
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v1

    .line 1085
    double-to-int v1, v1

    .line 1086
    const/16 v2, 0x64

    .line 1087
    .line 1088
    if-le v1, v2, :cond_1b

    .line 1089
    .line 1090
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1091
    .line 1092
    .line 1093
    goto/16 :goto_b

    .line 1094
    .line 1095
    :cond_14
    iget-object v2, v0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 1096
    .line 1097
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1101
    .line 1102
    .line 1103
    iput v10, v0, Lcom/inmobi/media/z7;->g:I

    .line 1104
    .line 1105
    iget-object v1, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1106
    .line 1107
    if-eqz v1, :cond_1b

    .line 1108
    .line 1109
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 1110
    .line 1111
    .line 1112
    move-result v1

    .line 1113
    if-le v1, v5, :cond_1b

    .line 1114
    .line 1115
    iget-object v1, v0, Lcom/inmobi/media/z7;->a:Lcom/inmobi/media/ec;

    .line 1116
    .line 1117
    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1118
    .line 1119
    .line 1120
    iget-boolean v2, v1, Lcom/inmobi/media/ec;->e:Z

    .line 1121
    .line 1122
    if-nez v2, :cond_18

    .line 1123
    .line 1124
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getRenderingConfig()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v2

    .line 1128
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getSupportedGestures()Ljava/util/List;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    const/4 v3, 0x2

    .line 1133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v3

    .line 1137
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v2

    .line 1141
    if-nez v2, :cond_15

    .line 1142
    .line 1143
    goto :goto_9

    .line 1144
    :cond_15
    iget-object v2, v1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 1145
    .line 1146
    if-eqz v2, :cond_17

    .line 1147
    .line 1148
    sget-object v3, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 1149
    .line 1150
    const-string v5, "onPanDetected\n "

    .line 1151
    .line 1152
    invoke-static {v3, v4, v5}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v4

    .line 1156
    iget-object v5, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1157
    .line 1158
    if-eqz v5, :cond_16

    .line 1159
    .line 1160
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 1161
    .line 1162
    .line 1163
    move-result v5

    .line 1164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v5

    .line 1168
    goto :goto_8

    .line 1169
    :cond_16
    const/4 v5, 0x0

    .line 1170
    :goto_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    .line 1175
    .line 1176
    iget-object v5, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1177
    .line 1178
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v4

    .line 1185
    invoke-static {v4}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    check-cast v2, Lcom/inmobi/media/A5;

    .line 1190
    .line 1191
    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    .line 1193
    .line 1194
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    const-string v3, "window.imraidview.onGestureDetected(\'2\', \'"

    .line 1197
    .line 1198
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    iget-object v3, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1202
    .line 1203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    .line 1208
    .line 1209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v2

    .line 1213
    invoke-virtual {v1, v2}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    goto :goto_a

    .line 1217
    :cond_18
    :goto_9
    iget-object v1, v1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 1218
    .line 1219
    if-eqz v1, :cond_19

    .line 1220
    .line 1221
    sget-object v2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 1222
    .line 1223
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    check-cast v1, Lcom/inmobi/media/A5;

    .line 1227
    .line 1228
    const-string v3, "Pan gesture is disabled from config"

    .line 1229
    .line 1230
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    :cond_19
    :goto_a
    new-instance v1, Lorg/json/JSONArray;

    .line 1234
    .line 1235
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1236
    .line 1237
    .line 1238
    iput-object v1, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1239
    .line 1240
    goto :goto_b

    .line 1241
    :cond_1a
    iget-object v2, v0, Lcom/inmobi/media/z7;->b:Ljava/lang/String;

    .line 1242
    .line 1243
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 1250
    .line 1251
    .line 1252
    move-result v2

    .line 1253
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 1254
    .line 1255
    .line 1256
    move-result v2

    .line 1257
    iput v2, v0, Lcom/inmobi/media/z7;->g:I

    .line 1258
    .line 1259
    new-instance v2, Lorg/json/JSONArray;

    .line 1260
    .line 1261
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1262
    .line 1263
    .line 1264
    iput-object v2, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1265
    .line 1266
    new-instance v2, Lorg/json/JSONArray;

    .line 1267
    .line 1268
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 1269
    .line 1270
    .line 1271
    move-result v3

    .line 1272
    invoke-static {v3}, Lcom/inmobi/media/B2;->c(F)I

    .line 1273
    .line 1274
    .line 1275
    move-result v3

    .line 1276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 1281
    .line 1282
    .line 1283
    move-result v1

    .line 1284
    invoke-static {v1}, Lcom/inmobi/media/B2;->c(F)I

    .line 1285
    .line 1286
    .line 1287
    move-result v1

    .line 1288
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v1

    .line 1292
    filled-new-array {v3, v1}, [Ljava/lang/Integer;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v1

    .line 1296
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1301
    .line 1302
    .line 1303
    iget-object v1, v0, Lcom/inmobi/media/z7;->j:Lorg/json/JSONArray;

    .line 1304
    .line 1305
    if-eqz v1, :cond_1b

    .line 1306
    .line 1307
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1308
    .line 1309
    .line 1310
    :catch_0
    :cond_1b
    :goto_b
    return-void
.end method
