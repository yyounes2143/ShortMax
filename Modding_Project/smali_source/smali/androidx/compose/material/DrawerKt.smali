.class public final Landroidx/compose/material/DrawerKt;
.super Ljava/lang/Object;
.source "Drawer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AnimationSpec:Landroidx/compose/animation/core/TweenSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TweenSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BottomDrawerOpenFraction:F = 0.5f

.field private static final DrawerVelocityThreshold:F

.field private static final EndDrawerPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

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
    sput v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    .line 9
    .line 10
    const/16 v0, 0x190

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
    sput v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    .line 18
    .line 19
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 20
    .line 21
    const/4 v5, 0x6

    .line 22
    const/4 v6, 0x0

    .line 23
    const/16 v2, 0x100

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 32
    .line 33
    return-void
.end method

.method public static final BottomDrawer-Gs3lGvM(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/BottomDrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/BottomDrawerState;",
            "Z",
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
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p12

    .line 4
    .line 5
    move/from16 v13, p14

    .line 6
    .line 7
    move/from16 v12, p15

    .line 8
    .line 9
    const-string v0, "drawerContent"

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
    const v0, 0x254aa686

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p13

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
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit8 v2, v12, 0x2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v3, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v3, v13, 0x70

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/16 v4, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v4, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v0, v4

    .line 78
    :goto_3
    and-int/lit16 v4, v13, 0x380

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    and-int/lit8 v4, v12, 0x4

    .line 83
    .line 84
    if-nez v4, :cond_6

    .line 85
    .line 86
    move-object/from16 v4, p2

    .line 87
    .line 88
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    const/16 v5, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object/from16 v4, p2

    .line 98
    .line 99
    :cond_7
    const/16 v5, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v0, v5

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move-object/from16 v4, p2

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v5, v12, 0x8

    .line 106
    .line 107
    if-eqz v5, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    .line 111
    :cond_9
    move/from16 v6, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    .line 115
    .line 116
    if-nez v6, :cond_9

    .line 117
    .line 118
    move/from16 v6, p3

    .line 119
    .line 120
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/16 v7, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v7, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v0, v7

    .line 132
    :goto_7
    const v7, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v7, v13

    .line 136
    if-nez v7, :cond_e

    .line 137
    .line 138
    and-int/lit8 v7, v12, 0x10

    .line 139
    .line 140
    if-nez v7, :cond_c

    .line 141
    .line 142
    move-object/from16 v7, p4

    .line 143
    .line 144
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_d

    .line 149
    .line 150
    const/16 v8, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_c
    move-object/from16 v7, p4

    .line 154
    .line 155
    :cond_d
    const/16 v8, 0x2000

    .line 156
    .line 157
    :goto_8
    or-int/2addr v0, v8

    .line 158
    goto :goto_9

    .line 159
    :cond_e
    move-object/from16 v7, p4

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v8, v12, 0x20

    .line 162
    .line 163
    if-eqz v8, :cond_10

    .line 164
    .line 165
    const/high16 v9, 0x30000

    .line 166
    .line 167
    or-int/2addr v0, v9

    .line 168
    :cond_f
    move/from16 v9, p5

    .line 169
    .line 170
    goto :goto_b

    .line 171
    :cond_10
    const/high16 v9, 0x70000

    .line 172
    .line 173
    and-int/2addr v9, v13

    .line 174
    if-nez v9, :cond_f

    .line 175
    .line 176
    move/from16 v9, p5

    .line 177
    .line 178
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_11

    .line 183
    .line 184
    const/high16 v11, 0x20000

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_11
    const/high16 v11, 0x10000

    .line 188
    .line 189
    :goto_a
    or-int/2addr v0, v11

    .line 190
    :goto_b
    const/high16 v11, 0x380000

    .line 191
    .line 192
    and-int/2addr v11, v13

    .line 193
    if-nez v11, :cond_14

    .line 194
    .line 195
    and-int/lit8 v11, v12, 0x40

    .line 196
    .line 197
    if-nez v11, :cond_12

    .line 198
    .line 199
    move v11, v2

    .line 200
    move-wide/from16 v1, p6

    .line 201
    .line 202
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    if-eqz v16, :cond_13

    .line 207
    .line 208
    const/high16 v16, 0x100000

    .line 209
    .line 210
    goto :goto_c

    .line 211
    :cond_12
    move v11, v2

    .line 212
    move-wide/from16 v1, p6

    .line 213
    .line 214
    :cond_13
    const/high16 v16, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v0, v0, v16

    .line 217
    .line 218
    goto :goto_d

    .line 219
    :cond_14
    move v11, v2

    .line 220
    move-wide/from16 v1, p6

    .line 221
    .line 222
    :goto_d
    const/high16 v16, 0x1c00000

    .line 223
    .line 224
    and-int v16, v13, v16

    .line 225
    .line 226
    if-nez v16, :cond_17

    .line 227
    .line 228
    and-int/lit16 v1, v12, 0x80

    .line 229
    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    move-wide/from16 v1, p8

    .line 233
    .line 234
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 235
    .line 236
    .line 237
    move-result v16

    .line 238
    if-eqz v16, :cond_16

    .line 239
    .line 240
    const/high16 v16, 0x800000

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_15
    move-wide/from16 v1, p8

    .line 244
    .line 245
    :cond_16
    const/high16 v16, 0x400000

    .line 246
    .line 247
    :goto_e
    or-int v0, v0, v16

    .line 248
    .line 249
    goto :goto_f

    .line 250
    :cond_17
    move-wide/from16 v1, p8

    .line 251
    .line 252
    :goto_f
    const/high16 v16, 0xe000000

    .line 253
    .line 254
    and-int v16, v13, v16

    .line 255
    .line 256
    if-nez v16, :cond_1a

    .line 257
    .line 258
    and-int/lit16 v1, v12, 0x100

    .line 259
    .line 260
    if-nez v1, :cond_18

    .line 261
    .line 262
    move-wide/from16 v1, p10

    .line 263
    .line 264
    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 265
    .line 266
    .line 267
    move-result v16

    .line 268
    if-eqz v16, :cond_19

    .line 269
    .line 270
    const/high16 v16, 0x4000000

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_18
    move-wide/from16 v1, p10

    .line 274
    .line 275
    :cond_19
    const/high16 v16, 0x2000000

    .line 276
    .line 277
    :goto_10
    or-int v0, v0, v16

    .line 278
    .line 279
    goto :goto_11

    .line 280
    :cond_1a
    move-wide/from16 v1, p10

    .line 281
    .line 282
    :goto_11
    and-int/lit16 v1, v12, 0x200

    .line 283
    .line 284
    if-eqz v1, :cond_1b

    .line 285
    .line 286
    const/high16 v1, 0x30000000

    .line 287
    .line 288
    :goto_12
    or-int/2addr v0, v1

    .line 289
    goto :goto_13

    .line 290
    :cond_1b
    const/high16 v1, 0x70000000

    .line 291
    .line 292
    and-int/2addr v1, v13

    .line 293
    if-nez v1, :cond_1d

    .line 294
    .line 295
    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_1c

    .line 300
    .line 301
    const/high16 v1, 0x20000000

    .line 302
    .line 303
    goto :goto_12

    .line 304
    :cond_1c
    const/high16 v1, 0x10000000

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_1d
    :goto_13
    const v1, 0x5b6db6db

    .line 308
    .line 309
    .line 310
    and-int/2addr v1, v0

    .line 311
    const v2, 0x12492492

    .line 312
    .line 313
    .line 314
    if-ne v1, v2, :cond_1f

    .line 315
    .line 316
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_1e

    .line 321
    .line 322
    goto :goto_14

    .line 323
    :cond_1e
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 324
    .line 325
    .line 326
    move-wide/from16 v11, p10

    .line 327
    .line 328
    move-object v2, v3

    .line 329
    move-object v3, v4

    .line 330
    move v4, v6

    .line 331
    move-object v5, v7

    .line 332
    move v6, v9

    .line 333
    move-object v1, v10

    .line 334
    move-wide/from16 v7, p6

    .line 335
    .line 336
    move-wide/from16 v9, p8

    .line 337
    .line 338
    goto/16 :goto_1e

    .line 339
    .line 340
    :cond_1f
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 341
    .line 342
    .line 343
    and-int/lit8 v1, v13, 0x1

    .line 344
    .line 345
    const v16, -0xe000001

    .line 346
    .line 347
    .line 348
    const v17, -0x1c00001

    .line 349
    .line 350
    .line 351
    const v18, -0x380001

    .line 352
    .line 353
    .line 354
    const v19, -0xe001

    .line 355
    .line 356
    .line 357
    if-eqz v1, :cond_26

    .line 358
    .line 359
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_20

    .line 364
    .line 365
    goto :goto_16

    .line 366
    :cond_20
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 367
    .line 368
    .line 369
    and-int/lit8 v1, v12, 0x4

    .line 370
    .line 371
    if-eqz v1, :cond_21

    .line 372
    .line 373
    and-int/lit16 v0, v0, -0x381

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v1, v12, 0x10

    .line 376
    .line 377
    if-eqz v1, :cond_22

    .line 378
    .line 379
    and-int v0, v0, v19

    .line 380
    .line 381
    :cond_22
    and-int/lit8 v1, v12, 0x40

    .line 382
    .line 383
    if-eqz v1, :cond_23

    .line 384
    .line 385
    and-int v0, v0, v18

    .line 386
    .line 387
    :cond_23
    and-int/lit16 v1, v12, 0x80

    .line 388
    .line 389
    if-eqz v1, :cond_24

    .line 390
    .line 391
    and-int v0, v0, v17

    .line 392
    .line 393
    :cond_24
    and-int/lit16 v1, v12, 0x100

    .line 394
    .line 395
    if-eqz v1, :cond_25

    .line 396
    .line 397
    and-int v0, v0, v16

    .line 398
    .line 399
    :cond_25
    move-wide/from16 v21, p6

    .line 400
    .line 401
    move-wide/from16 v23, p8

    .line 402
    .line 403
    move-wide/from16 v25, p10

    .line 404
    .line 405
    move-object v11, v3

    .line 406
    move-object/from16 v16, v4

    .line 407
    .line 408
    move/from16 v17, v6

    .line 409
    .line 410
    move-object/from16 v18, v7

    .line 411
    .line 412
    move/from16 v19, v9

    .line 413
    .line 414
    :goto_15
    move v4, v0

    .line 415
    goto/16 :goto_1d

    .line 416
    .line 417
    :cond_26
    :goto_16
    if-eqz v11, :cond_27

    .line 418
    .line 419
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 420
    .line 421
    goto :goto_17

    .line 422
    :cond_27
    move-object v1, v3

    .line 423
    :goto_17
    and-int/lit8 v3, v12, 0x4

    .line 424
    .line 425
    const/4 v11, 0x6

    .line 426
    if-eqz v3, :cond_28

    .line 427
    .line 428
    sget-object v3, Landroidx/compose/material/BottomDrawerValue;->Closed:Landroidx/compose/material/BottomDrawerValue;

    .line 429
    .line 430
    const/4 v2, 0x0

    .line 431
    const/4 v4, 0x2

    .line 432
    invoke-static {v3, v2, v10, v11, v4}, Landroidx/compose/material/DrawerKt;->rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    and-int/lit16 v0, v0, -0x381

    .line 437
    .line 438
    goto :goto_18

    .line 439
    :cond_28
    move-object v3, v4

    .line 440
    :goto_18
    if-eqz v5, :cond_29

    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    :cond_29
    and-int/lit8 v2, v12, 0x10

    .line 444
    .line 445
    if-eqz v2, :cond_2a

    .line 446
    .line 447
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 448
    .line 449
    invoke-virtual {v2, v10, v11}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    and-int v0, v0, v19

    .line 458
    .line 459
    goto :goto_19

    .line 460
    :cond_2a
    move-object v2, v7

    .line 461
    :goto_19
    if-eqz v8, :cond_2b

    .line 462
    .line 463
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 464
    .line 465
    invoke-virtual {v4}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    goto :goto_1a

    .line 470
    :cond_2b
    move v4, v9

    .line 471
    :goto_1a
    and-int/lit8 v5, v12, 0x40

    .line 472
    .line 473
    if-eqz v5, :cond_2c

    .line 474
    .line 475
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 476
    .line 477
    invoke-virtual {v5, v10, v11}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 482
    .line 483
    .line 484
    move-result-wide v7

    .line 485
    and-int v0, v0, v18

    .line 486
    .line 487
    goto :goto_1b

    .line 488
    :cond_2c
    move-wide/from16 v7, p6

    .line 489
    .line 490
    :goto_1b
    and-int/lit16 v5, v12, 0x80

    .line 491
    .line 492
    if-eqz v5, :cond_2d

    .line 493
    .line 494
    shr-int/lit8 v5, v0, 0x12

    .line 495
    .line 496
    and-int/lit8 v5, v5, 0xe

    .line 497
    .line 498
    invoke-static {v7, v8, v10, v5}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v18

    .line 502
    and-int v0, v0, v17

    .line 503
    .line 504
    goto :goto_1c

    .line 505
    :cond_2d
    move-wide/from16 v18, p8

    .line 506
    .line 507
    :goto_1c
    and-int/lit16 v5, v12, 0x100

    .line 508
    .line 509
    if-eqz v5, :cond_2e

    .line 510
    .line 511
    sget-object v5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 512
    .line 513
    invoke-virtual {v5, v10, v11}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v21

    .line 517
    and-int v0, v0, v16

    .line 518
    .line 519
    move-object v11, v1

    .line 520
    move-object/from16 v16, v3

    .line 521
    .line 522
    move/from16 v17, v6

    .line 523
    .line 524
    move-wide/from16 v23, v18

    .line 525
    .line 526
    move-wide/from16 v25, v21

    .line 527
    .line 528
    move-object/from16 v18, v2

    .line 529
    .line 530
    move/from16 v19, v4

    .line 531
    .line 532
    move-wide/from16 v21, v7

    .line 533
    .line 534
    goto :goto_15

    .line 535
    :cond_2e
    move-wide/from16 v25, p10

    .line 536
    .line 537
    move-object v11, v1

    .line 538
    move-object/from16 v16, v3

    .line 539
    .line 540
    move/from16 v17, v6

    .line 541
    .line 542
    move-wide/from16 v21, v7

    .line 543
    .line 544
    move-wide/from16 v23, v18

    .line 545
    .line 546
    move-object/from16 v18, v2

    .line 547
    .line 548
    move/from16 v19, v4

    .line 549
    .line 550
    goto/16 :goto_15

    .line 551
    .line 552
    :goto_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 553
    .line 554
    .line 555
    const v0, 0x2e20b340

    .line 556
    .line 557
    .line 558
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 559
    .line 560
    .line 561
    const v0, -0x1d58f75c

    .line 562
    .line 563
    .line 564
    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 565
    .line 566
    .line 567
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 572
    .line 573
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    if-ne v0, v1, :cond_2f

    .line 578
    .line 579
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 580
    .line 581
    invoke-static {v0, v10}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 586
    .line 587
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 588
    .line 589
    .line 590
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 591
    .line 592
    .line 593
    move-object v0, v1

    .line 594
    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 595
    .line 596
    .line 597
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 598
    .line 599
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    .line 600
    .line 601
    .line 602
    move-result-object v27

    .line 603
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 604
    .line 605
    .line 606
    const/4 v0, 0x0

    .line 607
    const/4 v1, 0x0

    .line 608
    const/4 v2, 0x1

    .line 609
    invoke-static {v11, v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 610
    .line 611
    .line 612
    move-result-object v20

    .line 613
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawer$1;

    .line 614
    .line 615
    move-object v0, v8

    .line 616
    move/from16 v1, v17

    .line 617
    .line 618
    move v9, v2

    .line 619
    move-object/from16 v2, v16

    .line 620
    .line 621
    move-object/from16 v3, p12

    .line 622
    .line 623
    move-wide/from16 v5, v25

    .line 624
    .line 625
    move-object/from16 v7, v18

    .line 626
    .line 627
    move-object/from16 v28, v8

    .line 628
    .line 629
    move v15, v9

    .line 630
    move-wide/from16 v8, v21

    .line 631
    .line 632
    move-object/from16 v29, v10

    .line 633
    .line 634
    move-object/from16 v30, v11

    .line 635
    .line 636
    move-wide/from16 v10, v23

    .line 637
    .line 638
    move/from16 v12, v19

    .line 639
    .line 640
    move-object/from16 v13, v27

    .line 641
    .line 642
    move-object/from16 v14, p0

    .line 643
    .line 644
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/DrawerKt$BottomDrawer$1;-><init>(ZLandroidx/compose/material/BottomDrawerState;Lkotlin/jvm/functions/Function2;IJLandroidx/compose/ui/graphics/Shape;JJFLgt/g0;Lat/n;)V

    .line 645
    .line 646
    .line 647
    const v0, 0x48b94970    # 379467.5f

    .line 648
    .line 649
    .line 650
    move-object/from16 v2, v28

    .line 651
    .line 652
    move-object/from16 v1, v29

    .line 653
    .line 654
    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    const/16 v2, 0xc00

    .line 659
    .line 660
    const/4 v3, 0x6

    .line 661
    const/4 v4, 0x0

    .line 662
    const/4 v5, 0x0

    .line 663
    move-object/from16 p1, v20

    .line 664
    .line 665
    move-object/from16 p2, v4

    .line 666
    .line 667
    move/from16 p3, v5

    .line 668
    .line 669
    move-object/from16 p4, v0

    .line 670
    .line 671
    move-object/from16 p5, v1

    .line 672
    .line 673
    move/from16 p6, v2

    .line 674
    .line 675
    move/from16 p7, v3

    .line 676
    .line 677
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 678
    .line 679
    .line 680
    move-object/from16 v3, v16

    .line 681
    .line 682
    move/from16 v4, v17

    .line 683
    .line 684
    move-object/from16 v5, v18

    .line 685
    .line 686
    move/from16 v6, v19

    .line 687
    .line 688
    move-wide/from16 v7, v21

    .line 689
    .line 690
    move-wide/from16 v9, v23

    .line 691
    .line 692
    move-wide/from16 v11, v25

    .line 693
    .line 694
    move-object/from16 v2, v30

    .line 695
    .line 696
    :goto_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 697
    .line 698
    .line 699
    move-result-object v15

    .line 700
    if-nez v15, :cond_30

    .line 701
    .line 702
    goto :goto_1f

    .line 703
    :cond_30
    new-instance v14, Landroidx/compose/material/DrawerKt$BottomDrawer$2;

    .line 704
    .line 705
    move-object v0, v14

    .line 706
    move-object/from16 v1, p0

    .line 707
    .line 708
    move-object/from16 v13, p12

    .line 709
    .line 710
    move-object/from16 v31, v14

    .line 711
    .line 712
    move/from16 v14, p14

    .line 713
    .line 714
    move-object/from16 v32, v15

    .line 715
    .line 716
    move/from16 v15, p15

    .line 717
    .line 718
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$BottomDrawer$2;-><init>(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/BottomDrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    .line 719
    .line 720
    .line 721
    move-object/from16 v1, v31

    .line 722
    .line 723
    move-object/from16 v0, v32

    .line 724
    .line 725
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 726
    .line 727
    .line 728
    :goto_1f
    return-void
.end method

.method private static final BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
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
    const v0, -0x1e94c902

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
    invoke-virtual {v2}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

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
    const v3, -0x4d6c6521

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
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;

    .line 163
    .line 164
    invoke-direct {v8, p2, v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

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
    new-instance v8, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;

    .line 206
    .line 207
    invoke-direct {v8, v2, p2}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$dismissModifier$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

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
    new-instance v3, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;

    .line 269
    .line 270
    invoke-direct {v3, p0, p1, v1}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$1$1;-><init>(JLandroidx/compose/runtime/State;)V

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
    new-instance v6, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;

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
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DrawerKt$BottomDrawerScrim$2;-><init>(JLkotlin/jvm/functions/Function0;ZI)V

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

.method private static final BottomDrawerScrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F
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

.method public static final ModalDrawer-Gs3lGvM(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/material/DrawerState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/DrawerState;",
            "Z",
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
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p12

    .line 4
    .line 5
    move/from16 v13, p14

    .line 6
    .line 7
    move/from16 v12, p15

    .line 8
    .line 9
    const-string v0, "drawerContent"

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
    const v0, 0x4dd50861    # 4.46762016E8f

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p13

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
    and-int/lit8 v2, v12, 0x2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    or-int/lit8 v0, v0, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v3, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v3, v13, 0x70

    .line 61
    .line 62
    if-nez v3, :cond_3

    .line 63
    .line 64
    move-object/from16 v3, p1

    .line 65
    .line 66
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_5

    .line 71
    .line 72
    const/16 v4, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v4, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v0, v4

    .line 78
    :goto_3
    and-int/lit16 v4, v13, 0x380

    .line 79
    .line 80
    if-nez v4, :cond_8

    .line 81
    .line 82
    and-int/lit8 v4, v12, 0x4

    .line 83
    .line 84
    if-nez v4, :cond_6

    .line 85
    .line 86
    move-object/from16 v4, p2

    .line 87
    .line 88
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_7

    .line 93
    .line 94
    const/16 v5, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    move-object/from16 v4, p2

    .line 98
    .line 99
    :cond_7
    const/16 v5, 0x80

    .line 100
    .line 101
    :goto_4
    or-int/2addr v0, v5

    .line 102
    goto :goto_5

    .line 103
    :cond_8
    move-object/from16 v4, p2

    .line 104
    .line 105
    :goto_5
    and-int/lit8 v5, v12, 0x8

    .line 106
    .line 107
    if-eqz v5, :cond_a

    .line 108
    .line 109
    or-int/lit16 v0, v0, 0xc00

    .line 110
    .line 111
    :cond_9
    move/from16 v6, p3

    .line 112
    .line 113
    goto :goto_7

    .line 114
    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    .line 115
    .line 116
    if-nez v6, :cond_9

    .line 117
    .line 118
    move/from16 v6, p3

    .line 119
    .line 120
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    if-eqz v7, :cond_b

    .line 125
    .line 126
    const/16 v7, 0x800

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_b
    const/16 v7, 0x400

    .line 130
    .line 131
    :goto_6
    or-int/2addr v0, v7

    .line 132
    :goto_7
    const v7, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v7, v13

    .line 136
    if-nez v7, :cond_e

    .line 137
    .line 138
    and-int/lit8 v7, v12, 0x10

    .line 139
    .line 140
    if-nez v7, :cond_c

    .line 141
    .line 142
    move-object/from16 v7, p4

    .line 143
    .line 144
    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_d

    .line 149
    .line 150
    const/16 v8, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_c
    move-object/from16 v7, p4

    .line 154
    .line 155
    :cond_d
    const/16 v8, 0x2000

    .line 156
    .line 157
    :goto_8
    or-int/2addr v0, v8

    .line 158
    goto :goto_9

    .line 159
    :cond_e
    move-object/from16 v7, p4

    .line 160
    .line 161
    :goto_9
    and-int/lit8 v8, v12, 0x20

    .line 162
    .line 163
    if-eqz v8, :cond_10

    .line 164
    .line 165
    const/high16 v9, 0x30000

    .line 166
    .line 167
    or-int/2addr v0, v9

    .line 168
    :cond_f
    move/from16 v9, p5

    .line 169
    .line 170
    goto :goto_b

    .line 171
    :cond_10
    const/high16 v9, 0x70000

    .line 172
    .line 173
    and-int/2addr v9, v13

    .line 174
    if-nez v9, :cond_f

    .line 175
    .line 176
    move/from16 v9, p5

    .line 177
    .line 178
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    if-eqz v10, :cond_11

    .line 183
    .line 184
    const/high16 v10, 0x20000

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_11
    const/high16 v10, 0x10000

    .line 188
    .line 189
    :goto_a
    or-int/2addr v0, v10

    .line 190
    :goto_b
    const/high16 v10, 0x380000

    .line 191
    .line 192
    and-int/2addr v10, v13

    .line 193
    if-nez v10, :cond_14

    .line 194
    .line 195
    and-int/lit8 v10, v12, 0x40

    .line 196
    .line 197
    if-nez v10, :cond_12

    .line 198
    .line 199
    move v10, v2

    .line 200
    move-wide/from16 v1, p6

    .line 201
    .line 202
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    if-eqz v16, :cond_13

    .line 207
    .line 208
    const/high16 v16, 0x100000

    .line 209
    .line 210
    goto :goto_c

    .line 211
    :cond_12
    move v10, v2

    .line 212
    move-wide/from16 v1, p6

    .line 213
    .line 214
    :cond_13
    const/high16 v16, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v0, v0, v16

    .line 217
    .line 218
    goto :goto_d

    .line 219
    :cond_14
    move v10, v2

    .line 220
    move-wide/from16 v1, p6

    .line 221
    .line 222
    :goto_d
    const/high16 v16, 0x1c00000

    .line 223
    .line 224
    and-int v16, v13, v16

    .line 225
    .line 226
    if-nez v16, :cond_17

    .line 227
    .line 228
    and-int/lit16 v1, v12, 0x80

    .line 229
    .line 230
    if-nez v1, :cond_15

    .line 231
    .line 232
    move-wide/from16 v1, p8

    .line 233
    .line 234
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 235
    .line 236
    .line 237
    move-result v16

    .line 238
    if-eqz v16, :cond_16

    .line 239
    .line 240
    const/high16 v16, 0x800000

    .line 241
    .line 242
    goto :goto_e

    .line 243
    :cond_15
    move-wide/from16 v1, p8

    .line 244
    .line 245
    :cond_16
    const/high16 v16, 0x400000

    .line 246
    .line 247
    :goto_e
    or-int v0, v0, v16

    .line 248
    .line 249
    goto :goto_f

    .line 250
    :cond_17
    move-wide/from16 v1, p8

    .line 251
    .line 252
    :goto_f
    const/high16 v16, 0xe000000

    .line 253
    .line 254
    and-int v16, v13, v16

    .line 255
    .line 256
    if-nez v16, :cond_1a

    .line 257
    .line 258
    and-int/lit16 v1, v12, 0x100

    .line 259
    .line 260
    if-nez v1, :cond_18

    .line 261
    .line 262
    move-wide/from16 v1, p10

    .line 263
    .line 264
    invoke-interface {v11, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 265
    .line 266
    .line 267
    move-result v16

    .line 268
    if-eqz v16, :cond_19

    .line 269
    .line 270
    const/high16 v16, 0x4000000

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_18
    move-wide/from16 v1, p10

    .line 274
    .line 275
    :cond_19
    const/high16 v16, 0x2000000

    .line 276
    .line 277
    :goto_10
    or-int v0, v0, v16

    .line 278
    .line 279
    goto :goto_11

    .line 280
    :cond_1a
    move-wide/from16 v1, p10

    .line 281
    .line 282
    :goto_11
    and-int/lit16 v1, v12, 0x200

    .line 283
    .line 284
    if-eqz v1, :cond_1b

    .line 285
    .line 286
    const/high16 v1, 0x30000000

    .line 287
    .line 288
    :goto_12
    or-int/2addr v0, v1

    .line 289
    goto :goto_13

    .line 290
    :cond_1b
    const/high16 v1, 0x70000000

    .line 291
    .line 292
    and-int/2addr v1, v13

    .line 293
    if-nez v1, :cond_1d

    .line 294
    .line 295
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_1c

    .line 300
    .line 301
    const/high16 v1, 0x20000000

    .line 302
    .line 303
    goto :goto_12

    .line 304
    :cond_1c
    const/high16 v1, 0x10000000

    .line 305
    .line 306
    goto :goto_12

    .line 307
    :cond_1d
    :goto_13
    const v1, 0x5b6db6db

    .line 308
    .line 309
    .line 310
    and-int/2addr v1, v0

    .line 311
    const v2, 0x12492492

    .line 312
    .line 313
    .line 314
    if-ne v1, v2, :cond_1f

    .line 315
    .line 316
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-nez v1, :cond_1e

    .line 321
    .line 322
    goto :goto_14

    .line 323
    :cond_1e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 324
    .line 325
    .line 326
    move-object v2, v3

    .line 327
    move-object v3, v4

    .line 328
    move v4, v6

    .line 329
    move-object v5, v7

    .line 330
    move v6, v9

    .line 331
    move-object v1, v11

    .line 332
    move-wide/from16 v7, p6

    .line 333
    .line 334
    move-wide/from16 v9, p8

    .line 335
    .line 336
    move-wide/from16 v11, p10

    .line 337
    .line 338
    goto/16 :goto_1e

    .line 339
    .line 340
    :cond_1f
    :goto_14
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 341
    .line 342
    .line 343
    and-int/lit8 v1, v13, 0x1

    .line 344
    .line 345
    const v16, -0xe000001

    .line 346
    .line 347
    .line 348
    const v17, -0x1c00001

    .line 349
    .line 350
    .line 351
    const v18, -0x380001

    .line 352
    .line 353
    .line 354
    const v19, -0xe001

    .line 355
    .line 356
    .line 357
    if-eqz v1, :cond_26

    .line 358
    .line 359
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 360
    .line 361
    .line 362
    move-result v1

    .line 363
    if-eqz v1, :cond_20

    .line 364
    .line 365
    goto :goto_15

    .line 366
    :cond_20
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 367
    .line 368
    .line 369
    and-int/lit8 v1, v12, 0x4

    .line 370
    .line 371
    if-eqz v1, :cond_21

    .line 372
    .line 373
    and-int/lit16 v0, v0, -0x381

    .line 374
    .line 375
    :cond_21
    and-int/lit8 v1, v12, 0x10

    .line 376
    .line 377
    if-eqz v1, :cond_22

    .line 378
    .line 379
    and-int v0, v0, v19

    .line 380
    .line 381
    :cond_22
    and-int/lit8 v1, v12, 0x40

    .line 382
    .line 383
    if-eqz v1, :cond_23

    .line 384
    .line 385
    and-int v0, v0, v18

    .line 386
    .line 387
    :cond_23
    and-int/lit16 v1, v12, 0x80

    .line 388
    .line 389
    if-eqz v1, :cond_24

    .line 390
    .line 391
    and-int v0, v0, v17

    .line 392
    .line 393
    :cond_24
    and-int/lit16 v1, v12, 0x100

    .line 394
    .line 395
    if-eqz v1, :cond_25

    .line 396
    .line 397
    and-int v0, v0, v16

    .line 398
    .line 399
    :cond_25
    move-wide/from16 v21, p6

    .line 400
    .line 401
    move-wide/from16 v23, p8

    .line 402
    .line 403
    move-wide/from16 v25, p10

    .line 404
    .line 405
    move-object/from16 v16, v4

    .line 406
    .line 407
    move/from16 v17, v6

    .line 408
    .line 409
    move-object/from16 v18, v7

    .line 410
    .line 411
    move/from16 v19, v9

    .line 412
    .line 413
    move-object v9, v3

    .line 414
    move v3, v0

    .line 415
    goto/16 :goto_1d

    .line 416
    .line 417
    :cond_26
    :goto_15
    if-eqz v10, :cond_27

    .line 418
    .line 419
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 420
    .line 421
    goto :goto_16

    .line 422
    :cond_27
    move-object v1, v3

    .line 423
    :goto_16
    and-int/lit8 v3, v12, 0x4

    .line 424
    .line 425
    const/4 v10, 0x6

    .line 426
    if-eqz v3, :cond_28

    .line 427
    .line 428
    sget-object v3, Landroidx/compose/material/DrawerValue;->Closed:Landroidx/compose/material/DrawerValue;

    .line 429
    .line 430
    const/4 v2, 0x0

    .line 431
    const/4 v4, 0x2

    .line 432
    invoke-static {v3, v2, v11, v10, v4}, Landroidx/compose/material/DrawerKt;->rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    and-int/lit16 v0, v0, -0x381

    .line 437
    .line 438
    goto :goto_17

    .line 439
    :cond_28
    move-object v3, v4

    .line 440
    :goto_17
    if-eqz v5, :cond_29

    .line 441
    .line 442
    const/4 v6, 0x1

    .line 443
    :cond_29
    and-int/lit8 v2, v12, 0x10

    .line 444
    .line 445
    if-eqz v2, :cond_2a

    .line 446
    .line 447
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 448
    .line 449
    invoke-virtual {v2, v11, v10}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    and-int v0, v0, v19

    .line 458
    .line 459
    goto :goto_18

    .line 460
    :cond_2a
    move-object v2, v7

    .line 461
    :goto_18
    if-eqz v8, :cond_2b

    .line 462
    .line 463
    sget-object v4, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 464
    .line 465
    invoke-virtual {v4}, Landroidx/compose/material/DrawerDefaults;->getElevation-D9Ej5fM()F

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    goto :goto_19

    .line 470
    :cond_2b
    move v4, v9

    .line 471
    :goto_19
    and-int/lit8 v5, v12, 0x40

    .line 472
    .line 473
    if-eqz v5, :cond_2c

    .line 474
    .line 475
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 476
    .line 477
    invoke-virtual {v5, v11, v10}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 478
    .line 479
    .line 480
    move-result-object v5

    .line 481
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 482
    .line 483
    .line 484
    move-result-wide v7

    .line 485
    and-int v0, v0, v18

    .line 486
    .line 487
    goto :goto_1a

    .line 488
    :cond_2c
    move-wide/from16 v7, p6

    .line 489
    .line 490
    :goto_1a
    and-int/lit16 v5, v12, 0x80

    .line 491
    .line 492
    if-eqz v5, :cond_2d

    .line 493
    .line 494
    shr-int/lit8 v5, v0, 0x12

    .line 495
    .line 496
    and-int/lit8 v5, v5, 0xe

    .line 497
    .line 498
    invoke-static {v7, v8, v11, v5}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 499
    .line 500
    .line 501
    move-result-wide v18

    .line 502
    and-int v0, v0, v17

    .line 503
    .line 504
    goto :goto_1b

    .line 505
    :cond_2d
    move-wide/from16 v18, p8

    .line 506
    .line 507
    :goto_1b
    and-int/lit16 v5, v12, 0x100

    .line 508
    .line 509
    if-eqz v5, :cond_2e

    .line 510
    .line 511
    sget-object v5, Landroidx/compose/material/DrawerDefaults;->INSTANCE:Landroidx/compose/material/DrawerDefaults;

    .line 512
    .line 513
    invoke-virtual {v5, v11, v10}, Landroidx/compose/material/DrawerDefaults;->getScrimColor(Landroidx/compose/runtime/Composer;I)J

    .line 514
    .line 515
    .line 516
    move-result-wide v9

    .line 517
    and-int v0, v0, v16

    .line 518
    .line 519
    move-object/from16 v16, v3

    .line 520
    .line 521
    move/from16 v17, v6

    .line 522
    .line 523
    move-wide/from16 v21, v7

    .line 524
    .line 525
    move-wide/from16 v25, v9

    .line 526
    .line 527
    move-wide/from16 v23, v18

    .line 528
    .line 529
    move v3, v0

    .line 530
    move-object v9, v1

    .line 531
    :goto_1c
    move-object/from16 v18, v2

    .line 532
    .line 533
    move/from16 v19, v4

    .line 534
    .line 535
    goto :goto_1d

    .line 536
    :cond_2e
    move-wide/from16 v25, p10

    .line 537
    .line 538
    move-object v9, v1

    .line 539
    move-object/from16 v16, v3

    .line 540
    .line 541
    move/from16 v17, v6

    .line 542
    .line 543
    move-wide/from16 v21, v7

    .line 544
    .line 545
    move-wide/from16 v23, v18

    .line 546
    .line 547
    move v3, v0

    .line 548
    goto :goto_1c

    .line 549
    :goto_1d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 550
    .line 551
    .line 552
    const v0, 0x2e20b340

    .line 553
    .line 554
    .line 555
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 556
    .line 557
    .line 558
    const v0, -0x1d58f75c

    .line 559
    .line 560
    .line 561
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 569
    .line 570
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    if-ne v0, v1, :cond_2f

    .line 575
    .line 576
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 577
    .line 578
    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    .line 579
    .line 580
    .line 581
    move-result-object v0

    .line 582
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 583
    .line 584
    invoke-direct {v1, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 588
    .line 589
    .line 590
    move-object v0, v1

    .line 591
    :cond_2f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 592
    .line 593
    .line 594
    check-cast v0, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 595
    .line 596
    invoke-virtual {v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    .line 597
    .line 598
    .line 599
    move-result-object v27

    .line 600
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 601
    .line 602
    .line 603
    const/4 v0, 0x0

    .line 604
    const/4 v1, 0x0

    .line 605
    const/4 v2, 0x1

    .line 606
    invoke-static {v9, v0, v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 607
    .line 608
    .line 609
    move-result-object v20

    .line 610
    new-instance v10, Landroidx/compose/material/DrawerKt$ModalDrawer$1;

    .line 611
    .line 612
    move-object v0, v10

    .line 613
    move-object/from16 v1, v16

    .line 614
    .line 615
    move v7, v2

    .line 616
    move/from16 v2, v17

    .line 617
    .line 618
    move-wide/from16 v4, v25

    .line 619
    .line 620
    move-object/from16 v6, v18

    .line 621
    .line 622
    move v15, v7

    .line 623
    move-wide/from16 v7, v21

    .line 624
    .line 625
    move-object/from16 v28, v9

    .line 626
    .line 627
    move-object/from16 v29, v10

    .line 628
    .line 629
    move-wide/from16 v9, v23

    .line 630
    .line 631
    move-object/from16 v30, v11

    .line 632
    .line 633
    move/from16 v11, v19

    .line 634
    .line 635
    move-object/from16 v12, p12

    .line 636
    .line 637
    move-object/from16 v13, v27

    .line 638
    .line 639
    move-object/from16 v14, p0

    .line 640
    .line 641
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/DrawerKt$ModalDrawer$1;-><init>(Landroidx/compose/material/DrawerState;ZIJLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lgt/g0;Lat/n;)V

    .line 642
    .line 643
    .line 644
    const v0, 0x30ad78b7

    .line 645
    .line 646
    .line 647
    move-object/from16 v2, v29

    .line 648
    .line 649
    move-object/from16 v1, v30

    .line 650
    .line 651
    invoke-static {v1, v0, v15, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    const/16 v2, 0xc00

    .line 656
    .line 657
    const/4 v3, 0x6

    .line 658
    const/4 v4, 0x0

    .line 659
    const/4 v5, 0x0

    .line 660
    move-object/from16 p1, v20

    .line 661
    .line 662
    move-object/from16 p2, v4

    .line 663
    .line 664
    move/from16 p3, v5

    .line 665
    .line 666
    move-object/from16 p4, v0

    .line 667
    .line 668
    move-object/from16 p5, v1

    .line 669
    .line 670
    move/from16 p6, v2

    .line 671
    .line 672
    move/from16 p7, v3

    .line 673
    .line 674
    invoke-static/range {p1 .. p7}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 675
    .line 676
    .line 677
    move-object/from16 v3, v16

    .line 678
    .line 679
    move/from16 v4, v17

    .line 680
    .line 681
    move-object/from16 v5, v18

    .line 682
    .line 683
    move/from16 v6, v19

    .line 684
    .line 685
    move-wide/from16 v11, v25

    .line 686
    .line 687
    move-object/from16 v2, v28

    .line 688
    .line 689
    :goto_1e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 690
    .line 691
    .line 692
    move-result-object v15

    .line 693
    if-nez v15, :cond_30

    .line 694
    .line 695
    goto :goto_1f

    .line 696
    :cond_30
    new-instance v14, Landroidx/compose/material/DrawerKt$ModalDrawer$2;

    .line 697
    .line 698
    move-object v0, v14

    .line 699
    move-object/from16 v1, p0

    .line 700
    .line 701
    move-object/from16 v13, p12

    .line 702
    .line 703
    move-object/from16 v31, v14

    .line 704
    .line 705
    move/from16 v14, p14

    .line 706
    .line 707
    move-object/from16 v32, v15

    .line 708
    .line 709
    move/from16 v15, p15

    .line 710
    .line 711
    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/DrawerKt$ModalDrawer$2;-><init>(Lat/n;Landroidx/compose/ui/Modifier;Landroidx/compose/material/DrawerState;ZLandroidx/compose/ui/graphics/Shape;FJJJLkotlin/jvm/functions/Function2;II)V

    .line 712
    .line 713
    .line 714
    move-object/from16 v1, v31

    .line 715
    .line 716
    move-object/from16 v0, v32

    .line 717
    .line 718
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 719
    .line 720
    .line 721
    :goto_1f
    return-void
.end method

.method private static final Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;J",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, 0x763856e6

    .line 2
    .line 3
    .line 4
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    and-int/lit8 v0, p6, 0xe

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    or-int/2addr v0, p6

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, p6

    .line 24
    :goto_1
    and-int/lit8 v1, p6, 0x70

    .line 25
    .line 26
    if-nez v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0x380

    .line 41
    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int/lit16 v1, p6, 0x1c00

    .line 57
    .line 58
    if-nez v1, :cond_7

    .line 59
    .line 60
    invoke-interface {p5, p3, p4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_6

    .line 65
    .line 66
    const/16 v1, 0x800

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_6
    const/16 v1, 0x400

    .line 70
    .line 71
    :goto_4
    or-int/2addr v0, v1

    .line 72
    :cond_7
    and-int/lit16 v0, v0, 0x16db

    .line 73
    .line 74
    const/16 v1, 0x492

    .line 75
    .line 76
    if-ne v0, v1, :cond_9

    .line 77
    .line 78
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_8

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_8
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :cond_9
    :goto_5
    sget-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroidx/compose/material/Strings$Companion;->getCloseDrawer-UdPEhr4()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x6

    .line 97
    invoke-static {v0, p5, v1}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const v1, 0x3c3bd4bf

    .line 102
    .line 103
    .line 104
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 105
    .line 106
    .line 107
    const v1, 0x1e7b2b64

    .line 108
    .line 109
    .line 110
    const/4 v2, 0x1

    .line 111
    const/4 v3, 0x0

    .line 112
    if-eqz p0, :cond_e

    .line 113
    .line 114
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 115
    .line 116
    const v5, 0x44faf204

    .line 117
    .line 118
    .line 119
    invoke-interface {p5, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-nez v5, :cond_a

    .line 131
    .line 132
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 133
    .line 134
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    if-ne v6, v5, :cond_b

    .line 139
    .line 140
    :cond_a
    new-instance v6, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;

    .line 141
    .line 142
    invoke-direct {v6, p1, v3}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$1$1;-><init>(Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p5, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_b
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 149
    .line 150
    .line 151
    check-cast v6, Lkotlin/jvm/functions/Function2;

    .line 152
    .line 153
    invoke-static {v4, p1, v6}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 158
    .line 159
    .line 160
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    or-int/2addr v5, v6

    .line 169
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    if-nez v5, :cond_c

    .line 174
    .line 175
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 176
    .line 177
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    if-ne v6, v5, :cond_d

    .line 182
    .line 183
    :cond_c
    new-instance v6, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;

    .line 184
    .line 185
    invoke-direct {v6, v0, p1}, Landroidx/compose/material/DrawerKt$Scrim$dismissDrawer$2$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 186
    .line 187
    .line 188
    invoke-interface {p5, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_d
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 192
    .line 193
    .line 194
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 195
    .line 196
    invoke-static {v4, v2, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    goto :goto_6

    .line 201
    :cond_e
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 202
    .line 203
    :goto_6
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 204
    .line 205
    .line 206
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-interface {v2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {p3, p4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    or-int/2addr v1, v2

    .line 233
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-nez v1, :cond_f

    .line 238
    .line 239
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 240
    .line 241
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    if-ne v2, v1, :cond_10

    .line 246
    .line 247
    :cond_f
    new-instance v2, Landroidx/compose/material/DrawerKt$Scrim$1$1;

    .line 248
    .line 249
    invoke-direct {v2, p3, p4, p2}, Landroidx/compose/material/DrawerKt$Scrim$1$1;-><init>(JLkotlin/jvm/functions/Function0;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p5, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_10
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 256
    .line 257
    .line 258
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 259
    .line 260
    const/4 v1, 0x0

    .line 261
    invoke-static {v0, v2, p5, v1}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 262
    .line 263
    .line 264
    :goto_7
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 265
    .line 266
    .line 267
    move-result-object p5

    .line 268
    if-nez p5, :cond_11

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_11
    new-instance v7, Landroidx/compose/material/DrawerKt$Scrim$2;

    .line 272
    .line 273
    move-object v0, v7

    .line 274
    move v1, p0

    .line 275
    move-object v2, p1

    .line 276
    move-object v3, p2

    .line 277
    move-wide v4, p3

    .line 278
    move v6, p6

    .line 279
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/DrawerKt$Scrim$2;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JI)V

    .line 280
    .line 281
    .line 282
    invoke-interface {p5, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 283
    .line 284
    .line 285
    :goto_8
    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$BottomDrawerScrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/DrawerKt;->BottomDrawerScrim_3J_VO9M$lambda-0(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/DrawerKt;->Scrim-Bx497Mc(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$calculateFraction(FFF)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/DrawerKt;->calculateFraction(FFF)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getAnimationSpec$p()Landroidx/compose/animation/core/TweenSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/DrawerKt;->AnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDrawerVelocityThreshold$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->DrawerVelocityThreshold:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getEndDrawerPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/DrawerKt;->EndDrawerPadding:F

    .line 2
    .line 3
    return v0
.end method

.method private static final calculateFraction(FFF)F
    .locals 0

    .line 1
    sub-float/2addr p2, p0

    .line 2
    sub-float/2addr p1, p0

    .line 3
    div-float/2addr p2, p1

    .line 4
    const/4 p0, 0x0

    .line 5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-static {p2, p0, p1}, Lkotlin/ranges/e;->m(FFF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final rememberBottomDrawerState(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/BottomDrawerState;
    .locals 7
    .param p0    # Landroidx/compose/material/BottomDrawerValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/material/BottomDrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/BottomDrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/BottomDrawerState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "initialValue"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, -0x23a68354

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 p3, p4, 0x2

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$1;

    .line 17
    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    new-array v0, p3, [Ljava/lang/Object;

    .line 20
    .line 21
    sget-object p3, Landroidx/compose/material/BottomDrawerState;->Companion:Landroidx/compose/material/BottomDrawerState$Companion;

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Landroidx/compose/material/BottomDrawerState$Companion;->Saver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;

    .line 28
    .line 29
    invoke-direct {v3, p0, p1}, Landroidx/compose/material/DrawerKt$rememberBottomDrawerState$2;-><init>(Landroidx/compose/material/BottomDrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    const/16 v5, 0x48

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v4, p2

    .line 37
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/compose/material/BottomDrawerState;

    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public static final rememberDrawerState(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DrawerState;
    .locals 7
    .param p0    # Landroidx/compose/material/DrawerValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DrawerValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DrawerValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/DrawerState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "initialValue"

    .line 2
    .line 3
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, -0x5595b3b5

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 p3, p4, 0x2

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/material/DrawerKt$rememberDrawerState$1;->INSTANCE:Landroidx/compose/material/DrawerKt$rememberDrawerState$1;

    .line 17
    .line 18
    :cond_0
    const/4 p3, 0x0

    .line 19
    new-array v0, p3, [Ljava/lang/Object;

    .line 20
    .line 21
    sget-object p3, Landroidx/compose/material/DrawerState;->Companion:Landroidx/compose/material/DrawerState$Companion;

    .line 22
    .line 23
    invoke-virtual {p3, p1}, Landroidx/compose/material/DrawerState$Companion;->Saver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Landroidx/compose/material/DrawerKt$rememberDrawerState$2;

    .line 28
    .line 29
    invoke-direct {v3, p0, p1}, Landroidx/compose/material/DrawerKt$rememberDrawerState$2;-><init>(Landroidx/compose/material/DrawerValue;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    const/16 v5, 0x48

    .line 33
    .line 34
    const/4 v6, 0x4

    .line 35
    const/4 v2, 0x0

    .line 36
    move-object v4, p2

    .line 37
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/compose/material/DrawerState;

    .line 42
    .line 43
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 44
    .line 45
    .line 46
    return-object p0
.end method
