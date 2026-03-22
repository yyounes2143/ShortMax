.class public final Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;
.source "BasicText.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final BasicText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 32
    .param p0    # Landroidx/compose/ui/text/AnnotatedString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move/from16 v11, p9

    .line 4
    .line 5
    move/from16 v12, p10

    .line 6
    .line 7
    const-string v0, "text"

    .line 8
    .line 9
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x26a8f0e8

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p8

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v13

    .line 21
    and-int/lit8 v0, v12, 0x1

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    or-int/lit8 v0, v11, 0x6

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 29
    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_0
    or-int/2addr v0, v11

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v0, v11

    .line 44
    :goto_1
    and-int/lit8 v1, v12, 0x2

    .line 45
    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    or-int/lit8 v0, v0, 0x30

    .line 49
    .line 50
    :cond_3
    move-object/from16 v2, p1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    and-int/lit8 v2, v11, 0x70

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    move-object/from16 v2, p1

    .line 58
    .line 59
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    const/16 v3, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    const/16 v3, 0x10

    .line 69
    .line 70
    :goto_2
    or-int/2addr v0, v3

    .line 71
    :goto_3
    and-int/lit8 v3, v12, 0x4

    .line 72
    .line 73
    if-eqz v3, :cond_7

    .line 74
    .line 75
    or-int/lit16 v0, v0, 0x180

    .line 76
    .line 77
    :cond_6
    move-object/from16 v5, p2

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    and-int/lit16 v5, v11, 0x380

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    move-object/from16 v5, p2

    .line 85
    .line 86
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_8

    .line 91
    .line 92
    const/16 v6, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    const/16 v6, 0x80

    .line 96
    .line 97
    :goto_4
    or-int/2addr v0, v6

    .line 98
    :goto_5
    and-int/lit8 v6, v12, 0x8

    .line 99
    .line 100
    if-eqz v6, :cond_a

    .line 101
    .line 102
    or-int/lit16 v0, v0, 0xc00

    .line 103
    .line 104
    :cond_9
    move-object/from16 v7, p3

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_a
    and-int/lit16 v7, v11, 0x1c00

    .line 108
    .line 109
    if-nez v7, :cond_9

    .line 110
    .line 111
    move-object/from16 v7, p3

    .line 112
    .line 113
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_b

    .line 118
    .line 119
    const/16 v8, 0x800

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_b
    const/16 v8, 0x400

    .line 123
    .line 124
    :goto_6
    or-int/2addr v0, v8

    .line 125
    :goto_7
    and-int/lit8 v8, v12, 0x10

    .line 126
    .line 127
    if-eqz v8, :cond_d

    .line 128
    .line 129
    or-int/lit16 v0, v0, 0x6000

    .line 130
    .line 131
    :cond_c
    move/from16 v9, p4

    .line 132
    .line 133
    goto :goto_9

    .line 134
    :cond_d
    const v9, 0xe000

    .line 135
    .line 136
    .line 137
    and-int/2addr v9, v11

    .line 138
    if-nez v9, :cond_c

    .line 139
    .line 140
    move/from16 v9, p4

    .line 141
    .line 142
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 143
    .line 144
    .line 145
    move-result v14

    .line 146
    if-eqz v14, :cond_e

    .line 147
    .line 148
    const/16 v14, 0x4000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_e
    const/16 v14, 0x2000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v0, v14

    .line 154
    :goto_9
    and-int/lit8 v14, v12, 0x20

    .line 155
    .line 156
    if-eqz v14, :cond_10

    .line 157
    .line 158
    const/high16 v15, 0x30000

    .line 159
    .line 160
    or-int/2addr v0, v15

    .line 161
    :cond_f
    move/from16 v15, p5

    .line 162
    .line 163
    goto :goto_b

    .line 164
    :cond_10
    const/high16 v15, 0x70000

    .line 165
    .line 166
    and-int/2addr v15, v11

    .line 167
    if-nez v15, :cond_f

    .line 168
    .line 169
    move/from16 v15, p5

    .line 170
    .line 171
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    if-eqz v16, :cond_11

    .line 176
    .line 177
    const/high16 v16, 0x20000

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_11
    const/high16 v16, 0x10000

    .line 181
    .line 182
    :goto_a
    or-int v0, v0, v16

    .line 183
    .line 184
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 185
    .line 186
    if-eqz v16, :cond_12

    .line 187
    .line 188
    const/high16 v17, 0x180000

    .line 189
    .line 190
    or-int v0, v0, v17

    .line 191
    .line 192
    move/from16 v4, p6

    .line 193
    .line 194
    goto :goto_d

    .line 195
    :cond_12
    const/high16 v17, 0x380000

    .line 196
    .line 197
    and-int v17, v11, v17

    .line 198
    .line 199
    move/from16 v4, p6

    .line 200
    .line 201
    if-nez v17, :cond_14

    .line 202
    .line 203
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 204
    .line 205
    .line 206
    move-result v17

    .line 207
    if-eqz v17, :cond_13

    .line 208
    .line 209
    const/high16 v17, 0x100000

    .line 210
    .line 211
    goto :goto_c

    .line 212
    :cond_13
    const/high16 v17, 0x80000

    .line 213
    .line 214
    :goto_c
    or-int v0, v0, v17

    .line 215
    .line 216
    :cond_14
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 217
    .line 218
    if-eqz v2, :cond_15

    .line 219
    .line 220
    const/high16 v17, 0x400000

    .line 221
    .line 222
    or-int v0, v0, v17

    .line 223
    .line 224
    :cond_15
    const/16 v4, 0x80

    .line 225
    .line 226
    if-ne v2, v4, :cond_17

    .line 227
    .line 228
    const v4, 0x16db6db

    .line 229
    .line 230
    .line 231
    and-int/2addr v4, v0

    .line 232
    const v5, 0x492492

    .line 233
    .line 234
    .line 235
    if-ne v4, v5, :cond_17

    .line 236
    .line 237
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_16

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 245
    .line 246
    .line 247
    move-object/from16 v2, p1

    .line 248
    .line 249
    move-object/from16 v3, p2

    .line 250
    .line 251
    move-object/from16 v8, p7

    .line 252
    .line 253
    move-object v4, v7

    .line 254
    move v5, v9

    .line 255
    move v6, v15

    .line 256
    move/from16 v7, p6

    .line 257
    .line 258
    goto/16 :goto_19

    .line 259
    .line 260
    :cond_17
    :goto_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 261
    .line 262
    .line 263
    and-int/lit8 v4, v11, 0x1

    .line 264
    .line 265
    const v5, -0x1c00001

    .line 266
    .line 267
    .line 268
    if-eqz v4, :cond_1a

    .line 269
    .line 270
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-eqz v4, :cond_18

    .line 275
    .line 276
    goto :goto_f

    .line 277
    :cond_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 278
    .line 279
    .line 280
    if-eqz v2, :cond_19

    .line 281
    .line 282
    and-int/2addr v0, v5

    .line 283
    :cond_19
    move-object/from16 v14, p1

    .line 284
    .line 285
    move/from16 v16, p4

    .line 286
    .line 287
    move/from16 v18, p6

    .line 288
    .line 289
    move v6, v0

    .line 290
    move-object v8, v7

    .line 291
    move/from16 v17, v15

    .line 292
    .line 293
    move-object/from16 v15, p2

    .line 294
    .line 295
    move-object/from16 v7, p7

    .line 296
    .line 297
    goto :goto_15

    .line 298
    :cond_1a
    :goto_f
    if-eqz v1, :cond_1b

    .line 299
    .line 300
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 301
    .line 302
    goto :goto_10

    .line 303
    :cond_1b
    move-object/from16 v1, p1

    .line 304
    .line 305
    :goto_10
    if-eqz v3, :cond_1c

    .line 306
    .line 307
    sget-object v3, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 308
    .line 309
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    goto :goto_11

    .line 314
    :cond_1c
    move-object/from16 v3, p2

    .line 315
    .line 316
    :goto_11
    if-eqz v6, :cond_1d

    .line 317
    .line 318
    sget-object v4, Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$BasicText$4;

    .line 319
    .line 320
    move-object v7, v4

    .line 321
    :cond_1d
    if-eqz v8, :cond_1e

    .line 322
    .line 323
    sget-object v4, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 324
    .line 325
    invoke-virtual {v4}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    goto :goto_12

    .line 330
    :cond_1e
    move/from16 v4, p4

    .line 331
    .line 332
    :goto_12
    if-eqz v14, :cond_1f

    .line 333
    .line 334
    const/4 v15, 0x1

    .line 335
    :cond_1f
    if-eqz v16, :cond_20

    .line 336
    .line 337
    const v6, 0x7fffffff

    .line 338
    .line 339
    .line 340
    goto :goto_13

    .line 341
    :cond_20
    move/from16 v6, p6

    .line 342
    .line 343
    :goto_13
    if-eqz v2, :cond_21

    .line 344
    .line 345
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    and-int/2addr v0, v5

    .line 350
    move-object v14, v1

    .line 351
    move/from16 v16, v4

    .line 352
    .line 353
    move/from16 v18, v6

    .line 354
    .line 355
    move-object v8, v7

    .line 356
    move/from16 v17, v15

    .line 357
    .line 358
    move v6, v0

    .line 359
    move-object v7, v2

    .line 360
    :goto_14
    move-object v15, v3

    .line 361
    goto :goto_15

    .line 362
    :cond_21
    move-object v14, v1

    .line 363
    move/from16 v16, v4

    .line 364
    .line 365
    move/from16 v18, v6

    .line 366
    .line 367
    move-object v8, v7

    .line 368
    move/from16 v17, v15

    .line 369
    .line 370
    move-object/from16 v7, p7

    .line 371
    .line 372
    move v6, v0

    .line 373
    goto :goto_14

    .line 374
    :goto_15
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 375
    .line 376
    .line 377
    if-lez v18, :cond_28

    .line 378
    .line 379
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    move-object v5, v0

    .line 388
    check-cast v5, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 389
    .line 390
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object/from16 v19, v0

    .line 399
    .line 400
    check-cast v19, Landroidx/compose/ui/unit/Density;

    .line 401
    .line 402
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    move-object/from16 v20, v0

    .line 411
    .line 412
    check-cast v20, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 413
    .line 414
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 423
    .line 424
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    .line 425
    .line 426
    .line 427
    move-result-wide v3

    .line 428
    invoke-static {v10, v7}, Landroidx/compose/foundation/text/CoreTextKt;->resolveInlineContent(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;)Lkotlin/Pair;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    move-object/from16 v21, v1

    .line 437
    .line 438
    check-cast v21, Ljava/util/List;

    .line 439
    .line 440
    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v0

    .line 444
    move-object v2, v0

    .line 445
    check-cast v2, Ljava/util/List;

    .line 446
    .line 447
    filled-new-array {v10, v5}, [Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v5}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    new-instance v9, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$2;

    .line 456
    .line 457
    invoke-direct {v9, v5}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$2;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 458
    .line 459
    .line 460
    const/16 v22, 0x48

    .line 461
    .line 462
    const/16 v23, 0x4

    .line 463
    .line 464
    const/16 v24, 0x0

    .line 465
    .line 466
    move-object/from16 p1, v0

    .line 467
    .line 468
    move-object/from16 p2, v1

    .line 469
    .line 470
    move-object/from16 p3, v24

    .line 471
    .line 472
    move-object/from16 p4, v9

    .line 473
    .line 474
    move-object/from16 p5, v13

    .line 475
    .line 476
    move/from16 p6, v22

    .line 477
    .line 478
    move/from16 p7, v23

    .line 479
    .line 480
    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    check-cast v0, Ljava/lang/Number;

    .line 485
    .line 486
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 487
    .line 488
    .line 489
    move-result-wide v0

    .line 490
    const v9, -0x1d58f75c

    .line 491
    .line 492
    .line 493
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 494
    .line 495
    .line 496
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    sget-object v22, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 501
    .line 502
    move-wide/from16 p1, v0

    .line 503
    .line 504
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    if-ne v9, v0, :cond_22

    .line 509
    .line 510
    new-instance v9, Landroidx/compose/foundation/text/TextController;

    .line 511
    .line 512
    new-instance v1, Landroidx/compose/foundation/text/TextState;

    .line 513
    .line 514
    new-instance v0, Landroidx/compose/foundation/text/TextDelegate;

    .line 515
    .line 516
    const/16 v22, 0x0

    .line 517
    .line 518
    move-wide/from16 v25, p1

    .line 519
    .line 520
    move-object/from16 p1, v0

    .line 521
    .line 522
    move-object/from16 v27, v1

    .line 523
    .line 524
    move-object/from16 v1, p0

    .line 525
    .line 526
    move-object/from16 p2, v2

    .line 527
    .line 528
    move-object v2, v15

    .line 529
    move-wide/from16 v28, v3

    .line 530
    .line 531
    move/from16 v3, v18

    .line 532
    .line 533
    move/from16 v4, v17

    .line 534
    .line 535
    move-object/from16 v30, v5

    .line 536
    .line 537
    move/from16 v5, v16

    .line 538
    .line 539
    move/from16 v31, v6

    .line 540
    .line 541
    move-object/from16 v6, v19

    .line 542
    .line 543
    move-object/from16 v23, v7

    .line 544
    .line 545
    move-object/from16 v7, v20

    .line 546
    .line 547
    move-object v11, v8

    .line 548
    move-object/from16 v8, v21

    .line 549
    .line 550
    move-object v12, v9

    .line 551
    move-object/from16 v9, v22

    .line 552
    .line 553
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 554
    .line 555
    .line 556
    move-object/from16 v3, p1

    .line 557
    .line 558
    move-wide/from16 v0, v25

    .line 559
    .line 560
    move-object/from16 v2, v27

    .line 561
    .line 562
    invoke-direct {v2, v3, v0, v1}, Landroidx/compose/foundation/text/TextState;-><init>(Landroidx/compose/foundation/text/TextDelegate;J)V

    .line 563
    .line 564
    .line 565
    invoke-direct {v12, v2}, Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V

    .line 566
    .line 567
    .line 568
    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 569
    .line 570
    .line 571
    move-object v9, v12

    .line 572
    goto :goto_16

    .line 573
    :cond_22
    move-object/from16 p2, v2

    .line 574
    .line 575
    move-wide/from16 v28, v3

    .line 576
    .line 577
    move-object/from16 v30, v5

    .line 578
    .line 579
    move/from16 v31, v6

    .line 580
    .line 581
    move-object/from16 v23, v7

    .line 582
    .line 583
    move-object v11, v8

    .line 584
    :goto_16
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 585
    .line 586
    .line 587
    check-cast v9, Landroidx/compose/foundation/text/TextController;

    .line 588
    .line 589
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 590
    .line 591
    .line 592
    move-result-object v12

    .line 593
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    if-nez v0, :cond_23

    .line 598
    .line 599
    invoke-virtual {v12}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    move-object/from16 v1, p0

    .line 604
    .line 605
    move-object v2, v15

    .line 606
    move-object/from16 v3, v19

    .line 607
    .line 608
    move-object/from16 v4, v20

    .line 609
    .line 610
    move/from16 v5, v17

    .line 611
    .line 612
    move/from16 v6, v16

    .line 613
    .line 614
    move/from16 v7, v18

    .line 615
    .line 616
    move-object/from16 v8, v21

    .line 617
    .line 618
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/text/CoreTextKt;->updateTextDelegate-x_uQXYA(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZIILjava/util/List;)Landroidx/compose/foundation/text/TextDelegate;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/text/TextController;->setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 623
    .line 624
    .line 625
    :cond_23
    invoke-virtual {v12, v11}, Landroidx/compose/foundation/text/TextState;->setOnTextLayout(Lkotlin/jvm/functions/Function1;)V

    .line 626
    .line 627
    .line 628
    move-wide/from16 v0, v28

    .line 629
    .line 630
    invoke-virtual {v12, v0, v1}, Landroidx/compose/foundation/text/TextState;->setSelectionBackgroundColor-8_81llA(J)V

    .line 631
    .line 632
    .line 633
    move-object/from16 v0, v30

    .line 634
    .line 635
    invoke-virtual {v9, v0}, Landroidx/compose/foundation/text/TextController;->update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 636
    .line 637
    .line 638
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_24

    .line 643
    .line 644
    sget-object v0, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->INSTANCE:Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;

    .line 645
    .line 646
    invoke-virtual {v0}, Landroidx/compose/foundation/text/ComposableSingletons$BasicTextKt;->getLambda-1$foundation_release()Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    goto :goto_17

    .line 651
    :cond_24
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;

    .line 652
    .line 653
    move-object/from16 v2, p2

    .line 654
    .line 655
    move/from16 v1, v31

    .line 656
    .line 657
    invoke-direct {v0, v10, v2, v1}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$6;-><init>(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/List;I)V

    .line 658
    .line 659
    .line 660
    const v1, 0x70c9f4f3    # 5.000209E29f

    .line 661
    .line 662
    .line 663
    const/4 v2, 0x1

    .line 664
    invoke-static {v13, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    :goto_17
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->getModifiers()Landroidx/compose/ui/Modifier;

    .line 669
    .line 670
    .line 671
    move-result-object v1

    .line 672
    invoke-interface {v14, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v9}, Landroidx/compose/foundation/text/TextController;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 677
    .line 678
    .line 679
    move-result-object v2

    .line 680
    const v3, -0x4ee9b9da

    .line 681
    .line 682
    .line 683
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 684
    .line 685
    .line 686
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 687
    .line 688
    .line 689
    move-result-object v3

    .line 690
    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v3

    .line 694
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 695
    .line 696
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 705
    .line 706
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    check-cast v5, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 715
    .line 716
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 717
    .line 718
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 727
    .line 728
    .line 729
    move-result-object v8

    .line 730
    if-nez v8, :cond_25

    .line 731
    .line 732
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 733
    .line 734
    .line 735
    :cond_25
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 736
    .line 737
    .line 738
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 739
    .line 740
    .line 741
    move-result v8

    .line 742
    if-eqz v8, :cond_26

    .line 743
    .line 744
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 745
    .line 746
    .line 747
    goto :goto_18

    .line 748
    :cond_26
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 749
    .line 750
    .line 751
    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 752
    .line 753
    .line 754
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 755
    .line 756
    .line 757
    move-result-object v7

    .line 758
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 759
    .line 760
    .line 761
    move-result-object v8

    .line 762
    invoke-static {v7, v2, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 763
    .line 764
    .line 765
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-static {v7, v3, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 773
    .line 774
    .line 775
    move-result-object v2

    .line 776
    invoke-static {v7, v4, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 777
    .line 778
    .line 779
    invoke-virtual {v6}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    invoke-static {v7, v5, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 784
    .line 785
    .line 786
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 787
    .line 788
    .line 789
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    const/4 v3, 0x0

    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 799
    .line 800
    .line 801
    move-result-object v4

    .line 802
    invoke-interface {v1, v2, v13, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    const v1, 0x7ab4aae9

    .line 806
    .line 807
    .line 808
    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 809
    .line 810
    .line 811
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-interface {v0, v13, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 819
    .line 820
    .line 821
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 822
    .line 823
    .line 824
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 825
    .line 826
    .line 827
    move-object v4, v11

    .line 828
    move-object v2, v14

    .line 829
    move-object v3, v15

    .line 830
    move/from16 v5, v16

    .line 831
    .line 832
    move/from16 v6, v17

    .line 833
    .line 834
    move/from16 v7, v18

    .line 835
    .line 836
    move-object/from16 v8, v23

    .line 837
    .line 838
    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 839
    .line 840
    .line 841
    move-result-object v11

    .line 842
    if-nez v11, :cond_27

    .line 843
    .line 844
    goto :goto_1a

    .line 845
    :cond_27
    new-instance v12, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;

    .line 846
    .line 847
    move-object v0, v12

    .line 848
    move-object/from16 v1, p0

    .line 849
    .line 850
    move/from16 v9, p9

    .line 851
    .line 852
    move/from16 v10, p10

    .line 853
    .line 854
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$7;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;II)V

    .line 855
    .line 856
    .line 857
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 858
    .line 859
    .line 860
    :goto_1a
    return-void

    .line 861
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 862
    .line 863
    const-string v1, "maxLines should be greater than 0"

    .line 864
    .line 865
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    throw v0
.end method

.method public static final BasicText-BpD7jsM(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V
    .locals 27
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;IZI",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p8

    .line 4
    .line 5
    const-string v0, "text"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x3cf10926

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p7

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    and-int/lit8 v0, p9, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v0, v9, 0x6

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 27
    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x2

    .line 39
    :goto_0
    or-int/2addr v0, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v0, v9

    .line 42
    :goto_1
    and-int/lit8 v1, p9, 0x2

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    or-int/lit8 v0, v0, 0x30

    .line 47
    .line 48
    :cond_3
    move-object/from16 v2, p1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    and-int/lit8 v2, v9, 0x70

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    move-object/from16 v2, p1

    .line 56
    .line 57
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const/16 v3, 0x20

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    const/16 v3, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v0, v3

    .line 69
    :goto_3
    and-int/lit8 v3, p9, 0x4

    .line 70
    .line 71
    if-eqz v3, :cond_7

    .line 72
    .line 73
    or-int/lit16 v0, v0, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v4, p2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v4, v9, 0x380

    .line 79
    .line 80
    if-nez v4, :cond_6

    .line 81
    .line 82
    move-object/from16 v4, p2

    .line 83
    .line 84
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-eqz v5, :cond_8

    .line 89
    .line 90
    const/16 v5, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v5, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v0, v5

    .line 96
    :goto_5
    and-int/lit8 v5, p9, 0x8

    .line 97
    .line 98
    if-eqz v5, :cond_a

    .line 99
    .line 100
    or-int/lit16 v0, v0, 0xc00

    .line 101
    .line 102
    :cond_9
    move-object/from16 v6, p3

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_a
    and-int/lit16 v6, v9, 0x1c00

    .line 106
    .line 107
    if-nez v6, :cond_9

    .line 108
    .line 109
    move-object/from16 v6, p3

    .line 110
    .line 111
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    if-eqz v7, :cond_b

    .line 116
    .line 117
    const/16 v7, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_b
    const/16 v7, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v0, v7

    .line 123
    :goto_7
    and-int/lit8 v7, p9, 0x10

    .line 124
    .line 125
    if-eqz v7, :cond_d

    .line 126
    .line 127
    or-int/lit16 v0, v0, 0x6000

    .line 128
    .line 129
    :cond_c
    move/from16 v11, p4

    .line 130
    .line 131
    goto :goto_9

    .line 132
    :cond_d
    const v11, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v11, v9

    .line 136
    if-nez v11, :cond_c

    .line 137
    .line 138
    move/from16 v11, p4

    .line 139
    .line 140
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 141
    .line 142
    .line 143
    move-result v12

    .line 144
    if-eqz v12, :cond_e

    .line 145
    .line 146
    const/16 v12, 0x4000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_e
    const/16 v12, 0x2000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v0, v12

    .line 152
    :goto_9
    and-int/lit8 v12, p9, 0x20

    .line 153
    .line 154
    if-eqz v12, :cond_10

    .line 155
    .line 156
    const/high16 v13, 0x30000

    .line 157
    .line 158
    or-int/2addr v0, v13

    .line 159
    :cond_f
    move/from16 v13, p5

    .line 160
    .line 161
    goto :goto_b

    .line 162
    :cond_10
    const/high16 v13, 0x70000

    .line 163
    .line 164
    and-int/2addr v13, v9

    .line 165
    if-nez v13, :cond_f

    .line 166
    .line 167
    move/from16 v13, p5

    .line 168
    .line 169
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-eqz v14, :cond_11

    .line 174
    .line 175
    const/high16 v14, 0x20000

    .line 176
    .line 177
    goto :goto_a

    .line 178
    :cond_11
    const/high16 v14, 0x10000

    .line 179
    .line 180
    :goto_a
    or-int/2addr v0, v14

    .line 181
    :goto_b
    and-int/lit8 v14, p9, 0x40

    .line 182
    .line 183
    if-eqz v14, :cond_13

    .line 184
    .line 185
    const/high16 v15, 0x180000

    .line 186
    .line 187
    or-int/2addr v0, v15

    .line 188
    :cond_12
    move/from16 v15, p6

    .line 189
    .line 190
    goto :goto_d

    .line 191
    :cond_13
    const/high16 v15, 0x380000

    .line 192
    .line 193
    and-int/2addr v15, v9

    .line 194
    if-nez v15, :cond_12

    .line 195
    .line 196
    move/from16 v15, p6

    .line 197
    .line 198
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 199
    .line 200
    .line 201
    move-result v16

    .line 202
    if-eqz v16, :cond_14

    .line 203
    .line 204
    const/high16 v16, 0x100000

    .line 205
    .line 206
    goto :goto_c

    .line 207
    :cond_14
    const/high16 v16, 0x80000

    .line 208
    .line 209
    :goto_c
    or-int v0, v0, v16

    .line 210
    .line 211
    :goto_d
    const v16, 0x2db6db

    .line 212
    .line 213
    .line 214
    and-int v0, v0, v16

    .line 215
    .line 216
    const v2, 0x92492

    .line 217
    .line 218
    .line 219
    if-ne v0, v2, :cond_16

    .line 220
    .line 221
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_15

    .line 226
    .line 227
    goto :goto_e

    .line 228
    :cond_15
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    move-object/from16 v2, p1

    .line 232
    .line 233
    move-object v3, v4

    .line 234
    move-object v4, v6

    .line 235
    move v5, v11

    .line 236
    move v6, v13

    .line 237
    move v7, v15

    .line 238
    goto/16 :goto_14

    .line 239
    .line 240
    :cond_16
    :goto_e
    if-eqz v1, :cond_17

    .line 241
    .line 242
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 243
    .line 244
    move-object v2, v0

    .line 245
    goto :goto_f

    .line 246
    :cond_17
    move-object/from16 v2, p1

    .line 247
    .line 248
    :goto_f
    if-eqz v3, :cond_18

    .line 249
    .line 250
    sget-object v0, Landroidx/compose/ui/text/TextStyle;->Companion:Landroidx/compose/ui/text/TextStyle$Companion;

    .line 251
    .line 252
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle$Companion;->getDefault()Landroidx/compose/ui/text/TextStyle;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    move-object/from16 v26, v0

    .line 257
    .line 258
    goto :goto_10

    .line 259
    :cond_18
    move-object/from16 v26, v4

    .line 260
    .line 261
    :goto_10
    if-eqz v5, :cond_19

    .line 262
    .line 263
    sget-object v0, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    .line 264
    .line 265
    move-object v6, v0

    .line 266
    :cond_19
    if-eqz v7, :cond_1a

    .line 267
    .line 268
    sget-object v0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    .line 269
    .line 270
    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getClip-gIe3tQ8()I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    move v11, v0

    .line 275
    :cond_1a
    if-eqz v12, :cond_1b

    .line 276
    .line 277
    const/4 v0, 0x1

    .line 278
    move v13, v0

    .line 279
    :cond_1b
    if-eqz v14, :cond_1c

    .line 280
    .line 281
    const v0, 0x7fffffff

    .line 282
    .line 283
    .line 284
    move v12, v0

    .line 285
    goto :goto_11

    .line 286
    :cond_1c
    move v12, v15

    .line 287
    :goto_11
    if-lez v12, :cond_23

    .line 288
    .line 289
    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->getLocalSelectionRegistrar()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    move-object v14, v0

    .line 298
    check-cast v14, Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    .line 299
    .line 300
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    move-object v3, v0

    .line 309
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 310
    .line 311
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalFontFamilyResolver()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    move-object v4, v0

    .line 320
    check-cast v4, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 321
    .line 322
    filled-new-array {v8, v14}, [Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v14}, Landroidx/compose/foundation/text/BasicTextKt;->selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    new-instance v5, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$1;

    .line 331
    .line 332
    invoke-direct {v5, v14}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$selectableId$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 333
    .line 334
    .line 335
    const/16 v7, 0x48

    .line 336
    .line 337
    const/4 v15, 0x4

    .line 338
    const/16 v16, 0x0

    .line 339
    .line 340
    move-object/from16 p1, v0

    .line 341
    .line 342
    move-object/from16 p2, v1

    .line 343
    .line 344
    move-object/from16 p3, v16

    .line 345
    .line 346
    move-object/from16 p4, v5

    .line 347
    .line 348
    move-object/from16 p5, v10

    .line 349
    .line 350
    move/from16 p6, v7

    .line 351
    .line 352
    move/from16 p7, v15

    .line 353
    .line 354
    invoke-static/range {p1 .. p7}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    check-cast v0, Ljava/lang/Number;

    .line 359
    .line 360
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 361
    .line 362
    .line 363
    move-result-wide v0

    .line 364
    const v5, -0x1d58f75c

    .line 365
    .line 366
    .line 367
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 368
    .line 369
    .line 370
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 375
    .line 376
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v7

    .line 380
    if-ne v5, v7, :cond_1d

    .line 381
    .line 382
    new-instance v5, Landroidx/compose/foundation/text/TextController;

    .line 383
    .line 384
    new-instance v7, Landroidx/compose/foundation/text/TextState;

    .line 385
    .line 386
    new-instance v16, Landroidx/compose/ui/text/AnnotatedString;

    .line 387
    .line 388
    const/4 v15, 0x6

    .line 389
    const/16 v17, 0x0

    .line 390
    .line 391
    const/16 v18, 0x0

    .line 392
    .line 393
    const/16 v19, 0x0

    .line 394
    .line 395
    move-object/from16 p1, v16

    .line 396
    .line 397
    move-object/from16 p2, p0

    .line 398
    .line 399
    move-object/from16 p3, v18

    .line 400
    .line 401
    move-object/from16 p4, v19

    .line 402
    .line 403
    move/from16 p5, v15

    .line 404
    .line 405
    move-object/from16 p6, v17

    .line 406
    .line 407
    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 408
    .line 409
    .line 410
    new-instance v15, Landroidx/compose/foundation/text/TextDelegate;

    .line 411
    .line 412
    const/16 v24, 0x80

    .line 413
    .line 414
    const/16 v25, 0x0

    .line 415
    .line 416
    const/16 v23, 0x0

    .line 417
    .line 418
    move-object/from16 p1, v15

    .line 419
    .line 420
    move-object/from16 v17, v26

    .line 421
    .line 422
    move/from16 v18, v12

    .line 423
    .line 424
    move/from16 v19, v13

    .line 425
    .line 426
    move/from16 v20, v11

    .line 427
    .line 428
    move-object/from16 v21, v3

    .line 429
    .line 430
    move-object/from16 v22, v4

    .line 431
    .line 432
    invoke-direct/range {v15 .. v25}, Landroidx/compose/foundation/text/TextDelegate;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 433
    .line 434
    .line 435
    invoke-direct {v7, v15, v0, v1}, Landroidx/compose/foundation/text/TextState;-><init>(Landroidx/compose/foundation/text/TextDelegate;J)V

    .line 436
    .line 437
    .line 438
    invoke-direct {v5, v7}, Landroidx/compose/foundation/text/TextController;-><init>(Landroidx/compose/foundation/text/TextState;)V

    .line 439
    .line 440
    .line 441
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 442
    .line 443
    .line 444
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 445
    .line 446
    .line 447
    move-object v15, v5

    .line 448
    check-cast v15, Landroidx/compose/foundation/text/TextController;

    .line 449
    .line 450
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->getState()Landroidx/compose/foundation/text/TextState;

    .line 451
    .line 452
    .line 453
    move-result-object v7

    .line 454
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_1e

    .line 459
    .line 460
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextState;->getTextDelegate()Landroidx/compose/foundation/text/TextDelegate;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    move-object/from16 v1, p0

    .line 465
    .line 466
    move-object v5, v2

    .line 467
    move-object/from16 v2, v26

    .line 468
    .line 469
    move-object v8, v5

    .line 470
    move v5, v13

    .line 471
    move-object v9, v6

    .line 472
    move v6, v11

    .line 473
    move/from16 p1, v11

    .line 474
    .line 475
    move-object v11, v7

    .line 476
    move v7, v12

    .line 477
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/text/CoreTextKt;->updateTextDelegate-y0k-MQk(Landroidx/compose/foundation/text/TextDelegate;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;ZII)Landroidx/compose/foundation/text/TextDelegate;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v15, v0}, Landroidx/compose/foundation/text/TextController;->setTextDelegate(Landroidx/compose/foundation/text/TextDelegate;)V

    .line 482
    .line 483
    .line 484
    goto :goto_12

    .line 485
    :cond_1e
    move-object v8, v2

    .line 486
    move-object v9, v6

    .line 487
    move/from16 p1, v11

    .line 488
    .line 489
    move-object v11, v7

    .line 490
    :goto_12
    invoke-virtual {v11, v9}, Landroidx/compose/foundation/text/TextState;->setOnTextLayout(Lkotlin/jvm/functions/Function1;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v15, v14}, Landroidx/compose/foundation/text/TextController;->update(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 494
    .line 495
    .line 496
    const v0, 0x392cd595

    .line 497
    .line 498
    .line 499
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 500
    .line 501
    .line 502
    if-eqz v14, :cond_1f

    .line 503
    .line 504
    invoke-static {}, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->getLocalTextSelectionColors()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 513
    .line 514
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextSelectionColors;->getBackgroundColor-0d7_KjU()J

    .line 515
    .line 516
    .line 517
    move-result-wide v0

    .line 518
    invoke-virtual {v11, v0, v1}, Landroidx/compose/foundation/text/TextState;->setSelectionBackgroundColor-8_81llA(J)V

    .line 519
    .line 520
    .line 521
    :cond_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->getModifiers()Landroidx/compose/ui/Modifier;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-interface {v8, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    invoke-virtual {v15}, Landroidx/compose/foundation/text/TextController;->getMeasurePolicy()Landroidx/compose/ui/layout/MeasurePolicy;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    const v2, 0x207baf9a

    .line 537
    .line 538
    .line 539
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 540
    .line 541
    .line 542
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 551
    .line 552
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 561
    .line 562
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v4

    .line 570
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 571
    .line 572
    invoke-static {v10, v0}, Landroidx/compose/ui/ComposedModifierKt;->materialize(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 577
    .line 578
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    const v7, 0x53ca7ea5

    .line 583
    .line 584
    .line 585
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 589
    .line 590
    .line 591
    move-result-object v7

    .line 592
    if-nez v7, :cond_20

    .line 593
    .line 594
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 595
    .line 596
    .line 597
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 598
    .line 599
    .line 600
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 601
    .line 602
    .line 603
    move-result v7

    .line 604
    if-eqz v7, :cond_21

    .line 605
    .line 606
    new-instance v7, Landroidx/compose/foundation/text/BasicTextKt$BasicText-BpD7jsM$$inlined$Layout$1;

    .line 607
    .line 608
    invoke-direct {v7, v6}, Landroidx/compose/foundation/text/BasicTextKt$BasicText-BpD7jsM$$inlined$Layout$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 612
    .line 613
    .line 614
    goto :goto_13

    .line 615
    :cond_21
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 616
    .line 617
    .line 618
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 619
    .line 620
    .line 621
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 626
    .line 627
    .line 628
    move-result-object v7

    .line 629
    invoke-static {v6, v1, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-static {v6, v2, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-static {v6, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-static {v6, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetModifier()Lkotlin/jvm/functions/Function2;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 661
    .line 662
    .line 663
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 664
    .line 665
    .line 666
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 667
    .line 668
    .line 669
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 670
    .line 671
    .line 672
    move/from16 v5, p1

    .line 673
    .line 674
    move-object v2, v8

    .line 675
    move-object v4, v9

    .line 676
    move v7, v12

    .line 677
    move v6, v13

    .line 678
    move-object/from16 v3, v26

    .line 679
    .line 680
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 681
    .line 682
    .line 683
    move-result-object v10

    .line 684
    if-nez v10, :cond_22

    .line 685
    .line 686
    goto :goto_15

    .line 687
    :cond_22
    new-instance v11, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;

    .line 688
    .line 689
    move-object v0, v11

    .line 690
    move-object/from16 v1, p0

    .line 691
    .line 692
    move/from16 v8, p8

    .line 693
    .line 694
    move/from16 v9, p9

    .line 695
    .line 696
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$3;-><init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIII)V

    .line 697
    .line 698
    .line 699
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 700
    .line 701
    .line 702
    :goto_15
    return-void

    .line 703
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 704
    .line 705
    const-string v1, "maxLines should be greater than 0"

    .line 706
    .line 707
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    throw v0
.end method

.method private static final selectionIdSaver(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$1;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;->INSTANCE:Landroidx/compose/foundation/text/BasicTextKt$selectionIdSaver$2;

    .line 7
    .line 8
    invoke-static {v0, p0}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
