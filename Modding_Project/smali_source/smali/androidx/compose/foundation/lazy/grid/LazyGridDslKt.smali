.class public final Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
.super Ljava/lang/Object;
.source "LazyGridDsl.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final LazyHorizontalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/foundation/lazy/grid/GridCells;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p9

    .line 4
    .line 5
    move/from16 v15, p11

    .line 6
    .line 7
    move/from16 v14, p12

    .line 8
    .line 9
    const-string v2, "rows"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "content"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x7e93b31a

    .line 20
    .line 21
    .line 22
    move-object/from16 v3, p10

    .line 23
    .line 24
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v13

    .line 28
    and-int/lit8 v2, v14, 0x1

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    or-int/lit8 v2, v15, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v2, v15, 0xe

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    :goto_0
    or-int/2addr v2, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v15

    .line 51
    :goto_1
    and-int/lit8 v3, v14, 0x2

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    or-int/lit8 v2, v2, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v4, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v4, v15, 0x70

    .line 61
    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    move-object/from16 v4, p1

    .line 65
    .line 66
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v5, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v2, v5

    .line 78
    :goto_3
    and-int/lit16 v5, v15, 0x380

    .line 79
    .line 80
    if-nez v5, :cond_8

    .line 81
    .line 82
    and-int/lit8 v5, v14, 0x4

    .line 83
    .line 84
    if-nez v5, :cond_6

    .line 85
    .line 86
    move-object/from16 v5, p2

    .line 87
    .line 88
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    const/16 v6, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object/from16 v5, p2

    .line 98
    .line 99
    :cond_7
    const/16 v6, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v2, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move-object/from16 v5, p2

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 106
    .line 107
    if-eqz v6, :cond_a

    .line 108
    .line 109
    or-int/lit16 v2, v2, 0xc00

    .line 110
    .line 111
    :cond_9
    move-object/from16 v7, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    .line 115
    .line 116
    if-nez v7, :cond_9

    .line 117
    .line 118
    move-object/from16 v7, p3

    .line 119
    .line 120
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_b

    .line 125
    .line 126
    const/16 v8, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v8, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v2, v8

    .line 132
    :goto_7
    and-int/lit8 v8, v14, 0x10

    .line 133
    .line 134
    const v9, 0xe000

    .line 135
    .line 136
    .line 137
    if-eqz v8, :cond_d

    .line 138
    .line 139
    or-int/lit16 v2, v2, 0x6000

    .line 140
    .line 141
    :cond_c
    move/from16 v10, p4

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_d
    and-int v10, v15, v9

    .line 145
    .line 146
    if-nez v10, :cond_c

    .line 147
    .line 148
    move/from16 v10, p4

    .line 149
    .line 150
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_e

    .line 155
    .line 156
    const/16 v11, 0x4000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_e
    const/16 v11, 0x2000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v2, v11

    .line 162
    :goto_9
    const/high16 v11, 0x70000

    .line 163
    .line 164
    and-int/2addr v11, v15

    .line 165
    if-nez v11, :cond_11

    .line 166
    .line 167
    and-int/lit8 v11, v14, 0x20

    .line 168
    .line 169
    if-nez v11, :cond_f

    .line 170
    .line 171
    move-object/from16 v11, p5

    .line 172
    .line 173
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    if-eqz v12, :cond_10

    .line 178
    .line 179
    const/high16 v12, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_f
    move-object/from16 v11, p5

    .line 183
    .line 184
    :cond_10
    const/high16 v12, 0x10000

    .line 185
    .line 186
    :goto_a
    or-int/2addr v2, v12

    .line 187
    goto :goto_b

    .line 188
    :cond_11
    move-object/from16 v11, p5

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v12, v14, 0x40

    .line 191
    .line 192
    const/high16 v16, 0x380000

    .line 193
    .line 194
    if-eqz v12, :cond_12

    .line 195
    .line 196
    const/high16 v17, 0x180000

    .line 197
    .line 198
    or-int v2, v2, v17

    .line 199
    .line 200
    move-object/from16 v9, p6

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :cond_12
    and-int v17, v15, v16

    .line 204
    .line 205
    move-object/from16 v9, p6

    .line 206
    .line 207
    if-nez v17, :cond_14

    .line 208
    .line 209
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v17

    .line 213
    if-eqz v17, :cond_13

    .line 214
    .line 215
    const/high16 v17, 0x100000

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_13
    const/high16 v17, 0x80000

    .line 219
    .line 220
    :goto_c
    or-int v2, v2, v17

    .line 221
    .line 222
    :cond_14
    :goto_d
    const/high16 v17, 0x1c00000

    .line 223
    .line 224
    and-int v18, v15, v17

    .line 225
    .line 226
    if-nez v18, :cond_17

    .line 227
    .line 228
    and-int/lit16 v4, v14, 0x80

    .line 229
    .line 230
    if-nez v4, :cond_15

    .line 231
    .line 232
    move-object/from16 v4, p7

    .line 233
    .line 234
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v18

    .line 238
    if-eqz v18, :cond_16

    .line 239
    .line 240
    const/high16 v18, 0x800000

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_15
    move-object/from16 v4, p7

    .line 244
    .line 245
    :cond_16
    const/high16 v18, 0x400000

    .line 246
    .line 247
    :goto_e
    or-int v2, v2, v18

    .line 248
    .line 249
    goto :goto_f

    .line 250
    :cond_17
    move-object/from16 v4, p7

    .line 251
    .line 252
    :goto_f
    and-int/lit16 v4, v14, 0x100

    .line 253
    .line 254
    const/high16 v18, 0xe000000

    .line 255
    .line 256
    if-eqz v4, :cond_18

    .line 257
    .line 258
    const/high16 v19, 0x6000000

    .line 259
    .line 260
    or-int v2, v2, v19

    .line 261
    .line 262
    move/from16 v5, p8

    .line 263
    .line 264
    goto :goto_11

    .line 265
    :cond_18
    and-int v19, v15, v18

    .line 266
    .line 267
    move/from16 v5, p8

    .line 268
    .line 269
    if-nez v19, :cond_1a

    .line 270
    .line 271
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 272
    .line 273
    .line 274
    move-result v19

    .line 275
    if-eqz v19, :cond_19

    .line 276
    .line 277
    const/high16 v19, 0x4000000

    .line 278
    .line 279
    goto :goto_10

    .line 280
    :cond_19
    const/high16 v19, 0x2000000

    .line 281
    .line 282
    :goto_10
    or-int v2, v2, v19

    .line 283
    .line 284
    :cond_1a
    :goto_11
    and-int/lit16 v5, v14, 0x200

    .line 285
    .line 286
    const/high16 v19, 0x70000000

    .line 287
    .line 288
    if-eqz v5, :cond_1b

    .line 289
    .line 290
    const/high16 v5, 0x30000000

    .line 291
    .line 292
    :goto_12
    or-int/2addr v2, v5

    .line 293
    goto :goto_13

    .line 294
    :cond_1b
    and-int v5, v15, v19

    .line 295
    .line 296
    if-nez v5, :cond_1d

    .line 297
    .line 298
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-eqz v5, :cond_1c

    .line 303
    .line 304
    const/high16 v5, 0x20000000

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_1c
    const/high16 v5, 0x10000000

    .line 308
    .line 309
    goto :goto_12

    .line 310
    :cond_1d
    :goto_13
    const v5, 0x5b6db6db

    .line 311
    .line 312
    .line 313
    and-int/2addr v5, v2

    .line 314
    const v0, 0x12492492

    .line 315
    .line 316
    .line 317
    if-ne v5, v0, :cond_1f

    .line 318
    .line 319
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_1e

    .line 324
    .line 325
    goto :goto_14

    .line 326
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 327
    .line 328
    .line 329
    move-object/from16 v2, p1

    .line 330
    .line 331
    move-object/from16 v3, p2

    .line 332
    .line 333
    move-object/from16 v8, p7

    .line 334
    .line 335
    move-object v4, v7

    .line 336
    move-object v7, v9

    .line 337
    move v5, v10

    .line 338
    move-object v6, v11

    .line 339
    move-object/from16 v26, v13

    .line 340
    .line 341
    move/from16 v9, p8

    .line 342
    .line 343
    goto/16 :goto_20

    .line 344
    .line 345
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 346
    .line 347
    .line 348
    and-int/lit8 v0, v15, 0x1

    .line 349
    .line 350
    const v5, -0x1c00001

    .line 351
    .line 352
    .line 353
    const v20, -0x70001

    .line 354
    .line 355
    .line 356
    if-eqz v0, :cond_24

    .line 357
    .line 358
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_20

    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 366
    .line 367
    .line 368
    and-int/lit8 v0, v14, 0x4

    .line 369
    .line 370
    if-eqz v0, :cond_21

    .line 371
    .line 372
    and-int/lit16 v2, v2, -0x381

    .line 373
    .line 374
    :cond_21
    and-int/lit8 v0, v14, 0x20

    .line 375
    .line 376
    if-eqz v0, :cond_22

    .line 377
    .line 378
    and-int v2, v2, v20

    .line 379
    .line 380
    :cond_22
    and-int/lit16 v0, v14, 0x80

    .line 381
    .line 382
    if-eqz v0, :cond_23

    .line 383
    .line 384
    and-int/2addr v2, v5

    .line 385
    :cond_23
    move-object/from16 v0, p1

    .line 386
    .line 387
    move-object/from16 v20, p2

    .line 388
    .line 389
    move-object/from16 v23, p7

    .line 390
    .line 391
    move/from16 v24, p8

    .line 392
    .line 393
    move-object v12, v7

    .line 394
    move/from16 v21, v10

    .line 395
    .line 396
    move-object/from16 v22, v11

    .line 397
    .line 398
    move-object v11, v9

    .line 399
    goto/16 :goto_1f

    .line 400
    .line 401
    :cond_24
    :goto_15
    if-eqz v3, :cond_25

    .line 402
    .line 403
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 404
    .line 405
    goto :goto_16

    .line 406
    :cond_25
    move-object/from16 v0, p1

    .line 407
    .line 408
    :goto_16
    and-int/lit8 v3, v14, 0x4

    .line 409
    .line 410
    const/4 v5, 0x0

    .line 411
    if-eqz v3, :cond_26

    .line 412
    .line 413
    const/4 v3, 0x3

    .line 414
    invoke-static {v5, v5, v13, v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    and-int/lit16 v2, v2, -0x381

    .line 419
    .line 420
    goto :goto_17

    .line 421
    :cond_26
    move-object/from16 v3, p2

    .line 422
    .line 423
    :goto_17
    if-eqz v6, :cond_27

    .line 424
    .line 425
    int-to-float v6, v5

    .line 426
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    goto :goto_18

    .line 435
    :cond_27
    move-object v6, v7

    .line 436
    :goto_18
    if-eqz v8, :cond_28

    .line 437
    .line 438
    goto :goto_19

    .line 439
    :cond_28
    move v5, v10

    .line 440
    :goto_19
    and-int/lit8 v7, v14, 0x20

    .line 441
    .line 442
    if-eqz v7, :cond_2a

    .line 443
    .line 444
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 445
    .line 446
    if-nez v5, :cond_29

    .line 447
    .line 448
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    goto :goto_1a

    .line 453
    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getEnd()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    :goto_1a
    and-int v2, v2, v20

    .line 458
    .line 459
    goto :goto_1b

    .line 460
    :cond_2a
    move-object v7, v11

    .line 461
    :goto_1b
    if-eqz v12, :cond_2b

    .line 462
    .line 463
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 464
    .line 465
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    goto :goto_1c

    .line 470
    :cond_2b
    move-object v8, v9

    .line 471
    :goto_1c
    and-int/lit16 v9, v14, 0x80

    .line 472
    .line 473
    if-eqz v9, :cond_2c

    .line 474
    .line 475
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 476
    .line 477
    const/4 v10, 0x6

    .line 478
    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    const v10, -0x1c00001

    .line 483
    .line 484
    .line 485
    and-int/2addr v2, v10

    .line 486
    goto :goto_1d

    .line 487
    :cond_2c
    move-object/from16 v9, p7

    .line 488
    .line 489
    :goto_1d
    if-eqz v4, :cond_2d

    .line 490
    .line 491
    const/4 v4, 0x1

    .line 492
    move-object/from16 v20, v3

    .line 493
    .line 494
    move/from16 v24, v4

    .line 495
    .line 496
    :goto_1e
    move/from16 v21, v5

    .line 497
    .line 498
    move-object v12, v6

    .line 499
    move-object/from16 v22, v7

    .line 500
    .line 501
    move-object v11, v8

    .line 502
    move-object/from16 v23, v9

    .line 503
    .line 504
    goto :goto_1f

    .line 505
    :cond_2d
    move/from16 v24, p8

    .line 506
    .line 507
    move-object/from16 v20, v3

    .line 508
    .line 509
    goto :goto_1e

    .line 510
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 511
    .line 512
    .line 513
    and-int/lit8 v3, v2, 0xe

    .line 514
    .line 515
    shr-int/lit8 v4, v2, 0xf

    .line 516
    .line 517
    and-int/lit8 v4, v4, 0x70

    .line 518
    .line 519
    or-int/2addr v3, v4

    .line 520
    shr-int/lit8 v4, v2, 0x3

    .line 521
    .line 522
    and-int/lit16 v5, v4, 0x380

    .line 523
    .line 524
    or-int/2addr v3, v5

    .line 525
    invoke-static {v1, v11, v12, v13, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->rememberRowHeightSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    and-int/lit8 v3, v4, 0xe

    .line 530
    .line 531
    const/high16 v6, 0x30000

    .line 532
    .line 533
    or-int/2addr v3, v6

    .line 534
    and-int/lit8 v6, v4, 0x70

    .line 535
    .line 536
    or-int/2addr v3, v6

    .line 537
    and-int/lit16 v6, v2, 0x1c00

    .line 538
    .line 539
    or-int/2addr v3, v6

    .line 540
    const v6, 0xe000

    .line 541
    .line 542
    .line 543
    and-int/2addr v6, v2

    .line 544
    or-int/2addr v3, v6

    .line 545
    and-int v6, v4, v16

    .line 546
    .line 547
    or-int/2addr v3, v6

    .line 548
    and-int v4, v4, v17

    .line 549
    .line 550
    or-int/2addr v3, v4

    .line 551
    shl-int/lit8 v4, v2, 0x6

    .line 552
    .line 553
    and-int v4, v4, v18

    .line 554
    .line 555
    or-int/2addr v3, v4

    .line 556
    shl-int/lit8 v4, v2, 0xc

    .line 557
    .line 558
    and-int v4, v4, v19

    .line 559
    .line 560
    or-int v16, v3, v4

    .line 561
    .line 562
    shr-int/lit8 v2, v2, 0x1b

    .line 563
    .line 564
    and-int/lit8 v17, v2, 0xe

    .line 565
    .line 566
    const/16 v18, 0x0

    .line 567
    .line 568
    const/4 v7, 0x0

    .line 569
    move-object v2, v0

    .line 570
    move-object/from16 v3, v20

    .line 571
    .line 572
    move-object v4, v5

    .line 573
    move-object v5, v12

    .line 574
    move/from16 v6, v21

    .line 575
    .line 576
    move-object/from16 v8, v23

    .line 577
    .line 578
    move/from16 v9, v24

    .line 579
    .line 580
    move-object v10, v11

    .line 581
    move-object/from16 v19, v11

    .line 582
    .line 583
    move-object/from16 v11, v22

    .line 584
    .line 585
    move-object/from16 v25, v12

    .line 586
    .line 587
    move-object/from16 v12, p9

    .line 588
    .line 589
    move-object/from16 v26, v13

    .line 590
    .line 591
    move/from16 v14, v16

    .line 592
    .line 593
    move/from16 v15, v17

    .line 594
    .line 595
    move/from16 v16, v18

    .line 596
    .line 597
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    .line 598
    .line 599
    .line 600
    move-object/from16 v7, v19

    .line 601
    .line 602
    move/from16 v5, v21

    .line 603
    .line 604
    move-object/from16 v6, v22

    .line 605
    .line 606
    move-object/from16 v4, v25

    .line 607
    .line 608
    :goto_20
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 609
    .line 610
    .line 611
    move-result-object v13

    .line 612
    if-nez v13, :cond_2e

    .line 613
    .line 614
    goto :goto_21

    .line 615
    :cond_2e
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;

    .line 616
    .line 617
    move-object v0, v14

    .line 618
    move-object/from16 v1, p0

    .line 619
    .line 620
    move-object/from16 v10, p9

    .line 621
    .line 622
    move/from16 v11, p11

    .line 623
    .line 624
    move/from16 v12, p12

    .line 625
    .line 626
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyHorizontalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    .line 627
    .line 628
    .line 629
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 630
    .line 631
    .line 632
    :goto_21
    return-void
.end method

.method public static final LazyVerticalGrid(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Landroidx/compose/foundation/lazy/grid/GridCells;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyGridState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/gestures/FlingBehavior;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p9

    .line 4
    .line 5
    move/from16 v15, p11

    .line 6
    .line 7
    move/from16 v14, p12

    .line 8
    .line 9
    const-string v2, "columns"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "content"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x588990d0

    .line 20
    .line 21
    .line 22
    move-object/from16 v3, p10

    .line 23
    .line 24
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v13

    .line 28
    and-int/lit8 v2, v14, 0x1

    .line 29
    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    or-int/lit8 v2, v15, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v2, v15, 0xe

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v2, 0x2

    .line 48
    :goto_0
    or-int/2addr v2, v15

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v15

    .line 51
    :goto_1
    and-int/lit8 v3, v14, 0x2

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    or-int/lit8 v2, v2, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v4, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v4, v15, 0x70

    .line 61
    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    move-object/from16 v4, p1

    .line 65
    .line 66
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v5, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v2, v5

    .line 78
    :goto_3
    and-int/lit16 v5, v15, 0x380

    .line 79
    .line 80
    if-nez v5, :cond_8

    .line 81
    .line 82
    and-int/lit8 v5, v14, 0x4

    .line 83
    .line 84
    if-nez v5, :cond_6

    .line 85
    .line 86
    move-object/from16 v5, p2

    .line 87
    .line 88
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_7

    .line 93
    .line 94
    const/16 v6, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object/from16 v5, p2

    .line 98
    .line 99
    :cond_7
    const/16 v6, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v2, v6

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move-object/from16 v5, p2

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v6, v14, 0x8

    .line 106
    .line 107
    if-eqz v6, :cond_a

    .line 108
    .line 109
    or-int/lit16 v2, v2, 0xc00

    .line 110
    .line 111
    :cond_9
    move-object/from16 v7, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v7, v15, 0x1c00

    .line 115
    .line 116
    if-nez v7, :cond_9

    .line 117
    .line 118
    move-object/from16 v7, p3

    .line 119
    .line 120
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    if-eqz v8, :cond_b

    .line 125
    .line 126
    const/16 v8, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v8, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v2, v8

    .line 132
    :goto_7
    and-int/lit8 v8, v14, 0x10

    .line 133
    .line 134
    const v9, 0xe000

    .line 135
    .line 136
    .line 137
    if-eqz v8, :cond_d

    .line 138
    .line 139
    or-int/lit16 v2, v2, 0x6000

    .line 140
    .line 141
    :cond_c
    move/from16 v10, p4

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_d
    and-int v10, v15, v9

    .line 145
    .line 146
    if-nez v10, :cond_c

    .line 147
    .line 148
    move/from16 v10, p4

    .line 149
    .line 150
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 151
    .line 152
    .line 153
    move-result v11

    .line 154
    if-eqz v11, :cond_e

    .line 155
    .line 156
    const/16 v11, 0x4000

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_e
    const/16 v11, 0x2000

    .line 160
    .line 161
    :goto_8
    or-int/2addr v2, v11

    .line 162
    :goto_9
    const/high16 v11, 0x70000

    .line 163
    .line 164
    and-int/2addr v11, v15

    .line 165
    if-nez v11, :cond_11

    .line 166
    .line 167
    and-int/lit8 v11, v14, 0x20

    .line 168
    .line 169
    if-nez v11, :cond_f

    .line 170
    .line 171
    move-object/from16 v11, p5

    .line 172
    .line 173
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    if-eqz v12, :cond_10

    .line 178
    .line 179
    const/high16 v12, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_f
    move-object/from16 v11, p5

    .line 183
    .line 184
    :cond_10
    const/high16 v12, 0x10000

    .line 185
    .line 186
    :goto_a
    or-int/2addr v2, v12

    .line 187
    goto :goto_b

    .line 188
    :cond_11
    move-object/from16 v11, p5

    .line 189
    .line 190
    :goto_b
    and-int/lit8 v12, v14, 0x40

    .line 191
    .line 192
    const/high16 v16, 0x380000

    .line 193
    .line 194
    if-eqz v12, :cond_12

    .line 195
    .line 196
    const/high16 v17, 0x180000

    .line 197
    .line 198
    or-int v2, v2, v17

    .line 199
    .line 200
    move-object/from16 v9, p6

    .line 201
    .line 202
    goto :goto_d

    .line 203
    :cond_12
    and-int v17, v15, v16

    .line 204
    .line 205
    move-object/from16 v9, p6

    .line 206
    .line 207
    if-nez v17, :cond_14

    .line 208
    .line 209
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v17

    .line 213
    if-eqz v17, :cond_13

    .line 214
    .line 215
    const/high16 v17, 0x100000

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_13
    const/high16 v17, 0x80000

    .line 219
    .line 220
    :goto_c
    or-int v2, v2, v17

    .line 221
    .line 222
    :cond_14
    :goto_d
    const/high16 v17, 0x1c00000

    .line 223
    .line 224
    and-int v18, v15, v17

    .line 225
    .line 226
    if-nez v18, :cond_17

    .line 227
    .line 228
    and-int/lit16 v4, v14, 0x80

    .line 229
    .line 230
    if-nez v4, :cond_15

    .line 231
    .line 232
    move-object/from16 v4, p7

    .line 233
    .line 234
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v18

    .line 238
    if-eqz v18, :cond_16

    .line 239
    .line 240
    const/high16 v18, 0x800000

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_15
    move-object/from16 v4, p7

    .line 244
    .line 245
    :cond_16
    const/high16 v18, 0x400000

    .line 246
    .line 247
    :goto_e
    or-int v2, v2, v18

    .line 248
    .line 249
    goto :goto_f

    .line 250
    :cond_17
    move-object/from16 v4, p7

    .line 251
    .line 252
    :goto_f
    and-int/lit16 v4, v14, 0x100

    .line 253
    .line 254
    const/high16 v18, 0xe000000

    .line 255
    .line 256
    if-eqz v4, :cond_18

    .line 257
    .line 258
    const/high16 v19, 0x6000000

    .line 259
    .line 260
    or-int v2, v2, v19

    .line 261
    .line 262
    move/from16 v5, p8

    .line 263
    .line 264
    goto :goto_11

    .line 265
    :cond_18
    and-int v19, v15, v18

    .line 266
    .line 267
    move/from16 v5, p8

    .line 268
    .line 269
    if-nez v19, :cond_1a

    .line 270
    .line 271
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 272
    .line 273
    .line 274
    move-result v19

    .line 275
    if-eqz v19, :cond_19

    .line 276
    .line 277
    const/high16 v19, 0x4000000

    .line 278
    .line 279
    goto :goto_10

    .line 280
    :cond_19
    const/high16 v19, 0x2000000

    .line 281
    .line 282
    :goto_10
    or-int v2, v2, v19

    .line 283
    .line 284
    :cond_1a
    :goto_11
    and-int/lit16 v5, v14, 0x200

    .line 285
    .line 286
    const/high16 v19, 0x70000000

    .line 287
    .line 288
    if-eqz v5, :cond_1b

    .line 289
    .line 290
    const/high16 v5, 0x30000000

    .line 291
    .line 292
    :goto_12
    or-int/2addr v2, v5

    .line 293
    goto :goto_13

    .line 294
    :cond_1b
    and-int v5, v15, v19

    .line 295
    .line 296
    if-nez v5, :cond_1d

    .line 297
    .line 298
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-eqz v5, :cond_1c

    .line 303
    .line 304
    const/high16 v5, 0x20000000

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_1c
    const/high16 v5, 0x10000000

    .line 308
    .line 309
    goto :goto_12

    .line 310
    :cond_1d
    :goto_13
    const v5, 0x5b6db6db

    .line 311
    .line 312
    .line 313
    and-int/2addr v5, v2

    .line 314
    const v0, 0x12492492

    .line 315
    .line 316
    .line 317
    if-ne v5, v0, :cond_1f

    .line 318
    .line 319
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_1e

    .line 324
    .line 325
    goto :goto_14

    .line 326
    :cond_1e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 327
    .line 328
    .line 329
    move-object/from16 v2, p1

    .line 330
    .line 331
    move-object/from16 v3, p2

    .line 332
    .line 333
    move-object/from16 v8, p7

    .line 334
    .line 335
    move-object v4, v7

    .line 336
    move-object v7, v9

    .line 337
    move v5, v10

    .line 338
    move-object v6, v11

    .line 339
    move-object/from16 v26, v13

    .line 340
    .line 341
    move/from16 v9, p8

    .line 342
    .line 343
    goto/16 :goto_20

    .line 344
    .line 345
    :cond_1f
    :goto_14
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 346
    .line 347
    .line 348
    and-int/lit8 v0, v15, 0x1

    .line 349
    .line 350
    const v5, -0x1c00001

    .line 351
    .line 352
    .line 353
    const v20, -0x70001

    .line 354
    .line 355
    .line 356
    if-eqz v0, :cond_24

    .line 357
    .line 358
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_20

    .line 363
    .line 364
    goto :goto_15

    .line 365
    :cond_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 366
    .line 367
    .line 368
    and-int/lit8 v0, v14, 0x4

    .line 369
    .line 370
    if-eqz v0, :cond_21

    .line 371
    .line 372
    and-int/lit16 v2, v2, -0x381

    .line 373
    .line 374
    :cond_21
    and-int/lit8 v0, v14, 0x20

    .line 375
    .line 376
    if-eqz v0, :cond_22

    .line 377
    .line 378
    and-int v2, v2, v20

    .line 379
    .line 380
    :cond_22
    and-int/lit16 v0, v14, 0x80

    .line 381
    .line 382
    if-eqz v0, :cond_23

    .line 383
    .line 384
    and-int/2addr v2, v5

    .line 385
    :cond_23
    move-object/from16 v0, p1

    .line 386
    .line 387
    move-object/from16 v20, p2

    .line 388
    .line 389
    move-object/from16 v23, p7

    .line 390
    .line 391
    move/from16 v24, p8

    .line 392
    .line 393
    move-object v12, v7

    .line 394
    move/from16 v21, v10

    .line 395
    .line 396
    move-object/from16 v22, v11

    .line 397
    .line 398
    move-object v11, v9

    .line 399
    goto/16 :goto_1f

    .line 400
    .line 401
    :cond_24
    :goto_15
    if-eqz v3, :cond_25

    .line 402
    .line 403
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 404
    .line 405
    goto :goto_16

    .line 406
    :cond_25
    move-object/from16 v0, p1

    .line 407
    .line 408
    :goto_16
    and-int/lit8 v3, v14, 0x4

    .line 409
    .line 410
    const/4 v5, 0x0

    .line 411
    if-eqz v3, :cond_26

    .line 412
    .line 413
    const/4 v3, 0x3

    .line 414
    invoke-static {v5, v5, v13, v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->rememberLazyGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    and-int/lit16 v2, v2, -0x381

    .line 419
    .line 420
    goto :goto_17

    .line 421
    :cond_26
    move-object/from16 v3, p2

    .line 422
    .line 423
    :goto_17
    if-eqz v6, :cond_27

    .line 424
    .line 425
    int-to-float v6, v5

    .line 426
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 427
    .line 428
    .line 429
    move-result v6

    .line 430
    invoke-static {v6}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    goto :goto_18

    .line 435
    :cond_27
    move-object v6, v7

    .line 436
    :goto_18
    if-eqz v8, :cond_28

    .line 437
    .line 438
    goto :goto_19

    .line 439
    :cond_28
    move v5, v10

    .line 440
    :goto_19
    and-int/lit8 v7, v14, 0x20

    .line 441
    .line 442
    if-eqz v7, :cond_2a

    .line 443
    .line 444
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 445
    .line 446
    if-nez v5, :cond_29

    .line 447
    .line 448
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 449
    .line 450
    .line 451
    move-result-object v7

    .line 452
    goto :goto_1a

    .line 453
    :cond_29
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/Arrangement;->getBottom()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    :goto_1a
    and-int v2, v2, v20

    .line 458
    .line 459
    goto :goto_1b

    .line 460
    :cond_2a
    move-object v7, v11

    .line 461
    :goto_1b
    if-eqz v12, :cond_2b

    .line 462
    .line 463
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 464
    .line 465
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    goto :goto_1c

    .line 470
    :cond_2b
    move-object v8, v9

    .line 471
    :goto_1c
    and-int/lit16 v9, v14, 0x80

    .line 472
    .line 473
    if-eqz v9, :cond_2c

    .line 474
    .line 475
    sget-object v9, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 476
    .line 477
    const/4 v10, 0x6

    .line 478
    invoke-virtual {v9, v13, v10}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->flingBehavior(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;

    .line 479
    .line 480
    .line 481
    move-result-object v9

    .line 482
    const v10, -0x1c00001

    .line 483
    .line 484
    .line 485
    and-int/2addr v2, v10

    .line 486
    goto :goto_1d

    .line 487
    :cond_2c
    move-object/from16 v9, p7

    .line 488
    .line 489
    :goto_1d
    if-eqz v4, :cond_2d

    .line 490
    .line 491
    const/4 v4, 0x1

    .line 492
    move-object/from16 v20, v3

    .line 493
    .line 494
    move/from16 v24, v4

    .line 495
    .line 496
    :goto_1e
    move/from16 v21, v5

    .line 497
    .line 498
    move-object v12, v6

    .line 499
    move-object/from16 v22, v7

    .line 500
    .line 501
    move-object v11, v8

    .line 502
    move-object/from16 v23, v9

    .line 503
    .line 504
    goto :goto_1f

    .line 505
    :cond_2d
    move/from16 v24, p8

    .line 506
    .line 507
    move-object/from16 v20, v3

    .line 508
    .line 509
    goto :goto_1e

    .line 510
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 511
    .line 512
    .line 513
    and-int/lit8 v3, v2, 0xe

    .line 514
    .line 515
    shr-int/lit8 v4, v2, 0xf

    .line 516
    .line 517
    and-int/lit8 v4, v4, 0x70

    .line 518
    .line 519
    or-int/2addr v3, v4

    .line 520
    shr-int/lit8 v4, v2, 0x3

    .line 521
    .line 522
    and-int/lit16 v5, v4, 0x380

    .line 523
    .line 524
    or-int/2addr v3, v5

    .line 525
    invoke-static {v1, v11, v12, v13, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->rememberColumnWidthSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    and-int/lit8 v3, v4, 0xe

    .line 530
    .line 531
    const/high16 v6, 0x30000

    .line 532
    .line 533
    or-int/2addr v3, v6

    .line 534
    and-int/lit8 v6, v4, 0x70

    .line 535
    .line 536
    or-int/2addr v3, v6

    .line 537
    and-int/lit16 v6, v2, 0x1c00

    .line 538
    .line 539
    or-int/2addr v3, v6

    .line 540
    const v6, 0xe000

    .line 541
    .line 542
    .line 543
    and-int/2addr v6, v2

    .line 544
    or-int/2addr v3, v6

    .line 545
    and-int v6, v4, v16

    .line 546
    .line 547
    or-int/2addr v3, v6

    .line 548
    and-int v4, v4, v17

    .line 549
    .line 550
    or-int/2addr v3, v4

    .line 551
    shl-int/lit8 v4, v2, 0x9

    .line 552
    .line 553
    and-int v6, v4, v18

    .line 554
    .line 555
    or-int/2addr v3, v6

    .line 556
    and-int v4, v4, v19

    .line 557
    .line 558
    or-int v16, v3, v4

    .line 559
    .line 560
    shr-int/lit8 v2, v2, 0x1b

    .line 561
    .line 562
    and-int/lit8 v17, v2, 0xe

    .line 563
    .line 564
    const/16 v18, 0x0

    .line 565
    .line 566
    const/4 v7, 0x1

    .line 567
    move-object v2, v0

    .line 568
    move-object/from16 v3, v20

    .line 569
    .line 570
    move-object v4, v5

    .line 571
    move-object v5, v12

    .line 572
    move/from16 v6, v21

    .line 573
    .line 574
    move-object/from16 v8, v23

    .line 575
    .line 576
    move/from16 v9, v24

    .line 577
    .line 578
    move-object/from16 v10, v22

    .line 579
    .line 580
    move-object/from16 v19, v11

    .line 581
    .line 582
    move-object/from16 v25, v12

    .line 583
    .line 584
    move-object/from16 v12, p9

    .line 585
    .line 586
    move-object/from16 v26, v13

    .line 587
    .line 588
    move/from16 v14, v16

    .line 589
    .line 590
    move/from16 v15, v17

    .line 591
    .line 592
    move/from16 v16, v18

    .line 593
    .line 594
    invoke-static/range {v2 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->LazyGrid(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    .line 595
    .line 596
    .line 597
    move-object/from16 v7, v19

    .line 598
    .line 599
    move/from16 v5, v21

    .line 600
    .line 601
    move-object/from16 v6, v22

    .line 602
    .line 603
    move-object/from16 v4, v25

    .line 604
    .line 605
    :goto_20
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 606
    .line 607
    .line 608
    move-result-object v13

    .line 609
    if-nez v13, :cond_2e

    .line 610
    .line 611
    goto :goto_21

    .line 612
    :cond_2e
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;

    .line 613
    .line 614
    move-object v0, v14

    .line 615
    move-object/from16 v1, p0

    .line 616
    .line 617
    move-object/from16 v10, p9

    .line 618
    .line 619
    move/from16 v11, p11

    .line 620
    .line 621
    move/from16 v12, p12

    .line 622
    .line 623
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$LazyVerticalGrid$1;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLkotlin/jvm/functions/Function1;II)V

    .line 624
    .line 625
    .line 626
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 627
    .line 628
    .line 629
    :goto_21
    return-void
.end method

.method public static final synthetic access$calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;->calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final calculateCellsCrossAxisSizeImpl(III)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    mul-int/2addr p2, v0

    .line 4
    sub-int/2addr p0, p2

    .line 5
    div-int p2, p0, p1

    .line 6
    .line 7
    rem-int/2addr p0, p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, p1, :cond_1

    .line 16
    .line 17
    if-ge v2, p0, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v3, v1

    .line 22
    :goto_1
    add-int/2addr v3, p2

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return-object v0
.end method

.method public static final items(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/lazy/grid/LazyGridScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/o<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 3
    new-instance p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;

    invoke-direct {p4, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;-><init>(Lat/o;Ljava/util/List;)V

    const p1, 0x29b3c0fe

    const/4 p5, 0x1

    invoke-static {p1, p5, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p5

    move p1, v0

    move-object p4, v1

    .line 4
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static final items(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/lazy/grid/LazyGridScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/o<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    .line 7
    new-instance p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;

    invoke-direct {p4, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;-><init>(Lat/o;[Ljava/lang/Object;)V

    const p1, 0x184ae7d1

    const/4 p5, 0x1

    invoke-static {p1, p5, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p5

    move p1, v0

    move-object p4, v1

    .line 8
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 1
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$1;

    .line 2
    :cond_2
    const-string p6, "<this>"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_3

    .line 4
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    :cond_4
    move-object v4, v0

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;

    invoke-direct {v5, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$4;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    .line 5
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$5;-><init>(Lat/o;Ljava/util/List;)V

    const p1, 0x29b3c0fe

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static synthetic items$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 7
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$6;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$6;

    .line 8
    :cond_2
    const-string p6, "<this>"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v2, p1

    if-eqz p2, :cond_3

    .line 10
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$7;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$8;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    :cond_4
    move-object v4, v0

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;

    invoke-direct {v5, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$9;-><init>(Lkotlin/jvm/functions/Function1;[Ljava/lang/Object;)V

    .line 11
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$items$10;-><init>(Lat/o;[Ljava/lang/Object;)V

    const p1, 0x184ae7d1

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v1, p0

    .line 12
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lat/p;)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/lazy/grid/LazyGridScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/p<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;-><init>(Lat/n;Ljava/util/List;)V

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    .line 3
    new-instance p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;

    invoke-direct {p4, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;-><init>(Lat/p;Ljava/util/List;)V

    const p1, 0x49456f69

    const/4 p5, 0x1

    invoke-static {p1, p5, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p5

    move p1, v0

    move-object p4, v1

    .line 4
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static final itemsIndexed(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lat/p;)V
    .locals 3
    .param p0    # Landroidx/compose/foundation/lazy/grid/LazyGridScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridScope;",
            "[TT;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lat/p<",
            "-",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContent"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 6
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;

    invoke-direct {v2, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p3, :cond_1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;

    invoke-direct {v1, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;-><init>(Lat/n;[Ljava/lang/Object;)V

    :cond_1
    move-object p3, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;

    invoke-direct {v1, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    .line 7
    new-instance p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;

    invoke-direct {p4, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;-><init>(Lat/p;[Ljava/lang/Object;)V

    const p1, -0x3653b6c2

    const/4 p5, 0x1

    invoke-static {p1, p5, p4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p5

    move p1, v0

    move-object p4, v1

    .line 8
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lat/p;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 1
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$1;

    .line 2
    :cond_2
    const-string p6, "<this>"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz p2, :cond_3

    .line 4
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$2;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$3;-><init>(Lat/n;Ljava/util/List;)V

    :cond_4
    move-object v4, v0

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;

    invoke-direct {v5, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    .line 5
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$5;-><init>(Lat/p;Ljava/util/List;)V

    const p1, 0x49456f69

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v1, p0

    .line 6
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method public static synthetic itemsIndexed$default(Landroidx/compose/foundation/lazy/grid/LazyGridScope;[Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lat/n;Lkotlin/jvm/functions/Function2;Lat/p;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 7
    sget-object p4, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$6;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$6;

    .line 8
    :cond_2
    const-string p6, "<this>"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "items"

    invoke-static {p1, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "contentType"

    invoke-static {p4, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "itemContent"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    array-length v2, p1

    if-eqz p2, :cond_3

    .line 10
    new-instance p6, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;

    invoke-direct {p6, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$7;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    move-object v3, p6

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz p3, :cond_4

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;

    invoke-direct {v0, p3, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$8;-><init>(Lat/n;[Ljava/lang/Object;)V

    :cond_4
    move-object v4, v0

    new-instance v5, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;

    invoke-direct {v5, p4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$9;-><init>(Lkotlin/jvm/functions/Function2;[Ljava/lang/Object;)V

    .line 11
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;

    invoke-direct {p2, p5, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$itemsIndexed$10;-><init>(Lat/p;[Ljava/lang/Object;)V

    const p1, -0x3653b6c2

    const/4 p3, 0x1

    invoke-static {p1, p3, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v6

    move-object v1, p0

    .line 12
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->items(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lat/o;)V

    return-void
.end method

.method private static final rememberColumnWidthSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    const p4, -0x50c843ac

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    const p4, 0x607fb4c4

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    or-int/2addr p4, v0

    .line 22
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    or-int/2addr p4, v0

    .line 27
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    if-ne v0, p4, :cond_1

    .line 40
    .line 41
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;

    .line 42
    .line 43
    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberColumnWidthSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 50
    .line 51
    .line 52
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 53
    .line 54
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method

.method private static final rememberRowHeightSums(Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/GridCells;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    const p4, 0xe4947f5

    .line 2
    .line 3
    .line 4
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    const p4, 0x607fb4c4

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    or-int/2addr p4, v0

    .line 22
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    or-int/2addr p4, v0

    .line 27
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    sget-object p4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 34
    .line 35
    invoke-virtual {p4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    if-ne v0, p4, :cond_1

    .line 40
    .line 41
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;

    .line 42
    .line 43
    invoke-direct {v0, p2, p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridDslKt$rememberRowHeightSums$1$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/lazy/grid/GridCells;Landroidx/compose/foundation/layout/Arrangement$Vertical;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 50
    .line 51
    .line 52
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 53
    .line 54
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method
