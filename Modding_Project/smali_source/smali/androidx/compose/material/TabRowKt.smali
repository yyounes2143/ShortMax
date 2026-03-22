.class public final Landroidx/compose/material/TabRowKt;
.super Ljava/lang/Object;
.source "TabRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ScrollableTabRowMinimumTabWidth:F

.field private static final ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/AnimationSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x5a

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
    sput v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    .line 9
    .line 10
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x0

    .line 16
    const/16 v3, 0xfa

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v3, v4, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 24
    .line 25
    return-void
.end method

.method public static final ScrollableTabRow-sKfQg0A(ILandroidx/compose/ui/Modifier;JJFLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 28
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
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

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lat/n<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
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
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p9

    .line 4
    .line 5
    move/from16 v11, p11

    .line 6
    .line 7
    move/from16 v12, p12

    .line 8
    .line 9
    const-string v0, "tabs"

    .line 10
    .line 11
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const v0, -0x57d378e8

    .line 15
    .line 16
    .line 17
    move-object/from16 v2, p10

    .line 18
    .line 19
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    and-int/lit8 v2, v12, 0x1

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    or-int/lit8 v2, v11, 0x6

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x2

    .line 43
    :goto_0
    or-int/2addr v2, v11

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v2, v11

    .line 46
    :goto_1
    and-int/lit8 v3, v12, 0x2

    .line 47
    .line 48
    if-eqz v3, :cond_4

    .line 49
    .line 50
    or-int/lit8 v2, v2, 0x30

    .line 51
    .line 52
    :cond_3
    move-object/from16 v4, p1

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    and-int/lit8 v4, v11, 0x70

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    move-object/from16 v4, p1

    .line 60
    .line 61
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_5

    .line 66
    .line 67
    const/16 v5, 0x20

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/16 v5, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    :goto_3
    and-int/lit16 v5, v11, 0x380

    .line 74
    .line 75
    if-nez v5, :cond_8

    .line 76
    .line 77
    and-int/lit8 v5, v12, 0x4

    .line 78
    .line 79
    if-nez v5, :cond_6

    .line 80
    .line 81
    move-wide/from16 v5, p2

    .line 82
    .line 83
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_7

    .line 88
    .line 89
    const/16 v7, 0x100

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_6
    move-wide/from16 v5, p2

    .line 93
    .line 94
    :cond_7
    const/16 v7, 0x80

    .line 95
    .line 96
    :goto_4
    or-int/2addr v2, v7

    .line 97
    goto :goto_5

    .line 98
    :cond_8
    move-wide/from16 v5, p2

    .line 99
    .line 100
    :goto_5
    and-int/lit16 v7, v11, 0x1c00

    .line 101
    .line 102
    if-nez v7, :cond_b

    .line 103
    .line 104
    and-int/lit8 v7, v12, 0x8

    .line 105
    .line 106
    if-nez v7, :cond_9

    .line 107
    .line 108
    move-wide/from16 v7, p4

    .line 109
    .line 110
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_a

    .line 115
    .line 116
    const/16 v9, 0x800

    .line 117
    .line 118
    goto :goto_6

    .line 119
    :cond_9
    move-wide/from16 v7, p4

    .line 120
    .line 121
    :cond_a
    const/16 v9, 0x400

    .line 122
    .line 123
    :goto_6
    or-int/2addr v2, v9

    .line 124
    goto :goto_7

    .line 125
    :cond_b
    move-wide/from16 v7, p4

    .line 126
    .line 127
    :goto_7
    and-int/lit8 v9, v12, 0x10

    .line 128
    .line 129
    if-eqz v9, :cond_d

    .line 130
    .line 131
    or-int/lit16 v2, v2, 0x6000

    .line 132
    .line 133
    :cond_c
    move/from16 v13, p6

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_d
    const v13, 0xe000

    .line 137
    .line 138
    .line 139
    and-int/2addr v13, v11

    .line 140
    if-nez v13, :cond_c

    .line 141
    .line 142
    move/from16 v13, p6

    .line 143
    .line 144
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 145
    .line 146
    .line 147
    move-result v14

    .line 148
    if-eqz v14, :cond_e

    .line 149
    .line 150
    const/16 v14, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_e
    const/16 v14, 0x2000

    .line 154
    .line 155
    :goto_8
    or-int/2addr v2, v14

    .line 156
    :goto_9
    and-int/lit8 v14, v12, 0x20

    .line 157
    .line 158
    if-eqz v14, :cond_10

    .line 159
    .line 160
    const/high16 v15, 0x30000

    .line 161
    .line 162
    or-int/2addr v2, v15

    .line 163
    :cond_f
    move-object/from16 v15, p7

    .line 164
    .line 165
    goto :goto_b

    .line 166
    :cond_10
    const/high16 v15, 0x70000

    .line 167
    .line 168
    and-int/2addr v15, v11

    .line 169
    if-nez v15, :cond_f

    .line 170
    .line 171
    move-object/from16 v15, p7

    .line 172
    .line 173
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v16

    .line 177
    if-eqz v16, :cond_11

    .line 178
    .line 179
    const/high16 v16, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_11
    const/high16 v16, 0x10000

    .line 183
    .line 184
    :goto_a
    or-int v2, v2, v16

    .line 185
    .line 186
    :goto_b
    and-int/lit8 v16, v12, 0x40

    .line 187
    .line 188
    const/high16 v17, 0x180000

    .line 189
    .line 190
    if-eqz v16, :cond_12

    .line 191
    .line 192
    or-int v2, v2, v17

    .line 193
    .line 194
    move-object/from16 v4, p8

    .line 195
    .line 196
    goto :goto_d

    .line 197
    :cond_12
    const/high16 v18, 0x380000

    .line 198
    .line 199
    and-int v18, v11, v18

    .line 200
    .line 201
    move-object/from16 v4, p8

    .line 202
    .line 203
    if-nez v18, :cond_14

    .line 204
    .line 205
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v18

    .line 209
    if-eqz v18, :cond_13

    .line 210
    .line 211
    const/high16 v18, 0x100000

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_13
    const/high16 v18, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v2, v2, v18

    .line 217
    .line 218
    :cond_14
    :goto_d
    and-int/lit16 v4, v12, 0x80

    .line 219
    .line 220
    if-eqz v4, :cond_15

    .line 221
    .line 222
    const/high16 v4, 0xc00000

    .line 223
    .line 224
    :goto_e
    or-int/2addr v2, v4

    .line 225
    goto :goto_f

    .line 226
    :cond_15
    const/high16 v4, 0x1c00000

    .line 227
    .line 228
    and-int/2addr v4, v11

    .line 229
    if-nez v4, :cond_17

    .line 230
    .line 231
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_16

    .line 236
    .line 237
    const/high16 v4, 0x800000

    .line 238
    .line 239
    goto :goto_e

    .line 240
    :cond_16
    const/high16 v4, 0x400000

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_17
    :goto_f
    const v4, 0x16db6db

    .line 244
    .line 245
    .line 246
    and-int/2addr v4, v2

    .line 247
    const v5, 0x492492

    .line 248
    .line 249
    .line 250
    if-ne v4, v5, :cond_19

    .line 251
    .line 252
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-nez v4, :cond_18

    .line 257
    .line 258
    goto :goto_10

    .line 259
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 260
    .line 261
    .line 262
    move-object/from16 v2, p1

    .line 263
    .line 264
    move-wide/from16 v3, p2

    .line 265
    .line 266
    move-object/from16 v9, p8

    .line 267
    .line 268
    move-wide v5, v7

    .line 269
    move v7, v13

    .line 270
    move-object v8, v15

    .line 271
    goto/16 :goto_17

    .line 272
    .line 273
    :cond_19
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 274
    .line 275
    .line 276
    and-int/lit8 v4, v11, 0x1

    .line 277
    .line 278
    if-eqz v4, :cond_1e

    .line 279
    .line 280
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_1a

    .line 285
    .line 286
    goto :goto_11

    .line 287
    :cond_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 288
    .line 289
    .line 290
    and-int/lit8 v3, v12, 0x4

    .line 291
    .line 292
    if-eqz v3, :cond_1b

    .line 293
    .line 294
    and-int/lit16 v2, v2, -0x381

    .line 295
    .line 296
    :cond_1b
    and-int/lit8 v3, v12, 0x8

    .line 297
    .line 298
    if-eqz v3, :cond_1c

    .line 299
    .line 300
    and-int/lit16 v2, v2, -0x1c01

    .line 301
    .line 302
    :cond_1c
    move-object/from16 v3, p1

    .line 303
    .line 304
    move-wide/from16 v5, p2

    .line 305
    .line 306
    move v4, v13

    .line 307
    move-object v9, v15

    .line 308
    :cond_1d
    move v13, v2

    .line 309
    move-object/from16 v2, p8

    .line 310
    .line 311
    goto :goto_16

    .line 312
    :cond_1e
    :goto_11
    if-eqz v3, :cond_1f

    .line 313
    .line 314
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 315
    .line 316
    goto :goto_12

    .line 317
    :cond_1f
    move-object/from16 v3, p1

    .line 318
    .line 319
    :goto_12
    and-int/lit8 v4, v12, 0x4

    .line 320
    .line 321
    if-eqz v4, :cond_20

    .line 322
    .line 323
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 324
    .line 325
    const/4 v6, 0x6

    .line 326
    invoke-virtual {v4, v0, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    .line 331
    .line 332
    .line 333
    move-result-wide v18

    .line 334
    and-int/lit16 v2, v2, -0x381

    .line 335
    .line 336
    move-wide/from16 v5, v18

    .line 337
    .line 338
    goto :goto_13

    .line 339
    :cond_20
    move-wide/from16 v5, p2

    .line 340
    .line 341
    :goto_13
    and-int/lit8 v4, v12, 0x8

    .line 342
    .line 343
    if-eqz v4, :cond_21

    .line 344
    .line 345
    shr-int/lit8 v4, v2, 0x6

    .line 346
    .line 347
    and-int/lit8 v4, v4, 0xe

    .line 348
    .line 349
    invoke-static {v5, v6, v0, v4}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 350
    .line 351
    .line 352
    move-result-wide v7

    .line 353
    and-int/lit16 v2, v2, -0x1c01

    .line 354
    .line 355
    :cond_21
    if-eqz v9, :cond_22

    .line 356
    .line 357
    sget-object v4, Landroidx/compose/material/TabRowDefaults;->INSTANCE:Landroidx/compose/material/TabRowDefaults;

    .line 358
    .line 359
    invoke-virtual {v4}, Landroidx/compose/material/TabRowDefaults;->getScrollableTabRowPadding-D9Ej5fM()F

    .line 360
    .line 361
    .line 362
    move-result v4

    .line 363
    goto :goto_14

    .line 364
    :cond_22
    move v4, v13

    .line 365
    :goto_14
    if-eqz v14, :cond_23

    .line 366
    .line 367
    new-instance v9, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;

    .line 368
    .line 369
    invoke-direct {v9, v1}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$1;-><init>(I)V

    .line 370
    .line 371
    .line 372
    const v13, -0x2713d00d

    .line 373
    .line 374
    .line 375
    const/4 v14, 0x1

    .line 376
    invoke-static {v0, v13, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 377
    .line 378
    .line 379
    move-result-object v9

    .line 380
    goto :goto_15

    .line 381
    :cond_23
    move-object v9, v15

    .line 382
    :goto_15
    if-eqz v16, :cond_1d

    .line 383
    .line 384
    sget-object v13, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    .line 385
    .line 386
    invoke-virtual {v13}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->getLambda-2$material_release()Lkotlin/jvm/functions/Function2;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    move-object/from16 v25, v13

    .line 391
    .line 392
    move v13, v2

    .line 393
    move-object/from16 v2, v25

    .line 394
    .line 395
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 396
    .line 397
    .line 398
    new-instance v14, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;

    .line 399
    .line 400
    move-object/from16 p1, v14

    .line 401
    .line 402
    move/from16 p2, v4

    .line 403
    .line 404
    move-object/from16 p3, p9

    .line 405
    .line 406
    move-object/from16 p4, v2

    .line 407
    .line 408
    move/from16 p5, p0

    .line 409
    .line 410
    move-object/from16 p6, v9

    .line 411
    .line 412
    move/from16 p7, v13

    .line 413
    .line 414
    invoke-direct/range {p1 .. p7}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$2;-><init>(FLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILat/n;I)V

    .line 415
    .line 416
    .line 417
    const v15, 0x56c6ab5c

    .line 418
    .line 419
    .line 420
    const/4 v1, 0x1

    .line 421
    invoke-static {v0, v15, v1, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 422
    .line 423
    .line 424
    move-result-object v21

    .line 425
    shr-int/lit8 v1, v13, 0x3

    .line 426
    .line 427
    and-int/lit8 v1, v1, 0xe

    .line 428
    .line 429
    or-int v1, v1, v17

    .line 430
    .line 431
    and-int/lit16 v14, v13, 0x380

    .line 432
    .line 433
    or-int/2addr v1, v14

    .line 434
    and-int/lit16 v13, v13, 0x1c00

    .line 435
    .line 436
    or-int v23, v1, v13

    .line 437
    .line 438
    const/16 v24, 0x32

    .line 439
    .line 440
    const/4 v14, 0x0

    .line 441
    const/16 v19, 0x0

    .line 442
    .line 443
    const/16 v20, 0x0

    .line 444
    .line 445
    move-object v13, v3

    .line 446
    move-wide v15, v5

    .line 447
    move-wide/from16 v17, v7

    .line 448
    .line 449
    move-object/from16 v22, v0

    .line 450
    .line 451
    invoke-static/range {v13 .. v24}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 452
    .line 453
    .line 454
    move-object/from16 v25, v9

    .line 455
    .line 456
    move-object v9, v2

    .line 457
    move-object v2, v3

    .line 458
    move-wide/from16 v26, v7

    .line 459
    .line 460
    move v7, v4

    .line 461
    move-wide v3, v5

    .line 462
    move-wide/from16 v5, v26

    .line 463
    .line 464
    move-object/from16 v8, v25

    .line 465
    .line 466
    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 467
    .line 468
    .line 469
    move-result-object v13

    .line 470
    if-nez v13, :cond_24

    .line 471
    .line 472
    goto :goto_18

    .line 473
    :cond_24
    new-instance v14, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;

    .line 474
    .line 475
    move-object v0, v14

    .line 476
    move/from16 v1, p0

    .line 477
    .line 478
    move-object/from16 v10, p9

    .line 479
    .line 480
    move/from16 v11, p11

    .line 481
    .line 482
    move/from16 v12, p12

    .line 483
    .line 484
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/TabRowKt$ScrollableTabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJFLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 485
    .line 486
    .line 487
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 488
    .line 489
    .line 490
    :goto_18
    return-void
.end method

.method public static final TabRow-pAZo6Ak(ILandroidx/compose/ui/Modifier;JJLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/ui/UiComposable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Lat/n<",
            "-",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
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
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    const-string v0, "tabs"

    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0xeda1cf9

    .line 13
    .line 14
    .line 15
    move-object/from16 v2, p9

    .line 16
    .line 17
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    and-int/lit8 v2, p11, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    or-int/lit8 v2, v10, 0x6

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    and-int/lit8 v2, v10, 0xe

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    const/4 v2, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v2, 0x2

    .line 41
    :goto_0
    or-int/2addr v2, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v10

    .line 44
    :goto_1
    and-int/lit8 v3, p11, 0x2

    .line 45
    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    or-int/lit8 v2, v2, 0x30

    .line 49
    .line 50
    :cond_3
    move-object/from16 v4, p1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    and-int/lit8 v4, v10, 0x70

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    move-object/from16 v4, p1

    .line 58
    .line 59
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_5

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    const/16 v5, 0x10

    .line 69
    .line 70
    :goto_2
    or-int/2addr v2, v5

    .line 71
    :goto_3
    and-int/lit16 v5, v10, 0x380

    .line 72
    .line 73
    if-nez v5, :cond_8

    .line 74
    .line 75
    and-int/lit8 v5, p11, 0x4

    .line 76
    .line 77
    if-nez v5, :cond_6

    .line 78
    .line 79
    move-wide/from16 v5, p2

    .line 80
    .line 81
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_7

    .line 86
    .line 87
    const/16 v7, 0x100

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    move-wide/from16 v5, p2

    .line 91
    .line 92
    :cond_7
    const/16 v7, 0x80

    .line 93
    .line 94
    :goto_4
    or-int/2addr v2, v7

    .line 95
    goto :goto_5

    .line 96
    :cond_8
    move-wide/from16 v5, p2

    .line 97
    .line 98
    :goto_5
    and-int/lit16 v7, v10, 0x1c00

    .line 99
    .line 100
    if-nez v7, :cond_b

    .line 101
    .line 102
    and-int/lit8 v7, p11, 0x8

    .line 103
    .line 104
    if-nez v7, :cond_9

    .line 105
    .line 106
    move-wide/from16 v7, p4

    .line 107
    .line 108
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    if-eqz v11, :cond_a

    .line 113
    .line 114
    const/16 v11, 0x800

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_9
    move-wide/from16 v7, p4

    .line 118
    .line 119
    :cond_a
    const/16 v11, 0x400

    .line 120
    .line 121
    :goto_6
    or-int/2addr v2, v11

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    move-wide/from16 v7, p4

    .line 124
    .line 125
    :goto_7
    and-int/lit8 v11, p11, 0x10

    .line 126
    .line 127
    if-eqz v11, :cond_d

    .line 128
    .line 129
    or-int/lit16 v2, v2, 0x6000

    .line 130
    .line 131
    :cond_c
    move-object/from16 v12, p6

    .line 132
    .line 133
    goto :goto_9

    .line 134
    :cond_d
    const v12, 0xe000

    .line 135
    .line 136
    .line 137
    and-int/2addr v12, v10

    .line 138
    if-nez v12, :cond_c

    .line 139
    .line 140
    move-object/from16 v12, p6

    .line 141
    .line 142
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-eqz v13, :cond_e

    .line 147
    .line 148
    const/16 v13, 0x4000

    .line 149
    .line 150
    goto :goto_8

    .line 151
    :cond_e
    const/16 v13, 0x2000

    .line 152
    .line 153
    :goto_8
    or-int/2addr v2, v13

    .line 154
    :goto_9
    and-int/lit8 v13, p11, 0x20

    .line 155
    .line 156
    if-eqz v13, :cond_10

    .line 157
    .line 158
    const/high16 v14, 0x30000

    .line 159
    .line 160
    or-int/2addr v2, v14

    .line 161
    :cond_f
    move-object/from16 v14, p7

    .line 162
    .line 163
    goto :goto_b

    .line 164
    :cond_10
    const/high16 v14, 0x70000

    .line 165
    .line 166
    and-int/2addr v14, v10

    .line 167
    if-nez v14, :cond_f

    .line 168
    .line 169
    move-object/from16 v14, p7

    .line 170
    .line 171
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-eqz v15, :cond_11

    .line 176
    .line 177
    const/high16 v15, 0x20000

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_11
    const/high16 v15, 0x10000

    .line 181
    .line 182
    :goto_a
    or-int/2addr v2, v15

    .line 183
    :goto_b
    and-int/lit8 v15, p11, 0x40

    .line 184
    .line 185
    const/high16 v16, 0x180000

    .line 186
    .line 187
    if-eqz v15, :cond_12

    .line 188
    .line 189
    or-int v2, v2, v16

    .line 190
    .line 191
    goto :goto_d

    .line 192
    :cond_12
    const/high16 v15, 0x380000

    .line 193
    .line 194
    and-int/2addr v15, v10

    .line 195
    if-nez v15, :cond_14

    .line 196
    .line 197
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v15

    .line 201
    if-eqz v15, :cond_13

    .line 202
    .line 203
    const/high16 v15, 0x100000

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_13
    const/high16 v15, 0x80000

    .line 207
    .line 208
    :goto_c
    or-int/2addr v2, v15

    .line 209
    :cond_14
    :goto_d
    const v15, 0x2db6db

    .line 210
    .line 211
    .line 212
    and-int/2addr v15, v2

    .line 213
    const v4, 0x92492

    .line 214
    .line 215
    .line 216
    if-ne v15, v4, :cond_16

    .line 217
    .line 218
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    if-nez v4, :cond_15

    .line 223
    .line 224
    goto :goto_e

    .line 225
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 226
    .line 227
    .line 228
    move-object/from16 v2, p1

    .line 229
    .line 230
    move-wide v3, v5

    .line 231
    move-wide v5, v7

    .line 232
    move-object v7, v12

    .line 233
    move-object v8, v14

    .line 234
    goto/16 :goto_16

    .line 235
    .line 236
    :cond_16
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 237
    .line 238
    .line 239
    and-int/lit8 v4, v10, 0x1

    .line 240
    .line 241
    const/4 v15, 0x1

    .line 242
    if-eqz v4, :cond_1a

    .line 243
    .line 244
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_17

    .line 249
    .line 250
    goto :goto_10

    .line 251
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 252
    .line 253
    .line 254
    and-int/lit8 v3, p11, 0x4

    .line 255
    .line 256
    if-eqz v3, :cond_18

    .line 257
    .line 258
    and-int/lit16 v2, v2, -0x381

    .line 259
    .line 260
    :cond_18
    and-int/lit8 v3, p11, 0x8

    .line 261
    .line 262
    if-eqz v3, :cond_19

    .line 263
    .line 264
    and-int/lit16 v2, v2, -0x1c01

    .line 265
    .line 266
    :cond_19
    move-object/from16 v3, p1

    .line 267
    .line 268
    move v11, v2

    .line 269
    move-wide v4, v5

    .line 270
    move-wide v6, v7

    .line 271
    move-object v8, v12

    .line 272
    :goto_f
    move-object v2, v14

    .line 273
    goto :goto_15

    .line 274
    :cond_1a
    :goto_10
    if-eqz v3, :cond_1b

    .line 275
    .line 276
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 277
    .line 278
    goto :goto_11

    .line 279
    :cond_1b
    move-object/from16 v3, p1

    .line 280
    .line 281
    :goto_11
    and-int/lit8 v4, p11, 0x4

    .line 282
    .line 283
    if-eqz v4, :cond_1c

    .line 284
    .line 285
    sget-object v4, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 286
    .line 287
    const/4 v5, 0x6

    .line 288
    invoke-virtual {v4, v0, v5}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-static {v4}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v4

    .line 296
    and-int/lit16 v2, v2, -0x381

    .line 297
    .line 298
    goto :goto_12

    .line 299
    :cond_1c
    move-wide v4, v5

    .line 300
    :goto_12
    and-int/lit8 v6, p11, 0x8

    .line 301
    .line 302
    if-eqz v6, :cond_1d

    .line 303
    .line 304
    shr-int/lit8 v6, v2, 0x6

    .line 305
    .line 306
    and-int/lit8 v6, v6, 0xe

    .line 307
    .line 308
    invoke-static {v4, v5, v0, v6}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 309
    .line 310
    .line 311
    move-result-wide v6

    .line 312
    and-int/lit16 v2, v2, -0x1c01

    .line 313
    .line 314
    goto :goto_13

    .line 315
    :cond_1d
    move-wide v6, v7

    .line 316
    :goto_13
    if-eqz v11, :cond_1e

    .line 317
    .line 318
    new-instance v8, Landroidx/compose/material/TabRowKt$TabRow$1;

    .line 319
    .line 320
    invoke-direct {v8, v1}, Landroidx/compose/material/TabRowKt$TabRow$1;-><init>(I)V

    .line 321
    .line 322
    .line 323
    const v11, -0x21020db4

    .line 324
    .line 325
    .line 326
    invoke-static {v0, v11, v15, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    goto :goto_14

    .line 331
    :cond_1e
    move-object v8, v12

    .line 332
    :goto_14
    if-eqz v13, :cond_1f

    .line 333
    .line 334
    sget-object v11, Landroidx/compose/material/ComposableSingletons$TabRowKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$TabRowKt;

    .line 335
    .line 336
    invoke-virtual {v11}, Landroidx/compose/material/ComposableSingletons$TabRowKt;->getLambda-1$material_release()Lkotlin/jvm/functions/Function2;

    .line 337
    .line 338
    .line 339
    move-result-object v11

    .line 340
    move-object/from16 v23, v11

    .line 341
    .line 342
    move v11, v2

    .line 343
    move-object/from16 v2, v23

    .line 344
    .line 345
    goto :goto_15

    .line 346
    :cond_1f
    move v11, v2

    .line 347
    goto :goto_f

    .line 348
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 349
    .line 350
    .line 351
    invoke-static {v3}, Landroidx/compose/foundation/selection/SelectableGroupKt;->selectableGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 352
    .line 353
    .line 354
    move-result-object v12

    .line 355
    new-instance v13, Landroidx/compose/material/TabRowKt$TabRow$2;

    .line 356
    .line 357
    invoke-direct {v13, v9, v2, v8, v11}, Landroidx/compose/material/TabRowKt$TabRow$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;I)V

    .line 358
    .line 359
    .line 360
    const v14, -0x74eddfbd

    .line 361
    .line 362
    .line 363
    invoke-static {v0, v14, v15, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 364
    .line 365
    .line 366
    move-result-object v19

    .line 367
    and-int/lit16 v13, v11, 0x380

    .line 368
    .line 369
    or-int v13, v13, v16

    .line 370
    .line 371
    and-int/lit16 v11, v11, 0x1c00

    .line 372
    .line 373
    or-int v21, v13, v11

    .line 374
    .line 375
    const/16 v22, 0x32

    .line 376
    .line 377
    const/4 v13, 0x0

    .line 378
    const/16 v17, 0x0

    .line 379
    .line 380
    const/16 v18, 0x0

    .line 381
    .line 382
    move-object v11, v12

    .line 383
    move-object v12, v13

    .line 384
    move-wide v13, v4

    .line 385
    move-wide v15, v6

    .line 386
    move-object/from16 v20, v0

    .line 387
    .line 388
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 389
    .line 390
    .line 391
    move-object/from16 v23, v8

    .line 392
    .line 393
    move-object v8, v2

    .line 394
    move-object v2, v3

    .line 395
    move-wide v3, v4

    .line 396
    move-wide v5, v6

    .line 397
    move-object/from16 v7, v23

    .line 398
    .line 399
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    if-nez v12, :cond_20

    .line 404
    .line 405
    goto :goto_17

    .line 406
    :cond_20
    new-instance v13, Landroidx/compose/material/TabRowKt$TabRow$3;

    .line 407
    .line 408
    move-object v0, v13

    .line 409
    move/from16 v1, p0

    .line 410
    .line 411
    move-object/from16 v9, p8

    .line 412
    .line 413
    move/from16 v10, p10

    .line 414
    .line 415
    move/from16 v11, p11

    .line 416
    .line 417
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/TabRowKt$TabRow$3;-><init>(ILandroidx/compose/ui/Modifier;JJLat/n;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 418
    .line 419
    .line 420
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 421
    .line 422
    .line 423
    :goto_17
    return-void
.end method

.method public static final synthetic access$getScrollableTabRowMinimumTabWidth$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowMinimumTabWidth:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getScrollableTabRowScrollSpec$p()Landroidx/compose/animation/core/AnimationSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TabRowKt;->ScrollableTabRowScrollSpec:Landroidx/compose/animation/core/AnimationSpec;

    .line 2
    .line 3
    return-object v0
.end method
