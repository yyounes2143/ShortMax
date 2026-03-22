.class public final Landroidx/compose/material/ModalBottomSheetKt;
.super Ljava/lang/Object;
.source "ModalBottomSheet.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final ModalBottomSheetLayout-BzaUkTc(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/ModalBottomSheetState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "Landroidx/compose/ui/graphics/Shape;",
            "FJJJ",
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
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v15, p11

    .line 4
    .line 5
    move/from16 v13, p13

    .line 6
    .line 7
    move/from16 v12, p14

    .line 8
    .line 9
    const-string v0, "sheetContent"

    .line 10
    .line 11
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "content"

    .line 15
    .line 16
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, -0x61613f54

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p12

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    and-int/lit8 v0, v12, 0x1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    or-int/lit8 v0, v13, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v0, v13, 0xe

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x4

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x2

    .line 48
    :goto_0
    or-int/2addr v0, v13

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v0, v13

    .line 51
    :goto_1
    and-int/lit8 v1, v12, 0x2

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v2, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v2, v13, 0x70

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    move-object/from16 v2, p1

    .line 65
    .line 66
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    const/16 v3, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v3, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v0, v3

    .line 78
    :goto_3
    and-int/lit16 v3, v13, 0x380

    .line 79
    .line 80
    if-nez v3, :cond_8

    .line 81
    .line 82
    and-int/lit8 v3, v12, 0x4

    .line 83
    .line 84
    if-nez v3, :cond_6

    .line 85
    .line 86
    move-object/from16 v3, p2

    .line 87
    .line 88
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_7

    .line 93
    .line 94
    const/16 v4, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object/from16 v3, p2

    .line 98
    .line 99
    :cond_7
    const/16 v4, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v0, v4

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move-object/from16 v3, p2

    .line 104
    .line 105
    :goto_5
    and-int/lit16 v4, v13, 0x1c00

    .line 106
    .line 107
    if-nez v4, :cond_a

    .line 108
    .line 109
    and-int/lit8 v4, v12, 0x8

    .line 110
    .line 111
    move-object/from16 v7, p3

    .line 112
    .line 113
    if-nez v4, :cond_9

    .line 114
    .line 115
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_9

    .line 120
    .line 121
    const/16 v4, 0x800

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    const/16 v4, 0x400

    .line 125
    .line 126
    :goto_6
    or-int/2addr v0, v4

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    move-object/from16 v7, p3

    .line 129
    .line 130
    :goto_7
    and-int/lit8 v8, v12, 0x10

    .line 131
    .line 132
    if-eqz v8, :cond_b

    .line 133
    .line 134
    or-int/lit16 v0, v0, 0x6000

    .line 135
    .line 136
    move/from16 v9, p4

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_b
    const v4, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v4, v13

    .line 143
    move/from16 v9, p4

    .line 144
    .line 145
    if-nez v4, :cond_d

    .line 146
    .line 147
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_c

    .line 152
    .line 153
    const/16 v4, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_c
    const/16 v4, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v0, v4

    .line 159
    :cond_d
    :goto_9
    const/high16 v4, 0x70000

    .line 160
    .line 161
    and-int/2addr v4, v13

    .line 162
    if-nez v4, :cond_f

    .line 163
    .line 164
    and-int/lit8 v4, v12, 0x20

    .line 165
    .line 166
    move-wide/from16 v5, p5

    .line 167
    .line 168
    if-nez v4, :cond_e

    .line 169
    .line 170
    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_e

    .line 175
    .line 176
    const/high16 v4, 0x20000

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_e
    const/high16 v4, 0x10000

    .line 180
    .line 181
    :goto_a
    or-int/2addr v0, v4

    .line 182
    goto :goto_b

    .line 183
    :cond_f
    move-wide/from16 v5, p5

    .line 184
    .line 185
    :goto_b
    const/high16 v4, 0x380000

    .line 186
    .line 187
    and-int/2addr v4, v13

    .line 188
    if-nez v4, :cond_11

    .line 189
    .line 190
    and-int/lit8 v4, v12, 0x40

    .line 191
    .line 192
    move-wide/from16 v6, p7

    .line 193
    .line 194
    if-nez v4, :cond_10

    .line 195
    .line 196
    invoke-interface {v10, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-eqz v4, :cond_10

    .line 201
    .line 202
    const/high16 v4, 0x100000

    .line 203
    .line 204
    goto :goto_c

    .line 205
    :cond_10
    const/high16 v4, 0x80000

    .line 206
    .line 207
    :goto_c
    or-int/2addr v0, v4

    .line 208
    goto :goto_d

    .line 209
    :cond_11
    move-wide/from16 v6, p7

    .line 210
    .line 211
    :goto_d
    const/high16 v4, 0x1c00000

    .line 212
    .line 213
    and-int/2addr v4, v13

    .line 214
    if-nez v4, :cond_14

    .line 215
    .line 216
    and-int/lit16 v4, v12, 0x80

    .line 217
    .line 218
    if-nez v4, :cond_12

    .line 219
    .line 220
    move-wide/from16 v4, p9

    .line 221
    .line 222
    invoke-interface {v10, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 223
    .line 224
    .line 225
    move-result v11

    .line 226
    if-eqz v11, :cond_13

    .line 227
    .line 228
    const/high16 v11, 0x800000

    .line 229
    .line 230
    goto :goto_e

    .line 231
    :cond_12
    move-wide/from16 v4, p9

    .line 232
    .line 233
    :cond_13
    const/high16 v11, 0x400000

    .line 234
    .line 235
    :goto_e
    or-int/2addr v0, v11

    .line 236
    goto :goto_f

    .line 237
    :cond_14
    move-wide/from16 v4, p9

    .line 238
    .line 239
    :goto_f
    and-int/lit16 v11, v12, 0x100

    .line 240
    .line 241
    if-eqz v11, :cond_15

    .line 242
    .line 243
    const/high16 v11, 0x6000000

    .line 244
    .line 245
    :goto_10
    or-int/2addr v0, v11

    .line 246
    goto :goto_11

    .line 247
    :cond_15
    const/high16 v11, 0xe000000

    .line 248
    .line 249
    and-int/2addr v11, v13

    .line 250
    if-nez v11, :cond_17

    .line 251
    .line 252
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    if-eqz v11, :cond_16

    .line 257
    .line 258
    const/high16 v11, 0x4000000

    .line 259
    .line 260
    goto :goto_10

    .line 261
    :cond_16
    const/high16 v11, 0x2000000

    .line 262
    .line 263
    goto :goto_10

    .line 264
    :cond_17
    :goto_11
    const v11, 0xb6db6db

    .line 265
    .line 266
    .line 267
    and-int/2addr v11, v0

    .line 268
    const v2, 0x2492492

    .line 269
    .line 270
    .line 271
    if-ne v11, v2, :cond_19

    .line 272
    .line 273
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_18

    .line 278
    .line 279
    goto :goto_12

    .line 280
    :cond_18
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 281
    .line 282
    .line 283
    move-object/from16 v2, p1

    .line 284
    .line 285
    move-object v14, v10

    .line 286
    move-wide v10, v4

    .line 287
    move v5, v9

    .line 288
    move-object/from16 v4, p3

    .line 289
    .line 290
    move-wide v8, v6

    .line 291
    move-wide/from16 v6, p5

    .line 292
    .line 293
    goto/16 :goto_1b

    .line 294
    .line 295
    :cond_19
    :goto_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 296
    .line 297
    .line 298
    and-int/lit8 v2, v13, 0x1

    .line 299
    .line 300
    const v11, -0x1c00001

    .line 301
    .line 302
    .line 303
    const v16, -0x380001

    .line 304
    .line 305
    .line 306
    const v17, -0x70001

    .line 307
    .line 308
    .line 309
    if-eqz v2, :cond_20

    .line 310
    .line 311
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-eqz v2, :cond_1a

    .line 316
    .line 317
    goto :goto_13

    .line 318
    :cond_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 319
    .line 320
    .line 321
    and-int/lit8 v1, v12, 0x4

    .line 322
    .line 323
    if-eqz v1, :cond_1b

    .line 324
    .line 325
    and-int/lit16 v0, v0, -0x381

    .line 326
    .line 327
    :cond_1b
    and-int/lit8 v1, v12, 0x8

    .line 328
    .line 329
    if-eqz v1, :cond_1c

    .line 330
    .line 331
    and-int/lit16 v0, v0, -0x1c01

    .line 332
    .line 333
    :cond_1c
    and-int/lit8 v1, v12, 0x20

    .line 334
    .line 335
    if-eqz v1, :cond_1d

    .line 336
    .line 337
    and-int v0, v0, v17

    .line 338
    .line 339
    :cond_1d
    and-int/lit8 v1, v12, 0x40

    .line 340
    .line 341
    if-eqz v1, :cond_1e

    .line 342
    .line 343
    and-int v0, v0, v16

    .line 344
    .line 345
    :cond_1e
    and-int/lit16 v1, v12, 0x80

    .line 346
    .line 347
    if-eqz v1, :cond_1f

    .line 348
    .line 349
    and-int/2addr v0, v11

    .line 350
    :cond_1f
    move-object/from16 v18, p1

    .line 351
    .line 352
    move-object/from16 v17, p3

    .line 353
    .line 354
    move-wide/from16 v20, p5

    .line 355
    .line 356
    move/from16 v26, v0

    .line 357
    .line 358
    move-object/from16 v16, v3

    .line 359
    .line 360
    move-wide/from16 v24, v4

    .line 361
    .line 362
    move-wide/from16 v22, v6

    .line 363
    .line 364
    move/from16 v19, v9

    .line 365
    .line 366
    goto/16 :goto_1a

    .line 367
    .line 368
    :cond_20
    :goto_13
    if-eqz v1, :cond_21

    .line 369
    .line 370
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 371
    .line 372
    move-object/from16 v18, v1

    .line 373
    .line 374
    goto :goto_14

    .line 375
    :cond_21
    move-object/from16 v18, p1

    .line 376
    .line 377
    :goto_14
    and-int/lit8 v1, v12, 0x4

    .line 378
    .line 379
    if-eqz v1, :cond_22

    .line 380
    .line 381
    sget-object v1, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 382
    .line 383
    const/16 v19, 0x6

    .line 384
    .line 385
    const/16 v20, 0x6

    .line 386
    .line 387
    const/4 v2, 0x0

    .line 388
    const/4 v3, 0x0

    .line 389
    move-object v4, v10

    .line 390
    move/from16 v5, v19

    .line 391
    .line 392
    move/from16 v6, v20

    .line 393
    .line 394
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->rememberModalBottomSheetState(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    and-int/lit16 v0, v0, -0x381

    .line 399
    .line 400
    goto :goto_15

    .line 401
    :cond_22
    move-object v1, v3

    .line 402
    :goto_15
    and-int/lit8 v2, v12, 0x8

    .line 403
    .line 404
    const/4 v3, 0x6

    .line 405
    if-eqz v2, :cond_23

    .line 406
    .line 407
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 408
    .line 409
    invoke-virtual {v2, v10, v3}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 410
    .line 411
    .line 412
    move-result-object v2

    .line 413
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    and-int/lit16 v0, v0, -0x1c01

    .line 418
    .line 419
    goto :goto_16

    .line 420
    :cond_23
    move-object/from16 v2, p3

    .line 421
    .line 422
    :goto_16
    if-eqz v8, :cond_24

    .line 423
    .line 424
    sget-object v4, Landroidx/compose/material/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material/ModalBottomSheetDefaults;

    .line 425
    .line 426
    invoke-virtual {v4}, Landroidx/compose/material/ModalBottomSheetDefaults;->getElevation-D9Ej5fM()F

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    goto :goto_17

    .line 431
    :cond_24
    move v4, v9

    .line 432
    :goto_17
    and-int/lit8 v5, v12, 0x20

    .line 433
    .line 434
    if-eqz v5, :cond_25

    .line 435
    .line 436
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 437
    .line 438
    invoke-virtual {v5, v10, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 443
    .line 444
    .line 445
    move-result-wide v5

    .line 446
    and-int v0, v0, v17

    .line 447
    .line 448
    goto :goto_18

    .line 449
    :cond_25
    move-wide/from16 v5, p5

    .line 450
    .line 451
    :goto_18
    and-int/lit8 v7, v12, 0x40

    .line 452
    .line 453
    if-eqz v7, :cond_26

    .line 454
    .line 455
    shr-int/lit8 v7, v0, 0xf

    .line 456
    .line 457
    and-int/lit8 v7, v7, 0xe

    .line 458
    .line 459
    invoke-static {v5, v6, v10, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 460
    .line 461
    .line 462
    move-result-wide v7

    .line 463
    and-int v0, v0, v16

    .line 464
    .line 465
    goto :goto_19

    .line 466
    :cond_26
    move-wide/from16 v7, p7

    .line 467
    .line 468
    :goto_19
    and-int/lit16 v9, v12, 0x80

    .line 469
    .line 470
    if-eqz v9, :cond_27

    .line 471
    .line 472
    sget-object v9, Landroidx/compose/material/ModalBottomSheetDefaults;->INSTANCE:Landroidx/compose/material/ModalBottomSheetDefaults;

    .line 473
    .line 474
    invoke-virtual {v9, v10, v3}, Landroidx/compose/material/ModalBottomSheetDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    .line 475
    .line 476
    .line 477
    move-result-wide v16

    .line 478
    and-int/2addr v0, v11

    .line 479
    move/from16 v26, v0

    .line 480
    .line 481
    move/from16 v19, v4

    .line 482
    .line 483
    move-wide/from16 v20, v5

    .line 484
    .line 485
    move-wide/from16 v22, v7

    .line 486
    .line 487
    move-wide/from16 v24, v16

    .line 488
    .line 489
    move-object/from16 v16, v1

    .line 490
    .line 491
    move-object/from16 v17, v2

    .line 492
    .line 493
    goto :goto_1a

    .line 494
    :cond_27
    move-wide/from16 v24, p9

    .line 495
    .line 496
    move/from16 v26, v0

    .line 497
    .line 498
    move-object/from16 v16, v1

    .line 499
    .line 500
    move-object/from16 v17, v2

    .line 501
    .line 502
    move/from16 v19, v4

    .line 503
    .line 504
    move-wide/from16 v20, v5

    .line 505
    .line 506
    move-wide/from16 v22, v7

    .line 507
    .line 508
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 509
    .line 510
    .line 511
    const v0, 0x2e20b340

    .line 512
    .line 513
    .line 514
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 515
    .line 516
    .line 517
    const v0, -0x1d58f75c

    .line 518
    .line 519
    .line 520
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 521
    .line 522
    .line 523
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 528
    .line 529
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    if-ne v0, v1, :cond_28

    .line 534
    .line 535
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 536
    .line 537
    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 542
    .line 543
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 544
    .line 545
    .line 546
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    move-object v0, v1

    .line 550
    :cond_28
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 551
    .line 552
    .line 553
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 554
    .line 555
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    .line 556
    .line 557
    .line 558
    move-result-object v27

    .line 559
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 560
    .line 561
    .line 562
    new-instance v11, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;

    .line 563
    .line 564
    move-object v0, v11

    .line 565
    move-object/from16 v1, v16

    .line 566
    .line 567
    move/from16 v2, v26

    .line 568
    .line 569
    move-object/from16 v3, v17

    .line 570
    .line 571
    move-wide/from16 v4, v20

    .line 572
    .line 573
    move-wide/from16 v6, v22

    .line 574
    .line 575
    move/from16 v8, v19

    .line 576
    .line 577
    move-object/from16 v9, p11

    .line 578
    .line 579
    move-object v14, v10

    .line 580
    move-object v15, v11

    .line 581
    move-wide/from16 v10, v24

    .line 582
    .line 583
    move-object/from16 v12, v27

    .line 584
    .line 585
    move-object/from16 v13, p0

    .line 586
    .line 587
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;-><init>(Landroidx/compose/material/ModalBottomSheetState;ILandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;JLgt/g0;Lat/n;)V

    .line 588
    .line 589
    .line 590
    const v0, 0x5fce4f96

    .line 591
    .line 592
    .line 593
    const/4 v1, 0x1

    .line 594
    invoke-static {v14, v0, v1, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    shr-int/lit8 v1, v26, 0x3

    .line 599
    .line 600
    and-int/lit8 v1, v1, 0xe

    .line 601
    .line 602
    or-int/lit16 v1, v1, 0xc00

    .line 603
    .line 604
    const/4 v2, 0x6

    .line 605
    const/4 v3, 0x0

    .line 606
    const/4 v4, 0x0

    .line 607
    move-object/from16 p1, v18

    .line 608
    .line 609
    move-object/from16 p2, v3

    .line 610
    .line 611
    move/from16 p3, v4

    .line 612
    .line 613
    move-object/from16 p4, v0

    .line 614
    .line 615
    move-object/from16 p5, v14

    .line 616
    .line 617
    move/from16 p6, v1

    .line 618
    .line 619
    move/from16 p7, v2

    .line 620
    .line 621
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 622
    .line 623
    .line 624
    move-object/from16 v3, v16

    .line 625
    .line 626
    move-object/from16 v4, v17

    .line 627
    .line 628
    move-object/from16 v2, v18

    .line 629
    .line 630
    move/from16 v5, v19

    .line 631
    .line 632
    move-wide/from16 v6, v20

    .line 633
    .line 634
    move-wide/from16 v8, v22

    .line 635
    .line 636
    :goto_1b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 637
    .line 638
    .line 639
    move-result-object v15

    .line 640
    if-nez v15, :cond_29

    .line 641
    .line 642
    goto :goto_1c

    .line 643
    :cond_29
    new-instance v14, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$2;

    .line 644
    .line 645
    move-object v0, v14

    .line 646
    move-object/from16 v1, p0

    .line 647
    .line 648
    move-object/from16 v12, p11

    .line 649
    .line 650
    move/from16 v13, p13

    .line 651
    .line 652
    move-object/from16 v28, v14

    .line 653
    .line 654
    move/from16 v14, p14

    .line 655
    .line 656
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$2;-><init>(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;Landroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    .line 657
    .line 658
    .line 659
    move-object/from16 v0, v28

    .line 660
    .line 661
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 662
    .line 663
    .line 664
    :goto_1c
    return-void
.end method

.method private static final Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, -0x1f62403c

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p4

    .line 8
    and-int/lit8 v0, p5, 0xe

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p4, p0, p1}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x2

    .line 21
    :goto_0
    or-int/2addr v0, p5

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p5

    .line 24
    :goto_1
    and-int/lit8 v1, p5, 0x70

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    const/16 v1, 0x10

    .line 38
    .line 39
    :goto_2
    or-int/2addr v0, v1

    .line 40
    :cond_3
    and-int/lit16 v1, p5, 0x380

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-interface {p4, p3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    const/16 v1, 0x100

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    const/16 v1, 0x80

    .line 54
    .line 55
    :goto_3
    or-int/2addr v0, v1

    .line 56
    :cond_5
    and-int/lit16 v0, v0, 0x2db

    .line 57
    .line 58
    const/16 v1, 0x92

    .line 59
    .line 60
    if-ne v0, v1, :cond_7

    .line 61
    .line 62
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :cond_7
    :goto_4
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    cmp-long v0, p0, v0

    .line 81
    .line 82
    if-eqz v0, :cond_10

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    if-eqz p3, :cond_8

    .line 86
    .line 87
    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    .line 89
    goto :goto_5

    .line 90
    :cond_8
    move v1, v0

    .line 91
    :goto_5
    new-instance v8, Landroidx/compose/animation/core/TweenSpec;

    .line 92
    .line 93
    const/4 v6, 0x7

    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v3, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v2, v8

    .line 99
    invoke-direct/range {v2 .. v7}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    const/16 v7, 0xc

    .line 104
    .line 105
    const/4 v3, 0x0

    .line 106
    const/4 v4, 0x0

    .line 107
    move-object v5, p4

    .line 108
    invoke-static/range {v1 .. v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/compose/material/Strings$Companion;->getCloseSheet-UdPEhr4()I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    const/4 v3, 0x6

    .line 119
    invoke-static {v2, p4, v3}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const v3, 0x3c3bbb20

    .line 124
    .line 125
    .line 126
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 127
    .line 128
    .line 129
    const v3, 0x1e7b2b64

    .line 130
    .line 131
    .line 132
    const/4 v4, 0x1

    .line 133
    const/4 v5, 0x0

    .line 134
    if-eqz p3, :cond_d

    .line 135
    .line 136
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 137
    .line 138
    const v7, 0x44faf204

    .line 139
    .line 140
    .line 141
    invoke-interface {p4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    if-nez v7, :cond_9

    .line 153
    .line 154
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 155
    .line 156
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    if-ne v8, v7, :cond_a

    .line 161
    .line 162
    :cond_9
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$1$1;

    .line 163
    .line 164
    invoke-direct {v8, p2, v5}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_a
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    .line 172
    .line 173
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 174
    .line 175
    invoke-static {v6, p2, v8}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    invoke-interface {p4, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    or-int/2addr v7, v8

    .line 191
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    if-nez v7, :cond_b

    .line 196
    .line 197
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 198
    .line 199
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    if-ne v8, v7, :cond_c

    .line 204
    .line 205
    :cond_b
    new-instance v8, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$2$1;

    .line 206
    .line 207
    invoke-direct {v8, v2, p2}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {p4, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_c
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 214
    .line 215
    .line 216
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 217
    .line 218
    invoke-static {v6, v4, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    goto :goto_6

    .line 223
    :cond_d
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 224
    .line 225
    :goto_6
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 226
    .line 227
    .line 228
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 229
    .line 230
    invoke-static {v6, v0, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-interface {p4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    or-int/2addr v2, v3

    .line 254
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    if-nez v2, :cond_e

    .line 259
    .line 260
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 261
    .line 262
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    if-ne v3, v2, :cond_f

    .line 267
    .line 268
    :cond_e
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$Scrim$1$1;

    .line 269
    .line 270
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    :cond_f
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 277
    .line 278
    .line 279
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 280
    .line 281
    const/4 v1, 0x0

    .line 282
    invoke-static {v0, v3, p4, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 283
    .line 284
    .line 285
    :cond_10
    :goto_7
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 286
    .line 287
    .line 288
    move-result-object p4

    .line 289
    if-nez p4, :cond_11

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_11
    new-instance v6, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;

    .line 293
    .line 294
    move-object v0, v6

    .line 295
    move-wide v1, p0

    .line 296
    move-object v3, p2

    .line 297
    move v4, p3

    .line 298
    move v5, p5

    .line 299
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/ModalBottomSheetKt$Scrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

    .line 300
    .line 301
    .line 302
    invoke-interface {p4, v6}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 303
    .line 304
    .line 305
    :goto_8
    return-void
.end method

.method private static final Scrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final synthetic access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ModalBottomSheetKt;->Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$Scrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ModalBottomSheetKt;->Scrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$bottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt;->bottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final bottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material/ModalBottomSheetState;FLandroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material/ModalBottomSheetState;",
            "F",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Ljava/lang/Float;

    .line 6
    .line 7
    if-eqz p3, :cond_3

    .line 8
    .line 9
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    int-to-float v1, v1

    .line 15
    div-float v1, p2, v1

    .line 16
    .line 17
    cmpg-float v0, v0, v1

    .line 18
    .line 19
    if-ltz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/compose/material/ModalBottomSheetState;->isSkipHalfExpanded$material_release()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Landroidx/compose/material/ModalBottomSheetValue;->HalfExpanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    sub-float/2addr p2, p3

    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget-object p3, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 63
    .line 64
    invoke-static {p2, p3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    filled-new-array {v0, v1, p2}, [Lkotlin/Pair;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_0
    move-object v2, p2

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    :goto_1
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v1, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    sub-float/2addr p2, p3

    .line 93
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    sget-object p3, Landroidx/compose/material/ModalBottomSheetValue;->Expanded:Landroidx/compose/material/ModalBottomSheetValue;

    .line 98
    .line 99
    invoke-static {p2, p3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    filled-new-array {v0, p2}, [Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {p2}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    goto :goto_0

    .line 112
    :goto_2
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    .line 114
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableState;->getCurrentValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget-object p3, Landroidx/compose/material/ModalBottomSheetValue;->Hidden:Landroidx/compose/material/ModalBottomSheetValue;

    .line 121
    .line 122
    if-eq p2, p3, :cond_2

    .line 123
    .line 124
    const/4 p2, 0x1

    .line 125
    :goto_3
    move v4, p2

    .line 126
    goto :goto_4

    .line 127
    :cond_2
    const/4 p2, 0x0

    .line 128
    goto :goto_3

    .line 129
    :goto_4
    const/16 v10, 0x170

    .line 130
    .line 131
    const/4 v11, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v6, 0x0

    .line 134
    const/4 v7, 0x0

    .line 135
    const/4 v8, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    move-object v1, p1

    .line 138
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/SwipeableKt;->swipeable-pPrIpRY$default(Landroidx/compose/ui/Modifier;Landroidx/compose/material/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ResistanceConfig;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    goto :goto_5

    .line 143
    :cond_3
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 144
    .line 145
    :goto_5
    invoke-interface {p0, p1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    return-object p0
.end method

.method public static final rememberModalBottomSheetState(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;
    .locals 7
    .param p0    # Landroidx/compose/material/ModalBottomSheetValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/ModalBottomSheetState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "initialValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x72f3a17c

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_1

    .line 7
    sget-object p2, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$3;->INSTANCE:Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$3;

    :cond_1
    move-object v3, p2

    and-int/lit8 p1, p4, 0xe

    or-int/lit16 p1, p1, 0x1c0

    shl-int/lit8 p2, p4, 0x3

    and-int/lit16 p2, p2, 0x1c00

    or-int v5, p1, p2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p3

    .line 8
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/ModalBottomSheetKt;->rememberModalBottomSheetState(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;

    move-result-object p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public static final rememberModalBottomSheetState(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/ModalBottomSheetState;
    .locals 7
    .param p0    # Landroidx/compose/material/ModalBottomSheetValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/core/AnimationSpec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/ModalBottomSheetValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/ModalBottomSheetState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p5, "initialValue"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p5, -0x18653f58

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 p5, p6, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Landroidx/compose/material/SwipeableDefaults;->INSTANCE:Landroidx/compose/material/SwipeableDefaults;

    invoke-virtual {p1}, Landroidx/compose/material/SwipeableDefaults;->getAnimationSpec()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p6, 0x8

    if-eqz p5, :cond_1

    .line 2
    sget-object p3, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$1;->INSTANCE:Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$1;

    .line 3
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    filled-new-array {p0, p1, p5, p3}, [Ljava/lang/Object;

    move-result-object v0

    .line 4
    sget-object p5, Landroidx/compose/material/ModalBottomSheetState;->Companion:Landroidx/compose/material/ModalBottomSheetState$Companion;

    invoke-virtual {p5, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetState$Companion;->Saver(Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    .line 5
    new-instance v3, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;

    invoke-direct {v3, p0, p1, p2, p3}, Landroidx/compose/material/ModalBottomSheetKt$rememberModalBottomSheetState$2;-><init>(Landroidx/compose/material/ModalBottomSheetValue;Landroidx/compose/animation/core/AnimationSpec;ZLkotlin/jvm/functions/Function1;)V

    const/16 v5, 0x48

    const/4 v6, 0x4

    const/4 v2, 0x0

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ModalBottomSheetState;

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
