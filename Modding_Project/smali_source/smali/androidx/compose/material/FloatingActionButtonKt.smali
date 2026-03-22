.class public final Landroidx/compose/material/FloatingActionButtonKt;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ExtendedFabIconPadding:F

.field private static final ExtendedFabSize:F

.field private static final ExtendedFabTextPadding:F

.field private static final FabSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x38

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->FabSize:F

    .line 9
    .line 10
    const/16 v0, 0x30

    .line 11
    .line 12
    int-to-float v0, v0

    .line 13
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabSize:F

    .line 18
    .line 19
    const/16 v0, 0xc

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabIconPadding:F

    .line 27
    .line 28
    const/16 v0, 0x14

    .line 29
    .line 30
    int-to-float v0, v0

    .line 31
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabTextPadding:F

    .line 36
    .line 37
    return-void
.end method

.method public static final ExtendedFloatingActionButton-wqdebIU(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/material/FloatingActionButtonElevation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material/FloatingActionButtonElevation;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move/from16 v0, p12

    .line 6
    .line 7
    move/from16 v14, p13

    .line 8
    .line 9
    const-string v2, "text"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "onClick"

    .line 15
    .line 16
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v2, -0x5cba6803

    .line 20
    .line 21
    .line 22
    move-object/from16 v3, p11

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
    or-int/lit8 v2, v0, 0x6

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    and-int/lit8 v2, v0, 0xe

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
    or-int/2addr v2, v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v2, v0

    .line 51
    :goto_1
    and-int/lit8 v3, v14, 0x2

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    or-int/lit8 v2, v2, 0x30

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    and-int/lit8 v3, v0, 0x70

    .line 59
    .line 60
    if-nez v3, :cond_5

    .line 61
    .line 62
    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    const/16 v3, 0x20

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    const/16 v3, 0x10

    .line 72
    .line 73
    :goto_2
    or-int/2addr v2, v3

    .line 74
    :cond_5
    :goto_3
    and-int/lit8 v3, v14, 0x4

    .line 75
    .line 76
    if-eqz v3, :cond_7

    .line 77
    .line 78
    or-int/lit16 v2, v2, 0x180

    .line 79
    .line 80
    :cond_6
    move-object/from16 v4, p2

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_7
    and-int/lit16 v4, v0, 0x380

    .line 84
    .line 85
    if-nez v4, :cond_6

    .line 86
    .line 87
    move-object/from16 v4, p2

    .line 88
    .line 89
    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_8

    .line 94
    .line 95
    const/16 v5, 0x100

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_8
    const/16 v5, 0x80

    .line 99
    .line 100
    :goto_4
    or-int/2addr v2, v5

    .line 101
    :goto_5
    and-int/lit8 v5, v14, 0x8

    .line 102
    .line 103
    if-eqz v5, :cond_a

    .line 104
    .line 105
    or-int/lit16 v2, v2, 0xc00

    .line 106
    .line 107
    :cond_9
    move-object/from16 v6, p3

    .line 108
    .line 109
    goto :goto_7

    .line 110
    :cond_a
    and-int/lit16 v6, v0, 0x1c00

    .line 111
    .line 112
    if-nez v6, :cond_9

    .line 113
    .line 114
    move-object/from16 v6, p3

    .line 115
    .line 116
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    if-eqz v7, :cond_b

    .line 121
    .line 122
    const/16 v7, 0x800

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_b
    const/16 v7, 0x400

    .line 126
    .line 127
    :goto_6
    or-int/2addr v2, v7

    .line 128
    :goto_7
    and-int/lit8 v7, v14, 0x10

    .line 129
    .line 130
    const v8, 0xe000

    .line 131
    .line 132
    .line 133
    if-eqz v7, :cond_d

    .line 134
    .line 135
    or-int/lit16 v2, v2, 0x6000

    .line 136
    .line 137
    :cond_c
    move-object/from16 v9, p4

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :cond_d
    and-int v9, v0, v8

    .line 141
    .line 142
    if-nez v9, :cond_c

    .line 143
    .line 144
    move-object/from16 v9, p4

    .line 145
    .line 146
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    if-eqz v10, :cond_e

    .line 151
    .line 152
    const/16 v10, 0x4000

    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_e
    const/16 v10, 0x2000

    .line 156
    .line 157
    :goto_8
    or-int/2addr v2, v10

    .line 158
    :goto_9
    const/high16 v10, 0x70000

    .line 159
    .line 160
    and-int v11, v0, v10

    .line 161
    .line 162
    if-nez v11, :cond_11

    .line 163
    .line 164
    and-int/lit8 v11, v14, 0x20

    .line 165
    .line 166
    if-nez v11, :cond_f

    .line 167
    .line 168
    move-object/from16 v11, p5

    .line 169
    .line 170
    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v12

    .line 174
    if-eqz v12, :cond_10

    .line 175
    .line 176
    const/high16 v12, 0x20000

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_f
    move-object/from16 v11, p5

    .line 180
    .line 181
    :cond_10
    const/high16 v12, 0x10000

    .line 182
    .line 183
    :goto_a
    or-int/2addr v2, v12

    .line 184
    goto :goto_b

    .line 185
    :cond_11
    move-object/from16 v11, p5

    .line 186
    .line 187
    :goto_b
    const/high16 v12, 0x380000

    .line 188
    .line 189
    and-int v16, v0, v12

    .line 190
    .line 191
    if-nez v16, :cond_13

    .line 192
    .line 193
    and-int/lit8 v16, v14, 0x40

    .line 194
    .line 195
    move-wide/from16 v10, p6

    .line 196
    .line 197
    if-nez v16, :cond_12

    .line 198
    .line 199
    invoke-interface {v13, v10, v11}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 200
    .line 201
    .line 202
    move-result v16

    .line 203
    if-eqz v16, :cond_12

    .line 204
    .line 205
    const/high16 v16, 0x100000

    .line 206
    .line 207
    goto :goto_c

    .line 208
    :cond_12
    const/high16 v16, 0x80000

    .line 209
    .line 210
    :goto_c
    or-int v2, v2, v16

    .line 211
    .line 212
    goto :goto_d

    .line 213
    :cond_13
    move-wide/from16 v10, p6

    .line 214
    .line 215
    :goto_d
    const/high16 v16, 0x1c00000

    .line 216
    .line 217
    and-int v16, v0, v16

    .line 218
    .line 219
    if-nez v16, :cond_15

    .line 220
    .line 221
    and-int/lit16 v12, v14, 0x80

    .line 222
    .line 223
    move-wide/from16 v8, p8

    .line 224
    .line 225
    if-nez v12, :cond_14

    .line 226
    .line 227
    invoke-interface {v13, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-eqz v17, :cond_14

    .line 232
    .line 233
    const/high16 v17, 0x800000

    .line 234
    .line 235
    goto :goto_e

    .line 236
    :cond_14
    const/high16 v17, 0x400000

    .line 237
    .line 238
    :goto_e
    or-int v2, v2, v17

    .line 239
    .line 240
    goto :goto_f

    .line 241
    :cond_15
    move-wide/from16 v8, p8

    .line 242
    .line 243
    :goto_f
    const/high16 v17, 0xe000000

    .line 244
    .line 245
    and-int v17, v0, v17

    .line 246
    .line 247
    if-nez v17, :cond_18

    .line 248
    .line 249
    and-int/lit16 v12, v14, 0x100

    .line 250
    .line 251
    if-nez v12, :cond_16

    .line 252
    .line 253
    move-object/from16 v12, p10

    .line 254
    .line 255
    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v18

    .line 259
    if-eqz v18, :cond_17

    .line 260
    .line 261
    const/high16 v18, 0x4000000

    .line 262
    .line 263
    goto :goto_10

    .line 264
    :cond_16
    move-object/from16 v12, p10

    .line 265
    .line 266
    :cond_17
    const/high16 v18, 0x2000000

    .line 267
    .line 268
    :goto_10
    or-int v2, v2, v18

    .line 269
    .line 270
    goto :goto_11

    .line 271
    :cond_18
    move-object/from16 v12, p10

    .line 272
    .line 273
    :goto_11
    const v18, 0xb6db6db

    .line 274
    .line 275
    .line 276
    and-int v4, v2, v18

    .line 277
    .line 278
    const v6, 0x2492492

    .line 279
    .line 280
    .line 281
    if-ne v4, v6, :cond_1a

    .line 282
    .line 283
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 284
    .line 285
    .line 286
    move-result v4

    .line 287
    if-nez v4, :cond_19

    .line 288
    .line 289
    goto :goto_12

    .line 290
    :cond_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 291
    .line 292
    .line 293
    move-object/from16 v3, p2

    .line 294
    .line 295
    move-object/from16 v4, p3

    .line 296
    .line 297
    move-object/from16 v5, p4

    .line 298
    .line 299
    move-object/from16 v6, p5

    .line 300
    .line 301
    move-object/from16 v27, v13

    .line 302
    .line 303
    move-wide/from16 v28, v10

    .line 304
    .line 305
    move-object v11, v12

    .line 306
    move-wide v9, v8

    .line 307
    move-wide/from16 v7, v28

    .line 308
    .line 309
    goto/16 :goto_1a

    .line 310
    .line 311
    :cond_1a
    :goto_12
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 312
    .line 313
    .line 314
    and-int/lit8 v4, v0, 0x1

    .line 315
    .line 316
    const v18, -0x1c00001

    .line 317
    .line 318
    .line 319
    const v19, -0x380001

    .line 320
    .line 321
    .line 322
    const v20, -0x70001

    .line 323
    .line 324
    .line 325
    const/4 v6, 0x6

    .line 326
    if-eqz v4, :cond_20

    .line 327
    .line 328
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_1b

    .line 333
    .line 334
    goto :goto_13

    .line 335
    :cond_1b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 336
    .line 337
    .line 338
    and-int/lit8 v3, v14, 0x20

    .line 339
    .line 340
    if-eqz v3, :cond_1c

    .line 341
    .line 342
    and-int v2, v2, v20

    .line 343
    .line 344
    :cond_1c
    and-int/lit8 v3, v14, 0x40

    .line 345
    .line 346
    if-eqz v3, :cond_1d

    .line 347
    .line 348
    and-int v2, v2, v19

    .line 349
    .line 350
    :cond_1d
    and-int/lit16 v3, v14, 0x80

    .line 351
    .line 352
    if-eqz v3, :cond_1e

    .line 353
    .line 354
    and-int v2, v2, v18

    .line 355
    .line 356
    :cond_1e
    and-int/lit16 v3, v14, 0x100

    .line 357
    .line 358
    if-eqz v3, :cond_1f

    .line 359
    .line 360
    const v3, -0xe000001

    .line 361
    .line 362
    .line 363
    and-int/2addr v2, v3

    .line 364
    :cond_1f
    move-object/from16 v18, p2

    .line 365
    .line 366
    move-object/from16 v19, p4

    .line 367
    .line 368
    move-object/from16 v20, p5

    .line 369
    .line 370
    move-wide/from16 v24, v8

    .line 371
    .line 372
    move-wide/from16 v21, v10

    .line 373
    .line 374
    move-object/from16 v26, v12

    .line 375
    .line 376
    move-object/from16 v12, p3

    .line 377
    .line 378
    goto/16 :goto_19

    .line 379
    .line 380
    :cond_20
    :goto_13
    if-eqz v3, :cond_21

    .line 381
    .line 382
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 383
    .line 384
    goto :goto_14

    .line 385
    :cond_21
    move-object/from16 v3, p2

    .line 386
    .line 387
    :goto_14
    if-eqz v5, :cond_22

    .line 388
    .line 389
    const/4 v4, 0x0

    .line 390
    goto :goto_15

    .line 391
    :cond_22
    move-object/from16 v4, p3

    .line 392
    .line 393
    :goto_15
    if-eqz v7, :cond_24

    .line 394
    .line 395
    const v5, -0x1d58f75c

    .line 396
    .line 397
    .line 398
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 399
    .line 400
    .line 401
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v5

    .line 405
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 406
    .line 407
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    if-ne v5, v7, :cond_23

    .line 412
    .line 413
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 418
    .line 419
    .line 420
    :cond_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 421
    .line 422
    .line 423
    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 424
    .line 425
    goto :goto_16

    .line 426
    :cond_24
    move-object/from16 v5, p4

    .line 427
    .line 428
    :goto_16
    and-int/lit8 v7, v14, 0x20

    .line 429
    .line 430
    if-eqz v7, :cond_25

    .line 431
    .line 432
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 433
    .line 434
    invoke-virtual {v7, v13, v6}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v7}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    const/16 v22, 0x32

    .line 443
    .line 444
    invoke-static/range {v22 .. v22}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    .line 445
    .line 446
    .line 447
    move-result-object v6

    .line 448
    invoke-virtual {v7, v6}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 449
    .line 450
    .line 451
    move-result-object v6

    .line 452
    and-int v2, v2, v20

    .line 453
    .line 454
    goto :goto_17

    .line 455
    :cond_25
    move-object/from16 v6, p5

    .line 456
    .line 457
    :goto_17
    and-int/lit8 v7, v14, 0x40

    .line 458
    .line 459
    if-eqz v7, :cond_26

    .line 460
    .line 461
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 462
    .line 463
    const/4 v10, 0x6

    .line 464
    invoke-virtual {v7, v13, v10}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    .line 469
    .line 470
    .line 471
    move-result-wide v10

    .line 472
    and-int v2, v2, v19

    .line 473
    .line 474
    :cond_26
    and-int/lit16 v7, v14, 0x80

    .line 475
    .line 476
    if-eqz v7, :cond_27

    .line 477
    .line 478
    shr-int/lit8 v7, v2, 0x12

    .line 479
    .line 480
    and-int/lit8 v7, v7, 0xe

    .line 481
    .line 482
    invoke-static {v10, v11, v13, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 483
    .line 484
    .line 485
    move-result-wide v7

    .line 486
    and-int v2, v2, v18

    .line 487
    .line 488
    goto :goto_18

    .line 489
    :cond_27
    move-wide v7, v8

    .line 490
    :goto_18
    and-int/lit16 v9, v14, 0x100

    .line 491
    .line 492
    if-eqz v9, :cond_28

    .line 493
    .line 494
    sget-object v9, Landroidx/compose/material/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;

    .line 495
    .line 496
    const/16 v12, 0x6000

    .line 497
    .line 498
    const/16 v18, 0xf

    .line 499
    .line 500
    const/16 v19, 0x0

    .line 501
    .line 502
    const/16 v20, 0x0

    .line 503
    .line 504
    const/16 v22, 0x0

    .line 505
    .line 506
    const/16 v24, 0x0

    .line 507
    .line 508
    move-object/from16 p2, v9

    .line 509
    .line 510
    move/from16 p3, v19

    .line 511
    .line 512
    move/from16 p4, v20

    .line 513
    .line 514
    move/from16 p5, v22

    .line 515
    .line 516
    move/from16 p6, v24

    .line 517
    .line 518
    move-object/from16 p7, v13

    .line 519
    .line 520
    move/from16 p8, v12

    .line 521
    .line 522
    move/from16 p9, v18

    .line 523
    .line 524
    invoke-virtual/range {p2 .. p9}, Landroidx/compose/material/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;

    .line 525
    .line 526
    .line 527
    move-result-object v9

    .line 528
    const v12, -0xe000001

    .line 529
    .line 530
    .line 531
    and-int/2addr v2, v12

    .line 532
    move-object/from16 v18, v3

    .line 533
    .line 534
    move-object v12, v4

    .line 535
    move-object/from16 v19, v5

    .line 536
    .line 537
    move-object/from16 v20, v6

    .line 538
    .line 539
    move-wide/from16 v24, v7

    .line 540
    .line 541
    move-object/from16 v26, v9

    .line 542
    .line 543
    move-wide/from16 v21, v10

    .line 544
    .line 545
    goto :goto_19

    .line 546
    :cond_28
    move-object/from16 v18, v3

    .line 547
    .line 548
    move-object/from16 v19, v5

    .line 549
    .line 550
    move-object/from16 v20, v6

    .line 551
    .line 552
    move-wide/from16 v24, v7

    .line 553
    .line 554
    move-wide/from16 v21, v10

    .line 555
    .line 556
    move-object/from16 v26, v12

    .line 557
    .line 558
    move-object v12, v4

    .line 559
    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 560
    .line 561
    .line 562
    sget v3, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabSize:F

    .line 563
    .line 564
    const/16 v4, 0xc

    .line 565
    .line 566
    const/4 v5, 0x0

    .line 567
    const/4 v6, 0x0

    .line 568
    const/4 v7, 0x0

    .line 569
    move-object/from16 p2, v18

    .line 570
    .line 571
    move/from16 p3, v3

    .line 572
    .line 573
    move/from16 p4, v3

    .line 574
    .line 575
    move/from16 p5, v6

    .line 576
    .line 577
    move/from16 p6, v7

    .line 578
    .line 579
    move/from16 p7, v4

    .line 580
    .line 581
    move-object/from16 p8, v5

    .line 582
    .line 583
    invoke-static/range {p2 .. p8}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    new-instance v4, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;

    .line 588
    .line 589
    invoke-direct {v4, v12, v2, v1}, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$2;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;)V

    .line 590
    .line 591
    .line 592
    const v5, 0x5493f13b

    .line 593
    .line 594
    .line 595
    const/4 v6, 0x1

    .line 596
    invoke-static {v13, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 597
    .line 598
    .line 599
    move-result-object v11

    .line 600
    shr-int/lit8 v4, v2, 0x3

    .line 601
    .line 602
    and-int/lit8 v4, v4, 0xe

    .line 603
    .line 604
    const/high16 v5, 0xc00000

    .line 605
    .line 606
    or-int/2addr v4, v5

    .line 607
    const/4 v5, 0x6

    .line 608
    shr-int/2addr v2, v5

    .line 609
    and-int/lit16 v5, v2, 0x380

    .line 610
    .line 611
    or-int/2addr v4, v5

    .line 612
    and-int/lit16 v5, v2, 0x1c00

    .line 613
    .line 614
    or-int/2addr v4, v5

    .line 615
    const v5, 0xe000

    .line 616
    .line 617
    .line 618
    and-int/2addr v5, v2

    .line 619
    or-int/2addr v4, v5

    .line 620
    const/high16 v5, 0x70000

    .line 621
    .line 622
    and-int/2addr v5, v2

    .line 623
    or-int/2addr v4, v5

    .line 624
    const/high16 v5, 0x380000

    .line 625
    .line 626
    and-int/2addr v2, v5

    .line 627
    or-int v16, v4, v2

    .line 628
    .line 629
    const/16 v17, 0x0

    .line 630
    .line 631
    move-object/from16 v2, p1

    .line 632
    .line 633
    move-object/from16 v4, v19

    .line 634
    .line 635
    move-object/from16 v5, v20

    .line 636
    .line 637
    move-wide/from16 v6, v21

    .line 638
    .line 639
    move-wide/from16 v8, v24

    .line 640
    .line 641
    move-object/from16 v10, v26

    .line 642
    .line 643
    move-object/from16 v23, v12

    .line 644
    .line 645
    move-object v12, v13

    .line 646
    move-object/from16 v27, v13

    .line 647
    .line 648
    move/from16 v13, v16

    .line 649
    .line 650
    move/from16 v14, v17

    .line 651
    .line 652
    invoke-static/range {v2 .. v14}, Landroidx/compose/material/FloatingActionButtonKt;->FloatingActionButton-bogVsAg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 653
    .line 654
    .line 655
    move-object/from16 v3, v18

    .line 656
    .line 657
    move-object/from16 v5, v19

    .line 658
    .line 659
    move-object/from16 v6, v20

    .line 660
    .line 661
    move-wide/from16 v7, v21

    .line 662
    .line 663
    move-object/from16 v4, v23

    .line 664
    .line 665
    move-wide/from16 v9, v24

    .line 666
    .line 667
    move-object/from16 v11, v26

    .line 668
    .line 669
    :goto_1a
    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 670
    .line 671
    .line 672
    move-result-object v14

    .line 673
    if-nez v14, :cond_29

    .line 674
    .line 675
    goto :goto_1b

    .line 676
    :cond_29
    new-instance v13, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;

    .line 677
    .line 678
    move-object v0, v13

    .line 679
    move-object/from16 v1, p0

    .line 680
    .line 681
    move-object/from16 v2, p1

    .line 682
    .line 683
    move/from16 v12, p12

    .line 684
    .line 685
    move-object v15, v13

    .line 686
    move/from16 v13, p13

    .line 687
    .line 688
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/FloatingActionButtonKt$ExtendedFloatingActionButton$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;II)V

    .line 689
    .line 690
    .line 691
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 692
    .line 693
    .line 694
    :goto_1b
    return-void
.end method

.method public static final FloatingActionButton-bogVsAg(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/material/FloatingActionButtonElevation;
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

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/material/FloatingActionButtonElevation;",
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
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p9

    .line 4
    .line 5
    move/from16 v13, p11

    .line 6
    .line 7
    move/from16 v12, p12

    .line 8
    .line 9
    const-string v0, "onClick"

    .line 10
    .line 11
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "content"

    .line 15
    .line 16
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const v0, 0x3d5511f0

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p10

    .line 23
    .line 24
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 25
    .line 26
    .line 27
    move-result-object v11

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
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v3, v12, 0x4

    .line 79
    .line 80
    if-eqz v3, :cond_7

    .line 81
    .line 82
    or-int/lit16 v0, v0, 0x180

    .line 83
    .line 84
    :cond_6
    move-object/from16 v4, p2

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    and-int/lit16 v4, v13, 0x380

    .line 88
    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    move-object/from16 v4, p2

    .line 92
    .line 93
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    const/16 v5, 0x100

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 v5, 0x80

    .line 103
    .line 104
    :goto_4
    or-int/2addr v0, v5

    .line 105
    :goto_5
    and-int/lit16 v5, v13, 0x1c00

    .line 106
    .line 107
    if-nez v5, :cond_b

    .line 108
    .line 109
    and-int/lit8 v5, v12, 0x8

    .line 110
    .line 111
    if-nez v5, :cond_9

    .line 112
    .line 113
    move-object/from16 v5, p3

    .line 114
    .line 115
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    if-eqz v6, :cond_a

    .line 120
    .line 121
    const/16 v6, 0x800

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    move-object/from16 v5, p3

    .line 125
    .line 126
    :cond_a
    const/16 v6, 0x400

    .line 127
    .line 128
    :goto_6
    or-int/2addr v0, v6

    .line 129
    goto :goto_7

    .line 130
    :cond_b
    move-object/from16 v5, p3

    .line 131
    .line 132
    :goto_7
    const v6, 0xe000

    .line 133
    .line 134
    .line 135
    and-int v7, v13, v6

    .line 136
    .line 137
    if-nez v7, :cond_e

    .line 138
    .line 139
    and-int/lit8 v7, v12, 0x10

    .line 140
    .line 141
    if-nez v7, :cond_c

    .line 142
    .line 143
    move-wide/from16 v7, p4

    .line 144
    .line 145
    invoke-interface {v11, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    if-eqz v9, :cond_d

    .line 150
    .line 151
    const/16 v9, 0x4000

    .line 152
    .line 153
    goto :goto_8

    .line 154
    :cond_c
    move-wide/from16 v7, p4

    .line 155
    .line 156
    :cond_d
    const/16 v9, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v0, v9

    .line 159
    goto :goto_9

    .line 160
    :cond_e
    move-wide/from16 v7, p4

    .line 161
    .line 162
    :goto_9
    const/high16 v9, 0x70000

    .line 163
    .line 164
    and-int v10, v13, v9

    .line 165
    .line 166
    if-nez v10, :cond_11

    .line 167
    .line 168
    and-int/lit8 v10, v12, 0x20

    .line 169
    .line 170
    if-nez v10, :cond_f

    .line 171
    .line 172
    move-wide/from16 v9, p6

    .line 173
    .line 174
    invoke-interface {v11, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 175
    .line 176
    .line 177
    move-result v16

    .line 178
    if-eqz v16, :cond_10

    .line 179
    .line 180
    const/high16 v16, 0x20000

    .line 181
    .line 182
    goto :goto_a

    .line 183
    :cond_f
    move-wide/from16 v9, p6

    .line 184
    .line 185
    :cond_10
    const/high16 v16, 0x10000

    .line 186
    .line 187
    :goto_a
    or-int v0, v0, v16

    .line 188
    .line 189
    goto :goto_b

    .line 190
    :cond_11
    move-wide/from16 v9, p6

    .line 191
    .line 192
    :goto_b
    const/high16 v16, 0x380000

    .line 193
    .line 194
    and-int v16, v13, v16

    .line 195
    .line 196
    if-nez v16, :cond_13

    .line 197
    .line 198
    and-int/lit8 v16, v12, 0x40

    .line 199
    .line 200
    move-object/from16 v6, p8

    .line 201
    .line 202
    if-nez v16, :cond_12

    .line 203
    .line 204
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v17

    .line 208
    if-eqz v17, :cond_12

    .line 209
    .line 210
    const/high16 v17, 0x100000

    .line 211
    .line 212
    goto :goto_c

    .line 213
    :cond_12
    const/high16 v17, 0x80000

    .line 214
    .line 215
    :goto_c
    or-int v0, v0, v17

    .line 216
    .line 217
    goto :goto_d

    .line 218
    :cond_13
    move-object/from16 v6, p8

    .line 219
    .line 220
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 221
    .line 222
    if-eqz v2, :cond_14

    .line 223
    .line 224
    const/high16 v2, 0xc00000

    .line 225
    .line 226
    :goto_e
    or-int/2addr v0, v2

    .line 227
    goto :goto_f

    .line 228
    :cond_14
    const/high16 v2, 0x1c00000

    .line 229
    .line 230
    and-int/2addr v2, v13

    .line 231
    if-nez v2, :cond_16

    .line 232
    .line 233
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    if-eqz v2, :cond_15

    .line 238
    .line 239
    const/high16 v2, 0x800000

    .line 240
    .line 241
    goto :goto_e

    .line 242
    :cond_15
    const/high16 v2, 0x400000

    .line 243
    .line 244
    goto :goto_e

    .line 245
    :cond_16
    :goto_f
    const v2, 0x16db6db

    .line 246
    .line 247
    .line 248
    and-int/2addr v2, v0

    .line 249
    const v4, 0x492492

    .line 250
    .line 251
    .line 252
    if-ne v2, v4, :cond_18

    .line 253
    .line 254
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-nez v2, :cond_17

    .line 259
    .line 260
    goto :goto_10

    .line 261
    :cond_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 262
    .line 263
    .line 264
    move-object/from16 v2, p1

    .line 265
    .line 266
    move-object/from16 v3, p2

    .line 267
    .line 268
    move-object v4, v5

    .line 269
    move-object/from16 v24, v11

    .line 270
    .line 271
    move-wide/from16 v28, v9

    .line 272
    .line 273
    move-object v9, v6

    .line 274
    move-wide v5, v7

    .line 275
    move-wide/from16 v7, v28

    .line 276
    .line 277
    goto/16 :goto_18

    .line 278
    .line 279
    :cond_18
    :goto_10
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 280
    .line 281
    .line 282
    and-int/lit8 v2, v13, 0x1

    .line 283
    .line 284
    const v4, -0x380001

    .line 285
    .line 286
    .line 287
    const v17, -0x70001

    .line 288
    .line 289
    .line 290
    const v18, -0xe001

    .line 291
    .line 292
    .line 293
    if-eqz v2, :cond_1e

    .line 294
    .line 295
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_19

    .line 300
    .line 301
    goto :goto_11

    .line 302
    :cond_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 303
    .line 304
    .line 305
    and-int/lit8 v1, v12, 0x8

    .line 306
    .line 307
    if-eqz v1, :cond_1a

    .line 308
    .line 309
    and-int/lit16 v0, v0, -0x1c01

    .line 310
    .line 311
    :cond_1a
    and-int/lit8 v1, v12, 0x10

    .line 312
    .line 313
    if-eqz v1, :cond_1b

    .line 314
    .line 315
    and-int v0, v0, v18

    .line 316
    .line 317
    :cond_1b
    and-int/lit8 v1, v12, 0x20

    .line 318
    .line 319
    if-eqz v1, :cond_1c

    .line 320
    .line 321
    and-int v0, v0, v17

    .line 322
    .line 323
    :cond_1c
    and-int/lit8 v1, v12, 0x40

    .line 324
    .line 325
    if-eqz v1, :cond_1d

    .line 326
    .line 327
    and-int/2addr v0, v4

    .line 328
    :cond_1d
    move-object/from16 v17, p1

    .line 329
    .line 330
    move-object/from16 v18, v5

    .line 331
    .line 332
    move-wide/from16 v19, v7

    .line 333
    .line 334
    move-wide v8, v9

    .line 335
    move-object/from16 v10, p2

    .line 336
    .line 337
    goto/16 :goto_17

    .line 338
    .line 339
    :cond_1e
    :goto_11
    if-eqz v1, :cond_1f

    .line 340
    .line 341
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 342
    .line 343
    goto :goto_12

    .line 344
    :cond_1f
    move-object/from16 v1, p1

    .line 345
    .line 346
    :goto_12
    if-eqz v3, :cond_21

    .line 347
    .line 348
    const v2, -0x1d58f75c

    .line 349
    .line 350
    .line 351
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 352
    .line 353
    .line 354
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 359
    .line 360
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    if-ne v2, v3, :cond_20

    .line 365
    .line 366
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 374
    .line 375
    .line 376
    check-cast v2, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 377
    .line 378
    goto :goto_13

    .line 379
    :cond_21
    move-object/from16 v2, p2

    .line 380
    .line 381
    :goto_13
    and-int/lit8 v3, v12, 0x8

    .line 382
    .line 383
    const/4 v4, 0x6

    .line 384
    if-eqz v3, :cond_22

    .line 385
    .line 386
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 387
    .line 388
    invoke-virtual {v3, v11, v4}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {v3}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    const/16 v5, 0x32

    .line 397
    .line 398
    invoke-static {v5}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    invoke-virtual {v3, v5}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 403
    .line 404
    .line 405
    move-result-object v3

    .line 406
    and-int/lit16 v0, v0, -0x1c01

    .line 407
    .line 408
    goto :goto_14

    .line 409
    :cond_22
    move-object v3, v5

    .line 410
    :goto_14
    and-int/lit8 v5, v12, 0x10

    .line 411
    .line 412
    if-eqz v5, :cond_23

    .line 413
    .line 414
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 415
    .line 416
    invoke-virtual {v5, v11, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 417
    .line 418
    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getSecondary-0d7_KjU()J

    .line 421
    .line 422
    .line 423
    move-result-wide v4

    .line 424
    and-int v0, v0, v18

    .line 425
    .line 426
    goto :goto_15

    .line 427
    :cond_23
    move-wide v4, v7

    .line 428
    :goto_15
    and-int/lit8 v7, v12, 0x20

    .line 429
    .line 430
    if-eqz v7, :cond_24

    .line 431
    .line 432
    shr-int/lit8 v7, v0, 0xc

    .line 433
    .line 434
    and-int/lit8 v7, v7, 0xe

    .line 435
    .line 436
    invoke-static {v4, v5, v11, v7}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 437
    .line 438
    .line 439
    move-result-wide v7

    .line 440
    and-int v0, v0, v17

    .line 441
    .line 442
    goto :goto_16

    .line 443
    :cond_24
    move-wide v7, v9

    .line 444
    :goto_16
    and-int/lit8 v9, v12, 0x40

    .line 445
    .line 446
    if-eqz v9, :cond_25

    .line 447
    .line 448
    sget-object v6, Landroidx/compose/material/FloatingActionButtonDefaults;->INSTANCE:Landroidx/compose/material/FloatingActionButtonDefaults;

    .line 449
    .line 450
    const/16 v9, 0x6000

    .line 451
    .line 452
    const/16 v10, 0xf

    .line 453
    .line 454
    const/16 v17, 0x0

    .line 455
    .line 456
    const/16 v18, 0x0

    .line 457
    .line 458
    const/16 v20, 0x0

    .line 459
    .line 460
    const/16 v21, 0x0

    .line 461
    .line 462
    move-object/from16 p1, v6

    .line 463
    .line 464
    move/from16 p2, v17

    .line 465
    .line 466
    move/from16 p3, v18

    .line 467
    .line 468
    move/from16 p4, v20

    .line 469
    .line 470
    move/from16 p5, v21

    .line 471
    .line 472
    move-object/from16 p6, v11

    .line 473
    .line 474
    move/from16 p7, v9

    .line 475
    .line 476
    move/from16 p8, v10

    .line 477
    .line 478
    invoke-virtual/range {p1 .. p8}, Landroidx/compose/material/FloatingActionButtonDefaults;->elevation-xZ9-QkE(FFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/FloatingActionButtonElevation;

    .line 479
    .line 480
    .line 481
    move-result-object v6

    .line 482
    const v9, -0x380001

    .line 483
    .line 484
    .line 485
    and-int/2addr v0, v9

    .line 486
    :cond_25
    move-object/from16 v17, v1

    .line 487
    .line 488
    move-object v10, v2

    .line 489
    move-object/from16 v18, v3

    .line 490
    .line 491
    move-wide/from16 v19, v4

    .line 492
    .line 493
    move-wide v8, v7

    .line 494
    :goto_17
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 495
    .line 496
    .line 497
    shr-int/lit8 v1, v0, 0x6

    .line 498
    .line 499
    and-int/lit8 v1, v1, 0xe

    .line 500
    .line 501
    shr-int/lit8 v2, v0, 0xf

    .line 502
    .line 503
    and-int/lit8 v2, v2, 0x70

    .line 504
    .line 505
    or-int/2addr v1, v2

    .line 506
    invoke-interface {v6, v10, v11, v1}, Landroidx/compose/material/FloatingActionButtonElevation;->elevation(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    check-cast v1, Landroidx/compose/ui/unit/Dp;

    .line 515
    .line 516
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    .line 517
    .line 518
    .line 519
    move-result v21

    .line 520
    new-instance v1, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2;

    .line 521
    .line 522
    invoke-direct {v1, v8, v9, v14, v0}, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$2;-><init>(JLkotlin/jvm/functions/Function2;I)V

    .line 523
    .line 524
    .line 525
    const v2, 0x7597a2b7

    .line 526
    .line 527
    .line 528
    const/4 v3, 0x1

    .line 529
    invoke-static {v11, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 530
    .line 531
    .line 532
    move-result-object v22

    .line 533
    and-int/lit8 v1, v0, 0xe

    .line 534
    .line 535
    const/high16 v2, 0x30000000

    .line 536
    .line 537
    or-int/2addr v1, v2

    .line 538
    and-int/lit8 v2, v0, 0x70

    .line 539
    .line 540
    or-int/2addr v1, v2

    .line 541
    and-int/lit16 v2, v0, 0x1c00

    .line 542
    .line 543
    or-int/2addr v1, v2

    .line 544
    const v2, 0xe000

    .line 545
    .line 546
    .line 547
    and-int/2addr v2, v0

    .line 548
    or-int/2addr v1, v2

    .line 549
    const/high16 v2, 0x70000

    .line 550
    .line 551
    and-int/2addr v2, v0

    .line 552
    or-int/2addr v1, v2

    .line 553
    shl-int/lit8 v0, v0, 0x12

    .line 554
    .line 555
    const/high16 v2, 0xe000000

    .line 556
    .line 557
    and-int/2addr v0, v2

    .line 558
    or-int v16, v1, v0

    .line 559
    .line 560
    const/16 v23, 0x44

    .line 561
    .line 562
    const/4 v2, 0x0

    .line 563
    const/16 v24, 0x0

    .line 564
    .line 565
    move-object/from16 v0, p0

    .line 566
    .line 567
    move-object/from16 v1, v17

    .line 568
    .line 569
    move-object/from16 v3, v18

    .line 570
    .line 571
    move-wide/from16 v4, v19

    .line 572
    .line 573
    move-object/from16 v25, v6

    .line 574
    .line 575
    move-wide v6, v8

    .line 576
    move-wide/from16 v26, v8

    .line 577
    .line 578
    move-object/from16 v8, v24

    .line 579
    .line 580
    move/from16 v9, v21

    .line 581
    .line 582
    move-object/from16 v21, v10

    .line 583
    .line 584
    move-object/from16 v24, v11

    .line 585
    .line 586
    move-object/from16 v11, v22

    .line 587
    .line 588
    move-object/from16 v12, v24

    .line 589
    .line 590
    move/from16 v13, v16

    .line 591
    .line 592
    move/from16 v14, v23

    .line 593
    .line 594
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt;->Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 595
    .line 596
    .line 597
    move-object/from16 v2, v17

    .line 598
    .line 599
    move-object/from16 v4, v18

    .line 600
    .line 601
    move-wide/from16 v5, v19

    .line 602
    .line 603
    move-object/from16 v3, v21

    .line 604
    .line 605
    move-object/from16 v9, v25

    .line 606
    .line 607
    move-wide/from16 v7, v26

    .line 608
    .line 609
    :goto_18
    invoke-interface/range {v24 .. v24}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 610
    .line 611
    .line 612
    move-result-object v13

    .line 613
    if-nez v13, :cond_26

    .line 614
    .line 615
    goto :goto_19

    .line 616
    :cond_26
    new-instance v14, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$3;

    .line 617
    .line 618
    move-object v0, v14

    .line 619
    move-object/from16 v1, p0

    .line 620
    .line 621
    move-object/from16 v10, p9

    .line 622
    .line 623
    move/from16 v11, p11

    .line 624
    .line 625
    move/from16 v12, p12

    .line 626
    .line 627
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/FloatingActionButtonKt$FloatingActionButton$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function2;II)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 631
    .line 632
    .line 633
    :goto_19
    return-void
.end method

.method public static final synthetic access$getExtendedFabIconPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabIconPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getExtendedFabTextPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/FloatingActionButtonKt;->ExtendedFabTextPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getFabSize$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/FloatingActionButtonKt;->FabSize:F

    .line 2
    .line 3
    return v0
.end method
