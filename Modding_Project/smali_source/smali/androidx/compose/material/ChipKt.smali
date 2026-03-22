.class public final Landroidx/compose/material/ChipKt;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final HorizontalPadding:F

.field private static final LeadingIconEndSpacing:F

.field private static final LeadingIconStartSpacing:F

.field private static final SelectedIconContainerSize:F

.field private static final SelectedOverlayOpacity:F = 0.16f

.field private static final SurfaceOverlayOpacity:F = 0.12f

.field private static final TrailingIconSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xc

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
    sput v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    int-to-float v0, v0

    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    .line 17
    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sput v1, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    .line 26
    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    .line 32
    .line 33
    const/16 v0, 0x18

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sput v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    .line 41
    .line 42
    return-void
.end method

.method public static final Chip(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 33
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/material/ChipColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/ChipColors;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p8

    .line 4
    .line 5
    move/from16 v13, p10

    .line 6
    .line 7
    move/from16 v12, p11

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
    const v0, -0x15f54878

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p9

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
    move/from16 v4, p2

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
    move/from16 v4, p2

    .line 92
    .line 93
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Z)Z

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
    move-object/from16 v6, p3

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
    move-object/from16 v6, p3

    .line 119
    .line 120
    invoke-interface {v11, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    move-object/from16 v9, p5

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
    move-object/from16 v9, p5

    .line 177
    .line 178
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    and-int v16, v13, v10

    .line 193
    .line 194
    if-nez v16, :cond_13

    .line 195
    .line 196
    and-int/lit8 v16, v12, 0x40

    .line 197
    .line 198
    move-object/from16 v10, p6

    .line 199
    .line 200
    if-nez v16, :cond_12

    .line 201
    .line 202
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v16

    .line 206
    if-eqz v16, :cond_12

    .line 207
    .line 208
    const/high16 v16, 0x100000

    .line 209
    .line 210
    goto :goto_c

    .line 211
    :cond_12
    const/high16 v16, 0x80000

    .line 212
    .line 213
    :goto_c
    or-int v0, v0, v16

    .line 214
    .line 215
    goto :goto_d

    .line 216
    :cond_13
    move-object/from16 v10, p6

    .line 217
    .line 218
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 219
    .line 220
    if-eqz v2, :cond_14

    .line 221
    .line 222
    const/high16 v16, 0xc00000

    .line 223
    .line 224
    or-int v0, v0, v16

    .line 225
    .line 226
    move-object/from16 v4, p7

    .line 227
    .line 228
    goto :goto_f

    .line 229
    :cond_14
    const/high16 v16, 0x1c00000

    .line 230
    .line 231
    and-int v16, v13, v16

    .line 232
    .line 233
    move-object/from16 v4, p7

    .line 234
    .line 235
    if-nez v16, :cond_16

    .line 236
    .line 237
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v16

    .line 241
    if-eqz v16, :cond_15

    .line 242
    .line 243
    const/high16 v16, 0x800000

    .line 244
    .line 245
    goto :goto_e

    .line 246
    :cond_15
    const/high16 v16, 0x400000

    .line 247
    .line 248
    :goto_e
    or-int v0, v0, v16

    .line 249
    .line 250
    :cond_16
    :goto_f
    and-int/lit16 v4, v12, 0x100

    .line 251
    .line 252
    const/high16 v32, 0xe000000

    .line 253
    .line 254
    if-eqz v4, :cond_17

    .line 255
    .line 256
    const/high16 v4, 0x6000000

    .line 257
    .line 258
    :goto_10
    or-int/2addr v0, v4

    .line 259
    goto :goto_11

    .line 260
    :cond_17
    and-int v4, v13, v32

    .line 261
    .line 262
    if-nez v4, :cond_19

    .line 263
    .line 264
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_18

    .line 269
    .line 270
    const/high16 v4, 0x4000000

    .line 271
    .line 272
    goto :goto_10

    .line 273
    :cond_18
    const/high16 v4, 0x2000000

    .line 274
    .line 275
    goto :goto_10

    .line 276
    :cond_19
    :goto_11
    const v4, 0xb6db6db

    .line 277
    .line 278
    .line 279
    and-int/2addr v4, v0

    .line 280
    const v6, 0x2492492

    .line 281
    .line 282
    .line 283
    if-ne v4, v6, :cond_1b

    .line 284
    .line 285
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    if-nez v4, :cond_1a

    .line 290
    .line 291
    goto :goto_12

    .line 292
    :cond_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 293
    .line 294
    .line 295
    move-object/from16 v2, p1

    .line 296
    .line 297
    move/from16 v3, p2

    .line 298
    .line 299
    move-object/from16 v4, p3

    .line 300
    .line 301
    move-object/from16 v8, p7

    .line 302
    .line 303
    move-object v5, v7

    .line 304
    move-object v6, v9

    .line 305
    move-object v7, v10

    .line 306
    move-object/from16 v26, v11

    .line 307
    .line 308
    goto/16 :goto_1b

    .line 309
    .line 310
    :cond_1b
    :goto_12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 311
    .line 312
    .line 313
    and-int/lit8 v4, v13, 0x1

    .line 314
    .line 315
    const v16, -0xe001

    .line 316
    .line 317
    .line 318
    const/4 v6, 0x1

    .line 319
    if-eqz v4, :cond_1f

    .line 320
    .line 321
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    if-eqz v4, :cond_1c

    .line 326
    .line 327
    goto :goto_13

    .line 328
    :cond_1c
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 329
    .line 330
    .line 331
    and-int/lit8 v1, v12, 0x10

    .line 332
    .line 333
    if-eqz v1, :cond_1d

    .line 334
    .line 335
    and-int v0, v0, v16

    .line 336
    .line 337
    :cond_1d
    and-int/lit8 v1, v12, 0x40

    .line 338
    .line 339
    if-eqz v1, :cond_1e

    .line 340
    .line 341
    const v1, -0x380001

    .line 342
    .line 343
    .line 344
    and-int/2addr v0, v1

    .line 345
    :cond_1e
    move-object/from16 v16, p1

    .line 346
    .line 347
    move-object/from16 v17, p3

    .line 348
    .line 349
    move-object/from16 v20, p7

    .line 350
    .line 351
    move-object/from16 v18, v7

    .line 352
    .line 353
    move-object/from16 v19, v9

    .line 354
    .line 355
    move-object v9, v10

    .line 356
    move/from16 v10, p2

    .line 357
    .line 358
    goto/16 :goto_1a

    .line 359
    .line 360
    :cond_1f
    :goto_13
    if-eqz v1, :cond_20

    .line 361
    .line 362
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 363
    .line 364
    goto :goto_14

    .line 365
    :cond_20
    move-object/from16 v1, p1

    .line 366
    .line 367
    :goto_14
    if-eqz v3, :cond_21

    .line 368
    .line 369
    move v3, v6

    .line 370
    goto :goto_15

    .line 371
    :cond_21
    move/from16 v3, p2

    .line 372
    .line 373
    :goto_15
    if-eqz v5, :cond_23

    .line 374
    .line 375
    const v4, -0x1d58f75c

    .line 376
    .line 377
    .line 378
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v4

    .line 385
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 386
    .line 387
    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    if-ne v4, v5, :cond_22

    .line 392
    .line 393
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    :cond_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 401
    .line 402
    .line 403
    check-cast v4, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 404
    .line 405
    goto :goto_16

    .line 406
    :cond_23
    move-object/from16 v4, p3

    .line 407
    .line 408
    :goto_16
    and-int/lit8 v5, v12, 0x10

    .line 409
    .line 410
    if-eqz v5, :cond_24

    .line 411
    .line 412
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 413
    .line 414
    const/4 v7, 0x6

    .line 415
    invoke-virtual {v5, v11, v7}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    const/16 v7, 0x32

    .line 424
    .line 425
    invoke-static {v7}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-virtual {v5, v7}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    and-int v0, v0, v16

    .line 434
    .line 435
    goto :goto_17

    .line 436
    :cond_24
    move-object v5, v7

    .line 437
    :goto_17
    const/4 v7, 0x0

    .line 438
    if-eqz v8, :cond_25

    .line 439
    .line 440
    move-object v9, v7

    .line 441
    :cond_25
    and-int/lit8 v8, v12, 0x40

    .line 442
    .line 443
    if-eqz v8, :cond_26

    .line 444
    .line 445
    sget-object v16, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    .line 446
    .line 447
    const/high16 v30, 0x180000

    .line 448
    .line 449
    const/16 v31, 0x3f

    .line 450
    .line 451
    const-wide/16 v17, 0x0

    .line 452
    .line 453
    const-wide/16 v19, 0x0

    .line 454
    .line 455
    const-wide/16 v21, 0x0

    .line 456
    .line 457
    const-wide/16 v23, 0x0

    .line 458
    .line 459
    const-wide/16 v25, 0x0

    .line 460
    .line 461
    const-wide/16 v27, 0x0

    .line 462
    .line 463
    move-object/from16 v29, v11

    .line 464
    .line 465
    invoke-virtual/range {v16 .. v31}, Landroidx/compose/material/ChipDefaults;->chipColors-5tl4gsc(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ChipColors;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    const v10, -0x380001

    .line 470
    .line 471
    .line 472
    and-int/2addr v0, v10

    .line 473
    goto :goto_18

    .line 474
    :cond_26
    move-object v8, v10

    .line 475
    :goto_18
    if-eqz v2, :cond_27

    .line 476
    .line 477
    move-object/from16 v16, v1

    .line 478
    .line 479
    move v10, v3

    .line 480
    move-object/from16 v17, v4

    .line 481
    .line 482
    move-object/from16 v18, v5

    .line 483
    .line 484
    move-object/from16 v20, v7

    .line 485
    .line 486
    :goto_19
    move-object/from16 v19, v9

    .line 487
    .line 488
    move-object v9, v8

    .line 489
    goto :goto_1a

    .line 490
    :cond_27
    move-object/from16 v20, p7

    .line 491
    .line 492
    move-object/from16 v16, v1

    .line 493
    .line 494
    move v10, v3

    .line 495
    move-object/from16 v17, v4

    .line 496
    .line 497
    move-object/from16 v18, v5

    .line 498
    .line 499
    goto :goto_19

    .line 500
    :goto_1a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 501
    .line 502
    .line 503
    shr-int/lit8 v1, v0, 0x6

    .line 504
    .line 505
    and-int/lit8 v1, v1, 0xe

    .line 506
    .line 507
    shr-int/lit8 v2, v0, 0xf

    .line 508
    .line 509
    and-int/lit8 v2, v2, 0x70

    .line 510
    .line 511
    or-int/2addr v1, v2

    .line 512
    invoke-interface {v9, v10, v11, v1}, Landroidx/compose/material/ChipColors;->contentColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    invoke-interface {v9, v10, v11, v1}, Landroidx/compose/material/ChipColors;->backgroundColor(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 517
    .line 518
    .line 519
    move-result-object v1

    .line 520
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 525
    .line 526
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 527
    .line 528
    .line 529
    move-result-wide v4

    .line 530
    invoke-static {v2}, Landroidx/compose/material/ChipKt;->Chip$lambda-1(Landroidx/compose/runtime/State;)J

    .line 531
    .line 532
    .line 533
    move-result-wide v21

    .line 534
    const/16 v27, 0xe

    .line 535
    .line 536
    const/16 v28, 0x0

    .line 537
    .line 538
    const/high16 v23, 0x3f800000    # 1.0f

    .line 539
    .line 540
    const/16 v24, 0x0

    .line 541
    .line 542
    const/16 v25, 0x0

    .line 543
    .line 544
    const/16 v26, 0x0

    .line 545
    .line 546
    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 547
    .line 548
    .line 549
    move-result-wide v7

    .line 550
    new-instance v1, Landroidx/compose/material/ChipKt$Chip$2;

    .line 551
    .line 552
    move-object/from16 p1, v1

    .line 553
    .line 554
    move-object/from16 p2, v2

    .line 555
    .line 556
    move-object/from16 p3, v20

    .line 557
    .line 558
    move-object/from16 p4, v9

    .line 559
    .line 560
    move/from16 p5, v10

    .line 561
    .line 562
    move/from16 p6, v0

    .line 563
    .line 564
    move-object/from16 p7, p8

    .line 565
    .line 566
    invoke-direct/range {p1 .. p7}, Landroidx/compose/material/ChipKt$Chip$2;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/ChipColors;ZILat/n;)V

    .line 567
    .line 568
    .line 569
    const v2, 0x84a244f

    .line 570
    .line 571
    .line 572
    invoke-static {v11, v2, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 573
    .line 574
    .line 575
    move-result-object v21

    .line 576
    and-int/lit8 v1, v0, 0xe

    .line 577
    .line 578
    const/high16 v2, 0x30000000

    .line 579
    .line 580
    or-int/2addr v1, v2

    .line 581
    and-int/lit8 v2, v0, 0x70

    .line 582
    .line 583
    or-int/2addr v1, v2

    .line 584
    and-int/lit16 v2, v0, 0x380

    .line 585
    .line 586
    or-int/2addr v1, v2

    .line 587
    shr-int/lit8 v2, v0, 0x3

    .line 588
    .line 589
    and-int/lit16 v2, v2, 0x1c00

    .line 590
    .line 591
    or-int/2addr v1, v2

    .line 592
    shl-int/lit8 v2, v0, 0x3

    .line 593
    .line 594
    const/high16 v3, 0x380000

    .line 595
    .line 596
    and-int/2addr v2, v3

    .line 597
    or-int/2addr v1, v2

    .line 598
    shl-int/lit8 v0, v0, 0xf

    .line 599
    .line 600
    and-int v0, v0, v32

    .line 601
    .line 602
    or-int v22, v1, v0

    .line 603
    .line 604
    const/16 v23, 0x80

    .line 605
    .line 606
    move-object/from16 v0, p0

    .line 607
    .line 608
    move-object/from16 v1, v16

    .line 609
    .line 610
    move v2, v10

    .line 611
    move-object/from16 v3, v18

    .line 612
    .line 613
    move-wide v6, v7

    .line 614
    move-object/from16 v8, v19

    .line 615
    .line 616
    move-object/from16 v25, v9

    .line 617
    .line 618
    move/from16 v9, v24

    .line 619
    .line 620
    move/from16 v24, v10

    .line 621
    .line 622
    move-object/from16 v10, v17

    .line 623
    .line 624
    move-object/from16 v26, v11

    .line 625
    .line 626
    move-object/from16 v11, v21

    .line 627
    .line 628
    move-object/from16 v12, v26

    .line 629
    .line 630
    move/from16 v13, v22

    .line 631
    .line 632
    move/from16 v14, v23

    .line 633
    .line 634
    invoke-static/range {v0 .. v14}, Landroidx/compose/material/SurfaceKt;->Surface-LPr_se0(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 635
    .line 636
    .line 637
    move-object/from16 v2, v16

    .line 638
    .line 639
    move-object/from16 v4, v17

    .line 640
    .line 641
    move-object/from16 v5, v18

    .line 642
    .line 643
    move-object/from16 v6, v19

    .line 644
    .line 645
    move-object/from16 v8, v20

    .line 646
    .line 647
    move/from16 v3, v24

    .line 648
    .line 649
    move-object/from16 v7, v25

    .line 650
    .line 651
    :goto_1b
    invoke-interface/range {v26 .. v26}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 652
    .line 653
    .line 654
    move-result-object v12

    .line 655
    if-nez v12, :cond_28

    .line 656
    .line 657
    goto :goto_1c

    .line 658
    :cond_28
    new-instance v13, Landroidx/compose/material/ChipKt$Chip$3;

    .line 659
    .line 660
    move-object v0, v13

    .line 661
    move-object/from16 v1, p0

    .line 662
    .line 663
    move-object/from16 v9, p8

    .line 664
    .line 665
    move/from16 v10, p10

    .line 666
    .line 667
    move/from16 v11, p11

    .line 668
    .line 669
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/ChipKt$Chip$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ChipColors;Lkotlin/jvm/functions/Function2;Lat/n;II)V

    .line 670
    .line 671
    .line 672
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 673
    .line 674
    .line 675
    :goto_1c
    return-void
.end method

.method private static final Chip$lambda-1(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final FilterChip(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;Landroidx/compose/runtime/Composer;III)V
    .locals 44
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/Modifier;
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
    .param p6    # Landroidx/compose/foundation/BorderStroke;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/material/SelectableChipColors;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lat/n;
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
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/SelectableChipColors;",
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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
            "III)V"
        }
    .end annotation

    move/from16 v15, p0

    move-object/from16 v12, p1

    move-object/from16 v11, p11

    move/from16 v14, p13

    move/from16 v10, p15

    const-string v0, "onClick"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x4b0dfe36

    move-object/from16 v1, p12

    .line 1
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_0

    or-int/lit8 v0, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v14, 0xe

    if-nez v0, :cond_2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v14

    goto :goto_1

    :cond_2
    move v0, v14

    :goto_1
    and-int/lit8 v3, v10, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v3, v14, 0x70

    if-nez v3, :cond_5

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x20

    goto :goto_2

    :cond_4
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v0, v3

    :cond_5
    :goto_3
    and-int/lit8 v3, v10, 0x4

    if-eqz v3, :cond_7

    or-int/lit16 v0, v0, 0x180

    :cond_6
    move-object/from16 v6, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v14, 0x380

    if-nez v6, :cond_6

    move-object/from16 v6, p2

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v0, v7

    :goto_5
    and-int/lit8 v7, v10, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v0, v0, 0xc00

    :cond_9
    move/from16 v8, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v14, 0x1c00

    if-nez v8, :cond_9

    move/from16 v8, p3

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v0, v13

    :goto_7
    and-int/lit8 v13, v10, 0x10

    const v38, 0xe000

    if-eqz v13, :cond_c

    or-int/lit16 v0, v0, 0x6000

    move-object/from16 v1, p4

    goto :goto_9

    :cond_c
    and-int v16, v14, v38

    move-object/from16 v1, p4

    if-nez v16, :cond_e

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x4000

    goto :goto_8

    :cond_d
    const/16 v16, 0x2000

    :goto_8
    or-int v0, v0, v16

    :cond_e
    :goto_9
    const/high16 v16, 0x70000

    and-int v16, v14, v16

    if-nez v16, :cond_10

    and-int/lit8 v16, v10, 0x20

    move-object/from16 v2, p5

    if-nez v16, :cond_f

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_f
    const/high16 v17, 0x10000

    :goto_a
    or-int v0, v0, v17

    goto :goto_b

    :cond_10
    move-object/from16 v2, p5

    :goto_b
    and-int/lit8 v17, v10, 0x40

    if-eqz v17, :cond_11

    const/high16 v18, 0x180000

    or-int v0, v0, v18

    move-object/from16 v4, p6

    goto :goto_d

    :cond_11
    const/high16 v18, 0x380000

    and-int v18, v14, v18

    move-object/from16 v4, p6

    if-nez v18, :cond_13

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x100000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x80000

    :goto_c
    or-int v0, v0, v19

    :cond_13
    :goto_d
    const/high16 v39, 0x1c00000

    and-int v19, v14, v39

    if-nez v19, :cond_16

    and-int/lit16 v5, v10, 0x80

    if-nez v5, :cond_14

    move-object/from16 v5, p7

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_15

    const/high16 v20, 0x800000

    goto :goto_e

    :cond_14
    move-object/from16 v5, p7

    :cond_15
    const/high16 v20, 0x400000

    :goto_e
    or-int v0, v0, v20

    goto :goto_f

    :cond_16
    move-object/from16 v5, p7

    :goto_f
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_17

    const/high16 v20, 0x6000000

    or-int v0, v0, v20

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    const/high16 v20, 0xe000000

    and-int v20, v14, v20

    move-object/from16 v2, p8

    if-nez v20, :cond_19

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v20, 0x2000000

    :goto_10
    or-int v0, v0, v20

    :cond_19
    :goto_11
    and-int/lit16 v2, v10, 0x200

    const/high16 v40, 0x70000000

    if-eqz v2, :cond_1a

    const/high16 v20, 0x30000000

    or-int v0, v0, v20

    move-object/from16 v4, p9

    goto :goto_13

    :cond_1a
    and-int v20, v14, v40

    move-object/from16 v4, p9

    if-nez v20, :cond_1c

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const/high16 v20, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v20, 0x10000000

    :goto_12
    or-int v0, v0, v20

    :cond_1c
    :goto_13
    and-int/lit16 v4, v10, 0x400

    if-eqz v4, :cond_1d

    or-int/lit8 v16, p14, 0x6

    move-object/from16 v5, p10

    goto :goto_15

    :cond_1d
    and-int/lit8 v20, p14, 0xe

    move-object/from16 v5, p10

    if-nez v20, :cond_1f

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const/16 v16, 0x4

    goto :goto_14

    :cond_1e
    const/16 v16, 0x2

    :goto_14
    or-int v16, p14, v16

    goto :goto_15

    :cond_1f
    move/from16 v16, p14

    :goto_15
    and-int/lit16 v5, v10, 0x800

    if-eqz v5, :cond_20

    or-int/lit8 v5, v16, 0x30

    :goto_16
    move/from16 v41, v5

    goto :goto_18

    :cond_20
    and-int/lit8 v5, p14, 0x70

    if-nez v5, :cond_22

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/16 v18, 0x20

    goto :goto_17

    :cond_21
    const/16 v18, 0x10

    :goto_17
    or-int v5, v16, v18

    goto :goto_16

    :cond_22
    move/from16 v41, v16

    :goto_18
    const v5, 0x5b6db6db

    and-int/2addr v5, v0

    const v6, 0x12492492

    if-ne v5, v6, :cond_24

    and-int/lit8 v5, v41, 0x5b

    const/16 v6, 0x12

    if-ne v5, v6, :cond_24

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_19

    .line 2
    :cond_23
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move v4, v8

    move-object v1, v9

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    goto/16 :goto_24

    .line 3
    :cond_24
    :goto_19
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v14, 0x1

    const v16, -0x70001

    if-eqz v5, :cond_28

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_1a

    .line 4
    :cond_25
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v10, 0x20

    if-eqz v1, :cond_26

    and-int v0, v0, v16

    :cond_26
    and-int/lit16 v1, v10, 0x80

    if-eqz v1, :cond_27

    const v1, -0x1c00001

    and-int/2addr v0, v1

    :cond_27
    move-object/from16 v28, p4

    move-object/from16 v29, p5

    move-object/from16 v30, p6

    move-object/from16 v6, p7

    move-object/from16 v31, p8

    move-object/from16 v32, p9

    move-object/from16 v33, p10

    move/from16 v20, v0

    move v7, v8

    move-object/from16 v8, p2

    goto/16 :goto_23

    :cond_28
    :goto_1a
    if-eqz v3, :cond_29

    .line 5
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_29
    move-object/from16 v3, p2

    :goto_1b
    if-eqz v7, :cond_2a

    const/4 v8, 0x1

    :cond_2a
    if-eqz v13, :cond_2c

    const v5, -0x1d58f75c

    .line 6
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 8
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_2b

    .line 9
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v5

    .line 10
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 11
    :cond_2b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    goto :goto_1c

    :cond_2c
    move-object/from16 v5, p4

    :goto_1c
    and-int/lit8 v7, v10, 0x20

    if-eqz v7, :cond_2d

    .line 12
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v13, 0x6

    invoke-virtual {v7, v9, v13}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    const/16 v13, 0x32

    invoke-static {v13}, Landroidx/compose/foundation/shape/CornerSizeKt;->CornerSize(I)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroidx/compose/foundation/shape/CornerBasedShape;->copy(Landroidx/compose/foundation/shape/CornerSize;)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v7

    and-int v0, v0, v16

    goto :goto_1d

    :cond_2d
    move-object/from16 v7, p5

    :goto_1d
    if-eqz v17, :cond_2e

    const/4 v13, 0x0

    goto :goto_1e

    :cond_2e
    move-object/from16 v13, p6

    :goto_1e
    and-int/lit16 v6, v10, 0x80

    if-eqz v6, :cond_2f

    .line 13
    sget-object v16, Landroidx/compose/material/ChipDefaults;->INSTANCE:Landroidx/compose/material/ChipDefaults;

    const/high16 v36, 0x30000000

    const/16 v37, 0x1ff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    move-object/from16 v35, v9

    invoke-virtual/range {v16 .. v37}, Landroidx/compose/material/ChipDefaults;->filterChipColors-J08w3-E(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/SelectableChipColors;

    move-result-object v6

    const v16, -0x1c00001

    and-int v0, v0, v16

    goto :goto_1f

    :cond_2f
    move-object/from16 v6, p7

    :goto_1f
    if-eqz v1, :cond_30

    const/4 v1, 0x0

    goto :goto_20

    :cond_30
    move-object/from16 v1, p8

    :goto_20
    if-eqz v2, :cond_31

    const/4 v2, 0x0

    goto :goto_21

    :cond_31
    move-object/from16 v2, p9

    :goto_21
    if-eqz v4, :cond_32

    move/from16 v20, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move v7, v8

    move-object/from16 v30, v13

    const/16 v33, 0x0

    :goto_22
    move-object v8, v3

    goto :goto_23

    :cond_32
    move-object/from16 v33, p10

    move/from16 v20, v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v28, v5

    move-object/from16 v29, v7

    move v7, v8

    move-object/from16 v30, v13

    goto :goto_22

    .line 14
    :goto_23
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    shr-int/lit8 v0, v20, 0x9

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v21, v20, 0x3

    and-int/lit8 v1, v21, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 v1, v20, 0xf

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v0, v1

    .line 15
    invoke-interface {v6, v7, v15, v9, v0}, Landroidx/compose/material/SelectableChipColors;->contentColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    const/4 v2, 0x0

    .line 16
    sget-object v3, Landroidx/compose/material/ChipKt$FilterChip$2;->INSTANCE:Landroidx/compose/material/ChipKt$FilterChip$2;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v8, v2, v3, v5, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 17
    invoke-interface {v6, v7, v15, v9, v0}, Landroidx/compose/material/SelectableChipColors;->backgroundColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v16

    .line 18
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v2

    const/16 v0, 0xe

    const/4 v4, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-wide/from16 p2, v2

    move/from16 p4, v18

    move/from16 p5, v19

    move/from16 p6, v22

    move/from16 p7, v23

    move/from16 p8, v0

    move-object/from16 p9, v4

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v18

    .line 19
    new-instance v4, Landroidx/compose/material/ChipKt$FilterChip$3;

    move-object v0, v4

    move-object/from16 v2, v31

    move/from16 v3, p0

    move-object v11, v4

    move-object/from16 v4, v32

    move/from16 v22, v5

    move-object/from16 v5, v33

    move-object/from16 v34, v6

    move/from16 v12, v22

    move-object/from16 v6, p11

    move/from16 v35, v7

    move/from16 v7, v41

    move-object/from16 v36, v8

    move-object/from16 v8, v34

    move-object v14, v9

    move/from16 v9, v35

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/ChipKt$FilterChip$3;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;ILandroidx/compose/material/SelectableChipColors;ZI)V

    const v0, 0x2b0ac65f

    invoke-static {v14, v0, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v23

    and-int/lit8 v0, v20, 0x7e

    shr-int/lit8 v1, v20, 0x3

    and-int v1, v1, v38

    or-int/2addr v0, v1

    and-int v1, v21, v39

    or-int/2addr v0, v1

    shl-int/lit8 v1, v20, 0xf

    and-int v1, v1, v40

    or-int v25, v0, v1

    const/16 v26, 0x6

    const/16 v27, 0x108

    const/4 v0, 0x0

    move-object v1, v14

    move v14, v0

    const/16 v21, 0x0

    move/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, v29

    move-object/from16 v20, v30

    move-object/from16 v22, v28

    move-object/from16 v24, v1

    .line 20
    invoke-static/range {v11 .. v27}, Landroidx/compose/material/SurfaceKt;->Surface-Ny5ogXk(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v9, v31

    move-object/from16 v10, v32

    move-object/from16 v11, v33

    move/from16 v4, v35

    move-object/from16 v3, v36

    .line 21
    :goto_24
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-nez v15, :cond_33

    goto :goto_25

    :cond_33
    new-instance v14, Landroidx/compose/material/ChipKt$FilterChip$4;

    move-object v0, v14

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v42, v14

    move/from16 v14, p14

    move-object/from16 v43, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material/ChipKt$FilterChip$4;-><init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/SelectableChipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;III)V

    move-object/from16 v1, v42

    move-object/from16 v0, v43

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_25
    return-void
.end method

.method public static final synthetic access$Chip$lambda-1(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ChipKt;->Chip$lambda-1(Landroidx/compose/runtime/State;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$getHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->HorizontalPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getLeadingIconEndSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconEndSpacing:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getLeadingIconStartSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->LeadingIconStartSpacing:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSelectedIconContainerSize$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->SelectedIconContainerSize:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTrailingIconSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/ChipKt;->TrailingIconSpacing:F

    .line 2
    .line 3
    return v0
.end method
