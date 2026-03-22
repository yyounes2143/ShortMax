.class public final Landroidx/compose/ui/graphics/vector/VectorComposeKt;
.super Ljava/lang/Object;
.source "VectorCompose.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final Group(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 19
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/graphics/vector/VectorComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFFFFFF",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p9

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0xcb87eca

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p10

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    and-int/lit8 v1, v12, 0x1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    or-int/lit8 v2, v11, 0x6

    .line 26
    .line 27
    move v3, v2

    .line 28
    move-object/from16 v2, p0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    move-object/from16 v2, p0

    .line 36
    .line 37
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x2

    .line 46
    :goto_0
    or-int/2addr v3, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object/from16 v2, p0

    .line 49
    .line 50
    move v3, v11

    .line 51
    :goto_1
    and-int/lit8 v4, v12, 0x2

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    or-int/lit8 v3, v3, 0x30

    .line 56
    .line 57
    :cond_3
    move/from16 v5, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    move/from16 v5, p1

    .line 65
    .line 66
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    const/16 v6, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v6, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v3, v6

    .line 78
    :goto_3
    and-int/lit8 v6, v12, 0x4

    .line 79
    .line 80
    if-eqz v6, :cond_7

    .line 81
    .line 82
    or-int/lit16 v3, v3, 0x180

    .line 83
    .line 84
    :cond_6
    move/from16 v8, p2

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    and-int/lit16 v8, v11, 0x380

    .line 88
    .line 89
    if-nez v8, :cond_6

    .line 90
    .line 91
    move/from16 v8, p2

    .line 92
    .line 93
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eqz v9, :cond_8

    .line 98
    .line 99
    const/16 v9, 0x100

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 v9, 0x80

    .line 103
    .line 104
    :goto_4
    or-int/2addr v3, v9

    .line 105
    :goto_5
    and-int/lit8 v9, v12, 0x8

    .line 106
    .line 107
    if-eqz v9, :cond_a

    .line 108
    .line 109
    or-int/lit16 v3, v3, 0xc00

    .line 110
    .line 111
    :cond_9
    move/from16 v13, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v13, v11, 0x1c00

    .line 115
    .line 116
    if-nez v13, :cond_9

    .line 117
    .line 118
    move/from16 v13, p3

    .line 119
    .line 120
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 121
    .line 122
    .line 123
    move-result v14

    .line 124
    if-eqz v14, :cond_b

    .line 125
    .line 126
    const/16 v14, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v14, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v3, v14

    .line 132
    :goto_7
    and-int/lit8 v14, v12, 0x10

    .line 133
    .line 134
    if-eqz v14, :cond_d

    .line 135
    .line 136
    or-int/lit16 v3, v3, 0x6000

    .line 137
    .line 138
    :cond_c
    move/from16 v15, p4

    .line 139
    .line 140
    goto :goto_9

    .line 141
    :cond_d
    const v15, 0xe000

    .line 142
    .line 143
    .line 144
    and-int/2addr v15, v11

    .line 145
    if-nez v15, :cond_c

    .line 146
    .line 147
    move/from16 v15, p4

    .line 148
    .line 149
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    if-eqz v16, :cond_e

    .line 154
    .line 155
    const/16 v16, 0x4000

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_e
    const/16 v16, 0x2000

    .line 159
    .line 160
    :goto_8
    or-int v3, v3, v16

    .line 161
    .line 162
    :goto_9
    and-int/lit8 v16, v12, 0x20

    .line 163
    .line 164
    if-eqz v16, :cond_f

    .line 165
    .line 166
    const/high16 v17, 0x30000

    .line 167
    .line 168
    or-int v3, v3, v17

    .line 169
    .line 170
    move/from16 v7, p5

    .line 171
    .line 172
    goto :goto_b

    .line 173
    :cond_f
    const/high16 v17, 0x70000

    .line 174
    .line 175
    and-int v17, v11, v17

    .line 176
    .line 177
    move/from16 v7, p5

    .line 178
    .line 179
    if-nez v17, :cond_11

    .line 180
    .line 181
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 182
    .line 183
    .line 184
    move-result v17

    .line 185
    if-eqz v17, :cond_10

    .line 186
    .line 187
    const/high16 v17, 0x20000

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_10
    const/high16 v17, 0x10000

    .line 191
    .line 192
    :goto_a
    or-int v3, v3, v17

    .line 193
    .line 194
    :cond_11
    :goto_b
    and-int/lit8 v17, v12, 0x40

    .line 195
    .line 196
    if-eqz v17, :cond_12

    .line 197
    .line 198
    const/high16 v18, 0x180000

    .line 199
    .line 200
    or-int v3, v3, v18

    .line 201
    .line 202
    move/from16 v2, p6

    .line 203
    .line 204
    goto :goto_d

    .line 205
    :cond_12
    const/high16 v18, 0x380000

    .line 206
    .line 207
    and-int v18, v11, v18

    .line 208
    .line 209
    move/from16 v2, p6

    .line 210
    .line 211
    if-nez v18, :cond_14

    .line 212
    .line 213
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 214
    .line 215
    .line 216
    move-result v18

    .line 217
    if-eqz v18, :cond_13

    .line 218
    .line 219
    const/high16 v18, 0x100000

    .line 220
    .line 221
    goto :goto_c

    .line 222
    :cond_13
    const/high16 v18, 0x80000

    .line 223
    .line 224
    :goto_c
    or-int v3, v3, v18

    .line 225
    .line 226
    :cond_14
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 227
    .line 228
    if-eqz v2, :cond_15

    .line 229
    .line 230
    const/high16 v18, 0xc00000

    .line 231
    .line 232
    or-int v3, v3, v18

    .line 233
    .line 234
    move/from16 v5, p7

    .line 235
    .line 236
    goto :goto_f

    .line 237
    :cond_15
    const/high16 v18, 0x1c00000

    .line 238
    .line 239
    and-int v18, v11, v18

    .line 240
    .line 241
    move/from16 v5, p7

    .line 242
    .line 243
    if-nez v18, :cond_17

    .line 244
    .line 245
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 246
    .line 247
    .line 248
    move-result v18

    .line 249
    if-eqz v18, :cond_16

    .line 250
    .line 251
    const/high16 v18, 0x800000

    .line 252
    .line 253
    goto :goto_e

    .line 254
    :cond_16
    const/high16 v18, 0x400000

    .line 255
    .line 256
    :goto_e
    or-int v3, v3, v18

    .line 257
    .line 258
    :cond_17
    :goto_f
    and-int/lit16 v5, v12, 0x100

    .line 259
    .line 260
    if-eqz v5, :cond_18

    .line 261
    .line 262
    const/high16 v18, 0x2000000

    .line 263
    .line 264
    or-int v3, v3, v18

    .line 265
    .line 266
    :cond_18
    and-int/lit16 v7, v12, 0x200

    .line 267
    .line 268
    if-eqz v7, :cond_1a

    .line 269
    .line 270
    const/high16 v7, 0x30000000

    .line 271
    .line 272
    :goto_10
    or-int/2addr v3, v7

    .line 273
    :cond_19
    const/16 v7, 0x100

    .line 274
    .line 275
    goto :goto_11

    .line 276
    :cond_1a
    const/high16 v7, 0x70000000

    .line 277
    .line 278
    and-int/2addr v7, v11

    .line 279
    if-nez v7, :cond_19

    .line 280
    .line 281
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v7

    .line 285
    if-eqz v7, :cond_1b

    .line 286
    .line 287
    const/high16 v7, 0x20000000

    .line 288
    .line 289
    goto :goto_10

    .line 290
    :cond_1b
    const/high16 v7, 0x10000000

    .line 291
    .line 292
    goto :goto_10

    .line 293
    :goto_11
    if-ne v5, v7, :cond_1d

    .line 294
    .line 295
    const v7, 0x5b6db6db

    .line 296
    .line 297
    .line 298
    and-int/2addr v7, v3

    .line 299
    const v8, 0x12492492

    .line 300
    .line 301
    .line 302
    if-ne v7, v8, :cond_1d

    .line 303
    .line 304
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-nez v7, :cond_1c

    .line 309
    .line 310
    goto :goto_12

    .line 311
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 312
    .line 313
    .line 314
    move-object/from16 v1, p0

    .line 315
    .line 316
    move/from16 v2, p1

    .line 317
    .line 318
    move/from16 v3, p2

    .line 319
    .line 320
    move/from16 v6, p5

    .line 321
    .line 322
    move/from16 v7, p6

    .line 323
    .line 324
    move/from16 v8, p7

    .line 325
    .line 326
    move-object/from16 v9, p8

    .line 327
    .line 328
    move v4, v13

    .line 329
    move v5, v15

    .line 330
    goto/16 :goto_1c

    .line 331
    .line 332
    :cond_1d
    :goto_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 333
    .line 334
    .line 335
    and-int/lit8 v7, v11, 0x1

    .line 336
    .line 337
    const v8, -0xe000001

    .line 338
    .line 339
    .line 340
    if-eqz v7, :cond_21

    .line 341
    .line 342
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 343
    .line 344
    .line 345
    move-result v7

    .line 346
    if-eqz v7, :cond_1e

    .line 347
    .line 348
    goto :goto_13

    .line 349
    :cond_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 350
    .line 351
    .line 352
    if-eqz v5, :cond_1f

    .line 353
    .line 354
    and-int/2addr v3, v8

    .line 355
    :cond_1f
    move-object/from16 v1, p0

    .line 356
    .line 357
    move/from16 v4, p1

    .line 358
    .line 359
    move/from16 v6, p2

    .line 360
    .line 361
    move/from16 v9, p5

    .line 362
    .line 363
    move/from16 v14, p6

    .line 364
    .line 365
    move/from16 v7, p7

    .line 366
    .line 367
    :cond_20
    move-object/from16 v2, p8

    .line 368
    .line 369
    goto :goto_1a

    .line 370
    :cond_21
    :goto_13
    if-eqz v1, :cond_22

    .line 371
    .line 372
    const-string v1, ""

    .line 373
    .line 374
    goto :goto_14

    .line 375
    :cond_22
    move-object/from16 v1, p0

    .line 376
    .line 377
    :goto_14
    const/4 v7, 0x0

    .line 378
    if-eqz v4, :cond_23

    .line 379
    .line 380
    move v4, v7

    .line 381
    goto :goto_15

    .line 382
    :cond_23
    move/from16 v4, p1

    .line 383
    .line 384
    :goto_15
    if-eqz v6, :cond_24

    .line 385
    .line 386
    move v6, v7

    .line 387
    goto :goto_16

    .line 388
    :cond_24
    move/from16 v6, p2

    .line 389
    .line 390
    :goto_16
    if-eqz v9, :cond_25

    .line 391
    .line 392
    move v13, v7

    .line 393
    :cond_25
    const/high16 v9, 0x3f800000    # 1.0f

    .line 394
    .line 395
    if-eqz v14, :cond_26

    .line 396
    .line 397
    move v15, v9

    .line 398
    :cond_26
    if-eqz v16, :cond_27

    .line 399
    .line 400
    goto :goto_17

    .line 401
    :cond_27
    move/from16 v9, p5

    .line 402
    .line 403
    :goto_17
    if-eqz v17, :cond_28

    .line 404
    .line 405
    move v14, v7

    .line 406
    goto :goto_18

    .line 407
    :cond_28
    move/from16 v14, p6

    .line 408
    .line 409
    :goto_18
    if-eqz v2, :cond_29

    .line 410
    .line 411
    goto :goto_19

    .line 412
    :cond_29
    move/from16 v7, p7

    .line 413
    .line 414
    :goto_19
    if-eqz v5, :cond_20

    .line 415
    .line 416
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    and-int/2addr v3, v8

    .line 421
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 422
    .line 423
    .line 424
    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$1;

    .line 425
    .line 426
    const v8, -0x20ad3f64

    .line 427
    .line 428
    .line 429
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 430
    .line 431
    .line 432
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 433
    .line 434
    .line 435
    move-result-object v8

    .line 436
    instance-of v8, v8, Landroidx/compose/ui/graphics/vector/VectorApplier;

    .line 437
    .line 438
    if-nez v8, :cond_2a

    .line 439
    .line 440
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 441
    .line 442
    .line 443
    :cond_2a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startNode()V

    .line 444
    .line 445
    .line 446
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 447
    .line 448
    .line 449
    move-result v8

    .line 450
    if-eqz v8, :cond_2b

    .line 451
    .line 452
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 453
    .line 454
    .line 455
    goto :goto_1b

    .line 456
    :cond_2b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 457
    .line 458
    .line 459
    :goto_1b
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$1;

    .line 464
    .line 465
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 466
    .line 467
    .line 468
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    move-object/from16 v16, v1

    .line 473
    .line 474
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$2;

    .line 475
    .line 476
    invoke-static {v5, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$3;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$3;

    .line 484
    .line 485
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 486
    .line 487
    .line 488
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$4;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$4;

    .line 493
    .line 494
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 495
    .line 496
    .line 497
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$5;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$5;

    .line 502
    .line 503
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 504
    .line 505
    .line 506
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$6;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$6;

    .line 511
    .line 512
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$7;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$7;

    .line 520
    .line 521
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$8;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$8;

    .line 529
    .line 530
    invoke-static {v5, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 531
    .line 532
    .line 533
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$9;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$2$9;

    .line 534
    .line 535
    invoke-static {v5, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 536
    .line 537
    .line 538
    const v1, -0x3aa53d31

    .line 539
    .line 540
    .line 541
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 542
    .line 543
    .line 544
    shr-int/lit8 v1, v3, 0x1b

    .line 545
    .line 546
    and-int/lit8 v1, v1, 0xe

    .line 547
    .line 548
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    invoke-interface {v10, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 556
    .line 557
    .line 558
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 559
    .line 560
    .line 561
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 562
    .line 563
    .line 564
    move v3, v6

    .line 565
    move v8, v7

    .line 566
    move v6, v9

    .line 567
    move v7, v14

    .line 568
    move v5, v15

    .line 569
    move-object/from16 v1, v16

    .line 570
    .line 571
    move-object v9, v2

    .line 572
    move v2, v4

    .line 573
    move v4, v13

    .line 574
    :goto_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 575
    .line 576
    .line 577
    move-result-object v13

    .line 578
    if-nez v13, :cond_2c

    .line 579
    .line 580
    goto :goto_1d

    .line 581
    :cond_2c
    new-instance v14, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$4;

    .line 582
    .line 583
    move-object v0, v14

    .line 584
    move-object/from16 v10, p9

    .line 585
    .line 586
    move/from16 v11, p11

    .line 587
    .line 588
    move/from16 v12, p12

    .line 589
    .line 590
    invoke-direct/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Group$4;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;II)V

    .line 591
    .line 592
    .line 593
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 594
    .line 595
    .line 596
    :goto_1d
    return-void
.end method

.method public static final Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V
    .locals 21
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Brush;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/graphics/vector/VectorComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;I",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/graphics/Brush;",
            "F",
            "Landroidx/compose/ui/graphics/Brush;",
            "FFIIFFFF",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v15, p17

    .line 4
    .line 5
    const-string v0, "pathData"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x581c9f1e

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p14

    .line 14
    .line 15
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    and-int/lit8 v2, v15, 0x2

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move/from16 v2, p1

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v3, v15, 0x4

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-string v3, ""

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object/from16 v3, p2

    .line 38
    .line 39
    :goto_1
    and-int/lit8 v4, v15, 0x8

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    if-eqz v4, :cond_2

    .line 43
    .line 44
    move-object v4, v5

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    move-object/from16 v4, p3

    .line 47
    .line 48
    :goto_2
    and-int/lit8 v6, v15, 0x10

    .line 49
    .line 50
    const/high16 v7, 0x3f800000    # 1.0f

    .line 51
    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    move v6, v7

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    move/from16 v6, p4

    .line 57
    .line 58
    :goto_3
    and-int/lit8 v8, v15, 0x20

    .line 59
    .line 60
    if-eqz v8, :cond_4

    .line 61
    .line 62
    move-object v8, v5

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    move-object/from16 v8, p5

    .line 65
    .line 66
    :goto_4
    and-int/lit8 v5, v15, 0x40

    .line 67
    .line 68
    if-eqz v5, :cond_5

    .line 69
    .line 70
    move v9, v7

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    move/from16 v9, p6

    .line 73
    .line 74
    :goto_5
    and-int/lit16 v5, v15, 0x80

    .line 75
    .line 76
    const/4 v10, 0x0

    .line 77
    if-eqz v5, :cond_6

    .line 78
    .line 79
    move v11, v10

    .line 80
    goto :goto_6

    .line 81
    :cond_6
    move/from16 v11, p7

    .line 82
    .line 83
    :goto_6
    and-int/lit16 v5, v15, 0x100

    .line 84
    .line 85
    if-eqz v5, :cond_7

    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    move v12, v5

    .line 92
    goto :goto_7

    .line 93
    :cond_7
    move/from16 v12, p8

    .line 94
    .line 95
    :goto_7
    and-int/lit16 v5, v15, 0x200

    .line 96
    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    move v13, v5

    .line 104
    goto :goto_8

    .line 105
    :cond_8
    move/from16 v13, p9

    .line 106
    .line 107
    :goto_8
    and-int/lit16 v5, v15, 0x400

    .line 108
    .line 109
    if-eqz v5, :cond_9

    .line 110
    .line 111
    const/high16 v5, 0x40800000    # 4.0f

    .line 112
    .line 113
    move v14, v5

    .line 114
    goto :goto_9

    .line 115
    :cond_9
    move/from16 v14, p10

    .line 116
    .line 117
    :goto_9
    and-int/lit16 v5, v15, 0x800

    .line 118
    .line 119
    if-eqz v5, :cond_a

    .line 120
    .line 121
    move/from16 v16, v10

    .line 122
    .line 123
    goto :goto_a

    .line 124
    :cond_a
    move/from16 v16, p11

    .line 125
    .line 126
    :goto_a
    and-int/lit16 v5, v15, 0x1000

    .line 127
    .line 128
    if-eqz v5, :cond_b

    .line 129
    .line 130
    move/from16 v17, v7

    .line 131
    .line 132
    goto :goto_b

    .line 133
    :cond_b
    move/from16 v17, p12

    .line 134
    .line 135
    :goto_b
    and-int/lit16 v5, v15, 0x2000

    .line 136
    .line 137
    if-eqz v5, :cond_c

    .line 138
    .line 139
    move/from16 v18, v10

    .line 140
    .line 141
    goto :goto_c

    .line 142
    :cond_c
    move/from16 v18, p13

    .line 143
    .line 144
    :goto_c
    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$1;

    .line 145
    .line 146
    const v7, 0x7076b8d0

    .line 147
    .line 148
    .line 149
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    instance-of v7, v7, Landroidx/compose/ui/graphics/vector/VectorApplier;

    .line 157
    .line 158
    if-nez v7, :cond_d

    .line 159
    .line 160
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 161
    .line 162
    .line 163
    :cond_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startNode()V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_e

    .line 171
    .line 172
    new-instance v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1;

    .line 173
    .line 174
    invoke-direct {v7, v5}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 178
    .line 179
    .line 180
    goto :goto_d

    .line 181
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 182
    .line 183
    .line 184
    :goto_d
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$1;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$1;

    .line 189
    .line 190
    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 191
    .line 192
    .line 193
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$2;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$2;

    .line 194
    .line 195
    invoke-static {v5, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v2}, Landroidx/compose/ui/graphics/PathFillType;->box-impl(I)Landroidx/compose/ui/graphics/PathFillType;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$3;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$3;

    .line 203
    .line 204
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 205
    .line 206
    .line 207
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$4;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$4;

    .line 208
    .line 209
    invoke-static {v5, v4, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$5;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$5;

    .line 217
    .line 218
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$6;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$6;

    .line 222
    .line 223
    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$7;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$7;

    .line 231
    .line 232
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 233
    .line 234
    .line 235
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$8;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$8;

    .line 240
    .line 241
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v13}, Landroidx/compose/ui/graphics/StrokeJoin;->box-impl(I)Landroidx/compose/ui/graphics/StrokeJoin;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$9;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$9;

    .line 249
    .line 250
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v12}, Landroidx/compose/ui/graphics/StrokeCap;->box-impl(I)Landroidx/compose/ui/graphics/StrokeCap;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$10;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$10;

    .line 258
    .line 259
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 260
    .line 261
    .line 262
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$11;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$11;

    .line 267
    .line 268
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$12;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$12;

    .line 276
    .line 277
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    .line 279
    .line 280
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 281
    .line 282
    .line 283
    move-result-object v7

    .line 284
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$13;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$13;

    .line 285
    .line 286
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 287
    .line 288
    .line 289
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 290
    .line 291
    .line 292
    move-result-object v7

    .line 293
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$14;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$2$14;

    .line 294
    .line 295
    invoke-static {v5, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 299
    .line 300
    .line 301
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 302
    .line 303
    .line 304
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 305
    .line 306
    .line 307
    move-result-object v10

    .line 308
    if-nez v10, :cond_f

    .line 309
    .line 310
    goto :goto_e

    .line 311
    :cond_f
    new-instance v7, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;

    .line 312
    .line 313
    move-object v0, v7

    .line 314
    move-object/from16 v1, p0

    .line 315
    .line 316
    move v5, v6

    .line 317
    move-object v6, v8

    .line 318
    move-object v8, v7

    .line 319
    move v7, v9

    .line 320
    move-object v9, v8

    .line 321
    move v8, v11

    .line 322
    move-object v11, v9

    .line 323
    move v9, v12

    .line 324
    move-object v12, v10

    .line 325
    move v10, v13

    .line 326
    move-object v13, v11

    .line 327
    move v11, v14

    .line 328
    move-object v14, v12

    .line 329
    move/from16 v12, v16

    .line 330
    .line 331
    move-object/from16 v19, v13

    .line 332
    .line 333
    move/from16 v13, v17

    .line 334
    .line 335
    move-object/from16 v20, v14

    .line 336
    .line 337
    move/from16 v14, v18

    .line 338
    .line 339
    move/from16 v15, p15

    .line 340
    .line 341
    move/from16 v16, p16

    .line 342
    .line 343
    move/from16 v17, p17

    .line 344
    .line 345
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/graphics/vector/VectorComposeKt$Path$3;-><init>(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFIII)V

    .line 346
    .line 347
    .line 348
    move-object/from16 v1, v19

    .line 349
    .line 350
    move-object/from16 v0, v20

    .line 351
    .line 352
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 353
    .line 354
    .line 355
    :goto_e
    return-void
.end method
