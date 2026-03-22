.class public final Landroidx/compose/material/AndroidMenu_androidKt;
.super Ljava/lang/Object;
.source "AndroidMenu.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final DropdownMenu-ILWXrKs(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/window/PopupProperties;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Landroidx/compose/ui/window/PopupProperties;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
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
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v8, p6

    .line 4
    .line 5
    move/from16 v9, p8

    .line 6
    .line 7
    const-string v0, "onDismissRequest"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "content"

    .line 13
    .line 14
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x3215b403

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p7

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v10

    .line 26
    and-int/lit8 v0, p9, 0x1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    or-int/lit8 v0, v9, 0x6

    .line 32
    .line 33
    move/from16 v11, p0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    and-int/lit8 v0, v9, 0xe

    .line 37
    .line 38
    move/from16 v11, p0

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x4

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v0, v1

    .line 51
    :goto_0
    or-int/2addr v0, v9

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v0, v9

    .line 54
    :goto_1
    and-int/lit8 v2, p9, 0x2

    .line 55
    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    or-int/lit8 v0, v0, 0x30

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    and-int/lit8 v2, v9, 0x70

    .line 62
    .line 63
    if-nez v2, :cond_5

    .line 64
    .line 65
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const/16 v2, 0x20

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    const/16 v2, 0x10

    .line 75
    .line 76
    :goto_2
    or-int/2addr v0, v2

    .line 77
    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    .line 78
    .line 79
    if-eqz v2, :cond_7

    .line 80
    .line 81
    or-int/lit16 v0, v0, 0x180

    .line 82
    .line 83
    :cond_6
    move-object/from16 v3, p2

    .line 84
    .line 85
    goto :goto_5

    .line 86
    :cond_7
    and-int/lit16 v3, v9, 0x380

    .line 87
    .line 88
    if-nez v3, :cond_6

    .line 89
    .line 90
    move-object/from16 v3, p2

    .line 91
    .line 92
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_8

    .line 97
    .line 98
    const/16 v4, 0x100

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_8
    const/16 v4, 0x80

    .line 102
    .line 103
    :goto_4
    or-int/2addr v0, v4

    .line 104
    :goto_5
    and-int/lit8 v4, p9, 0x8

    .line 105
    .line 106
    if-eqz v4, :cond_a

    .line 107
    .line 108
    or-int/lit16 v0, v0, 0xc00

    .line 109
    .line 110
    :cond_9
    move-wide/from16 v5, p3

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_a
    and-int/lit16 v5, v9, 0x1c00

    .line 114
    .line 115
    if-nez v5, :cond_9

    .line 116
    .line 117
    move-wide/from16 v5, p3

    .line 118
    .line 119
    invoke-interface {v10, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    if-eqz v12, :cond_b

    .line 124
    .line 125
    const/16 v12, 0x800

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_b
    const/16 v12, 0x400

    .line 129
    .line 130
    :goto_6
    or-int/2addr v0, v12

    .line 131
    :goto_7
    const v12, 0xe000

    .line 132
    .line 133
    .line 134
    and-int/2addr v12, v9

    .line 135
    if-nez v12, :cond_e

    .line 136
    .line 137
    and-int/lit8 v12, p9, 0x10

    .line 138
    .line 139
    if-nez v12, :cond_c

    .line 140
    .line 141
    move-object/from16 v12, p5

    .line 142
    .line 143
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v13

    .line 147
    if-eqz v13, :cond_d

    .line 148
    .line 149
    const/16 v13, 0x4000

    .line 150
    .line 151
    goto :goto_8

    .line 152
    :cond_c
    move-object/from16 v12, p5

    .line 153
    .line 154
    :cond_d
    const/16 v13, 0x2000

    .line 155
    .line 156
    :goto_8
    or-int/2addr v0, v13

    .line 157
    goto :goto_9

    .line 158
    :cond_e
    move-object/from16 v12, p5

    .line 159
    .line 160
    :goto_9
    and-int/lit8 v13, p9, 0x20

    .line 161
    .line 162
    if-eqz v13, :cond_f

    .line 163
    .line 164
    const/high16 v13, 0x30000

    .line 165
    .line 166
    :goto_a
    or-int/2addr v0, v13

    .line 167
    goto :goto_b

    .line 168
    :cond_f
    const/high16 v13, 0x70000

    .line 169
    .line 170
    and-int/2addr v13, v9

    .line 171
    if-nez v13, :cond_11

    .line 172
    .line 173
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v13

    .line 177
    if-eqz v13, :cond_10

    .line 178
    .line 179
    const/high16 v13, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_10
    const/high16 v13, 0x10000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    :goto_b
    const v13, 0x5b6db

    .line 186
    .line 187
    .line 188
    and-int/2addr v13, v0

    .line 189
    const v14, 0x12492

    .line 190
    .line 191
    .line 192
    if-ne v13, v14, :cond_13

    .line 193
    .line 194
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    if-nez v13, :cond_12

    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_12
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 202
    .line 203
    .line 204
    move-wide v4, v5

    .line 205
    move-object v6, v12

    .line 206
    goto/16 :goto_11

    .line 207
    .line 208
    :cond_13
    :goto_c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 209
    .line 210
    .line 211
    and-int/lit8 v13, v9, 0x1

    .line 212
    .line 213
    const v14, -0xe001

    .line 214
    .line 215
    .line 216
    if-eqz v13, :cond_16

    .line 217
    .line 218
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 219
    .line 220
    .line 221
    move-result v13

    .line 222
    if-eqz v13, :cond_14

    .line 223
    .line 224
    goto :goto_d

    .line 225
    :cond_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    and-int/lit8 v2, p9, 0x10

    .line 229
    .line 230
    if-eqz v2, :cond_15

    .line 231
    .line 232
    and-int/2addr v0, v14

    .line 233
    :cond_15
    move-wide/from16 v19, v5

    .line 234
    .line 235
    move-object/from16 v21, v12

    .line 236
    .line 237
    move v6, v0

    .line 238
    move-object v12, v3

    .line 239
    goto :goto_10

    .line 240
    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 241
    .line 242
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 243
    .line 244
    goto :goto_e

    .line 245
    :cond_17
    move-object v2, v3

    .line 246
    :goto_e
    if-eqz v4, :cond_18

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    int-to-float v3, v3

    .line 250
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-static {v4, v3}, Landroidx/compose/ui/unit/DpKt;->DpOffset-YgX7TsA(FF)J

    .line 259
    .line 260
    .line 261
    move-result-wide v3

    .line 262
    goto :goto_f

    .line 263
    :cond_18
    move-wide v3, v5

    .line 264
    :goto_f
    and-int/lit8 v5, p9, 0x10

    .line 265
    .line 266
    if-eqz v5, :cond_19

    .line 267
    .line 268
    new-instance v5, Landroidx/compose/ui/window/PopupProperties;

    .line 269
    .line 270
    const/16 v22, 0x3e

    .line 271
    .line 272
    const/16 v23, 0x0

    .line 273
    .line 274
    const/16 v16, 0x1

    .line 275
    .line 276
    const/16 v17, 0x0

    .line 277
    .line 278
    const/16 v18, 0x0

    .line 279
    .line 280
    const/16 v19, 0x0

    .line 281
    .line 282
    const/16 v20, 0x0

    .line 283
    .line 284
    const/16 v21, 0x0

    .line 285
    .line 286
    move-object v15, v5

    .line 287
    invoke-direct/range {v15 .. v23}, Landroidx/compose/ui/window/PopupProperties;-><init>(ZZZLandroidx/compose/ui/window/SecureFlagPolicy;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    .line 289
    .line 290
    and-int/2addr v0, v14

    .line 291
    move v6, v0

    .line 292
    move-object v12, v2

    .line 293
    move-wide/from16 v19, v3

    .line 294
    .line 295
    move-object/from16 v21, v5

    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_19
    move v6, v0

    .line 299
    move-wide/from16 v19, v3

    .line 300
    .line 301
    move-object/from16 v21, v12

    .line 302
    .line 303
    move-object v12, v2

    .line 304
    :goto_10
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 305
    .line 306
    .line 307
    const v0, -0x1d58f75c

    .line 308
    .line 309
    .line 310
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 318
    .line 319
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    if-ne v2, v4, :cond_1a

    .line 324
    .line 325
    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 326
    .line 327
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 328
    .line 329
    invoke-direct {v2, v4}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 333
    .line 334
    .line 335
    :cond_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 336
    .line 337
    .line 338
    check-cast v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 339
    .line 340
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v2, v4}, Landroidx/compose/animation/core/MutableTransitionState;->setTargetState(Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getCurrentState()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    check-cast v4, Ljava/lang/Boolean;

    .line 352
    .line 353
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    if-nez v4, :cond_1b

    .line 358
    .line 359
    invoke-virtual {v2}, Landroidx/compose/animation/core/MutableTransitionState;->getTargetState()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    check-cast v4, Ljava/lang/Boolean;

    .line 364
    .line 365
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-eqz v4, :cond_1f

    .line 370
    .line 371
    :cond_1b
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    if-ne v0, v4, :cond_1c

    .line 383
    .line 384
    sget-object v0, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 385
    .line 386
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 387
    .line 388
    .line 389
    move-result-wide v4

    .line 390
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const/4 v4, 0x0

    .line 395
    invoke-static {v0, v4, v1, v4}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 403
    .line 404
    .line 405
    move-object v4, v0

    .line 406
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 407
    .line 408
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    move-object/from16 v16, v0

    .line 417
    .line 418
    check-cast v16, Landroidx/compose/ui/unit/Density;

    .line 419
    .line 420
    const v0, 0x44faf204

    .line 421
    .line 422
    .line 423
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 424
    .line 425
    .line 426
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    if-nez v0, :cond_1d

    .line 435
    .line 436
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    if-ne v1, v0, :cond_1e

    .line 441
    .line 442
    :cond_1d
    new-instance v1, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;

    .line 443
    .line 444
    invoke-direct {v1, v4}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 451
    .line 452
    .line 453
    move-object/from16 v17, v1

    .line 454
    .line 455
    check-cast v17, Lkotlin/jvm/functions/Function2;

    .line 456
    .line 457
    new-instance v22, Landroidx/compose/material/DropdownMenuPositionProvider;

    .line 458
    .line 459
    const/16 v18, 0x0

    .line 460
    .line 461
    move-object/from16 v13, v22

    .line 462
    .line 463
    move-wide/from16 v14, v19

    .line 464
    .line 465
    invoke-direct/range {v13 .. v18}, Landroidx/compose/material/DropdownMenuPositionProvider;-><init>(JLandroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 466
    .line 467
    .line 468
    new-instance v13, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;

    .line 469
    .line 470
    move-object v0, v13

    .line 471
    move-object v1, v2

    .line 472
    move-object v2, v4

    .line 473
    move-object v3, v12

    .line 474
    move-object/from16 v4, p6

    .line 475
    .line 476
    move v5, v6

    .line 477
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lat/n;I)V

    .line 478
    .line 479
    .line 480
    const v0, 0x4bf17f6

    .line 481
    .line 482
    .line 483
    const/4 v1, 0x1

    .line 484
    invoke-static {v10, v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    and-int/lit8 v0, v6, 0x70

    .line 489
    .line 490
    or-int/lit16 v0, v0, 0xc00

    .line 491
    .line 492
    shr-int/lit8 v1, v6, 0x6

    .line 493
    .line 494
    and-int/lit16 v1, v1, 0x380

    .line 495
    .line 496
    or-int v5, v0, v1

    .line 497
    .line 498
    const/4 v6, 0x0

    .line 499
    move-object/from16 v0, v22

    .line 500
    .line 501
    move-object/from16 v1, p1

    .line 502
    .line 503
    move-object/from16 v2, v21

    .line 504
    .line 505
    move-object v4, v10

    .line 506
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/window/AndroidPopup_androidKt;->Popup(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 507
    .line 508
    .line 509
    :cond_1f
    move-object v3, v12

    .line 510
    move-wide/from16 v4, v19

    .line 511
    .line 512
    move-object/from16 v6, v21

    .line 513
    .line 514
    :goto_11
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    if-nez v10, :cond_20

    .line 519
    .line 520
    goto :goto_12

    .line 521
    :cond_20
    new-instance v12, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;

    .line 522
    .line 523
    move-object v0, v12

    .line 524
    move/from16 v1, p0

    .line 525
    .line 526
    move-object/from16 v2, p1

    .line 527
    .line 528
    move-object/from16 v7, p6

    .line 529
    .line 530
    move/from16 v8, p8

    .line 531
    .line 532
    move/from16 v9, p9

    .line 533
    .line 534
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lat/n;II)V

    .line 535
    .line 536
    .line 537
    invoke-interface {v10, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 538
    .line 539
    .line 540
    :goto_12
    return-void
.end method

.method public static final DropdownMenuItem(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
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
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v10, p5

    .line 4
    .line 5
    move/from16 v11, p7

    .line 6
    .line 7
    const-string v0, "onClick"

    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "content"

    .line 13
    .line 14
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, -0x76870fcc

    .line 18
    .line 19
    .line 20
    move-object/from16 v1, p6

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    and-int/lit8 v0, p8, 0x1

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    or-int/lit8 v0, v11, 0x6

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    and-int/lit8 v0, v11, 0xe

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x2

    .line 46
    :goto_0
    or-int/2addr v0, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v11

    .line 49
    :goto_1
    and-int/lit8 v1, p8, 0x2

    .line 50
    .line 51
    if-eqz v1, :cond_4

    .line 52
    .line 53
    or-int/lit8 v0, v0, 0x30

    .line 54
    .line 55
    :cond_3
    move-object/from16 v2, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v2, v11, 0x70

    .line 59
    .line 60
    if-nez v2, :cond_3

    .line 61
    .line 62
    move-object/from16 v2, p1

    .line 63
    .line 64
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_5

    .line 69
    .line 70
    const/16 v3, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v3, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v0, v3

    .line 76
    :goto_3
    and-int/lit8 v3, p8, 0x4

    .line 77
    .line 78
    if-eqz v3, :cond_7

    .line 79
    .line 80
    or-int/lit16 v0, v0, 0x180

    .line 81
    .line 82
    :cond_6
    move/from16 v4, p2

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_7
    and-int/lit16 v4, v11, 0x380

    .line 86
    .line 87
    if-nez v4, :cond_6

    .line 88
    .line 89
    move/from16 v4, p2

    .line 90
    .line 91
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_8

    .line 96
    .line 97
    const/16 v5, 0x100

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_8
    const/16 v5, 0x80

    .line 101
    .line 102
    :goto_4
    or-int/2addr v0, v5

    .line 103
    :goto_5
    and-int/lit8 v5, p8, 0x8

    .line 104
    .line 105
    if-eqz v5, :cond_a

    .line 106
    .line 107
    or-int/lit16 v0, v0, 0xc00

    .line 108
    .line 109
    :cond_9
    move-object/from16 v6, p3

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_a
    and-int/lit16 v6, v11, 0x1c00

    .line 113
    .line 114
    if-nez v6, :cond_9

    .line 115
    .line 116
    move-object/from16 v6, p3

    .line 117
    .line 118
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_b

    .line 123
    .line 124
    const/16 v7, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/16 v7, 0x400

    .line 128
    .line 129
    :goto_6
    or-int/2addr v0, v7

    .line 130
    :goto_7
    and-int/lit8 v7, p8, 0x10

    .line 131
    .line 132
    if-eqz v7, :cond_d

    .line 133
    .line 134
    or-int/lit16 v0, v0, 0x6000

    .line 135
    .line 136
    :cond_c
    move-object/from16 v8, p4

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v8, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v8, v11

    .line 143
    if-nez v8, :cond_c

    .line 144
    .line 145
    move-object/from16 v8, p4

    .line 146
    .line 147
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v13

    .line 151
    if-eqz v13, :cond_e

    .line 152
    .line 153
    const/16 v13, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/16 v13, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v0, v13

    .line 159
    :goto_9
    and-int/lit8 v13, p8, 0x20

    .line 160
    .line 161
    if-eqz v13, :cond_f

    .line 162
    .line 163
    const/high16 v13, 0x30000

    .line 164
    .line 165
    :goto_a
    or-int/2addr v0, v13

    .line 166
    goto :goto_b

    .line 167
    :cond_f
    const/high16 v13, 0x70000

    .line 168
    .line 169
    and-int/2addr v13, v11

    .line 170
    if-nez v13, :cond_11

    .line 171
    .line 172
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    if-eqz v13, :cond_10

    .line 177
    .line 178
    const/high16 v13, 0x20000

    .line 179
    .line 180
    goto :goto_a

    .line 181
    :cond_10
    const/high16 v13, 0x10000

    .line 182
    .line 183
    goto :goto_a

    .line 184
    :cond_11
    :goto_b
    const v13, 0x5b6db

    .line 185
    .line 186
    .line 187
    and-int/2addr v13, v0

    .line 188
    const v14, 0x12492

    .line 189
    .line 190
    .line 191
    if-ne v13, v14, :cond_13

    .line 192
    .line 193
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-nez v13, :cond_12

    .line 198
    .line 199
    goto :goto_c

    .line 200
    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 201
    .line 202
    .line 203
    move v3, v4

    .line 204
    move-object v4, v6

    .line 205
    move-object v5, v8

    .line 206
    goto/16 :goto_11

    .line 207
    .line 208
    :cond_13
    :goto_c
    if-eqz v1, :cond_14

    .line 209
    .line 210
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 211
    .line 212
    move-object v13, v1

    .line 213
    goto :goto_d

    .line 214
    :cond_14
    move-object v13, v2

    .line 215
    :goto_d
    if-eqz v3, :cond_15

    .line 216
    .line 217
    const/4 v1, 0x1

    .line 218
    move v14, v1

    .line 219
    goto :goto_e

    .line 220
    :cond_15
    move v14, v4

    .line 221
    :goto_e
    if-eqz v5, :cond_16

    .line 222
    .line 223
    sget-object v1, Landroidx/compose/material/MenuDefaults;->INSTANCE:Landroidx/compose/material/MenuDefaults;

    .line 224
    .line 225
    invoke-virtual {v1}, Landroidx/compose/material/MenuDefaults;->getDropdownMenuItemContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    move-object v15, v1

    .line 230
    goto :goto_f

    .line 231
    :cond_16
    move-object v15, v6

    .line 232
    :goto_f
    if-eqz v7, :cond_18

    .line 233
    .line 234
    const v1, -0x1d58f75c

    .line 235
    .line 236
    .line 237
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-ne v1, v2, :cond_17

    .line 251
    .line 252
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 260
    .line 261
    .line 262
    check-cast v1, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 263
    .line 264
    move-object/from16 v16, v1

    .line 265
    .line 266
    goto :goto_10

    .line 267
    :cond_18
    move-object/from16 v16, v8

    .line 268
    .line 269
    :goto_10
    const v1, 0x7fffe

    .line 270
    .line 271
    .line 272
    and-int v7, v0, v1

    .line 273
    .line 274
    const/4 v8, 0x0

    .line 275
    move-object/from16 v0, p0

    .line 276
    .line 277
    move-object v1, v13

    .line 278
    move v2, v14

    .line 279
    move-object v3, v15

    .line 280
    move-object/from16 v4, v16

    .line 281
    .line 282
    move-object/from16 v5, p5

    .line 283
    .line 284
    move-object v6, v12

    .line 285
    invoke-static/range {v0 .. v8}, Landroidx/compose/material/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 286
    .line 287
    .line 288
    move-object v2, v13

    .line 289
    move v3, v14

    .line 290
    move-object v4, v15

    .line 291
    move-object/from16 v5, v16

    .line 292
    .line 293
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    if-nez v12, :cond_19

    .line 298
    .line 299
    goto :goto_12

    .line 300
    :cond_19
    new-instance v13, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;

    .line 301
    .line 302
    move-object v0, v13

    .line 303
    move-object/from16 v1, p0

    .line 304
    .line 305
    move-object/from16 v6, p5

    .line 306
    .line 307
    move/from16 v7, p7

    .line 308
    .line 309
    move/from16 v8, p8

    .line 310
    .line 311
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenuItem$2;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lat/n;II)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 315
    .line 316
    .line 317
    :goto_12
    return-void
.end method
