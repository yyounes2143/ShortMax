.class public final Lvo/b;
.super Ljava/lang/Object;
.source "BoxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo/b$k;,
        Lvo/b$e;,
        Lvo/b$h;,
        Lvo/b$i;,
        Lvo/b$j;,
        Lvo/b$f;,
        Lvo/b$b;,
        Lvo/b$l;,
        Lvo/b$d;,
        Lvo/b$g;,
        Lvo/b$c;,
        Lvo/b$a;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "OpusHead"

    .line 2
    .line 3
    invoke-static {v0}, Lcn/m0;->u0(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvo/b;->a:[B

    .line 8
    .line 9
    return-void
.end method

.method public static A(Lvo/t;Ldn/d$b;Lao/b0;)Lvo/w;
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
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
    const v3, 0x7374737a

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    new-instance v5, Lvo/b$i;

    .line 17
    .line 18
    iget-object v6, v1, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 19
    .line 20
    invoke-direct {v5, v3, v6}, Lvo/b$i;-><init>(Ldn/d$c;Lio/bidmachine/media3/common/a;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v3, 0x73747a32

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_36

    .line 32
    .line 33
    new-instance v5, Lvo/b$j;

    .line 34
    .line 35
    invoke-direct {v5, v3}, Lvo/b$j;-><init>(Ldn/d$c;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-interface {v5}, Lvo/b$f;->getSampleCount()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/4 v6, 0x0

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    new-instance v9, Lvo/w;

    .line 46
    .line 47
    new-array v2, v6, [J

    .line 48
    .line 49
    new-array v3, v6, [I

    .line 50
    .line 51
    new-array v5, v6, [J

    .line 52
    .line 53
    new-array v6, v6, [I

    .line 54
    .line 55
    const-wide/16 v7, 0x0

    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    move-object v0, v9

    .line 59
    move-object/from16 v1, p0

    .line 60
    .line 61
    invoke-direct/range {v0 .. v8}, Lvo/w;-><init>(Lvo/t;[J[II[J[IJ)V

    .line 62
    .line 63
    .line 64
    return-object v9

    .line 65
    :cond_1
    iget v7, v1, Lvo/t;->b:I

    .line 66
    .line 67
    const/4 v8, 0x2

    .line 68
    const-wide/16 v9, 0x0

    .line 69
    .line 70
    if-ne v7, v8, :cond_2

    .line 71
    .line 72
    iget-wide v11, v1, Lvo/t;->f:J

    .line 73
    .line 74
    cmp-long v7, v11, v9

    .line 75
    .line 76
    if-lez v7, :cond_2

    .line 77
    .line 78
    int-to-float v7, v3

    .line 79
    long-to-float v11, v11

    .line 80
    const v12, 0x49742400    # 1000000.0f

    .line 81
    .line 82
    .line 83
    div-float/2addr v11, v12

    .line 84
    div-float/2addr v7, v11

    .line 85
    iget-object v11, v1, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 86
    .line 87
    invoke-virtual {v11}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    invoke-virtual {v11, v7}, Lio/bidmachine/media3/common/a$b;->b0(F)Lio/bidmachine/media3/common/a$b;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v7}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    invoke-virtual {v1, v7}, Lvo/t;->a(Lio/bidmachine/media3/common/a;)Lvo/t;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    :cond_2
    const v7, 0x7374636f

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v7}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const/4 v11, 0x1

    .line 111
    if-nez v7, :cond_3

    .line 112
    .line 113
    const v7, 0x636f3634

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v7}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v7}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Ldn/d$c;

    .line 125
    .line 126
    move v12, v11

    .line 127
    goto :goto_1

    .line 128
    :cond_3
    move v12, v6

    .line 129
    :goto_1
    iget-object v7, v7, Ldn/d$c;->b:Lcn/b0;

    .line 130
    .line 131
    const v13, 0x73747363

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v13}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 135
    .line 136
    .line 137
    move-result-object v13

    .line 138
    invoke-static {v13}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    check-cast v13, Ldn/d$c;

    .line 143
    .line 144
    iget-object v13, v13, Ldn/d$c;->b:Lcn/b0;

    .line 145
    .line 146
    const v14, 0x73747473

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v14}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    invoke-static {v14}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Ldn/d$c;

    .line 158
    .line 159
    iget-object v14, v14, Ldn/d$c;->b:Lcn/b0;

    .line 160
    .line 161
    const v15, 0x73747373

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v15}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    if-eqz v15, :cond_4

    .line 169
    .line 170
    iget-object v15, v15, Ldn/d$c;->b:Lcn/b0;

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_4
    const/4 v15, 0x0

    .line 174
    :goto_2
    const v4, 0x63747473

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v4}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    iget-object v0, v0, Ldn/d$c;->b:Lcn/b0;

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    const/4 v0, 0x0

    .line 187
    :goto_3
    new-instance v4, Lvo/b$b;

    .line 188
    .line 189
    invoke-direct {v4, v13, v7, v12}, Lvo/b$b;-><init>(Lcn/b0;Lcn/b0;Z)V

    .line 190
    .line 191
    .line 192
    const/16 v7, 0xc

    .line 193
    .line 194
    invoke-virtual {v14, v7}, Lcn/b0;->W(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v14}, Lcn/b0;->L()I

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    sub-int/2addr v12, v11

    .line 202
    invoke-virtual {v14}, Lcn/b0;->L()I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    invoke-virtual {v14}, Lcn/b0;->L()I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v0, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0, v7}, Lcn/b0;->W(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Lcn/b0;->L()I

    .line 216
    .line 217
    .line 218
    move-result v18

    .line 219
    goto :goto_4

    .line 220
    :cond_6
    const/16 v18, 0x0

    .line 221
    .line 222
    :goto_4
    const/4 v8, -0x1

    .line 223
    if-eqz v15, :cond_8

    .line 224
    .line 225
    invoke-virtual {v15, v7}, Lcn/b0;->W(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v15}, Lcn/b0;->L()I

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-lez v7, :cond_7

    .line 233
    .line 234
    invoke-virtual {v15}, Lcn/b0;->L()I

    .line 235
    .line 236
    .line 237
    move-result v16

    .line 238
    add-int/lit8 v16, v16, -0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_7
    move/from16 v16, v8

    .line 242
    .line 243
    const/4 v15, 0x0

    .line 244
    goto :goto_5

    .line 245
    :cond_8
    move/from16 v16, v8

    .line 246
    .line 247
    const/4 v7, 0x0

    .line 248
    :goto_5
    invoke-interface {v5}, Lvo/b$f;->a()I

    .line 249
    .line 250
    .line 251
    move-result v9

    .line 252
    iget-object v10, v1, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 253
    .line 254
    iget-object v10, v10, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 255
    .line 256
    if-eq v9, v8, :cond_a

    .line 257
    .line 258
    const-string v8, "audio/raw"

    .line 259
    .line 260
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-nez v8, :cond_9

    .line 265
    .line 266
    const-string v8, "audio/g711-mlaw"

    .line 267
    .line 268
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    if-nez v8, :cond_9

    .line 273
    .line 274
    const-string v8, "audio/g711-alaw"

    .line 275
    .line 276
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result v8

    .line 280
    if-eqz v8, :cond_a

    .line 281
    .line 282
    :cond_9
    if-nez v12, :cond_a

    .line 283
    .line 284
    if-nez v18, :cond_a

    .line 285
    .line 286
    if-nez v7, :cond_a

    .line 287
    .line 288
    move v8, v11

    .line 289
    goto :goto_6

    .line 290
    :cond_a
    const/4 v8, 0x0

    .line 291
    :goto_6
    if-eqz v8, :cond_c

    .line 292
    .line 293
    iget v0, v4, Lvo/b$b;->a:I

    .line 294
    .line 295
    new-array v5, v0, [J

    .line 296
    .line 297
    new-array v0, v0, [I

    .line 298
    .line 299
    :goto_7
    invoke-virtual {v4}, Lvo/b$b;->a()Z

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-eqz v7, :cond_b

    .line 304
    .line 305
    iget v7, v4, Lvo/b$b;->b:I

    .line 306
    .line 307
    iget-wide v12, v4, Lvo/b$b;->d:J

    .line 308
    .line 309
    aput-wide v12, v5, v7

    .line 310
    .line 311
    iget v8, v4, Lvo/b$b;->c:I

    .line 312
    .line 313
    aput v8, v0, v7

    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_b
    int-to-long v6, v6

    .line 317
    invoke-static {v9, v5, v0, v6, v7}, Lvo/d;->a(I[J[IJ)Lvo/d$b;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iget-object v4, v0, Lvo/d$b;->a:[J

    .line 322
    .line 323
    iget-object v5, v0, Lvo/d$b;->b:[I

    .line 324
    .line 325
    iget v6, v0, Lvo/d$b;->c:I

    .line 326
    .line 327
    iget-object v7, v0, Lvo/d$b;->d:[J

    .line 328
    .line 329
    iget-object v8, v0, Lvo/d$b;->e:[I

    .line 330
    .line 331
    iget-wide v9, v0, Lvo/d$b;->f:J

    .line 332
    .line 333
    iget-wide v12, v0, Lvo/d$b;->g:J

    .line 334
    .line 335
    move-object v11, v1

    .line 336
    move-object v2, v5

    .line 337
    move v14, v6

    .line 338
    move-object v15, v7

    .line 339
    move-object/from16 v28, v8

    .line 340
    .line 341
    move-wide v0, v9

    .line 342
    goto/16 :goto_14

    .line 343
    .line 344
    :cond_c
    new-array v8, v3, [J

    .line 345
    .line 346
    new-array v9, v3, [I

    .line 347
    .line 348
    new-array v10, v3, [J

    .line 349
    .line 350
    new-array v11, v3, [I

    .line 351
    .line 352
    move/from16 p1, v12

    .line 353
    .line 354
    move-object/from16 v24, v14

    .line 355
    .line 356
    move/from16 v2, v16

    .line 357
    .line 358
    move/from16 v25, v18

    .line 359
    .line 360
    const/4 v14, 0x0

    .line 361
    const/16 v16, 0x0

    .line 362
    .line 363
    const/16 v22, 0x0

    .line 364
    .line 365
    const/16 v23, 0x0

    .line 366
    .line 367
    const-wide/16 v26, 0x0

    .line 368
    .line 369
    const-wide/16 v28, 0x0

    .line 370
    .line 371
    const-wide/16 v30, 0x0

    .line 372
    .line 373
    move-object/from16 v18, v1

    .line 374
    .line 375
    const/4 v1, 0x0

    .line 376
    :goto_8
    const-string v12, "BoxParsers"

    .line 377
    .line 378
    if-ge v1, v3, :cond_16

    .line 379
    .line 380
    move-wide/from16 v31, v30

    .line 381
    .line 382
    move/from16 v30, v16

    .line 383
    .line 384
    const/16 v16, 0x1

    .line 385
    .line 386
    :goto_9
    if-nez v30, :cond_d

    .line 387
    .line 388
    invoke-virtual {v4}, Lvo/b$b;->a()Z

    .line 389
    .line 390
    .line 391
    move-result v16

    .line 392
    if-eqz v16, :cond_d

    .line 393
    .line 394
    move/from16 v33, v6

    .line 395
    .line 396
    move/from16 v34, v7

    .line 397
    .line 398
    iget-wide v6, v4, Lvo/b$b;->d:J

    .line 399
    .line 400
    move/from16 v35, v3

    .line 401
    .line 402
    iget v3, v4, Lvo/b$b;->c:I

    .line 403
    .line 404
    move/from16 v30, v3

    .line 405
    .line 406
    move-wide/from16 v31, v6

    .line 407
    .line 408
    move/from16 v6, v33

    .line 409
    .line 410
    move/from16 v7, v34

    .line 411
    .line 412
    move/from16 v3, v35

    .line 413
    .line 414
    goto :goto_9

    .line 415
    :cond_d
    move/from16 v35, v3

    .line 416
    .line 417
    move/from16 v33, v6

    .line 418
    .line 419
    move/from16 v34, v7

    .line 420
    .line 421
    if-nez v16, :cond_e

    .line 422
    .line 423
    const-string v2, "Unexpected end of chunk data"

    .line 424
    .line 425
    invoke-static {v12, v2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-static {v10, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-static {v11, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    move-object v7, v4

    .line 445
    move-object v8, v5

    .line 446
    move-object v4, v2

    .line 447
    move-object v5, v3

    .line 448
    move/from16 v2, v22

    .line 449
    .line 450
    move v3, v1

    .line 451
    move/from16 v1, v30

    .line 452
    .line 453
    goto/16 :goto_e

    .line 454
    .line 455
    :cond_e
    if-eqz v0, :cond_10

    .line 456
    .line 457
    :goto_a
    if-nez v23, :cond_f

    .line 458
    .line 459
    if-lez v25, :cond_f

    .line 460
    .line 461
    invoke-virtual {v0}, Lcn/b0;->L()I

    .line 462
    .line 463
    .line 464
    move-result v23

    .line 465
    invoke-virtual {v0}, Lcn/b0;->q()I

    .line 466
    .line 467
    .line 468
    move-result v22

    .line 469
    add-int/lit8 v25, v25, -0x1

    .line 470
    .line 471
    goto :goto_a

    .line 472
    :cond_f
    add-int/lit8 v23, v23, -0x1

    .line 473
    .line 474
    :cond_10
    move/from16 v3, v22

    .line 475
    .line 476
    aput-wide v31, v8, v1

    .line 477
    .line 478
    invoke-interface {v5}, Lvo/b$f;->readNextSampleSize()I

    .line 479
    .line 480
    .line 481
    move-result v6

    .line 482
    aput v6, v9, v1

    .line 483
    .line 484
    move-object/from16 v36, v4

    .line 485
    .line 486
    move-object v7, v5

    .line 487
    int-to-long v4, v6

    .line 488
    add-long v28, v28, v4

    .line 489
    .line 490
    if-le v6, v14, :cond_11

    .line 491
    .line 492
    move v14, v6

    .line 493
    :cond_11
    int-to-long v4, v3

    .line 494
    add-long v4, v26, v4

    .line 495
    .line 496
    aput-wide v4, v10, v1

    .line 497
    .line 498
    if-nez v15, :cond_12

    .line 499
    .line 500
    const/4 v4, 0x1

    .line 501
    goto :goto_b

    .line 502
    :cond_12
    const/4 v4, 0x0

    .line 503
    :goto_b
    aput v4, v11, v1

    .line 504
    .line 505
    if-ne v1, v2, :cond_14

    .line 506
    .line 507
    const/4 v4, 0x1

    .line 508
    aput v4, v11, v1

    .line 509
    .line 510
    add-int/lit8 v5, v34, -0x1

    .line 511
    .line 512
    if-lez v5, :cond_13

    .line 513
    .line 514
    invoke-static {v15}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    check-cast v2, Lcn/b0;

    .line 519
    .line 520
    invoke-virtual {v2}, Lcn/b0;->L()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    sub-int/2addr v2, v4

    .line 525
    :cond_13
    move v12, v2

    .line 526
    move v4, v3

    .line 527
    move/from16 v6, v33

    .line 528
    .line 529
    goto :goto_c

    .line 530
    :cond_14
    move v12, v2

    .line 531
    move v4, v3

    .line 532
    move/from16 v6, v33

    .line 533
    .line 534
    move/from16 v5, v34

    .line 535
    .line 536
    :goto_c
    int-to-long v2, v6

    .line 537
    add-long v26, v26, v2

    .line 538
    .line 539
    add-int/lit8 v13, v13, -0x1

    .line 540
    .line 541
    if-nez v13, :cond_15

    .line 542
    .line 543
    if-lez p1, :cond_15

    .line 544
    .line 545
    invoke-virtual/range {v24 .. v24}, Lcn/b0;->L()I

    .line 546
    .line 547
    .line 548
    move-result v2

    .line 549
    invoke-virtual/range {v24 .. v24}, Lcn/b0;->q()I

    .line 550
    .line 551
    .line 552
    move-result v3

    .line 553
    add-int/lit8 v6, p1, -0x1

    .line 554
    .line 555
    move v13, v2

    .line 556
    goto :goto_d

    .line 557
    :cond_15
    move v3, v6

    .line 558
    move/from16 v6, p1

    .line 559
    .line 560
    :goto_d
    aget v2, v9, v1

    .line 561
    .line 562
    move/from16 p1, v3

    .line 563
    .line 564
    int-to-long v2, v2

    .line 565
    add-long v2, v31, v2

    .line 566
    .line 567
    add-int/lit8 v16, v30, -0x1

    .line 568
    .line 569
    add-int/lit8 v1, v1, 0x1

    .line 570
    .line 571
    move-wide/from16 v30, v2

    .line 572
    .line 573
    move/from16 v22, v4

    .line 574
    .line 575
    move v2, v12

    .line 576
    move/from16 v3, v35

    .line 577
    .line 578
    move-object/from16 v4, v36

    .line 579
    .line 580
    move/from16 v44, v6

    .line 581
    .line 582
    move/from16 v6, p1

    .line 583
    .line 584
    move/from16 p1, v44

    .line 585
    .line 586
    move-object/from16 v45, v7

    .line 587
    .line 588
    move v7, v5

    .line 589
    move-object/from16 v5, v45

    .line 590
    .line 591
    goto/16 :goto_8

    .line 592
    .line 593
    :cond_16
    move/from16 v35, v3

    .line 594
    .line 595
    move/from16 v34, v7

    .line 596
    .line 597
    move-object v4, v8

    .line 598
    move-object v5, v9

    .line 599
    move-object v7, v10

    .line 600
    move-object v8, v11

    .line 601
    move/from16 v1, v16

    .line 602
    .line 603
    move/from16 v2, v22

    .line 604
    .line 605
    :goto_e
    int-to-long v9, v2

    .line 606
    add-long v9, v26, v9

    .line 607
    .line 608
    if-eqz v0, :cond_18

    .line 609
    .line 610
    :goto_f
    if-lez v25, :cond_18

    .line 611
    .line 612
    invoke-virtual {v0}, Lcn/b0;->L()I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-eqz v2, :cond_17

    .line 617
    .line 618
    const/4 v0, 0x0

    .line 619
    goto :goto_10

    .line 620
    :cond_17
    invoke-virtual {v0}, Lcn/b0;->q()I

    .line 621
    .line 622
    .line 623
    add-int/lit8 v25, v25, -0x1

    .line 624
    .line 625
    goto :goto_f

    .line 626
    :cond_18
    const/4 v0, 0x1

    .line 627
    :goto_10
    if-nez v34, :cond_1a

    .line 628
    .line 629
    if-nez v13, :cond_1a

    .line 630
    .line 631
    if-nez v1, :cond_1a

    .line 632
    .line 633
    if-nez p1, :cond_1a

    .line 634
    .line 635
    move/from16 v2, v23

    .line 636
    .line 637
    if-nez v2, :cond_1b

    .line 638
    .line 639
    if-nez v0, :cond_19

    .line 640
    .line 641
    goto :goto_11

    .line 642
    :cond_19
    move-object/from16 v11, v18

    .line 643
    .line 644
    goto :goto_13

    .line 645
    :cond_1a
    move/from16 v2, v23

    .line 646
    .line 647
    :cond_1b
    :goto_11
    new-instance v6, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    const-string v11, "Inconsistent stbl box for track "

    .line 653
    .line 654
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    move-object/from16 v11, v18

    .line 658
    .line 659
    iget v15, v11, Lvo/t;->a:I

    .line 660
    .line 661
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    const-string v15, ": remainingSynchronizationSamples "

    .line 665
    .line 666
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    move/from16 v15, v34

    .line 670
    .line 671
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const-string v15, ", remainingSamplesAtTimestampDelta "

    .line 675
    .line 676
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    const-string v13, ", remainingSamplesInChunk "

    .line 683
    .line 684
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const-string v1, ", remainingTimestampDeltaChanges "

    .line 691
    .line 692
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    move/from16 v1, p1

    .line 696
    .line 697
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v1, ", remainingSamplesAtTimestampOffset "

    .line 701
    .line 702
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    if-nez v0, :cond_1c

    .line 709
    .line 710
    const-string v0, ", ctts invalid"

    .line 711
    .line 712
    goto :goto_12

    .line 713
    :cond_1c
    const-string v0, ""

    .line 714
    .line 715
    :goto_12
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-static {v12, v0}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    :goto_13
    move-object v2, v5

    .line 726
    move-object v15, v7

    .line 727
    move-wide v0, v9

    .line 728
    move-wide/from16 v12, v28

    .line 729
    .line 730
    move-object/from16 v28, v8

    .line 731
    .line 732
    :goto_14
    iget-wide v5, v11, Lvo/t;->f:J

    .line 733
    .line 734
    const-wide/16 v7, 0x0

    .line 735
    .line 736
    cmp-long v9, v5, v7

    .line 737
    .line 738
    const-wide/32 v36, 0x7fffffff

    .line 739
    .line 740
    .line 741
    if-lez v9, :cond_1d

    .line 742
    .line 743
    const-wide/16 v7, 0x8

    .line 744
    .line 745
    mul-long v29, v12, v7

    .line 746
    .line 747
    const-wide/32 v31, 0xf4240

    .line 748
    .line 749
    .line 750
    sget-object v35, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 751
    .line 752
    move-wide/from16 v33, v5

    .line 753
    .line 754
    invoke-static/range {v29 .. v35}, Lcn/m0;->h1(JJJLjava/math/RoundingMode;)J

    .line 755
    .line 756
    .line 757
    move-result-wide v5

    .line 758
    const-wide/16 v7, 0x0

    .line 759
    .line 760
    cmp-long v9, v5, v7

    .line 761
    .line 762
    if-lez v9, :cond_1d

    .line 763
    .line 764
    cmp-long v7, v5, v36

    .line 765
    .line 766
    if-gez v7, :cond_1d

    .line 767
    .line 768
    iget-object v7, v11, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 769
    .line 770
    invoke-virtual {v7}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    long-to-int v5, v5

    .line 775
    invoke-virtual {v7, v5}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    .line 776
    .line 777
    .line 778
    move-result-object v5

    .line 779
    invoke-virtual {v5}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 780
    .line 781
    .line 782
    move-result-object v5

    .line 783
    invoke-virtual {v11, v5}, Lvo/t;->a(Lio/bidmachine/media3/common/a;)Lvo/t;

    .line 784
    .line 785
    .line 786
    move-result-object v5

    .line 787
    move-object v11, v5

    .line 788
    :cond_1d
    iget-wide v9, v11, Lvo/t;->c:J

    .line 789
    .line 790
    const-wide/32 v7, 0xf4240

    .line 791
    .line 792
    .line 793
    move-wide v5, v0

    .line 794
    move-object/from16 v12, v28

    .line 795
    .line 796
    invoke-static/range {v5 .. v10}, Lcn/m0;->f1(JJJ)J

    .line 797
    .line 798
    .line 799
    move-result-wide v29

    .line 800
    iget-object v5, v11, Lvo/t;->i:[J

    .line 801
    .line 802
    const-wide/32 v6, 0xf4240

    .line 803
    .line 804
    .line 805
    if-nez v5, :cond_1e

    .line 806
    .line 807
    iget-wide v0, v11, Lvo/t;->c:J

    .line 808
    .line 809
    invoke-static {v15, v6, v7, v0, v1}, Lcn/m0;->g1([JJJ)V

    .line 810
    .line 811
    .line 812
    new-instance v0, Lvo/w;

    .line 813
    .line 814
    move-object/from16 v22, v0

    .line 815
    .line 816
    move-object/from16 v23, v11

    .line 817
    .line 818
    move-object/from16 v24, v4

    .line 819
    .line 820
    move-object/from16 v25, v2

    .line 821
    .line 822
    move/from16 v26, v14

    .line 823
    .line 824
    move-object/from16 v27, v15

    .line 825
    .line 826
    move-object/from16 v28, v12

    .line 827
    .line 828
    invoke-direct/range {v22 .. v30}, Lvo/w;-><init>(Lvo/t;[J[II[J[IJ)V

    .line 829
    .line 830
    .line 831
    return-object v0

    .line 832
    :cond_1e
    array-length v5, v5

    .line 833
    const/4 v8, 0x1

    .line 834
    if-ne v5, v8, :cond_20

    .line 835
    .line 836
    iget v5, v11, Lvo/t;->b:I

    .line 837
    .line 838
    if-ne v5, v8, :cond_20

    .line 839
    .line 840
    array-length v5, v15

    .line 841
    const/4 v8, 0x2

    .line 842
    if-lt v5, v8, :cond_20

    .line 843
    .line 844
    iget-object v5, v11, Lvo/t;->j:[J

    .line 845
    .line 846
    invoke-static {v5}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v5

    .line 850
    check-cast v5, [J

    .line 851
    .line 852
    const/4 v8, 0x0

    .line 853
    aget-wide v9, v5, v8

    .line 854
    .line 855
    iget-object v5, v11, Lvo/t;->i:[J

    .line 856
    .line 857
    aget-wide v22, v5, v8

    .line 858
    .line 859
    iget-wide v6, v11, Lvo/t;->c:J

    .line 860
    .line 861
    move-object/from16 p1, v12

    .line 862
    .line 863
    iget-wide v12, v11, Lvo/t;->d:J

    .line 864
    .line 865
    move-wide/from16 v24, v6

    .line 866
    .line 867
    move-wide/from16 v26, v12

    .line 868
    .line 869
    invoke-static/range {v22 .. v27}, Lcn/m0;->f1(JJJ)J

    .line 870
    .line 871
    .line 872
    move-result-wide v5

    .line 873
    add-long/2addr v5, v9

    .line 874
    move-object/from16 v22, v15

    .line 875
    .line 876
    move-wide/from16 v23, v0

    .line 877
    .line 878
    move-wide/from16 v25, v9

    .line 879
    .line 880
    move-wide/from16 v27, v5

    .line 881
    .line 882
    invoke-static/range {v22 .. v28}, Lvo/b;->b([JJJJ)Z

    .line 883
    .line 884
    .line 885
    move-result v7

    .line 886
    if-eqz v7, :cond_21

    .line 887
    .line 888
    sub-long v22, v0, v5

    .line 889
    .line 890
    const/4 v5, 0x0

    .line 891
    aget-wide v6, v15, v5

    .line 892
    .line 893
    sub-long v38, v9, v6

    .line 894
    .line 895
    iget-object v5, v11, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 896
    .line 897
    iget v5, v5, Lio/bidmachine/media3/common/a;->F:I

    .line 898
    .line 899
    int-to-long v5, v5

    .line 900
    iget-wide v7, v11, Lvo/t;->c:J

    .line 901
    .line 902
    move-wide/from16 v40, v5

    .line 903
    .line 904
    move-wide/from16 v42, v7

    .line 905
    .line 906
    invoke-static/range {v38 .. v43}, Lcn/m0;->f1(JJJ)J

    .line 907
    .line 908
    .line 909
    move-result-wide v5

    .line 910
    iget-object v7, v11, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 911
    .line 912
    iget v7, v7, Lio/bidmachine/media3/common/a;->F:I

    .line 913
    .line 914
    int-to-long v7, v7

    .line 915
    iget-wide v9, v11, Lvo/t;->c:J

    .line 916
    .line 917
    move-wide/from16 v24, v7

    .line 918
    .line 919
    move-wide/from16 v26, v9

    .line 920
    .line 921
    invoke-static/range {v22 .. v27}, Lcn/m0;->f1(JJJ)J

    .line 922
    .line 923
    .line 924
    move-result-wide v7

    .line 925
    const-wide/16 v9, 0x0

    .line 926
    .line 927
    cmp-long v12, v5, v9

    .line 928
    .line 929
    if-nez v12, :cond_1f

    .line 930
    .line 931
    cmp-long v12, v7, v9

    .line 932
    .line 933
    if-eqz v12, :cond_21

    .line 934
    .line 935
    :cond_1f
    cmp-long v9, v5, v36

    .line 936
    .line 937
    if-gtz v9, :cond_21

    .line 938
    .line 939
    cmp-long v9, v7, v36

    .line 940
    .line 941
    if-gtz v9, :cond_21

    .line 942
    .line 943
    long-to-int v0, v5

    .line 944
    move-object/from16 v1, p2

    .line 945
    .line 946
    iput v0, v1, Lao/b0;->a:I

    .line 947
    .line 948
    long-to-int v0, v7

    .line 949
    iput v0, v1, Lao/b0;->b:I

    .line 950
    .line 951
    iget-wide v0, v11, Lvo/t;->c:J

    .line 952
    .line 953
    const-wide/32 v5, 0xf4240

    .line 954
    .line 955
    .line 956
    invoke-static {v15, v5, v6, v0, v1}, Lcn/m0;->g1([JJJ)V

    .line 957
    .line 958
    .line 959
    iget-object v0, v11, Lvo/t;->i:[J

    .line 960
    .line 961
    const/4 v1, 0x0

    .line 962
    aget-wide v5, v0, v1

    .line 963
    .line 964
    const-wide/32 v7, 0xf4240

    .line 965
    .line 966
    .line 967
    iget-wide v9, v11, Lvo/t;->d:J

    .line 968
    .line 969
    invoke-static/range {v5 .. v10}, Lcn/m0;->f1(JJJ)J

    .line 970
    .line 971
    .line 972
    move-result-wide v29

    .line 973
    new-instance v0, Lvo/w;

    .line 974
    .line 975
    move-object/from16 v22, v0

    .line 976
    .line 977
    move-object/from16 v23, v11

    .line 978
    .line 979
    move-object/from16 v24, v4

    .line 980
    .line 981
    move-object/from16 v25, v2

    .line 982
    .line 983
    move/from16 v26, v14

    .line 984
    .line 985
    move-object/from16 v27, v15

    .line 986
    .line 987
    move-object/from16 v28, p1

    .line 988
    .line 989
    invoke-direct/range {v22 .. v30}, Lvo/w;-><init>(Lvo/t;[J[II[J[IJ)V

    .line 990
    .line 991
    .line 992
    return-object v0

    .line 993
    :cond_20
    move-object/from16 p1, v12

    .line 994
    .line 995
    :cond_21
    iget-object v5, v11, Lvo/t;->i:[J

    .line 996
    .line 997
    array-length v6, v5

    .line 998
    const/4 v7, 0x1

    .line 999
    if-ne v6, v7, :cond_23

    .line 1000
    .line 1001
    const/4 v6, 0x0

    .line 1002
    aget-wide v7, v5, v6

    .line 1003
    .line 1004
    const-wide/16 v9, 0x0

    .line 1005
    .line 1006
    cmp-long v7, v7, v9

    .line 1007
    .line 1008
    if-nez v7, :cond_23

    .line 1009
    .line 1010
    iget-object v3, v11, Lvo/t;->j:[J

    .line 1011
    .line 1012
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    check-cast v3, [J

    .line 1017
    .line 1018
    aget-wide v7, v3, v6

    .line 1019
    .line 1020
    const/4 v6, 0x0

    .line 1021
    :goto_15
    array-length v3, v15

    .line 1022
    if-ge v6, v3, :cond_22

    .line 1023
    .line 1024
    aget-wide v9, v15, v6

    .line 1025
    .line 1026
    sub-long v16, v9, v7

    .line 1027
    .line 1028
    const-wide/32 v18, 0xf4240

    .line 1029
    .line 1030
    .line 1031
    iget-wide v9, v11, Lvo/t;->c:J

    .line 1032
    .line 1033
    move-wide/from16 v20, v9

    .line 1034
    .line 1035
    invoke-static/range {v16 .. v21}, Lcn/m0;->f1(JJJ)J

    .line 1036
    .line 1037
    .line 1038
    move-result-wide v9

    .line 1039
    aput-wide v9, v15, v6

    .line 1040
    .line 1041
    add-int/lit8 v6, v6, 0x1

    .line 1042
    .line 1043
    goto :goto_15

    .line 1044
    :cond_22
    sub-long v16, v0, v7

    .line 1045
    .line 1046
    const-wide/32 v18, 0xf4240

    .line 1047
    .line 1048
    .line 1049
    iget-wide v0, v11, Lvo/t;->c:J

    .line 1050
    .line 1051
    move-wide/from16 v20, v0

    .line 1052
    .line 1053
    invoke-static/range {v16 .. v21}, Lcn/m0;->f1(JJJ)J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v29

    .line 1057
    new-instance v0, Lvo/w;

    .line 1058
    .line 1059
    move-object/from16 v22, v0

    .line 1060
    .line 1061
    move-object/from16 v23, v11

    .line 1062
    .line 1063
    move-object/from16 v24, v4

    .line 1064
    .line 1065
    move-object/from16 v25, v2

    .line 1066
    .line 1067
    move/from16 v26, v14

    .line 1068
    .line 1069
    move-object/from16 v27, v15

    .line 1070
    .line 1071
    move-object/from16 v28, p1

    .line 1072
    .line 1073
    invoke-direct/range {v22 .. v30}, Lvo/w;-><init>(Lvo/t;[J[II[J[IJ)V

    .line 1074
    .line 1075
    .line 1076
    return-object v0

    .line 1077
    :cond_23
    iget v0, v11, Lvo/t;->b:I

    .line 1078
    .line 1079
    const/4 v1, 0x1

    .line 1080
    if-ne v0, v1, :cond_24

    .line 1081
    .line 1082
    const/4 v0, 0x1

    .line 1083
    goto :goto_16

    .line 1084
    :cond_24
    const/4 v0, 0x0

    .line 1085
    :goto_16
    array-length v1, v5

    .line 1086
    new-array v1, v1, [I

    .line 1087
    .line 1088
    array-length v5, v5

    .line 1089
    new-array v5, v5, [I

    .line 1090
    .line 1091
    iget-object v6, v11, Lvo/t;->j:[J

    .line 1092
    .line 1093
    invoke-static {v6}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v6

    .line 1097
    check-cast v6, [J

    .line 1098
    .line 1099
    const/4 v7, 0x0

    .line 1100
    const/4 v8, 0x0

    .line 1101
    const/4 v9, 0x0

    .line 1102
    const/4 v10, 0x0

    .line 1103
    :goto_17
    iget-object v12, v11, Lvo/t;->i:[J

    .line 1104
    .line 1105
    array-length v13, v12

    .line 1106
    if-ge v8, v13, :cond_2a

    .line 1107
    .line 1108
    move/from16 v16, v14

    .line 1109
    .line 1110
    aget-wide v13, v6, v8

    .line 1111
    .line 1112
    const-wide/16 v22, -0x1

    .line 1113
    .line 1114
    cmp-long v18, v13, v22

    .line 1115
    .line 1116
    if-eqz v18, :cond_29

    .line 1117
    .line 1118
    aget-wide v22, v12, v8

    .line 1119
    .line 1120
    move-object v12, v2

    .line 1121
    move/from16 v18, v3

    .line 1122
    .line 1123
    iget-wide v2, v11, Lvo/t;->c:J

    .line 1124
    .line 1125
    move-object/from16 p2, v6

    .line 1126
    .line 1127
    move/from16 v28, v7

    .line 1128
    .line 1129
    iget-wide v6, v11, Lvo/t;->d:J

    .line 1130
    .line 1131
    move-wide/from16 v24, v2

    .line 1132
    .line 1133
    move-wide/from16 v26, v6

    .line 1134
    .line 1135
    invoke-static/range {v22 .. v27}, Lcn/m0;->f1(JJJ)J

    .line 1136
    .line 1137
    .line 1138
    move-result-wide v2

    .line 1139
    const/4 v6, 0x1

    .line 1140
    invoke-static {v15, v13, v14, v6, v6}, Lcn/m0;->h([JJZZ)I

    .line 1141
    .line 1142
    .line 1143
    move-result v7

    .line 1144
    aput v7, v1, v8

    .line 1145
    .line 1146
    add-long/2addr v13, v2

    .line 1147
    const/4 v2, 0x0

    .line 1148
    invoke-static {v15, v13, v14, v0, v2}, Lcn/m0;->d([JJZZ)I

    .line 1149
    .line 1150
    .line 1151
    move-result v3

    .line 1152
    aput v3, v5, v8

    .line 1153
    .line 1154
    aget v3, v1, v8

    .line 1155
    .line 1156
    :goto_18
    aget v7, v1, v8

    .line 1157
    .line 1158
    if-ltz v7, :cond_25

    .line 1159
    .line 1160
    aget v17, p1, v7

    .line 1161
    .line 1162
    and-int/lit8 v17, v17, 0x1

    .line 1163
    .line 1164
    if-nez v17, :cond_25

    .line 1165
    .line 1166
    add-int/lit8 v7, v7, -0x1

    .line 1167
    .line 1168
    aput v7, v1, v8

    .line 1169
    .line 1170
    const/4 v6, 0x1

    .line 1171
    goto :goto_18

    .line 1172
    :cond_25
    if-gez v7, :cond_26

    .line 1173
    .line 1174
    aput v3, v1, v8

    .line 1175
    .line 1176
    :goto_19
    aget v3, v1, v8

    .line 1177
    .line 1178
    aget v6, v5, v8

    .line 1179
    .line 1180
    if-ge v3, v6, :cond_26

    .line 1181
    .line 1182
    aget v6, p1, v3

    .line 1183
    .line 1184
    const/4 v7, 0x1

    .line 1185
    and-int/2addr v6, v7

    .line 1186
    if-nez v6, :cond_26

    .line 1187
    .line 1188
    add-int/lit8 v3, v3, 0x1

    .line 1189
    .line 1190
    aput v3, v1, v8

    .line 1191
    .line 1192
    goto :goto_19

    .line 1193
    :cond_26
    iget v3, v11, Lvo/t;->b:I

    .line 1194
    .line 1195
    const/4 v6, 0x2

    .line 1196
    if-ne v3, v6, :cond_27

    .line 1197
    .line 1198
    aget v3, v1, v8

    .line 1199
    .line 1200
    aget v7, v5, v8

    .line 1201
    .line 1202
    if-eq v3, v7, :cond_27

    .line 1203
    .line 1204
    :goto_1a
    aget v3, v5, v8

    .line 1205
    .line 1206
    array-length v7, v15

    .line 1207
    const/16 v17, 0x1

    .line 1208
    .line 1209
    add-int/lit8 v7, v7, -0x1

    .line 1210
    .line 1211
    if-ge v3, v7, :cond_27

    .line 1212
    .line 1213
    add-int/lit8 v7, v3, 0x1

    .line 1214
    .line 1215
    aget-wide v22, v15, v7

    .line 1216
    .line 1217
    cmp-long v7, v22, v13

    .line 1218
    .line 1219
    if-gtz v7, :cond_27

    .line 1220
    .line 1221
    add-int/lit8 v3, v3, 0x1

    .line 1222
    .line 1223
    aput v3, v5, v8

    .line 1224
    .line 1225
    goto :goto_1a

    .line 1226
    :cond_27
    aget v3, v5, v8

    .line 1227
    .line 1228
    aget v7, v1, v8

    .line 1229
    .line 1230
    sub-int v13, v3, v7

    .line 1231
    .line 1232
    add-int/2addr v9, v13

    .line 1233
    if-eq v10, v7, :cond_28

    .line 1234
    .line 1235
    const/4 v7, 0x1

    .line 1236
    goto :goto_1b

    .line 1237
    :cond_28
    move v7, v2

    .line 1238
    :goto_1b
    or-int v7, v28, v7

    .line 1239
    .line 1240
    move v10, v3

    .line 1241
    goto :goto_1c

    .line 1242
    :cond_29
    move-object v12, v2

    .line 1243
    move/from16 v18, v3

    .line 1244
    .line 1245
    move-object/from16 p2, v6

    .line 1246
    .line 1247
    move/from16 v28, v7

    .line 1248
    .line 1249
    const/4 v2, 0x0

    .line 1250
    const/4 v6, 0x2

    .line 1251
    :goto_1c
    add-int/lit8 v8, v8, 0x1

    .line 1252
    .line 1253
    move-object/from16 v6, p2

    .line 1254
    .line 1255
    move-object v2, v12

    .line 1256
    move/from16 v14, v16

    .line 1257
    .line 1258
    move/from16 v3, v18

    .line 1259
    .line 1260
    goto/16 :goto_17

    .line 1261
    .line 1262
    :cond_2a
    move-object v12, v2

    .line 1263
    move/from16 v28, v7

    .line 1264
    .line 1265
    move/from16 v16, v14

    .line 1266
    .line 1267
    const/4 v2, 0x0

    .line 1268
    if-eq v9, v3, :cond_2b

    .line 1269
    .line 1270
    const/4 v0, 0x1

    .line 1271
    goto :goto_1d

    .line 1272
    :cond_2b
    move v0, v2

    .line 1273
    :goto_1d
    or-int v0, v28, v0

    .line 1274
    .line 1275
    if-eqz v0, :cond_2c

    .line 1276
    .line 1277
    new-array v3, v9, [J

    .line 1278
    .line 1279
    goto :goto_1e

    .line 1280
    :cond_2c
    move-object v3, v4

    .line 1281
    :goto_1e
    if-eqz v0, :cond_2d

    .line 1282
    .line 1283
    new-array v6, v9, [I

    .line 1284
    .line 1285
    goto :goto_1f

    .line 1286
    :cond_2d
    move-object v6, v12

    .line 1287
    :goto_1f
    if-eqz v0, :cond_2e

    .line 1288
    .line 1289
    move v14, v2

    .line 1290
    goto :goto_20

    .line 1291
    :cond_2e
    move/from16 v14, v16

    .line 1292
    .line 1293
    :goto_20
    if-eqz v0, :cond_2f

    .line 1294
    .line 1295
    new-array v7, v9, [I

    .line 1296
    .line 1297
    goto :goto_21

    .line 1298
    :cond_2f
    move-object/from16 v7, p1

    .line 1299
    .line 1300
    :goto_21
    new-array v8, v9, [J

    .line 1301
    .line 1302
    move/from16 p2, v2

    .line 1303
    .line 1304
    move/from16 v10, p2

    .line 1305
    .line 1306
    move/from16 v16, v14

    .line 1307
    .line 1308
    const-wide/16 v13, 0x0

    .line 1309
    .line 1310
    :goto_22
    iget-object v9, v11, Lvo/t;->i:[J

    .line 1311
    .line 1312
    array-length v9, v9

    .line 1313
    if-ge v2, v9, :cond_34

    .line 1314
    .line 1315
    iget-object v9, v11, Lvo/t;->j:[J

    .line 1316
    .line 1317
    aget-wide v17, v9, v2

    .line 1318
    .line 1319
    aget v9, v1, v2

    .line 1320
    .line 1321
    move-object/from16 v19, v1

    .line 1322
    .line 1323
    aget v1, v5, v2

    .line 1324
    .line 1325
    if-eqz v0, :cond_30

    .line 1326
    .line 1327
    move-object/from16 v28, v5

    .line 1328
    .line 1329
    sub-int v5, v1, v9

    .line 1330
    .line 1331
    invoke-static {v4, v9, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1332
    .line 1333
    .line 1334
    invoke-static {v12, v9, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1335
    .line 1336
    .line 1337
    move-object/from16 v29, v4

    .line 1338
    .line 1339
    move-object/from16 v4, p1

    .line 1340
    .line 1341
    invoke-static {v4, v9, v7, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1342
    .line 1343
    .line 1344
    goto :goto_23

    .line 1345
    :cond_30
    move-object/from16 v29, v4

    .line 1346
    .line 1347
    move-object/from16 v28, v5

    .line 1348
    .line 1349
    move-object/from16 v4, p1

    .line 1350
    .line 1351
    :goto_23
    move/from16 v5, p2

    .line 1352
    .line 1353
    move-object/from16 p1, v4

    .line 1354
    .line 1355
    move/from16 v4, v16

    .line 1356
    .line 1357
    :goto_24
    if-ge v9, v1, :cond_33

    .line 1358
    .line 1359
    const-wide/32 v24, 0xf4240

    .line 1360
    .line 1361
    .line 1362
    move/from16 v31, v1

    .line 1363
    .line 1364
    move/from16 v30, v2

    .line 1365
    .line 1366
    iget-wide v1, v11, Lvo/t;->d:J

    .line 1367
    .line 1368
    move-wide/from16 v22, v13

    .line 1369
    .line 1370
    move-wide/from16 v26, v1

    .line 1371
    .line 1372
    invoke-static/range {v22 .. v27}, Lcn/m0;->f1(JJJ)J

    .line 1373
    .line 1374
    .line 1375
    move-result-wide v1

    .line 1376
    aget-wide v22, v15, v9

    .line 1377
    .line 1378
    sub-long v32, v22, v17

    .line 1379
    .line 1380
    const-wide/32 v34, 0xf4240

    .line 1381
    .line 1382
    .line 1383
    move-wide/from16 v22, v13

    .line 1384
    .line 1385
    iget-wide v13, v11, Lvo/t;->c:J

    .line 1386
    .line 1387
    move-wide/from16 v36, v13

    .line 1388
    .line 1389
    invoke-static/range {v32 .. v37}, Lcn/m0;->f1(JJJ)J

    .line 1390
    .line 1391
    .line 1392
    move-result-wide v13

    .line 1393
    const-wide/16 v20, 0x0

    .line 1394
    .line 1395
    cmp-long v16, v13, v20

    .line 1396
    .line 1397
    if-gez v16, :cond_31

    .line 1398
    .line 1399
    const/4 v5, 0x1

    .line 1400
    :cond_31
    add-long/2addr v1, v13

    .line 1401
    aput-wide v1, v8, v10

    .line 1402
    .line 1403
    if-eqz v0, :cond_32

    .line 1404
    .line 1405
    aget v1, v6, v10

    .line 1406
    .line 1407
    if-le v1, v4, :cond_32

    .line 1408
    .line 1409
    aget v1, v12, v9

    .line 1410
    .line 1411
    move v4, v1

    .line 1412
    :cond_32
    add-int/lit8 v10, v10, 0x1

    .line 1413
    .line 1414
    add-int/lit8 v9, v9, 0x1

    .line 1415
    .line 1416
    move-wide/from16 v13, v22

    .line 1417
    .line 1418
    move/from16 v2, v30

    .line 1419
    .line 1420
    move/from16 v1, v31

    .line 1421
    .line 1422
    goto :goto_24

    .line 1423
    :cond_33
    move/from16 v30, v2

    .line 1424
    .line 1425
    move-wide/from16 v22, v13

    .line 1426
    .line 1427
    const-wide/16 v20, 0x0

    .line 1428
    .line 1429
    iget-object v1, v11, Lvo/t;->i:[J

    .line 1430
    .line 1431
    aget-wide v13, v1, v30

    .line 1432
    .line 1433
    add-long v13, v22, v13

    .line 1434
    .line 1435
    add-int/lit8 v2, v30, 0x1

    .line 1436
    .line 1437
    move/from16 v16, v4

    .line 1438
    .line 1439
    move/from16 p2, v5

    .line 1440
    .line 1441
    move-object/from16 v1, v19

    .line 1442
    .line 1443
    move-object/from16 v5, v28

    .line 1444
    .line 1445
    move-object/from16 v4, v29

    .line 1446
    .line 1447
    goto/16 :goto_22

    .line 1448
    .line 1449
    :cond_34
    move-wide/from16 v22, v13

    .line 1450
    .line 1451
    const-wide/32 v24, 0xf4240

    .line 1452
    .line 1453
    .line 1454
    iget-wide v0, v11, Lvo/t;->d:J

    .line 1455
    .line 1456
    move-wide/from16 v26, v0

    .line 1457
    .line 1458
    invoke-static/range {v22 .. v27}, Lcn/m0;->f1(JJJ)J

    .line 1459
    .line 1460
    .line 1461
    move-result-wide v29

    .line 1462
    if-eqz p2, :cond_35

    .line 1463
    .line 1464
    iget-object v0, v11, Lvo/t;->g:Lio/bidmachine/media3/common/a;

    .line 1465
    .line 1466
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v0

    .line 1470
    const/4 v1, 0x1

    .line 1471
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->c0(Z)Lio/bidmachine/media3/common/a$b;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v0

    .line 1475
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v0

    .line 1479
    invoke-virtual {v11, v0}, Lvo/t;->a(Lio/bidmachine/media3/common/a;)Lvo/t;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v11

    .line 1483
    :cond_35
    move-object/from16 v23, v11

    .line 1484
    .line 1485
    new-instance v0, Lvo/w;

    .line 1486
    .line 1487
    move-object/from16 v22, v0

    .line 1488
    .line 1489
    move-object/from16 v24, v3

    .line 1490
    .line 1491
    move-object/from16 v25, v6

    .line 1492
    .line 1493
    move/from16 v26, v16

    .line 1494
    .line 1495
    move-object/from16 v27, v8

    .line 1496
    .line 1497
    move-object/from16 v28, v7

    .line 1498
    .line 1499
    invoke-direct/range {v22 .. v30}, Lvo/w;-><init>(Lvo/t;[J[II[J[IJ)V

    .line 1500
    .line 1501
    .line 1502
    return-object v0

    .line 1503
    :cond_36
    const-string v0, "Track has no sample table size information"

    .line 1504
    .line 1505
    const/4 v1, 0x0

    .line 1506
    invoke-static {v0, v1}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    throw v0
.end method

.method private static B(Lcn/b0;II)Lvo/b$d;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :goto_0
    sub-int v1, v0, p1

    .line 11
    .line 12
    if-ge v1, p2, :cond_5

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    if-lez v1, :cond_0

    .line 24
    .line 25
    move v4, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v4, v2

    .line 28
    :goto_1
    const-string v5, "childAtomSize must be positive"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lao/s;->a(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v5, 0x73747269

    .line 38
    .line 39
    .line 40
    if-ne v4, v5, :cond_4

    .line 41
    .line 42
    const/4 p1, 0x4

    .line 43
    invoke-virtual {p0, p1}, Lcn/b0;->X(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    new-instance p1, Lvo/b$d;

    .line 51
    .line 52
    new-instance p2, Lvo/b$g;

    .line 53
    .line 54
    and-int/lit8 v0, p0, 0x1

    .line 55
    .line 56
    if-ne v0, v3, :cond_1

    .line 57
    .line 58
    move v0, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_1
    move v0, v2

    .line 61
    :goto_2
    and-int/lit8 v1, p0, 0x2

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    if-ne v1, v4, :cond_2

    .line 65
    .line 66
    move v1, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    move v1, v2

    .line 69
    :goto_3
    const/16 v4, 0x8

    .line 70
    .line 71
    and-int/2addr p0, v4

    .line 72
    if-ne p0, v4, :cond_3

    .line 73
    .line 74
    move v2, v3

    .line 75
    :cond_3
    invoke-direct {p2, v0, v1, v2}, Lvo/b$g;-><init>(ZZZ)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p1, p2}, Lvo/b$d;-><init>(Lvo/b$g;)V

    .line 79
    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_4
    add-int/2addr v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method private static C(Lcn/b0;IILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;Z)Lvo/b$h;
    .locals 18
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p1

    .line 4
    .line 5
    const/16 v0, 0xc

    .line 6
    .line 7
    invoke-virtual {v10, v0}, Lcn/b0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v12

    .line 14
    new-instance v13, Lvo/b$h;

    .line 15
    .line 16
    invoke-direct {v13, v12}, Lvo/b$h;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v14, 0x0

    .line 20
    move v15, v14

    .line 21
    :goto_0
    if-ge v15, v12, :cond_9

    .line 22
    .line 23
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    .line 28
    .line 29
    .line 30
    move-result v16

    .line 31
    if-lez v16, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    move v0, v14

    .line 36
    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lao/s;->a(ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const v0, 0x61766331

    .line 46
    .line 47
    .line 48
    if-eq v1, v0, :cond_1

    .line 49
    .line 50
    const v0, 0x61766333

    .line 51
    .line 52
    .line 53
    if-eq v1, v0, :cond_1

    .line 54
    .line 55
    const v0, 0x656e6376

    .line 56
    .line 57
    .line 58
    if-eq v1, v0, :cond_1

    .line 59
    .line 60
    const v0, 0x6d317620

    .line 61
    .line 62
    .line 63
    if-eq v1, v0, :cond_1

    .line 64
    .line 65
    const v0, 0x6d703476

    .line 66
    .line 67
    .line 68
    if-eq v1, v0, :cond_1

    .line 69
    .line 70
    const v0, 0x68766331

    .line 71
    .line 72
    .line 73
    if-eq v1, v0, :cond_1

    .line 74
    .line 75
    const v0, 0x68657631

    .line 76
    .line 77
    .line 78
    if-eq v1, v0, :cond_1

    .line 79
    .line 80
    const v0, 0x73323633

    .line 81
    .line 82
    .line 83
    if-eq v1, v0, :cond_1

    .line 84
    .line 85
    const v0, 0x48323633

    .line 86
    .line 87
    .line 88
    if-eq v1, v0, :cond_1

    .line 89
    .line 90
    const v0, 0x68323633

    .line 91
    .line 92
    .line 93
    if-eq v1, v0, :cond_1

    .line 94
    .line 95
    const v0, 0x76703038

    .line 96
    .line 97
    .line 98
    if-eq v1, v0, :cond_1

    .line 99
    .line 100
    const v0, 0x76703039

    .line 101
    .line 102
    .line 103
    if-eq v1, v0, :cond_1

    .line 104
    .line 105
    const v0, 0x61763031

    .line 106
    .line 107
    .line 108
    if-eq v1, v0, :cond_1

    .line 109
    .line 110
    const v0, 0x64766176

    .line 111
    .line 112
    .line 113
    if-eq v1, v0, :cond_1

    .line 114
    .line 115
    const v0, 0x64766131

    .line 116
    .line 117
    .line 118
    if-eq v1, v0, :cond_1

    .line 119
    .line 120
    const v0, 0x64766865

    .line 121
    .line 122
    .line 123
    if-eq v1, v0, :cond_1

    .line 124
    .line 125
    const v0, 0x64766831

    .line 126
    .line 127
    .line 128
    if-eq v1, v0, :cond_1

    .line 129
    .line 130
    const v0, 0x61707631

    .line 131
    .line 132
    .line 133
    if-ne v1, v0, :cond_2

    .line 134
    .line 135
    :cond_1
    move/from16 v17, v9

    .line 136
    .line 137
    goto/16 :goto_5

    .line 138
    .line 139
    :cond_2
    const v0, 0x6d703461

    .line 140
    .line 141
    .line 142
    if-eq v1, v0, :cond_8

    .line 143
    .line 144
    const v0, 0x656e6361

    .line 145
    .line 146
    .line 147
    if-eq v1, v0, :cond_8

    .line 148
    .line 149
    const v0, 0x61632d33

    .line 150
    .line 151
    .line 152
    if-eq v1, v0, :cond_8

    .line 153
    .line 154
    const v0, 0x65632d33

    .line 155
    .line 156
    .line 157
    if-eq v1, v0, :cond_8

    .line 158
    .line 159
    const v0, 0x61632d34

    .line 160
    .line 161
    .line 162
    if-eq v1, v0, :cond_8

    .line 163
    .line 164
    const v0, 0x6d6c7061

    .line 165
    .line 166
    .line 167
    if-eq v1, v0, :cond_8

    .line 168
    .line 169
    const v0, 0x64747363

    .line 170
    .line 171
    .line 172
    if-eq v1, v0, :cond_8

    .line 173
    .line 174
    const v0, 0x64747365

    .line 175
    .line 176
    .line 177
    if-eq v1, v0, :cond_8

    .line 178
    .line 179
    const v0, 0x64747368

    .line 180
    .line 181
    .line 182
    if-eq v1, v0, :cond_8

    .line 183
    .line 184
    const v0, 0x6474736c

    .line 185
    .line 186
    .line 187
    if-eq v1, v0, :cond_8

    .line 188
    .line 189
    const v0, 0x64747378

    .line 190
    .line 191
    .line 192
    if-eq v1, v0, :cond_8

    .line 193
    .line 194
    const v0, 0x73616d72

    .line 195
    .line 196
    .line 197
    if-eq v1, v0, :cond_8

    .line 198
    .line 199
    const v0, 0x73617762

    .line 200
    .line 201
    .line 202
    if-eq v1, v0, :cond_8

    .line 203
    .line 204
    const v0, 0x6c70636d

    .line 205
    .line 206
    .line 207
    if-eq v1, v0, :cond_8

    .line 208
    .line 209
    const v0, 0x736f7774

    .line 210
    .line 211
    .line 212
    if-eq v1, v0, :cond_8

    .line 213
    .line 214
    const v0, 0x74776f73

    .line 215
    .line 216
    .line 217
    if-eq v1, v0, :cond_8

    .line 218
    .line 219
    const v0, 0x2e6d7032

    .line 220
    .line 221
    .line 222
    if-eq v1, v0, :cond_8

    .line 223
    .line 224
    const v0, 0x2e6d7033

    .line 225
    .line 226
    .line 227
    if-eq v1, v0, :cond_8

    .line 228
    .line 229
    const v0, 0x6d686131

    .line 230
    .line 231
    .line 232
    if-eq v1, v0, :cond_8

    .line 233
    .line 234
    const v0, 0x6d686d31

    .line 235
    .line 236
    .line 237
    if-eq v1, v0, :cond_8

    .line 238
    .line 239
    const v0, 0x616c6163

    .line 240
    .line 241
    .line 242
    if-eq v1, v0, :cond_8

    .line 243
    .line 244
    const v0, 0x616c6177

    .line 245
    .line 246
    .line 247
    if-eq v1, v0, :cond_8

    .line 248
    .line 249
    const v0, 0x756c6177

    .line 250
    .line 251
    .line 252
    if-eq v1, v0, :cond_8

    .line 253
    .line 254
    const v0, 0x4f707573

    .line 255
    .line 256
    .line 257
    if-eq v1, v0, :cond_8

    .line 258
    .line 259
    const v0, 0x664c6143

    .line 260
    .line 261
    .line 262
    if-eq v1, v0, :cond_8

    .line 263
    .line 264
    const v0, 0x69616d66

    .line 265
    .line 266
    .line 267
    if-ne v1, v0, :cond_3

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_3
    const v0, 0x54544d4c

    .line 271
    .line 272
    .line 273
    if-eq v1, v0, :cond_7

    .line 274
    .line 275
    const v0, 0x74783367

    .line 276
    .line 277
    .line 278
    if-eq v1, v0, :cond_7

    .line 279
    .line 280
    const v0, 0x77767474

    .line 281
    .line 282
    .line 283
    if-eq v1, v0, :cond_7

    .line 284
    .line 285
    const v0, 0x73747070

    .line 286
    .line 287
    .line 288
    if-eq v1, v0, :cond_7

    .line 289
    .line 290
    const v0, 0x63363038

    .line 291
    .line 292
    .line 293
    if-ne v1, v0, :cond_4

    .line 294
    .line 295
    goto :goto_3

    .line 296
    :cond_4
    const v0, 0x6d657474

    .line 297
    .line 298
    .line 299
    if-ne v1, v0, :cond_6

    .line 300
    .line 301
    invoke-static {v10, v1, v9, v11, v13}, Lvo/b;->u(Lcn/b0;IIILvo/b$h;)V

    .line 302
    .line 303
    .line 304
    :cond_5
    :goto_2
    move/from16 v17, v9

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_6
    const v0, 0x63616d6d

    .line 308
    .line 309
    .line 310
    if-ne v1, v0, :cond_5

    .line 311
    .line 312
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    .line 313
    .line 314
    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    const-string v1, "application/x-camera-motion"

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iput-object v0, v13, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    .line 335
    .line 336
    move v2, v9

    .line 337
    move/from16 v3, v16

    .line 338
    .line 339
    move/from16 v4, p1

    .line 340
    .line 341
    move-object/from16 v5, p3

    .line 342
    .line 343
    move-object v6, v13

    .line 344
    invoke-static/range {v0 .. v6}, Lvo/b;->D(Lcn/b0;IIIILjava/lang/String;Lvo/b$h;)V

    .line 345
    .line 346
    .line 347
    goto :goto_2

    .line 348
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    .line 349
    .line 350
    move v2, v9

    .line 351
    move/from16 v3, v16

    .line 352
    .line 353
    move/from16 v4, p1

    .line 354
    .line 355
    move-object/from16 v5, p3

    .line 356
    .line 357
    move/from16 v6, p5

    .line 358
    .line 359
    move-object/from16 v7, p4

    .line 360
    .line 361
    move-object v8, v13

    .line 362
    move/from16 v17, v9

    .line 363
    .line 364
    move v9, v15

    .line 365
    invoke-static/range {v0 .. v9}, Lvo/b;->h(Lcn/b0;IIIILjava/lang/String;ZLio/bidmachine/media3/common/DrmInitData;Lvo/b$h;I)V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :goto_5
    move-object/from16 v0, p0

    .line 370
    .line 371
    move/from16 v2, v17

    .line 372
    .line 373
    move/from16 v3, v16

    .line 374
    .line 375
    move/from16 v4, p1

    .line 376
    .line 377
    move-object/from16 v5, p3

    .line 378
    .line 379
    move/from16 v6, p2

    .line 380
    .line 381
    move-object/from16 v7, p4

    .line 382
    .line 383
    move-object v8, v13

    .line 384
    move v9, v15

    .line 385
    invoke-static/range {v0 .. v9}, Lvo/b;->K(Lcn/b0;IIIILjava/lang/String;ILio/bidmachine/media3/common/DrmInitData;Lvo/b$h;I)V

    .line 386
    .line 387
    .line 388
    :goto_6
    add-int v9, v17, v16

    .line 389
    .line 390
    invoke-virtual {v10, v9}, Lcn/b0;->W(I)V

    .line 391
    .line 392
    .line 393
    add-int/lit8 v15, v15, 0x1

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_9
    return-object v13
.end method

.method private static D(Lcn/b0;IIIILjava/lang/String;Lvo/b$h;)V
    .locals 4
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x54544d4c

    .line 7
    .line 8
    .line 9
    const-string v0, "application/ttml+xml"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    if-ne p1, p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const p2, 0x74783367

    .line 21
    .line 22
    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    add-int/lit8 p3, p3, -0x10

    .line 26
    .line 27
    new-array p1, p3, [B

    .line 28
    .line 29
    const/4 p2, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lcn/b0;->l([BII)V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v0, "application/x-quicktime-tx3g"

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const p0, 0x77767474

    .line 41
    .line 42
    .line 43
    if-ne p1, p0, :cond_2

    .line 44
    .line 45
    const-string v0, "application/x-mp4-vtt"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const p0, 0x73747070

    .line 49
    .line 50
    .line 51
    if-ne p1, p0, :cond_3

    .line 52
    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const p0, 0x63363038

    .line 57
    .line 58
    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    iput p0, p6, Lvo/b$h;->d:I

    .line 63
    .line 64
    const-string v0, "application/x-mp4-cea-608"

    .line 65
    .line 66
    :goto_0
    new-instance p0, Lio/bidmachine/media3/common/a$b;

    .line 67
    .line 68
    invoke-direct {p0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p4}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {p0, p5}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0, v2, v3}, Lio/bidmachine/media3/common/a$b;->y0(J)Lio/bidmachine/media3/common/a$b;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/a$b;->g0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    iput-object p0, p6, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p0
.end method

.method private static E(Lcn/b0;)Lvo/b$k;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lvo/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    move v0, v2

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    move v6, v5

    .line 40
    :goto_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    if-ge v6, v0, :cond_5

    .line 46
    .line 47
    invoke-virtual {p0}, Lcn/b0;->e()[B

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    add-int v10, v3, v6

    .line 52
    .line 53
    aget-byte v9, v9, v10

    .line 54
    .line 55
    const/4 v10, -0x1

    .line 56
    if-eq v9, v10, :cond_4

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcn/b0;->O()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    :goto_2
    const-wide/16 v9, 0x0

    .line 70
    .line 71
    cmp-long v3, v0, v9

    .line 72
    .line 73
    if-nez v3, :cond_3

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_3
    move-wide v7, v0

    .line 77
    goto :goto_3

    .line 78
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 82
    .line 83
    .line 84
    :goto_3
    const/16 v0, 0xa

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcn/b0;->P()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    const/high16 v6, -0x10000

    .line 116
    .line 117
    const/high16 v9, 0x10000

    .line 118
    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    if-ne v3, v9, :cond_6

    .line 122
    .line 123
    if-ne v2, v6, :cond_6

    .line 124
    .line 125
    if-nez p0, :cond_6

    .line 126
    .line 127
    const/16 p0, 0x5a

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_6
    if-nez v1, :cond_7

    .line 131
    .line 132
    if-ne v3, v6, :cond_7

    .line 133
    .line 134
    if-ne v2, v9, :cond_7

    .line 135
    .line 136
    if-nez p0, :cond_7

    .line 137
    .line 138
    const/16 p0, 0x10e

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    if-ne v1, v6, :cond_8

    .line 142
    .line 143
    if-nez v3, :cond_8

    .line 144
    .line 145
    if-nez v2, :cond_8

    .line 146
    .line 147
    if-ne p0, v6, :cond_8

    .line 148
    .line 149
    const/16 p0, 0xb4

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move p0, v5

    .line 153
    :goto_4
    new-instance v1, Lvo/b$k;

    .line 154
    .line 155
    move-object v3, v1

    .line 156
    move-wide v5, v7

    .line 157
    move v7, v0

    .line 158
    move v8, p0

    .line 159
    invoke-direct/range {v3 .. v8}, Lvo/b$k;-><init>(IJII)V

    .line 160
    .line 161
    .line 162
    return-object v1
.end method

.method public static F(Ldn/d$b;Ldn/d$c;JLio/bidmachine/media3/common/DrmInitData;ZZ)Lvo/t;
    .locals 22
    .param p4    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const v3, 0x6d646961

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v3}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ldn/d$b;

    .line 17
    .line 18
    const v4, 0x68646c72    # 4.3148E24f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {v4}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ldn/d$c;

    .line 30
    .line 31
    iget-object v4, v4, Ldn/d$c;->b:Lcn/b0;

    .line 32
    .line 33
    invoke-static {v4}, Lvo/b;->q(Lcn/b0;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v4}, Lvo/b;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v4, -0x1

    .line 42
    const/4 v5, 0x0

    .line 43
    if-ne v7, v4, :cond_0

    .line 44
    .line 45
    return-object v5

    .line 46
    :cond_0
    const v4, 0x746b6864

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ldn/d$c;

    .line 58
    .line 59
    iget-object v4, v4, Ldn/d$c;->b:Lcn/b0;

    .line 60
    .line 61
    invoke-static {v4}, Lvo/b;->E(Lcn/b0;)Lvo/b$k;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    cmp-long v6, p2, v8

    .line 71
    .line 72
    if-nez v6, :cond_1

    .line 73
    .line 74
    invoke-static {v4}, Lvo/b$k;->a(Lvo/b$k;)J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    move-object/from16 v6, p1

    .line 79
    .line 80
    move-wide v12, v10

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-object/from16 v6, p1

    .line 83
    .line 84
    move-wide/from16 v12, p2

    .line 85
    .line 86
    :goto_0
    iget-object v6, v6, Ldn/d$c;->b:Lcn/b0;

    .line 87
    .line 88
    invoke-static {v6}, Lvo/b;->v(Lcn/b0;)Ldn/f;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    iget-wide v10, v6, Ldn/f;->c:J

    .line 93
    .line 94
    cmp-long v6, v12, v8

    .line 95
    .line 96
    if-nez v6, :cond_2

    .line 97
    .line 98
    :goto_1
    move-wide v12, v8

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-wide/32 v14, 0xf4240

    .line 101
    .line 102
    .line 103
    move-wide/from16 v16, v10

    .line 104
    .line 105
    invoke-static/range {v12 .. v17}, Lcn/m0;->f1(JJJ)J

    .line 106
    .line 107
    .line 108
    move-result-wide v8

    .line 109
    goto :goto_1

    .line 110
    :goto_2
    const v6, 0x6d696e66

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, v6}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {v6}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    check-cast v6, Ldn/d$b;

    .line 122
    .line 123
    const v8, 0x7374626c

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6, v8}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-static {v6}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ldn/d$b;

    .line 135
    .line 136
    const v8, 0x6d646864

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3, v8}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ldn/d$c;

    .line 148
    .line 149
    iget-object v3, v3, Ldn/d$c;->b:Lcn/b0;

    .line 150
    .line 151
    invoke-static {v3}, Lvo/b;->s(Lcn/b0;)Lvo/b$e;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const v8, 0x73747364

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v8}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    iget-object v14, v6, Ldn/d$c;->b:Lcn/b0;

    .line 165
    .line 166
    invoke-static {v4}, Lvo/b$k;->b(Lvo/b$k;)I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    invoke-static {v4}, Lvo/b$k;->c(Lvo/b$k;)I

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    invoke-static {v3}, Lvo/b$e;->a(Lvo/b$e;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v17

    .line 178
    move-object/from16 v18, p4

    .line 179
    .line 180
    move/from16 v19, p6

    .line 181
    .line 182
    invoke-static/range {v14 .. v19}, Lvo/b;->C(Lcn/b0;IILjava/lang/String;Lio/bidmachine/media3/common/DrmInitData;Z)Lvo/b$h;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    if-nez p5, :cond_3

    .line 187
    .line 188
    const v6, 0x65647473

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v6}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_3

    .line 196
    .line 197
    invoke-static {v0}, Lvo/b;->l(Ldn/d$b;)Landroid/util/Pair;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_3

    .line 202
    .line 203
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 204
    .line 205
    check-cast v6, [J

    .line 206
    .line 207
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast v0, [J

    .line 210
    .line 211
    move-object/from16 v21, v0

    .line 212
    .line 213
    move-object/from16 v20, v6

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_3
    move-object/from16 v20, v5

    .line 217
    .line 218
    move-object/from16 v21, v20

    .line 219
    .line 220
    :goto_3
    iget-object v0, v14, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 221
    .line 222
    if-nez v0, :cond_4

    .line 223
    .line 224
    return-object v5

    .line 225
    :cond_4
    invoke-static {v4}, Lvo/b$k;->d(Lvo/b$k;)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    new-instance v0, Ldn/c;

    .line 232
    .line 233
    invoke-static {v4}, Lvo/b$k;->d(Lvo/b$k;)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    invoke-direct {v0, v5}, Ldn/c;-><init>(I)V

    .line 238
    .line 239
    .line 240
    iget-object v5, v14, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 241
    .line 242
    invoke-virtual {v5}, Lio/bidmachine/media3/common/a;->b()Lio/bidmachine/media3/common/a$b;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    iget-object v6, v14, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 247
    .line 248
    iget-object v6, v6, Lio/bidmachine/media3/common/a;->l:Lzm/t;

    .line 249
    .line 250
    if-eqz v6, :cond_5

    .line 251
    .line 252
    new-array v2, v2, [Lzm/t$a;

    .line 253
    .line 254
    aput-object v0, v2, v1

    .line 255
    .line 256
    invoke-virtual {v6, v2}, Lzm/t;->a([Lzm/t$a;)Lzm/t;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    goto :goto_4

    .line 261
    :cond_5
    new-instance v6, Lzm/t;

    .line 262
    .line 263
    new-array v2, v2, [Lzm/t$a;

    .line 264
    .line 265
    aput-object v0, v2, v1

    .line 266
    .line 267
    invoke-direct {v6, v2}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 268
    .line 269
    .line 270
    move-object v0, v6

    .line 271
    :goto_4
    invoke-virtual {v5, v0}, Lio/bidmachine/media3/common/a$b;->n0(Lzm/t;)Lio/bidmachine/media3/common/a$b;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    :goto_5
    move-object/from16 v16, v0

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_6
    iget-object v0, v14, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 283
    .line 284
    goto :goto_5

    .line 285
    :goto_6
    new-instance v0, Lvo/t;

    .line 286
    .line 287
    move-object v5, v0

    .line 288
    invoke-static {v4}, Lvo/b$k;->b(Lvo/b$k;)I

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    invoke-static {v3}, Lvo/b$e;->b(Lvo/b$e;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v8

    .line 296
    invoke-static {v3}, Lvo/b$e;->c(Lvo/b$e;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v1

    .line 300
    move-object v3, v14

    .line 301
    move-wide v14, v1

    .line 302
    iget v1, v3, Lvo/b$h;->d:I

    .line 303
    .line 304
    move/from16 v17, v1

    .line 305
    .line 306
    iget-object v1, v3, Lvo/b$h;->a:[Lvo/u;

    .line 307
    .line 308
    move-object/from16 v18, v1

    .line 309
    .line 310
    iget v1, v3, Lvo/b$h;->c:I

    .line 311
    .line 312
    move/from16 v19, v1

    .line 313
    .line 314
    invoke-direct/range {v5 .. v21}, Lvo/t;-><init>(IIJJJJLio/bidmachine/media3/common/a;I[Lvo/u;I[J[J)V

    .line 315
    .line 316
    .line 317
    return-object v0

    .line 318
    :cond_7
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 319
    .line 320
    invoke-static {v0, v5}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    throw v0
.end method

.method public static G(Ldn/d$b;Lao/b0;JLio/bidmachine/media3/common/DrmInitData;ZZLh7/e;)Ljava/util/List;
    .locals 11
    .param p4    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldn/d$b;",
            "Lao/b0;",
            "J",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "ZZ",
            "Lh7/e<",
            "Lvo/t;",
            "Lvo/t;",
            ">;)",
            "Ljava/util/List<",
            "Lvo/w;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, v0, Ldn/d$b;->d:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_2

    .line 15
    .line 16
    iget-object v3, v0, Ldn/d$b;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ldn/d$b;

    .line 23
    .line 24
    iget v4, v3, Ldn/d;->a:I

    .line 25
    .line 26
    const v5, 0x7472616b

    .line 27
    .line 28
    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    move-object v6, p1

    .line 32
    move-object/from16 v5, p7

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    const v4, 0x6d766864

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v4}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Ldn/d$c;

    .line 48
    .line 49
    move-object v4, v3

    .line 50
    move-wide v6, p2

    .line 51
    move-object v8, p4

    .line 52
    move/from16 v9, p5

    .line 53
    .line 54
    move/from16 v10, p6

    .line 55
    .line 56
    invoke-static/range {v4 .. v10}, Lvo/b;->F(Ldn/d$b;Ldn/d$c;JLio/bidmachine/media3/common/DrmInitData;ZZ)Lvo/t;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    move-object/from16 v5, p7

    .line 61
    .line 62
    invoke-interface {v5, v4}, Lh7/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lvo/t;

    .line 67
    .line 68
    if-nez v4, :cond_1

    .line 69
    .line 70
    move-object v6, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v6, 0x6d646961

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v6}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Ldn/d$b;

    .line 84
    .line 85
    const v6, 0x6d696e66

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v6}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ldn/d$b;

    .line 97
    .line 98
    const v6, 0x7374626c

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v6}, Ldn/d$b;->d(I)Ldn/d$b;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v3}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ldn/d$b;

    .line 110
    .line 111
    move-object v6, p1

    .line 112
    invoke-static {v4, v3, p1}, Lvo/b;->A(Lvo/t;Ldn/d$b;Lao/b0;)Lvo/w;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-object v1
.end method

.method public static H(Ldn/d$c;)Lzm/t;
    .locals 6

    .line 1
    iget-object p0, p0, Ldn/d$c;->b:Lcn/b0;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lzm/t;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    new-array v2, v2, [Lzm/t$a;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Lzm/t;-><init>([Lzm/t$a;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Lcn/b0;->a()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lt v2, v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const v5, 0x6d657461

    .line 35
    .line 36
    .line 37
    if-ne v4, v5, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcn/b0;->W(I)V

    .line 40
    .line 41
    .line 42
    add-int v4, v2, v3

    .line 43
    .line 44
    invoke-static {p0, v4}, Lvo/b;->I(Lcn/b0;I)Lzm/t;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v4}, Lzm/t;->b(Lzm/t;)Lzm/t;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    const v5, 0x736d7461

    .line 54
    .line 55
    .line 56
    if-ne v4, v5, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcn/b0;->W(I)V

    .line 59
    .line 60
    .line 61
    add-int v4, v2, v3

    .line 62
    .line 63
    invoke-static {p0, v4}, Lvo/r;->b(Lcn/b0;I)Lzm/t;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4}, Lzm/t;->b(Lzm/t;)Lzm/t;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const v5, -0x56878686

    .line 73
    .line 74
    .line 75
    if-ne v4, v5, :cond_2

    .line 76
    .line 77
    invoke-static {p0}, Lvo/b;->L(Lcn/b0;)Lzm/t;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v1, v4}, Lzm/t;->b(Lzm/t;)Lzm/t;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    :goto_1
    add-int/2addr v2, v3

    .line 86
    invoke-virtual {p0, v2}, Lcn/b0;->W(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    return-object v1
.end method

.method private static I(Lcn/b0;I)Lzm/t;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lvo/b;->f(Lcn/b0;)V

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const v3, 0x696c7374

    .line 28
    .line 29
    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 33
    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    invoke-static {p0, v0}, Lvo/b;->r(Lcn/b0;I)Lzm/t;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_0
    add-int/2addr v0, v1

    .line 42
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p0, 0x0

    .line 47
    return-object p0
.end method

.method static J(Lcn/b0;II)Lvo/b$l;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move-object v2, v1

    .line 12
    :goto_0
    sub-int v3, v0, p1

    .line 13
    .line 14
    if-ge v3, p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-lez v3, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v4, 0x0

    .line 28
    :goto_1
    const-string v5, "childAtomSize must be positive"

    .line 29
    .line 30
    invoke-static {v4, v5}, Lao/s;->a(ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const v5, 0x65796573

    .line 38
    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {p0, v0, v3}, Lvo/b;->B(Lcn/b0;II)Lvo/b$d;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :cond_1
    add-int/2addr v0, v3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    if-nez v2, :cond_3

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    new-instance v1, Lvo/b$l;

    .line 52
    .line 53
    invoke-direct {v1, v2}, Lvo/b$l;-><init>(Lvo/b$d;)V

    .line 54
    .line 55
    .line 56
    :goto_2
    return-object v1
.end method

.method private static K(Lcn/b0;IIIILjava/lang/String;ILio/bidmachine/media3/common/DrmInitData;Lvo/b$h;I)V
    .locals 43
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    .line 1
    invoke-virtual {v0, v5}, Lcn/b0;->W(I)V

    const/16 v5, 0x10

    .line 2
    invoke-virtual {v0, v5}, Lcn/b0;->X(I)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v6

    const/16 v7, 0x32

    .line 5
    invoke-virtual {v0, v7}, Lcn/b0;->X(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 7
    invoke-static {v0, v1, v2}, Lvo/b;->y(Lcn/b0;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 8
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lvo/u;

    iget-object v11, v11, Lvo/u;->b:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lio/bidmachine/media3/common/DrmInitData;->c(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v3

    .line 10
    :goto_0
    iget-object v11, v4, Lvo/b$h;->a:[Lvo/u;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lvo/u;

    aput-object v8, v11, p9

    .line 11
    :cond_1
    invoke-virtual {v0, v7}, Lcn/b0;->W(I)V

    :cond_2
    const v8, 0x6d317620

    .line 12
    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    .line 13
    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v15, 0x8

    move v13, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_5

    .line 14
    invoke-virtual {v0, v7}, Lcn/b0;->W(I)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    move-result v12

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v9

    if-nez v9, :cond_6

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    move-result v30

    move-object/from16 p9, v11

    sub-int v11, v30, v1

    if-ne v11, v2, :cond_7

    :cond_5
    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v35, v14

    move-object/from16 v32, v16

    move/from16 v28, v19

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v12, v24

    const/4 v2, 0x0

    move/from16 v23, v13

    move/from16 v24, v15

    goto/16 :goto_27

    :cond_6
    move-object/from16 p9, v11

    :cond_7
    if-lez v9, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    .line 18
    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v11, v1}, Lao/s;->a(ZLjava/lang/String;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v1

    const v11, 0x61766343

    if-ne v1, v11, :cond_b

    if-nez v8, :cond_9

    const/4 v1, 0x1

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 20
    :goto_5
    invoke-static {v1, v8}, Lao/s;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 21
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    .line 22
    invoke-static/range {p0 .. p0}, Lao/d;->b(Lcn/b0;)Lao/d;

    move-result-object v1

    .line 23
    iget-object v8, v1, Lao/d;->a:Ljava/util/List;

    .line 24
    iget v11, v1, Lao/d;->b:I

    iput v11, v4, Lvo/b$h;->c:I

    if-nez v29, :cond_a

    .line 25
    iget v14, v1, Lao/d;->k:F

    .line 26
    :cond_a
    iget-object v11, v1, Lao/d;->l:Ljava/lang/String;

    .line 27
    iget v12, v1, Lao/d;->j:I

    .line 28
    iget v13, v1, Lao/d;->g:I

    .line 29
    iget v15, v1, Lao/d;->h:I

    .line 30
    iget v2, v1, Lao/d;->i:I

    move/from16 v16, v2

    .line 31
    iget v2, v1, Lao/d;->e:I

    .line 32
    iget v1, v1, Lao/d;->f:I

    .line 33
    const-string v17, "video/avc"

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v20, v12

    move/from16 v23, v15

    move/from16 v24, v16

    const/4 v6, 0x0

    move v15, v2

    move-object/from16 v16, v8

    move-object/from16 v8, v17

    const/4 v2, 0x0

    move-object/from16 v17, v11

    move v11, v13

    move v13, v1

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_26

    :cond_b
    const v2, 0x68766343

    const-string v11, "video/hevc"

    if-ne v1, v2, :cond_f

    if-nez v8, :cond_c

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    .line 34
    :goto_8
    invoke-static {v1, v2}, Lao/s;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 35
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    .line 36
    invoke-static/range {p0 .. p0}, Lao/c0;->a(Lcn/b0;)Lao/c0;

    move-result-object v1

    .line 37
    iget-object v2, v1, Lao/c0;->a:Ljava/util/List;

    .line 38
    iget v8, v1, Lao/c0;->b:I

    iput v8, v4, Lvo/b$h;->c:I

    if-nez v29, :cond_d

    .line 39
    iget v14, v1, Lao/c0;->l:F

    .line 40
    :cond_d
    iget v8, v1, Lao/c0;->m:I

    .line 41
    iget v12, v1, Lao/c0;->c:I

    .line 42
    iget-object v13, v1, Lao/c0;->n:Ljava/lang/String;

    .line 43
    iget v15, v1, Lao/c0;->k:I

    move-object/from16 v16, v2

    const/4 v2, -0x1

    if-eq v15, v2, :cond_e

    move/from16 v19, v15

    .line 44
    :cond_e
    iget v2, v1, Lao/c0;->h:I

    .line 45
    iget v15, v1, Lao/c0;->i:I

    move/from16 v17, v2

    .line 46
    iget v2, v1, Lao/c0;->j:I

    move/from16 v20, v2

    .line 47
    iget v2, v1, Lao/c0;->f:I

    move/from16 v21, v2

    .line 48
    iget v2, v1, Lao/c0;->g:I

    .line 49
    iget-object v1, v1, Lao/c0;->o:Ldn/g$k;

    move-object/from16 v28, v1

    move-object/from16 v31, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v15

    move/from16 v24, v20

    move/from16 v15, v21

    const/4 v1, -0x1

    const/4 v6, 0x0

    move/from16 v20, v8

    move-object v8, v11

    move/from16 v21, v12

    move/from16 v11, v17

    move-object/from16 v17, v13

    move v13, v2

    const/4 v2, 0x0

    goto/16 :goto_26

    :cond_f
    const v2, 0x6c687643

    move-object/from16 v31, v3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_1b

    .line 50
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    .line 51
    invoke-static {v1, v2}, Lao/s;->a(ZLjava/lang/String;)V

    move-object/from16 v2, v28

    if-eqz v2, :cond_10

    .line 52
    iget-object v1, v2, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    .line 53
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v3, :cond_10

    const/4 v1, 0x1

    goto :goto_9

    :cond_10
    const/4 v1, 0x0

    :goto_9
    const-string v3, "must have at least two layers"

    .line 54
    invoke-static {v1, v3}, Lao/s;->a(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 55
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    .line 56
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldn/g$k;

    invoke-static {v0, v1}, Lao/c0;->c(Lcn/b0;Ldn/g$k;)Lao/c0;

    move-result-object v1

    .line 57
    iget v3, v4, Lvo/b$h;->c:I

    iget v8, v1, Lao/c0;->b:I

    if-ne v3, v8, :cond_11

    const/4 v3, 0x1

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    :goto_a
    const-string v8, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    .line 58
    iget v3, v1, Lao/c0;->h:I

    const/4 v8, -0x1

    move/from16 v11, v22

    if-eq v3, v8, :cond_13

    if-ne v11, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 59
    :goto_b
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v3, v12}, Lao/s;->a(ZLjava/lang/String;)V

    .line 60
    :cond_13
    iget v3, v1, Lao/c0;->i:I

    move/from16 v12, v23

    if-eq v3, v8, :cond_15

    if-ne v12, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_c

    :cond_14
    const/4 v3, 0x0

    .line 61
    :goto_c
    const-string v8, "colorRange must be the same for both views"

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    .line 62
    :cond_15
    iget v3, v1, Lao/c0;->j:I

    const/4 v8, -0x1

    if-eq v3, v8, :cond_17

    move/from16 v8, v24

    move/from16 v17, v8

    if-ne v8, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    .line 63
    :goto_d
    const-string v8, "colorTransfer must be the same for both views"

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    goto :goto_e

    :cond_17
    move/from16 v17, v24

    .line 64
    :goto_e
    iget v3, v1, Lao/c0;->f:I

    if-ne v15, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_f

    :cond_18
    const/4 v3, 0x0

    :goto_f
    const-string v8, "bitdepthLuma must be the same for both views"

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    .line 65
    iget v3, v1, Lao/c0;->g:I

    if-ne v13, v3, :cond_19

    const/4 v3, 0x1

    goto :goto_10

    :cond_19
    const/4 v3, 0x0

    :goto_10
    const-string v8, "bitdepthChroma must be the same for both views"

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    move-object/from16 v3, v16

    if-eqz v3, :cond_1a

    .line 66
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    move-result-object v8

    .line 67
    invoke-virtual {v8, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    iget-object v8, v1, Lao/c0;->a:Ljava/util/List;

    .line 68
    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_11

    .line 70
    :cond_1a
    const-string v8, "initializationData must be already set from hvcC atom"

    move-object/from16 v16, v3

    const/4 v3, 0x0

    invoke-static {v3, v8}, Lao/s;->a(ZLjava/lang/String;)V

    .line 71
    :goto_11
    iget-object v1, v1, Lao/c0;->n:Ljava/lang/String;

    .line 72
    const-string v3, "video/mv-hevc"

    move-object/from16 v28, v2

    move-object v8, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v24, v17

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v17, v1

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v32, v16

    move/from16 v11, v22

    move/from16 v33, v23

    move/from16 v34, v24

    move-object/from16 v2, v28

    const v3, 0x76657875

    if-ne v1, v3, :cond_20

    .line 73
    invoke-static {v0, v12, v9}, Lvo/b;->J(Lcn/b0;II)Lvo/b$l;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 74
    invoke-static {v1}, Lvo/b$l;->a(Lvo/b$l;)Lvo/b$d;

    move-result-object v3

    if-eqz v3, :cond_1c

    if-eqz v2, :cond_1d

    .line 75
    iget-object v3, v2, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v12, 0x2

    if-lt v3, v12, :cond_1d

    .line 76
    invoke-virtual {v1}, Lvo/b$l;->b()Z

    move-result v3

    const-string v12, "both eye views must be marked as available"

    .line 77
    invoke-static {v3, v12}, Lao/s;->a(ZLjava/lang/String;)V

    .line 78
    invoke-static {v1}, Lvo/b$l;->a(Lvo/b$l;)Lvo/b$d;

    move-result-object v1

    invoke-static {v1}, Lvo/b$d;->a(Lvo/b$d;)Lvo/b$g;

    move-result-object v1

    invoke-static {v1}, Lvo/b$g;->c(Lvo/b$g;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 79
    invoke-static {v1, v3}, Lao/s;->a(ZLjava/lang/String;)V

    :cond_1c
    move/from16 v3, v19

    goto :goto_13

    :cond_1d
    move/from16 v3, v19

    const/4 v12, -0x1

    if-ne v3, v12, :cond_1f

    .line 80
    invoke-static {v1}, Lvo/b$l;->a(Lvo/b$l;)Lvo/b$d;

    move-result-object v1

    invoke-static {v1}, Lvo/b$d;->a(Lvo/b$d;)Lvo/b$g;

    move-result-object v1

    invoke-static {v1}, Lvo/b$g;->c(Lvo/b$g;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x5

    :goto_12
    move/from16 v19, v1

    goto :goto_14

    :cond_1e
    const/4 v1, 0x4

    goto :goto_12

    :cond_1f
    :goto_13
    move/from16 v19, v3

    :goto_14
    move-object/from16 v28, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_26

    :cond_20
    move/from16 v3, v19

    move-object/from16 v19, v2

    const v2, 0x64766343

    if-eq v1, v2, :cond_21

    const v2, 0x64767643

    if-ne v1, v2, :cond_22

    :cond_21
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    move/from16 v12, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    goto/16 :goto_25

    :cond_22
    const v2, 0x76706343

    if-ne v1, v2, :cond_28

    if-nez v8, :cond_23

    const/4 v1, 0x1

    :goto_15
    const/4 v2, 0x0

    goto :goto_16

    :cond_23
    const/4 v1, 0x0

    goto :goto_15

    .line 81
    :goto_16
    invoke-static {v1, v2}, Lao/s;->a(ZLjava/lang/String;)V

    const v1, 0x76703038

    .line 82
    const-string v2, "video/x-vnd.on2.vp9"

    if-ne v10, v1, :cond_24

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_17

    :cond_24
    move-object v1, v2

    :goto_17
    add-int/lit8 v12, v12, 0xc

    .line 83
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v8

    int-to-byte v8, v8

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v11

    int-to-byte v11, v11

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v12

    shr-int/lit8 v13, v12, 0x4

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x7

    int-to-byte v15, v15

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    int-to-byte v2, v13

    .line 88
    invoke-static {v8, v11, v2, v15}, Lcn/i;->h(BBBB)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move-object/from16 v32, v2

    :cond_25
    and-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_18

    :cond_26
    const/4 v2, 0x0

    .line 89
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v8

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v11

    .line 91
    invoke-static {v8}, Lzm/g;->j(I)I

    move-result v22

    if-eqz v2, :cond_27

    const/16 v23, 0x1

    goto :goto_19

    :cond_27
    const/16 v23, 0x2

    .line 92
    :goto_19
    invoke-static {v11}, Lzm/g;->k(I)I

    move-result v24

    move-object v8, v1

    move/from16 v40, v6

    move v15, v13

    move-object/from16 v28, v19

    move/from16 v11, v22

    move-object/from16 v16, v32

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move/from16 v22, v10

    goto/16 :goto_26

    :cond_28
    const v2, 0x61763143

    if-ne v1, v2, :cond_29

    add-int/lit8 v1, v9, -0x8

    .line 93
    new-array v2, v1, [B

    const/4 v8, 0x0

    .line 94
    invoke-virtual {v0, v2, v8, v1}, Lcn/b0;->l([BII)V

    .line 95
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    add-int/lit8 v12, v12, 0x8

    .line 96
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    .line 97
    invoke-static/range {p0 .. p0}, Lvo/b;->i(Lcn/b0;)Lzm/g;

    move-result-object v1

    .line 98
    iget v2, v1, Lzm/g;->e:I

    .line 99
    iget v8, v1, Lzm/g;->f:I

    .line 100
    iget v11, v1, Lzm/g;->a:I

    .line 101
    iget v12, v1, Lzm/g;->b:I

    .line 102
    iget v1, v1, Lzm/g;->c:I

    .line 103
    const-string v13, "video/av01"

    move/from16 v24, v1

    move v15, v2

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v12

    move-object/from16 v28, v19

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    move-object/from16 v41, v13

    move v13, v8

    move-object/from16 v8, v41

    goto/16 :goto_26

    :cond_29
    const v2, 0x636c6c69

    if-ne v1, v2, :cond_2b

    if-nez v25, :cond_2a

    .line 104
    invoke-static {}, Lvo/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2a
    move-object/from16 v1, v25

    const/16 v2, 0x15

    .line 105
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v40, v6

    move/from16 v22, v10

    move-object/from16 v28, v19

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move/from16 v19, v3

    goto/16 :goto_26

    :cond_2b
    const v2, 0x6d646376

    if-ne v1, v2, :cond_2d

    if-nez v25, :cond_2c

    .line 108
    invoke-static {}, Lvo/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v25

    :cond_2c
    move-object/from16 v1, v25

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v12

    move/from16 v22, v10

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v10

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v4

    move/from16 v23, v13

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v13

    move/from16 v24, v15

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v15

    move/from16 v28, v3

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v3

    move/from16 v35, v14

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->D()S

    move-result v14

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->J()J

    move-result-wide v36

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->J()J

    move-result-wide v38

    move/from16 v40, v6

    const/4 v6, 0x1

    .line 119
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 128
    div-long v12, v36, v2

    long-to-int v4, v12

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    div-long v2, v38, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v25, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1a
    const/4 v6, 0x0

    :goto_1b
    move/from16 v41, v28

    move-object/from16 v28, v19

    move/from16 v19, v41

    goto/16 :goto_26

    :cond_2d
    move/from16 v28, v3

    move/from16 v40, v6

    move/from16 v22, v10

    move/from16 v23, v13

    move/from16 v35, v14

    move/from16 v24, v15

    const v2, 0x64323633

    if-ne v1, v2, :cond_30

    if-nez v8, :cond_2e

    const/4 v1, 0x1

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_2e
    const/4 v1, 0x0

    goto :goto_1c

    .line 130
    :goto_1d
    invoke-static {v1, v2}, Lao/s;->a(ZLjava/lang/String;)V

    move-object/from16 v8, p9

    :cond_2f
    :goto_1e
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    :goto_1f
    move/from16 v23, v33

    move/from16 v24, v34

    move/from16 v14, v35

    const/4 v1, -0x1

    goto :goto_1a

    :cond_30
    const/4 v2, 0x0

    const v3, 0x65736473

    if-ne v1, v3, :cond_33

    if-nez v8, :cond_31

    const/4 v1, 0x1

    goto :goto_20

    :cond_31
    const/4 v1, 0x0

    .line 131
    :goto_20
    invoke-static {v1, v2}, Lao/s;->a(ZLjava/lang/String;)V

    .line 132
    invoke-static {v0, v12}, Lvo/b;->m(Lcn/b0;I)Lvo/b$c;

    move-result-object v27

    .line 133
    invoke-static/range {v27 .. v27}, Lvo/b$c;->a(Lvo/b$c;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static/range {v27 .. v27}, Lvo/b$c;->b(Lvo/b$c;)[B

    move-result-object v3

    if-eqz v3, :cond_32

    .line 135
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    goto :goto_21

    :cond_32
    move-object/from16 v16, v32

    :goto_21
    move-object v8, v1

    move/from16 v13, v23

    move/from16 v15, v24

    goto :goto_1f

    :cond_33
    const v3, 0x62747274

    if-ne v1, v3, :cond_34

    .line 136
    invoke-static {v0, v12}, Lvo/b;->j(Lcn/b0;I)Lvo/b$a;

    move-result-object v26

    goto :goto_1e

    :cond_34
    const v3, 0x70617370

    if-ne v1, v3, :cond_35

    .line 137
    invoke-static {v0, v12}, Lvo/b;->w(Lcn/b0;I)F

    move-result v1

    move v14, v1

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v24, v34

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v29, 0x1

    goto :goto_1b

    :cond_35
    const v3, 0x73763364

    if-ne v1, v3, :cond_36

    .line 138
    invoke-static {v0, v12, v9}, Lvo/b;->x(Lcn/b0;II)[B

    move-result-object v18

    goto :goto_1e

    :cond_36
    const v3, 0x73743364

    if-ne v1, v3, :cond_3b

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v1

    const/4 v3, 0x3

    .line 140
    invoke-virtual {v0, v3}, Lcn/b0;->X(I)V

    if-nez v1, :cond_2f

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v4, 0x1

    if-eq v1, v4, :cond_39

    const/4 v6, 0x2

    if-eq v1, v6, :cond_38

    if-eq v1, v3, :cond_37

    goto/16 :goto_1e

    :cond_37
    move/from16 v28, v3

    goto/16 :goto_1e

    :cond_38
    const/16 v28, 0x2

    goto/16 :goto_1e

    :cond_39
    move/from16 v28, v4

    goto/16 :goto_1e

    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_1e

    :cond_3b
    const/4 v4, 0x1

    const v3, 0x61707643

    if-ne v1, v3, :cond_3c

    add-int/lit8 v1, v9, -0xc

    .line 142
    new-array v3, v1, [B

    add-int/lit8 v12, v12, 0xc

    .line 143
    invoke-virtual {v0, v12}, Lcn/b0;->W(I)V

    const/4 v6, 0x0

    .line 144
    invoke-virtual {v0, v3, v6, v1}, Lcn/b0;->l([BII)V

    .line 145
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 146
    new-instance v1, Lcn/b0;

    invoke-direct {v1, v3}, Lcn/b0;-><init>([B)V

    invoke-static {v1}, Lvo/b;->g(Lcn/b0;)Lzm/g;

    move-result-object v1

    .line 147
    iget v3, v1, Lzm/g;->e:I

    .line 148
    iget v4, v1, Lzm/g;->f:I

    .line 149
    iget v8, v1, Lzm/g;->a:I

    .line 150
    iget v10, v1, Lzm/g;->b:I

    .line 151
    iget v1, v1, Lzm/g;->c:I

    .line 152
    const-string v11, "video/apv"

    move/from16 v24, v1

    move v15, v3

    move v13, v4

    move/from16 v23, v10

    move/from16 v14, v35

    const/4 v1, -0x1

    move-object/from16 v41, v11

    move v11, v8

    move-object/from16 v8, v41

    move/from16 v42, v28

    move-object/from16 v28, v19

    move/from16 v19, v42

    goto/16 :goto_26

    :cond_3c
    const/4 v6, 0x0

    const v3, 0x636f6c72

    if-ne v1, v3, :cond_41

    const/4 v1, -0x1

    move/from16 v12, v34

    if-ne v11, v1, :cond_42

    if-ne v12, v1, :cond_42

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v3

    const v10, 0x6e636c78

    if-eq v3, v10, :cond_3e

    const v10, 0x6e636c63

    if-ne v3, v10, :cond_3d

    goto :goto_22

    .line 154
    :cond_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported color type: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ldn/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BoxParsers"

    invoke-static {v4, v3}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 155
    :cond_3e
    :goto_22
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v3

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v10

    const/4 v11, 0x2

    .line 157
    invoke-virtual {v0, v11}, Lcn/b0;->X(I)V

    const/16 v12, 0x13

    if-ne v9, v12, :cond_3f

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3f

    move v12, v4

    goto :goto_23

    :cond_3f
    move v12, v6

    .line 159
    :goto_23
    invoke-static {v3}, Lzm/g;->j(I)I

    move-result v3

    if-eqz v12, :cond_40

    move v11, v4

    .line 160
    :cond_40
    invoke-static {v10}, Lzm/g;->k(I)I

    move-result v4

    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v14, v35

    move/from16 v24, v4

    move/from16 v23, v11

    move v11, v3

    goto/16 :goto_1b

    :cond_41
    move/from16 v12, v34

    const/4 v1, -0x1

    :cond_42
    :goto_24
    move/from16 v13, v23

    move/from16 v15, v24

    move-object/from16 v16, v32

    move/from16 v23, v33

    move/from16 v14, v35

    move/from16 v24, v12

    goto/16 :goto_1b

    .line 161
    :goto_25
    invoke-static/range {p0 .. p0}, Lao/n;->a(Lcn/b0;)Lao/n;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 162
    iget-object v3, v3, Lao/n;->c:Ljava/lang/String;

    .line 163
    const-string v8, "video/dolby-vision"

    move-object/from16 v17, v3

    goto :goto_24

    :goto_26
    add-int/2addr v7, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p8

    move/from16 v10, v22

    move-object/from16 v3, v31

    move/from16 v6, v40

    move/from16 v22, v11

    move-object/from16 v11, p9

    goto/16 :goto_2

    :goto_27
    if-nez v8, :cond_43

    return-void

    .line 164
    :cond_43
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    move/from16 v1, p4

    .line 165
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move-object/from16 v9, v17

    .line 167
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/a$b;->B0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v1, v40

    .line 169
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->d0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v14, v35

    .line 170
    invoke-virtual {v0, v14}, Lio/bidmachine/media3/common/a$b;->q0(F)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v1, p6

    .line 171
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->t0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move-object/from16 v9, v18

    .line 172
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/a$b;->r0([B)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v1, v28

    .line 173
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->x0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move-object/from16 v9, v32

    .line 174
    invoke-virtual {v0, v9}, Lio/bidmachine/media3/common/a$b;->g0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v1, v20

    .line 175
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->l0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v1, v21

    .line 176
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->m0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move-object/from16 v3, v31

    .line 177
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/a$b;->Y(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move-object/from16 v1, p5

    .line 178
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    new-instance v1, Lzm/g$b;

    invoke-direct {v1}, Lzm/g$b;-><init>()V

    .line 179
    invoke-virtual {v1, v11}, Lzm/g$b;->d(I)Lzm/g$b;

    move-result-object v1

    move/from16 v3, v33

    .line 180
    invoke-virtual {v1, v3}, Lzm/g$b;->c(I)Lzm/g$b;

    move-result-object v1

    .line 181
    invoke-virtual {v1, v12}, Lzm/g$b;->e(I)Lzm/g$b;

    move-result-object v1

    if-eqz v25, :cond_44

    .line 182
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_28

    :cond_44
    move-object v9, v2

    :goto_28
    invoke-virtual {v1, v9}, Lzm/g$b;->f([B)Lzm/g$b;

    move-result-object v1

    move/from16 v15, v24

    .line 183
    invoke-virtual {v1, v15}, Lzm/g$b;->g(I)Lzm/g$b;

    move-result-object v1

    move/from16 v13, v23

    .line 184
    invoke-virtual {v1, v13}, Lzm/g$b;->b(I)Lzm/g$b;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lzm/g$b;->a()Lzm/g;

    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->T(Lzm/g;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    if-eqz v26, :cond_45

    .line 187
    invoke-static/range {v26 .. v26}, Lvo/b$a;->b(Lvo/b$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v1

    .line 188
    invoke-static/range {v26 .. v26}, Lvo/b$a;->a(Lvo/b$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    goto :goto_29

    :cond_45
    if-eqz v27, :cond_46

    .line 189
    invoke-static/range {v27 .. v27}, Lvo/b$c;->d(Lvo/b$c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v1

    .line 190
    invoke-static/range {v27 .. v27}, Lvo/b$c;->c(Lvo/b$c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    .line 191
    :cond_46
    :goto_29
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    move-result-object v0

    move-object/from16 v1, p8

    iput-object v0, v1, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    return-void
.end method

.method private static L(Lcn/b0;)Lzm/t;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcn/b0;->D()S

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-virtual {p0, v3}, Lcn/b0;->X(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcn/b0;->E(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 v2, 0x2b

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x2d

    .line 22
    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    sub-int/2addr v4, v0

    .line 44
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    new-instance v2, Lzm/t;

    .line 53
    .line 54
    new-instance v4, Ldn/e;

    .line 55
    .line 56
    invoke-direct {v4, v3, p0}, Ldn/e;-><init>(FF)V

    .line 57
    .line 58
    .line 59
    new-array p0, v0, [Lzm/t$a;

    .line 60
    .line 61
    aput-object v4, p0, v1

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lzm/t;-><init>([Lzm/t$a;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    return-object v2

    .line 67
    :catch_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method private static a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private static b([JJJJ)Z
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x1

    .line 3
    sub-int/2addr v0, v1

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, v3, v0}, Lcn/m0;->p(III)I

    .line 7
    .line 8
    .line 9
    move-result v4

    .line 10
    array-length v5, p0

    .line 11
    sub-int/2addr v5, v2

    .line 12
    invoke-static {v5, v3, v0}, Lcn/m0;->p(III)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget-wide v5, p0, v3

    .line 17
    .line 18
    cmp-long v2, v5, p3

    .line 19
    .line 20
    if-gtz v2, :cond_0

    .line 21
    .line 22
    aget-wide v4, p0, v4

    .line 23
    .line 24
    cmp-long p3, p3, v4

    .line 25
    .line 26
    if-gez p3, :cond_0

    .line 27
    .line 28
    aget-wide p3, p0, v0

    .line 29
    .line 30
    cmp-long p0, p3, p5

    .line 31
    .line 32
    if-gez p0, :cond_0

    .line 33
    .line 34
    cmp-long p0, p5, p1

    .line 35
    .line 36
    if-gtz p0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v1, v3

    .line 40
    :goto_0
    return v1
.end method

.method private static c(Lcn/b0;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt v0, p2, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    invoke-static {v3, v4}, Lao/s;->a(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_1
    sub-int v3, v0, p2

    .line 17
    .line 18
    if-ge v3, p3, :cond_3

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    move v4, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    move v4, v1

    .line 32
    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lao/s;->a(ZLjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v4, p1, :cond_2

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    add-int/2addr v0, v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const/4 p0, -0x1

    .line 47
    return p0
.end method

.method private static d(I)Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    shr-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x60

    .line 6
    .line 7
    int-to-char v0, v0

    .line 8
    shr-int/lit8 v1, p0, 0x5

    .line 9
    .line 10
    and-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    add-int/lit8 v1, v1, 0x60

    .line 13
    .line 14
    int-to-char v1, v1

    .line 15
    and-int/lit8 p0, p0, 0x1f

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x60

    .line 18
    .line 19
    int-to-char p0, p0

    .line 20
    const/4 v2, 0x3

    .line 21
    new-array v3, v2, [C

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aput-char v0, v3, v4

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    aput-char v1, v3, v0

    .line 28
    .line 29
    const/4 v1, 0x2

    .line 30
    aput-char p0, v3, v1

    .line 31
    .line 32
    :goto_0
    if-ge v4, v2, :cond_2

    .line 33
    .line 34
    aget-char p0, v3, v4

    .line 35
    .line 36
    const/16 v1, 0x61

    .line 37
    .line 38
    if-lt p0, v1, :cond_1

    .line 39
    .line 40
    const/16 v1, 0x7a

    .line 41
    .line 42
    if-le p0, v1, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/2addr v4, v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 52
    .line 53
    .line 54
    return-object p0
.end method

.method private static e(I)I
    .locals 1

    .line 1
    const v0, 0x736f756e

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const v0, 0x76696465

    .line 9
    .line 10
    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x2

    .line 14
    return p0

    .line 15
    :cond_1
    const v0, 0x74657874

    .line 16
    .line 17
    .line 18
    if-eq p0, v0, :cond_4

    .line 19
    .line 20
    const v0, 0x7362746c

    .line 21
    .line 22
    .line 23
    if-eq p0, v0, :cond_4

    .line 24
    .line 25
    const v0, 0x73756274

    .line 26
    .line 27
    .line 28
    if-eq p0, v0, :cond_4

    .line 29
    .line 30
    const v0, 0x636c6370

    .line 31
    .line 32
    .line 33
    if-ne p0, v0, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const v0, 0x6d657461

    .line 37
    .line 38
    .line 39
    if-ne p0, v0, :cond_3

    .line 40
    .line 41
    const/4 p0, 0x5

    .line 42
    return p0

    .line 43
    :cond_3
    const/4 p0, -0x1

    .line 44
    return p0

    .line 45
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 46
    return p0
.end method

.method public static f(Lcn/b0;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {p0, v1}, Lcn/b0;->X(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x68646c72    # 4.3148E24f

    .line 14
    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static g(Lcn/b0;)Lzm/g;
    .locals 11

    .line 1
    new-instance v0, Lzm/g$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/g$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcn/a0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcn/b0;->e()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcn/a0;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    mul-int/2addr p0, v2

    .line 22
    invoke-virtual {v1, p0}, Lcn/a0;->p(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v1, p0}, Lcn/a0;->s(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    move v5, v4

    .line 35
    :goto_0
    if-ge v5, v3, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, p0}, Lcn/a0;->s(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    move v7, v4

    .line 45
    :goto_1
    if-ge v7, v6, :cond_2

    .line 46
    .line 47
    const/4 v8, 0x6

    .line 48
    invoke-virtual {v1, v8}, Lcn/a0;->r(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 56
    .line 57
    .line 58
    const/16 v9, 0xb

    .line 59
    .line 60
    invoke-virtual {v1, v9}, Lcn/a0;->s(I)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x4

    .line 64
    invoke-virtual {v1, v9}, Lcn/a0;->r(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v9}, Lcn/a0;->h(I)I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    add-int/2addr v9, v2

    .line 72
    invoke-virtual {v0, v9}, Lzm/g$b;->g(I)Lzm/g$b;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9}, Lzm/g$b;->b(I)Lzm/g$b;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p0}, Lcn/a0;->s(I)V

    .line 79
    .line 80
    .line 81
    if-eqz v8, :cond_1

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 88
    .line 89
    .line 90
    move-result v9

    .line 91
    invoke-virtual {v1, p0}, Lcn/a0;->s(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 95
    .line 96
    .line 97
    move-result v10

    .line 98
    invoke-static {v8}, Lzm/g;->j(I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-virtual {v0, v8}, Lzm/g$b;->d(I)Lzm/g$b;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-eqz v10, :cond_0

    .line 107
    .line 108
    move v10, p0

    .line 109
    goto :goto_2

    .line 110
    :cond_0
    const/4 v10, 0x2

    .line 111
    :goto_2
    invoke-virtual {v8, v10}, Lzm/g$b;->c(I)Lzm/g$b;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v9}, Lzm/g;->k(I)I

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    invoke-virtual {v8, v9}, Lzm/g$b;->e(I)Lzm/g$b;

    .line 120
    .line 121
    .line 122
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method

.method private static h(Lcn/b0;IIIILjava/lang/String;ZLio/bidmachine/media3/common/DrmInitData;Lvo/b$h;I)V
    .locals 26
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lio/bidmachine/media3/common/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcn/b0;->W(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v11

    .line 3
    invoke-virtual {v0, v8}, Lcn/b0;->X(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v9}, Lcn/b0;->X(I)V

    const/4 v11, 0x0

    :goto_0
    const/4 v14, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/16 v10, 0x10

    if-eqz v11, :cond_d

    if-ne v11, v13, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v11, v12, :cond_c

    .line 5
    invoke-virtual {v0, v10}, Lcn/b0;->X(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->o()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v8, v10

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->L()I

    move-result v10

    .line 8
    invoke-virtual {v0, v14}, Lcn/b0;->X(I)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->L()I

    move-result v11

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->L()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    if-eqz v20, :cond_2

    move/from16 v20, v13

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    :goto_1
    and-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_3

    move/from16 v19, v13

    goto :goto_2

    :cond_3
    const/16 v19, 0x0

    :goto_2
    const/16 v12, 0x20

    if-nez v20, :cond_a

    if-ne v11, v9, :cond_4

    const/4 v11, 0x3

    goto :goto_3

    :cond_4
    const/16 v15, 0x10

    if-ne v11, v15, :cond_6

    if-eqz v19, :cond_5

    const/high16 v11, 0x10000000

    goto :goto_3

    :cond_5
    const/4 v11, 0x2

    goto :goto_3

    :cond_6
    const/16 v15, 0x18

    if-ne v11, v15, :cond_8

    if-eqz v19, :cond_7

    const/high16 v11, 0x50000000

    goto :goto_3

    :cond_7
    const/16 v11, 0x15

    goto :goto_3

    :cond_8
    if-ne v11, v12, :cond_b

    if-eqz v19, :cond_9

    const/high16 v11, 0x60000000

    goto :goto_3

    :cond_9
    const/16 v11, 0x16

    goto :goto_3

    :cond_a
    if-ne v11, v12, :cond_b

    move v11, v14

    goto :goto_3

    :cond_b
    const/4 v11, -0x1

    .line 11
    :goto_3
    invoke-virtual {v0, v9}, Lcn/b0;->X(I)V

    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    return-void

    .line 12
    :cond_d
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v10

    .line 13
    invoke-virtual {v0, v8}, Lcn/b0;->X(I)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->I()I

    move-result v8

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    move-result v9

    sub-int/2addr v9, v14

    invoke-virtual {v0, v9}, Lcn/b0;->W(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v9

    if-ne v11, v13, :cond_e

    const/16 v11, 0x10

    .line 17
    invoke-virtual {v0, v11}, Lcn/b0;->X(I)V

    :cond_e
    const/4 v11, -0x1

    :goto_5
    const v12, 0x73617762

    const v15, 0x73616d72

    const v14, 0x69616d66

    if-ne v1, v14, :cond_f

    const/4 v8, -0x1

    const/4 v10, -0x1

    goto :goto_7

    :cond_f
    if-ne v1, v15, :cond_10

    const/16 v8, 0x1f40

    :goto_6
    move v10, v13

    goto :goto_7

    :cond_10
    if-ne v1, v12, :cond_11

    const/16 v8, 0x3e80

    goto :goto_6

    .line 18
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->f()I

    move-result v13

    const v14, 0x656e6361

    if-ne v1, v14, :cond_14

    .line 19
    invoke-static {v0, v2, v3}, Lvo/b;->y(Lcn/b0;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_13

    .line 20
    iget-object v1, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v6, :cond_12

    const/4 v6, 0x0

    goto :goto_8

    .line 21
    :cond_12
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lvo/u;

    iget-object v12, v12, Lvo/u;->b:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lio/bidmachine/media3/common/DrmInitData;->c(Ljava/lang/String;)Lio/bidmachine/media3/common/DrmInitData;

    move-result-object v6

    .line 22
    :goto_8
    iget-object v12, v7, Lvo/b$h;->a:[Lvo/u;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lvo/u;

    aput-object v14, v12, p9

    .line 23
    :cond_13
    invoke-virtual {v0, v13}, Lcn/b0;->W(I)V

    :cond_14
    const v12, 0x61632d33

    .line 24
    const-string v14, "audio/mhm1"

    if-ne v1, v12, :cond_15

    .line 25
    const-string v1, "audio/ac3"

    :goto_9
    move v12, v11

    goto/16 :goto_d

    :cond_15
    const v12, 0x65632d33

    if-ne v1, v12, :cond_16

    .line 26
    const-string v1, "audio/eac3"

    goto :goto_9

    :cond_16
    const v12, 0x61632d34

    if-ne v1, v12, :cond_17

    .line 27
    const-string v1, "audio/ac4"

    goto :goto_9

    :cond_17
    const v12, 0x64747363

    if-ne v1, v12, :cond_18

    .line 28
    const-string v1, "audio/vnd.dts"

    goto :goto_9

    :cond_18
    const v12, 0x64747368

    if-eq v1, v12, :cond_2d

    const v12, 0x6474736c

    if-ne v1, v12, :cond_19

    goto/16 :goto_c

    :cond_19
    const v12, 0x64747365

    if-ne v1, v12, :cond_1a

    .line 29
    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_9

    :cond_1a
    const v12, 0x64747378

    if-ne v1, v12, :cond_1b

    .line 30
    const-string v1, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_9

    :cond_1b
    if-ne v1, v15, :cond_1c

    .line 31
    const-string v1, "audio/3gpp"

    goto :goto_9

    :cond_1c
    const v12, 0x73617762

    if-ne v1, v12, :cond_1d

    .line 32
    const-string v1, "audio/amr-wb"

    goto :goto_9

    :cond_1d
    const v12, 0x736f7774

    .line 33
    const-string v15, "audio/raw"

    if-ne v1, v12, :cond_1e

    :goto_a
    move-object v1, v15

    const/4 v12, 0x2

    goto/16 :goto_d

    :cond_1e
    const v12, 0x74776f73

    if-ne v1, v12, :cond_1f

    move-object v1, v15

    const/high16 v12, 0x10000000

    goto/16 :goto_d

    :cond_1f
    const v12, 0x6c70636d

    if-ne v1, v12, :cond_21

    const/4 v12, -0x1

    if-ne v11, v12, :cond_20

    goto :goto_a

    :cond_20
    move v12, v11

    move-object v1, v15

    goto/16 :goto_d

    :cond_21
    const v12, 0x2e6d7032

    if-eq v1, v12, :cond_2c

    const v12, 0x2e6d7033

    if-ne v1, v12, :cond_22

    goto :goto_b

    :cond_22
    const v12, 0x6d686131

    if-ne v1, v12, :cond_23

    .line 34
    const-string v1, "audio/mha1"

    goto :goto_9

    :cond_23
    const v12, 0x6d686d31

    if-ne v1, v12, :cond_24

    move v12, v11

    move-object v1, v14

    goto :goto_d

    :cond_24
    const v12, 0x616c6163

    if-ne v1, v12, :cond_25

    .line 35
    const-string v1, "audio/alac"

    goto/16 :goto_9

    :cond_25
    const v12, 0x616c6177

    if-ne v1, v12, :cond_26

    .line 36
    const-string v1, "audio/g711-alaw"

    goto/16 :goto_9

    :cond_26
    const v12, 0x756c6177

    if-ne v1, v12, :cond_27

    .line 37
    const-string v1, "audio/g711-mlaw"

    goto/16 :goto_9

    :cond_27
    const v12, 0x4f707573

    if-ne v1, v12, :cond_28

    .line 38
    const-string v1, "audio/opus"

    goto/16 :goto_9

    :cond_28
    const v12, 0x664c6143

    if-ne v1, v12, :cond_29

    .line 39
    const-string v1, "audio/flac"

    goto/16 :goto_9

    :cond_29
    const v12, 0x6d6c7061

    if-ne v1, v12, :cond_2a

    .line 40
    const-string v1, "audio/true-hd"

    goto/16 :goto_9

    :cond_2a
    const v12, 0x69616d66

    if-ne v1, v12, :cond_2b

    .line 41
    const-string v1, "audio/iamf"

    goto/16 :goto_9

    :cond_2b
    move v12, v11

    const/4 v1, 0x0

    goto :goto_d

    .line 42
    :cond_2c
    :goto_b
    const-string v1, "audio/mpeg"

    goto/16 :goto_9

    .line 43
    :cond_2d
    :goto_c
    const-string v1, "audio/vnd.dts.hd"

    goto/16 :goto_9

    :goto_d
    move/from16 v24, v12

    const/4 v11, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    :goto_e
    sub-int v12, v13, v2

    if-ge v12, v3, :cond_47

    .line 44
    invoke-virtual {v0, v13}, Lcn/b0;->W(I)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v12

    if-lez v12, :cond_2e

    const/4 v2, 0x1

    goto :goto_f

    :cond_2e
    const/4 v2, 0x0

    .line 46
    :goto_f
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lao/s;->a(ZLjava/lang/String;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->q()I

    move-result v2

    const v3, 0x6d686143

    if-ne v2, v3, :cond_32

    add-int/lit8 v2, v13, 0x8

    .line 48
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v0, v2}, Lcn/b0;->X(I)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v3

    .line 51
    invoke-virtual {v0, v2}, Lcn/b0;->X(I)V

    .line 52
    invoke-static {v1, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    move-object v11, v2

    goto :goto_11

    .line 54
    :cond_2f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 55
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->P()I

    move-result v2

    .line 56
    new-array v3, v2, [B

    move-object/from16 p7, v11

    const/4 v11, 0x0

    .line 57
    invoke-virtual {v0, v3, v11, v2}, Lcn/b0;->l([BII)V

    if-nez v15, :cond_30

    .line 58
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_12
    move-object v15, v2

    goto :goto_13

    .line 59
    :cond_30
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v3, v2}, Lcom/google/common/collect/ImmutableList;->C(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_12

    :goto_13
    move-object/from16 v11, p7

    :cond_31
    move-object/from16 p7, v14

    :goto_14
    const/4 v3, -0x1

    :goto_15
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const v19, 0x616c6163

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_1d

    :cond_32
    const v3, 0x6d686150

    if-ne v2, v3, :cond_34

    add-int/lit8 v2, v13, 0x8

    .line 60
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->H()I

    move-result v2

    if-lez v2, :cond_31

    .line 62
    new-array v3, v2, [B

    move-object/from16 p7, v14

    const/4 v14, 0x0

    .line 63
    invoke-virtual {v0, v3, v14, v2}, Lcn/b0;->l([BII)V

    if-nez v15, :cond_33

    .line 64
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_14

    .line 65
    :cond_33
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableList;->C(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_14

    :cond_34
    move-object/from16 p7, v14

    const v3, 0x65736473

    if-eq v2, v3, :cond_35

    if-eqz p6, :cond_36

    const v14, 0x77617665

    if-ne v2, v14, :cond_36

    :cond_35
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const v19, 0x616c6163

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_1a

    :cond_36
    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    .line 66
    invoke-static {v0, v13}, Lvo/b;->j(Lcn/b0;I)Lvo/b$a;

    move-result-object v23

    goto :goto_14

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    add-int/lit8 v2, v13, 0x8

    .line 67
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    .line 68
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lao/b;->d(Lcn/b0;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a;

    move-result-object v2

    iput-object v2, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    :goto_16
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_19

    :cond_38
    const v3, 0x64656333

    if-ne v2, v3, :cond_39

    add-int/lit8 v2, v13, 0x8

    .line 69
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    .line 70
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lao/b;->h(Lcn/b0;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a;

    move-result-object v2

    iput-object v2, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    goto :goto_16

    :cond_39
    const v3, 0x64616334

    if-ne v2, v3, :cond_3a

    add-int/lit8 v2, v13, 0x8

    .line 71
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    .line 72
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lao/c;->d(Lcn/b0;Ljava/lang/String;Ljava/lang/String;Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a;

    move-result-object v2

    iput-object v2, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    goto :goto_16

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v9, :cond_3b

    move v8, v9

    const/4 v3, -0x1

    const/4 v10, 0x2

    goto/16 :goto_15

    .line 73
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lio/bidmachine/media3/common/ParserException;->b(Ljava/lang/String;Ljava/lang/Throwable;)Lio/bidmachine/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v14, 0x0

    const v3, 0x64647473

    if-eq v2, v3, :cond_3d

    const v3, 0x75647473

    if-ne v2, v3, :cond_3e

    :cond_3d
    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_18

    :cond_3e
    const v3, 0x644f7073

    if-ne v2, v3, :cond_3f

    add-int/lit8 v2, v12, -0x8

    .line 74
    sget-object v3, Lvo/b;->a:[B

    array-length v15, v3

    add-int/2addr v15, v2

    invoke-static {v3, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v15

    add-int/lit8 v14, v13, 0x8

    .line 75
    invoke-virtual {v0, v14}, Lcn/b0;->W(I)V

    .line 76
    array-length v3, v3

    invoke-virtual {v0, v15, v3, v2}, Lcn/b0;->l([BII)V

    .line 77
    invoke-static {v15}, Lao/h0;->a([B)Ljava/util/List;

    move-result-object v15

    goto/16 :goto_14

    :cond_3f
    const v3, 0x64664c61

    if-ne v2, v3, :cond_40

    add-int/lit8 v2, v12, -0xc

    add-int/lit8 v3, v12, -0x8

    .line 78
    new-array v3, v3, [B

    const/16 v14, 0x66

    const/4 v15, 0x0

    .line 79
    aput-byte v14, v3, v15

    const/16 v14, 0x4c

    const/16 v21, 0x1

    .line 80
    aput-byte v14, v3, v21

    const/16 v14, 0x61

    const/16 v22, 0x2

    .line 81
    aput-byte v14, v3, v22

    const/16 v14, 0x43

    const/16 v17, 0x3

    .line 82
    aput-byte v14, v3, v17

    add-int/lit8 v14, v13, 0xc

    .line 83
    invoke-virtual {v0, v14}, Lcn/b0;->W(I)V

    const/4 v14, 0x4

    .line 84
    invoke-virtual {v0, v3, v14, v2}, Lcn/b0;->l([BII)V

    .line 85
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    const/4 v3, -0x1

    const/16 v18, 0x0

    :goto_17
    const v19, 0x616c6163

    goto/16 :goto_1d

    :cond_40
    const v3, 0x616c6163

    const/4 v14, 0x4

    const/16 v17, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x2

    if-ne v2, v3, :cond_41

    add-int/lit8 v2, v12, -0xc

    .line 86
    new-array v8, v2, [B

    add-int/lit8 v10, v13, 0xc

    .line 87
    invoke-virtual {v0, v10}, Lcn/b0;->W(I)V

    const/4 v10, 0x0

    .line 88
    invoke-virtual {v0, v8, v10, v2}, Lcn/b0;->l([BII)V

    .line 89
    invoke-static {v8}, Lcn/i;->u([B)Landroid/util/Pair;

    move-result-object v2

    .line 90
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 91
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 92
    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move/from16 v19, v3

    move v8, v10

    const/4 v3, -0x1

    const/16 v18, 0x0

    move v10, v2

    goto/16 :goto_1d

    :cond_41
    const v3, 0x69616362

    if-ne v2, v3, :cond_42

    add-int/lit8 v2, v13, 0x9

    .line 93
    invoke-virtual {v0, v2}, Lcn/b0;->W(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcn/b0;->M()I

    move-result v2

    .line 95
    new-array v3, v2, [B

    const/4 v15, 0x0

    .line 96
    invoke-virtual {v0, v3, v15, v2}, Lcn/b0;->l([BII)V

    .line 97
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    move/from16 v18, v15

    const/4 v3, -0x1

    const v19, 0x616c6163

    move-object v15, v2

    goto/16 :goto_1d

    :cond_42
    const/16 v18, 0x0

    goto :goto_19

    .line 98
    :goto_18
    new-instance v2, Lio/bidmachine/media3/common/a$b;

    invoke-direct {v2}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 99
    invoke-virtual {v2, v4}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 100
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v10}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 102
    invoke-virtual {v2, v8}, Lio/bidmachine/media3/common/a$b;->v0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 103
    invoke-virtual {v2, v6}, Lio/bidmachine/media3/common/a$b;->Y(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v5}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    move-result-object v2

    iput-object v2, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    :goto_19
    const/4 v3, -0x1

    goto/16 :goto_17

    :goto_1a
    if-ne v2, v3, :cond_43

    move v2, v13

    :goto_1b
    const/4 v3, -0x1

    goto :goto_1c

    .line 106
    :cond_43
    invoke-static {v0, v3, v13, v12}, Lvo/b;->c(Lcn/b0;III)I

    move-result v2

    goto :goto_1b

    :goto_1c
    if-eq v2, v3, :cond_46

    .line 107
    invoke-static {v0, v2}, Lvo/b;->m(Lcn/b0;I)Lvo/b$c;

    move-result-object v16

    .line 108
    invoke-static/range {v16 .. v16}, Lvo/b$c;->a(Lvo/b$c;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static/range {v16 .. v16}, Lvo/b$c;->b(Lvo/b$c;)[B

    move-result-object v2

    if-eqz v2, :cond_46

    .line 110
    const-string v15, "audio/vorbis"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_44

    .line 111
    invoke-static {v2}, Lao/r0;->e([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_1d

    .line 112
    :cond_44
    const-string v15, "audio/mp4a-latm"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_45

    .line 113
    invoke-static {v2}, Lao/a;->e([B)Lao/a$b;

    move-result-object v8

    .line 114
    iget v10, v8, Lao/a$b;->a:I

    .line 115
    iget v11, v8, Lao/a$b;->b:I

    .line 116
    iget-object v8, v8, Lao/a$b;->c:Ljava/lang/String;

    move/from16 v25, v11

    move-object v11, v8

    move v8, v10

    move/from16 v10, v25

    .line 117
    :cond_45
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :cond_46
    :goto_1d
    add-int/2addr v13, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v14, p7

    goto/16 :goto_e

    .line 118
    :cond_47
    iget-object v0, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    if-nez v0, :cond_4a

    if-eqz v1, :cond_4a

    .line 119
    new-instance v0, Lio/bidmachine/media3/common/a$b;

    invoke-direct {v0}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 120
    invoke-virtual {v0, v4}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/a$b;->S(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v10}, Lio/bidmachine/media3/common/a$b;->R(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v8}, Lio/bidmachine/media3/common/a$b;->v0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    move/from16 v11, v24

    .line 125
    invoke-virtual {v0, v11}, Lio/bidmachine/media3/common/a$b;->o0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v15}, Lio/bidmachine/media3/common/a$b;->g0(Ljava/util/List;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v6}, Lio/bidmachine/media3/common/a$b;->Y(Lio/bidmachine/media3/common/DrmInitData;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v5}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v0

    if-eqz v16, :cond_48

    .line 129
    invoke-static/range {v16 .. v16}, Lvo/b$c;->d(Lvo/b$c;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v1

    .line 130
    invoke-static/range {v16 .. v16}, Lvo/b$c;->c(Lvo/b$c;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    goto :goto_1e

    :cond_48
    if-eqz v23, :cond_49

    .line 131
    invoke-static/range {v23 .. v23}, Lvo/b$a;->b(Lvo/b$a;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/a$b;->Q(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v1

    .line 132
    invoke-static/range {v23 .. v23}, Lvo/b$a;->a(Lvo/b$a;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->l(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/bidmachine/media3/common/a$b;->p0(I)Lio/bidmachine/media3/common/a$b;

    .line 133
    :cond_49
    :goto_1e
    invoke-virtual {v0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    move-result-object v0

    iput-object v0, v7, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    :cond_4a
    return-void
.end method

.method private static i(Lcn/b0;)Lzm/g;
    .locals 15

    .line 1
    new-instance v0, Lzm/g$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lzm/g$b;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcn/a0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcn/b0;->e()[B

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, Lcn/a0;-><init>([B)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    mul-int/2addr p0, v2

    .line 22
    invoke-virtual {v1, p0}, Lcn/a0;->p(I)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    invoke-virtual {v1, p0}, Lcn/a0;->s(I)V

    .line 27
    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    invoke-virtual {v1, v3}, Lcn/a0;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const/4 v5, 0x6

    .line 35
    invoke-virtual {v1, v5}, Lcn/a0;->r(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/16 v7, 0xc

    .line 47
    .line 48
    const/16 v8, 0xa

    .line 49
    .line 50
    const/4 v9, 0x2

    .line 51
    if-ne v4, v9, :cond_2

    .line 52
    .line 53
    if-eqz v5, :cond_2

    .line 54
    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    move v4, v7

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v4, v8

    .line 60
    :goto_0
    invoke-virtual {v0, v4}, Lzm/g$b;->g(I)Lzm/g$b;

    .line 61
    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    move v8, v7

    .line 66
    :cond_1
    invoke-virtual {v0, v8}, Lzm/g$b;->b(I)Lzm/g$b;

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_2
    if-gt v4, v9, :cond_5

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    move v4, v8

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    move v4, v2

    .line 77
    :goto_1
    invoke-virtual {v0, v4}, Lzm/g$b;->g(I)Lzm/g$b;

    .line 78
    .line 79
    .line 80
    if-eqz v5, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    move v8, v2

    .line 84
    :goto_2
    invoke-virtual {v0, v8}, Lzm/g$b;->b(I)Lzm/g$b;

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_3
    const/16 v4, 0xd

    .line 88
    .line 89
    invoke-virtual {v1, v4}, Lcn/a0;->r(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 93
    .line 94
    .line 95
    const/4 v5, 0x4

    .line 96
    invoke-virtual {v1, v5}, Lcn/a0;->h(I)I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    const-string v8, "BoxParsers"

    .line 101
    .line 102
    if-eq v6, p0, :cond_6

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v1, "Unsupported obu_type: "

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    return-object p0

    .line 129
    :cond_6
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    const-string p0, "Unsupported obu_extension_flag"

    .line 136
    .line 137
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    return-object p0

    .line 145
    :cond_7
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 150
    .line 151
    .line 152
    if-eqz v6, :cond_8

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    const/16 v10, 0x7f

    .line 159
    .line 160
    if-le v6, v10, :cond_8

    .line 161
    .line 162
    const-string p0, "Excessive obu_size"

    .line 163
    .line 164
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    return-object p0

    .line 172
    :cond_8
    invoke-virtual {v1, v3}, Lcn/a0;->h(I)I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_9

    .line 184
    .line 185
    const-string p0, "Unsupported reduced_still_picture_header"

    .line 186
    .line 187
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :cond_9
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-eqz v10, :cond_a

    .line 200
    .line 201
    const-string p0, "Unsupported timing_info_present_flag"

    .line 202
    .line 203
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    return-object p0

    .line 211
    :cond_a
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_b

    .line 216
    .line 217
    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 218
    .line 219
    invoke-static {v8, p0}, Lcn/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    return-object p0

    .line 227
    :cond_b
    const/4 v8, 0x5

    .line 228
    invoke-virtual {v1, v8}, Lcn/a0;->h(I)I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    const/4 v11, 0x0

    .line 233
    move v12, v11

    .line 234
    :goto_4
    const/4 v13, 0x7

    .line 235
    if-gt v12, v10, :cond_d

    .line 236
    .line 237
    invoke-virtual {v1, v7}, Lcn/a0;->r(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v8}, Lcn/a0;->h(I)I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    if-le v14, v13, :cond_c

    .line 245
    .line 246
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 247
    .line 248
    .line 249
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_d
    invoke-virtual {v1, v5}, Lcn/a0;->h(I)I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    invoke-virtual {v1, v5}, Lcn/a0;->h(I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    add-int/2addr v7, p0

    .line 261
    invoke-virtual {v1, v7}, Lcn/a0;->r(I)V

    .line 262
    .line 263
    .line 264
    add-int/2addr v5, p0

    .line 265
    invoke-virtual {v1, v5}, Lcn/a0;->r(I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_e

    .line 273
    .line 274
    invoke-virtual {v1, v13}, Lcn/a0;->r(I)V

    .line 275
    .line 276
    .line 277
    :cond_e
    invoke-virtual {v1, v13}, Lcn/a0;->r(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_f

    .line 285
    .line 286
    invoke-virtual {v1, v9}, Lcn/a0;->r(I)V

    .line 287
    .line 288
    .line 289
    :cond_f
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    if-eqz v7, :cond_10

    .line 294
    .line 295
    move v7, v9

    .line 296
    goto :goto_5

    .line 297
    :cond_10
    invoke-virtual {v1, p0}, Lcn/a0;->h(I)I

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    :goto_5
    if-lez v7, :cond_11

    .line 302
    .line 303
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_11

    .line 308
    .line 309
    invoke-virtual {v1, p0}, Lcn/a0;->r(I)V

    .line 310
    .line 311
    .line 312
    :cond_11
    if-eqz v5, :cond_12

    .line 313
    .line 314
    invoke-virtual {v1, v3}, Lcn/a0;->r(I)V

    .line 315
    .line 316
    .line 317
    :cond_12
    invoke-virtual {v1, v3}, Lcn/a0;->r(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 321
    .line 322
    .line 323
    move-result v3

    .line 324
    if-ne v6, v9, :cond_13

    .line 325
    .line 326
    if-eqz v3, :cond_13

    .line 327
    .line 328
    invoke-virtual {v1}, Lcn/a0;->q()V

    .line 329
    .line 330
    .line 331
    :cond_13
    if-eq v6, p0, :cond_14

    .line 332
    .line 333
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_14

    .line 338
    .line 339
    move v11, p0

    .line 340
    :cond_14
    invoke-virtual {v1}, Lcn/a0;->g()Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_17

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 351
    .line 352
    .line 353
    move-result v5

    .line 354
    invoke-virtual {v1, v2}, Lcn/a0;->h(I)I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-nez v11, :cond_15

    .line 359
    .line 360
    if-ne v3, p0, :cond_15

    .line 361
    .line 362
    if-ne v5, v4, :cond_15

    .line 363
    .line 364
    if-nez v2, :cond_15

    .line 365
    .line 366
    move v1, p0

    .line 367
    goto :goto_6

    .line 368
    :cond_15
    invoke-virtual {v1, p0}, Lcn/a0;->h(I)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    :goto_6
    invoke-static {v3}, Lzm/g;->j(I)I

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    invoke-virtual {v0, v2}, Lzm/g$b;->d(I)Lzm/g$b;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    if-ne v1, p0, :cond_16

    .line 381
    .line 382
    goto :goto_7

    .line 383
    :cond_16
    move p0, v9

    .line 384
    :goto_7
    invoke-virtual {v2, p0}, Lzm/g$b;->c(I)Lzm/g$b;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-static {v5}, Lzm/g;->k(I)I

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    invoke-virtual {p0, v1}, Lzm/g$b;->e(I)Lzm/g$b;

    .line 393
    .line 394
    .line 395
    :cond_17
    invoke-virtual {v0}, Lzm/g$b;->a()Lzm/g;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    return-object p0
.end method

.method private static j(Lcn/b0;I)Lvo/b$a;
    .locals 3

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, p1}, Lcn/b0;->X(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    new-instance v2, Lvo/b$a;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1, v0, v1}, Lvo/b$a;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    return-object v2
.end method

.method static k(Lcn/b0;II)Landroid/util/Pair;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/b0;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lvo/u;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    move v5, v1

    .line 7
    move v7, v2

    .line 8
    move-object v4, v3

    .line 9
    move-object v6, v4

    .line 10
    :goto_0
    sub-int v8, v0, p1

    .line 11
    .line 12
    if-ge v8, p2, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 22
    .line 23
    .line 24
    move-result v9

    .line 25
    const v10, 0x66726d61

    .line 26
    .line 27
    .line 28
    if-ne v9, v10, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const v10, 0x7363686d

    .line 40
    .line 41
    .line 42
    if-ne v9, v10, :cond_1

    .line 43
    .line 44
    const/4 v4, 0x4

    .line 45
    invoke-virtual {p0, v4}, Lcn/b0;->X(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v4}, Lcn/b0;->E(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const v10, 0x73636869

    .line 54
    .line 55
    .line 56
    if-ne v9, v10, :cond_2

    .line 57
    .line 58
    move v5, v0

    .line 59
    move v7, v8

    .line 60
    :cond_2
    :goto_1
    add-int/2addr v0, v8

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const-string p1, "cenc"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    const-string p1, "cbc1"

    .line 71
    .line 72
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    const-string p1, "cens"

    .line 79
    .line 80
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_5

    .line 85
    .line 86
    const-string p1, "cbcs"

    .line 87
    .line 88
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_4
    return-object v3

    .line 96
    :cond_5
    :goto_2
    const/4 p1, 0x1

    .line 97
    if-eqz v6, :cond_6

    .line 98
    .line 99
    move p2, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move p2, v2

    .line 102
    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 103
    .line 104
    invoke-static {p2, v0}, Lao/s;->a(ZLjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-eq v5, v1, :cond_7

    .line 108
    .line 109
    move p2, p1

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    move p2, v2

    .line 112
    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 113
    .line 114
    invoke-static {p2, v0}, Lao/s;->a(ZLjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v5, v7, v4}, Lvo/b;->z(Lcn/b0;IILjava/lang/String;)Lvo/u;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_8

    .line 122
    .line 123
    move v2, p1

    .line 124
    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 125
    .line 126
    invoke-static {v2, p1}, Lao/s;->a(ZLjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    check-cast p0, Lvo/u;

    .line 134
    .line 135
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    return-object p0
.end method

.method private static l(Ldn/d$b;)Landroid/util/Pair;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldn/d$b;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 1
    const v0, 0x656c7374

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Ldn/d$c;->b:Lcn/b0;

    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Lvo/b;->p(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p0}, Lcn/b0;->L()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    new-array v2, v1, [J

    .line 32
    .line 33
    new-array v3, v1, [J

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    :goto_0
    if-ge v4, v1, :cond_4

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-ne v0, v5, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lcn/b0;->O()J

    .line 42
    .line 43
    .line 44
    move-result-wide v6

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    :goto_1
    aput-wide v6, v2, v4

    .line 51
    .line 52
    if-ne v0, v5, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcn/b0;->A()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    int-to-long v6, v6

    .line 64
    :goto_2
    aput-wide v6, v3, v4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcn/b0;->D()S

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-ne v6, v5, :cond_3

    .line 71
    .line 72
    const/4 v5, 0x2

    .line 73
    invoke-virtual {p0, v5}, Lcn/b0;->X(I)V

    .line 74
    .line 75
    .line 76
    add-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 80
    .line 81
    const-string v0, "Unsupported media rate."

    .line 82
    .line 83
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0
.end method

.method private static m(Lcn/b0;I)Lvo/b$c;
    .locals 12

    .line 1
    add-int/lit8 p1, p1, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lcn/b0;->X(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lvo/b;->n(Lcn/b0;)I

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v2, v1, 0x80

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    and-int/lit8 v2, v1, 0x40

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    and-int/lit8 v1, v1, 0x20

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0, p1}, Lcn/b0;->X(I)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Lvo/b;->n(Lcn/b0;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lzm/u;->h(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v0, "audio/mpeg"

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    const-string v0, "audio/vnd.dts"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    const-string v0, "audio/vnd.dts.hd"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-virtual {p0, p1}, Lcn/b0;->X(I)V

    .line 98
    .line 99
    .line 100
    invoke-static {p0}, Lvo/b;->n(Lcn/b0;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    new-array v5, p1, [B

    .line 105
    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0, v5, v6, p1}, Lcn/b0;->l([BII)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Lvo/b$c;

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    cmp-long p1, v3, v6

    .line 115
    .line 116
    const-wide/16 v8, -0x1

    .line 117
    .line 118
    if-lez p1, :cond_4

    .line 119
    .line 120
    move-wide v10, v3

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    move-wide v10, v8

    .line 123
    :goto_0
    cmp-long p1, v0, v6

    .line 124
    .line 125
    if-lez p1, :cond_5

    .line 126
    .line 127
    move-wide v6, v0

    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move-wide v6, v8

    .line 130
    :goto_1
    move-object v1, p0

    .line 131
    move-object v3, v5

    .line 132
    move-wide v4, v10

    .line 133
    invoke-direct/range {v1 .. v7}, Lvo/b$c;-><init>(Ljava/lang/String;[BJJ)V

    .line 134
    .line 135
    .line 136
    return-object p0

    .line 137
    :cond_6
    :goto_2
    new-instance p0, Lvo/b$c;

    .line 138
    .line 139
    const-wide/16 v4, -0x1

    .line 140
    .line 141
    const-wide/16 v6, -0x1

    .line 142
    .line 143
    const/4 v3, 0x0

    .line 144
    move-object v1, p0

    .line 145
    invoke-direct/range {v1 .. v7}, Lvo/b$c;-><init>(Ljava/lang/String;[BJJ)V

    .line 146
    .line 147
    .line 148
    return-object p0
.end method

.method private static n(Lcn/b0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x7f

    .line 6
    .line 7
    :goto_0
    const/16 v2, 0x80

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    shl-int/lit8 v1, v1, 0x7

    .line 17
    .line 18
    and-int/lit8 v2, v0, 0x7f

    .line 19
    .line 20
    or-int/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return v1
.end method

.method public static o(I)I
    .locals 1

    .line 1
    const v0, 0xffffff

    .line 2
    .line 3
    .line 4
    and-int/2addr p0, v0

    .line 5
    return p0
.end method

.method public static p(I)I
    .locals 0

    .line 1
    shr-int/lit8 p0, p0, 0x18

    .line 2
    .line 3
    and-int/lit16 p0, p0, 0xff

    .line 4
    .line 5
    return p0
.end method

.method private static q(Lcn/b0;)I
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private static r(Lcn/b0;I)Lzm/t;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v1, p1, :cond_1

    .line 16
    .line 17
    invoke-static {p0}, Lvo/j;->d(Lcn/b0;)Lzm/t$a;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance p0, Lzm/t;

    .line 36
    .line 37
    invoke-direct {p0, v0}, Lzm/t;-><init>(Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method private static s(Lcn/b0;)Lvo/b$e;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Lvo/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    move v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v2, 0x10

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v2}, Lcn/b0;->X(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 24
    .line 25
    .line 26
    move-result-wide v9

    .line 27
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x4

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    if-ge v3, v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lcn/b0;->e()[B

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    add-int v7, v2, v3

    .line 47
    .line 48
    aget-byte v6, v6, v7

    .line 49
    .line 50
    const/4 v7, -0x1

    .line 51
    if-eq v6, v7, :cond_4

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcn/b0;->O()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    :goto_2
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    cmp-long v2, v0, v2

    .line 67
    .line 68
    if-nez v2, :cond_3

    .line 69
    .line 70
    :goto_3
    move-wide v6, v4

    .line 71
    goto :goto_4

    .line 72
    :cond_3
    const-wide/32 v5, 0xf4240

    .line 73
    .line 74
    .line 75
    move-wide v3, v0

    .line 76
    move-wide v7, v9

    .line 77
    invoke-static/range {v3 .. v8}, Lcn/m0;->f1(JJJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    move-wide v6, v0

    .line 82
    goto :goto_4

    .line 83
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {p0, v0}, Lcn/b0;->X(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_4
    invoke-virtual {p0}, Lcn/b0;->P()I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    invoke-static {p0}, Lvo/b;->d(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    new-instance p0, Lvo/b$e;

    .line 99
    .line 100
    move-object v3, p0

    .line 101
    move-wide v4, v9

    .line 102
    invoke-direct/range {v3 .. v8}, Lvo/b$e;-><init>(JJLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-object p0
.end method

.method public static t(Ldn/d$b;)Lzm/t;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const v0, 0x68646c72    # 4.3148E24f

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x6b657973

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x696c7374

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v2}, Ldn/d$b;->e(I)Ldn/d$c;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_6

    .line 24
    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    if-eqz p0, :cond_6

    .line 28
    .line 29
    iget-object v0, v0, Ldn/d$c;->b:Lcn/b0;

    .line 30
    .line 31
    invoke-static {v0}, Lvo/b;->q(Lcn/b0;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const v3, 0x6d647461

    .line 36
    .line 37
    .line 38
    if-eq v0, v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_0
    iget-object v0, v1, Ldn/d$c;->b:Lcn/b0;

    .line 43
    .line 44
    const/16 v1, 0xc

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcn/b0;->W(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcn/b0;->q()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    new-array v3, v1, [Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    :goto_0
    const/16 v5, 0x8

    .line 57
    .line 58
    if-ge v4, v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcn/b0;->q()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v7, 0x4

    .line 65
    invoke-virtual {v0, v7}, Lcn/b0;->X(I)V

    .line 66
    .line 67
    .line 68
    sub-int/2addr v6, v5

    .line 69
    invoke-virtual {v0, v6}, Lcn/b0;->E(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object p0, p0, Ldn/d$c;->b:Lcn/b0;

    .line 79
    .line 80
    invoke-virtual {p0, v5}, Lcn/b0;->W(I)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-virtual {p0}, Lcn/b0;->a()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-le v4, v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    add-int/lit8 v7, v7, -0x1

    .line 107
    .line 108
    if-ltz v7, :cond_2

    .line 109
    .line 110
    if-ge v7, v1, :cond_2

    .line 111
    .line 112
    aget-object v7, v3, v7

    .line 113
    .line 114
    add-int v8, v4, v6

    .line 115
    .line 116
    invoke-static {p0, v8, v7}, Lvo/j;->i(Lcn/b0;ILjava/lang/String;)Ldn/b;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    if-eqz v7, :cond_3

    .line 121
    .line 122
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v9, "Skipped metadata with unknown key index: "

    .line 132
    .line 133
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "BoxParsers"

    .line 144
    .line 145
    invoke-static {v8, v7}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 149
    invoke-virtual {p0, v4}, Lcn/b0;->W(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    goto :goto_3

    .line 160
    :cond_5
    new-instance v2, Lzm/t;

    .line 161
    .line 162
    invoke-direct {v2, v0}, Lzm/t;-><init>(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_3
    return-object v2
.end method

.method private static u(Lcn/b0;IIILvo/b$h;)V
    .locals 0

    .line 1
    add-int/lit8 p2, p2, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    const p2, 0x6d657474

    .line 7
    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcn/b0;->B()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcn/b0;->B()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p1, Lio/bidmachine/media3/common/a$b;

    .line 21
    .line 22
    invoke-direct {p1}, Lio/bidmachine/media3/common/a$b;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Lio/bidmachine/media3/common/a$b;->e0(I)Lio/bidmachine/media3/common/a$b;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p0}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    iput-object p0, p4, Lvo/b$h;->b:Lio/bidmachine/media3/common/a;

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public static v(Lcn/b0;)Ldn/f;
    .locals 11

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {v0}, Lvo/b;->p(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    :goto_0
    move-wide v5, v0

    .line 25
    move-wide v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcn/b0;->A()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-virtual {p0}, Lcn/b0;->A()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcn/b0;->J()J

    .line 37
    .line 38
    .line 39
    move-result-wide v9

    .line 40
    new-instance p0, Ldn/f;

    .line 41
    .line 42
    move-object v4, p0

    .line 43
    invoke-direct/range {v4 .. v10}, Ldn/f;-><init>(JJJ)V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method private static w(Lcn/b0;I)F
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcn/b0;->W(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcn/b0;->L()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Lcn/b0;->L()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    int-to-float p1, p1

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p1, p0

    .line 17
    return p1
.end method

.method private static x(Lcn/b0;II)[B
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    if-ge v1, p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x70726f6a

    .line 19
    .line 20
    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcn/b0;->e()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    add-int/2addr v1, v0

    .line 28
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method private static y(Lcn/b0;II)Landroid/util/Pair;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/b0;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lvo/u;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/common/ParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    sub-int v1, v0, p1

    .line 6
    .line 7
    if-ge v1, p2, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-lez v1, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lao/s;->a(ZLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const v3, 0x73696e66

    .line 31
    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-static {p0, v0, v1}, Lvo/b;->k(Lcn/b0;II)Landroid/util/Pair;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    return-object v2

    .line 42
    :cond_1
    add-int/2addr v0, v1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p0, 0x0

    .line 45
    return-object p0
.end method

.method private static z(Lcn/b0;IILjava/lang/String;)Lvo/u;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    add-int/lit8 v0, p1, 0x8

    .line 2
    .line 3
    :goto_0
    sub-int v1, v0, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ge v1, p2, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x74656e63

    .line 20
    .line 21
    .line 22
    if-ne v3, v4, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0}, Lcn/b0;->q()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Lvo/b;->p(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p0, p2}, Lcn/b0;->X(I)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcn/b0;->X(I)V

    .line 40
    .line 41
    .line 42
    move v8, v0

    .line 43
    move v9, v8

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    and-int/lit16 v1, p1, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v1, v1, 0x4

    .line 52
    .line 53
    and-int/lit8 p1, p1, 0xf

    .line 54
    .line 55
    move v9, p1

    .line 56
    move v8, v1

    .line 57
    :goto_1
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, p2, :cond_1

    .line 62
    .line 63
    move v4, p2

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    move v4, v0

    .line 66
    :goto_2
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/16 p1, 0x10

    .line 71
    .line 72
    new-array v7, p1, [B

    .line 73
    .line 74
    invoke-virtual {p0, v7, v0, p1}, Lcn/b0;->l([BII)V

    .line 75
    .line 76
    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    if-nez v6, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    new-array v2, p1, [B

    .line 86
    .line 87
    invoke-virtual {p0, v2, v0, p1}, Lcn/b0;->l([BII)V

    .line 88
    .line 89
    .line 90
    :cond_2
    move-object v10, v2

    .line 91
    new-instance p0, Lvo/u;

    .line 92
    .line 93
    move-object v3, p0

    .line 94
    move-object v5, p3

    .line 95
    invoke-direct/range {v3 .. v10}, Lvo/u;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 96
    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_3
    add-int/2addr v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    return-object v2
.end method
