.class public final Landroidx/compose/material/BadgeKt;
.super Ljava/lang/Object;
.source "Badge.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final BadgeContentFontSize:J

.field private static final BadgeHorizontalOffset:F

.field private static final BadgeRadius:F

.field private static final BadgeWithContentHorizontalOffset:F

.field private static final BadgeWithContentHorizontalPadding:F

.field private static final BadgeWithContentRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    int-to-float v0, v0

    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentRadius:F

    .line 17
    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    sput-wide v1, Landroidx/compose/material/BadgeKt;->BadgeContentFontSize:J

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalPadding:F

    .line 31
    .line 32
    const/4 v1, 0x6

    .line 33
    int-to-float v1, v1

    .line 34
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    neg-float v1, v1

    .line 39
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sput v1, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalOffset:F

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    neg-float v0, v0

    .line 50
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sput v0, Landroidx/compose/material/BadgeKt;->BadgeHorizontalOffset:F

    .line 55
    .line 56
    return-void
.end method

.method public static final Badge-eopBjH0(Landroidx/compose/ui/Modifier;JJLat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Landroidx/compose/ui/Modifier;",
            "JJ",
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
    move/from16 v7, p7

    .line 2
    .line 3
    const v0, 0x438f99d6

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p6

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p8, 0x1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v3, v7, 0x6

    .line 18
    .line 19
    move v4, v3

    .line 20
    move-object/from16 v3, p0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    and-int/lit8 v3, v7, 0xe

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    move-object/from16 v3, p0

    .line 28
    .line 29
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const/4 v4, 0x4

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_0
    or-int/2addr v4, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v3, p0

    .line 41
    .line 42
    move v4, v7

    .line 43
    :goto_1
    and-int/lit8 v5, v7, 0x70

    .line 44
    .line 45
    if-nez v5, :cond_5

    .line 46
    .line 47
    and-int/lit8 v5, p8, 0x2

    .line 48
    .line 49
    if-nez v5, :cond_3

    .line 50
    .line 51
    move-wide/from16 v5, p1

    .line 52
    .line 53
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-eqz v8, :cond_4

    .line 58
    .line 59
    const/16 v8, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move-wide/from16 v5, p1

    .line 63
    .line 64
    :cond_4
    const/16 v8, 0x10

    .line 65
    .line 66
    :goto_2
    or-int/2addr v4, v8

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    move-wide/from16 v5, p1

    .line 69
    .line 70
    :goto_3
    and-int/lit16 v8, v7, 0x380

    .line 71
    .line 72
    if-nez v8, :cond_8

    .line 73
    .line 74
    and-int/lit8 v8, p8, 0x4

    .line 75
    .line 76
    if-nez v8, :cond_6

    .line 77
    .line 78
    move-wide/from16 v8, p3

    .line 79
    .line 80
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    if-eqz v10, :cond_7

    .line 85
    .line 86
    const/16 v10, 0x100

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_6
    move-wide/from16 v8, p3

    .line 90
    .line 91
    :cond_7
    const/16 v10, 0x80

    .line 92
    .line 93
    :goto_4
    or-int/2addr v4, v10

    .line 94
    goto :goto_5

    .line 95
    :cond_8
    move-wide/from16 v8, p3

    .line 96
    .line 97
    :goto_5
    and-int/lit8 v10, p8, 0x8

    .line 98
    .line 99
    if-eqz v10, :cond_a

    .line 100
    .line 101
    or-int/lit16 v4, v4, 0xc00

    .line 102
    .line 103
    :cond_9
    move-object/from16 v11, p5

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_a
    and-int/lit16 v11, v7, 0x1c00

    .line 107
    .line 108
    if-nez v11, :cond_9

    .line 109
    .line 110
    move-object/from16 v11, p5

    .line 111
    .line 112
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-eqz v12, :cond_b

    .line 117
    .line 118
    const/16 v12, 0x800

    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_b
    const/16 v12, 0x400

    .line 122
    .line 123
    :goto_6
    or-int/2addr v4, v12

    .line 124
    :goto_7
    and-int/lit16 v12, v4, 0x16db

    .line 125
    .line 126
    const/16 v13, 0x492

    .line 127
    .line 128
    if-ne v12, v13, :cond_d

    .line 129
    .line 130
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_c

    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 138
    .line 139
    .line 140
    move-object v1, v3

    .line 141
    move-wide v2, v5

    .line 142
    move-wide v4, v8

    .line 143
    move-object v6, v11

    .line 144
    goto/16 :goto_e

    .line 145
    .line 146
    :cond_d
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 147
    .line 148
    .line 149
    and-int/lit8 v12, v7, 0x1

    .line 150
    .line 151
    const/4 v13, 0x0

    .line 152
    const/4 v14, 0x6

    .line 153
    if-eqz v12, :cond_11

    .line 154
    .line 155
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 156
    .line 157
    .line 158
    move-result v12

    .line 159
    if-eqz v12, :cond_e

    .line 160
    .line 161
    goto :goto_9

    .line 162
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 163
    .line 164
    .line 165
    and-int/lit8 v1, p8, 0x2

    .line 166
    .line 167
    if-eqz v1, :cond_f

    .line 168
    .line 169
    and-int/lit8 v4, v4, -0x71

    .line 170
    .line 171
    :cond_f
    and-int/lit8 v1, p8, 0x4

    .line 172
    .line 173
    if-eqz v1, :cond_10

    .line 174
    .line 175
    and-int/lit16 v4, v4, -0x381

    .line 176
    .line 177
    :cond_10
    move-object v1, v3

    .line 178
    goto :goto_b

    .line 179
    :cond_11
    :goto_9
    if-eqz v1, :cond_12

    .line 180
    .line 181
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 182
    .line 183
    goto :goto_a

    .line 184
    :cond_12
    move-object v1, v3

    .line 185
    :goto_a
    and-int/lit8 v3, p8, 0x2

    .line 186
    .line 187
    if-eqz v3, :cond_13

    .line 188
    .line 189
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 190
    .line 191
    invoke-virtual {v3, v0, v14}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getError-0d7_KjU()J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    and-int/lit8 v4, v4, -0x71

    .line 200
    .line 201
    :cond_13
    and-int/lit8 v3, p8, 0x4

    .line 202
    .line 203
    if-eqz v3, :cond_14

    .line 204
    .line 205
    shr-int/lit8 v3, v4, 0x3

    .line 206
    .line 207
    and-int/lit8 v3, v3, 0xe

    .line 208
    .line 209
    invoke-static {v5, v6, v0, v3}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 210
    .line 211
    .line 212
    move-result-wide v8

    .line 213
    and-int/lit16 v3, v4, -0x381

    .line 214
    .line 215
    move v4, v3

    .line 216
    :cond_14
    if-eqz v10, :cond_15

    .line 217
    .line 218
    move-object v11, v13

    .line 219
    :cond_15
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 220
    .line 221
    .line 222
    if-eqz v11, :cond_16

    .line 223
    .line 224
    sget v3, Landroidx/compose/material/BadgeKt;->BadgeWithContentRadius:F

    .line 225
    .line 226
    goto :goto_c

    .line 227
    :cond_16
    sget v3, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    .line 228
    .line 229
    :goto_c
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    int-to-float v12, v2

    .line 234
    mul-float/2addr v3, v12

    .line 235
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    invoke-static {v1, v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-static {v3, v5, v6, v10}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-static {v3, v10}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    sget v10, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalPadding:F

    .line 256
    .line 257
    const/4 v12, 0x0

    .line 258
    invoke-static {v3, v10, v12, v2, v13}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 263
    .line 264
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 269
    .line 270
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->getCenter()Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    const v12, 0x2952b718

    .line 275
    .line 276
    .line 277
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 278
    .line 279
    .line 280
    const/16 v12, 0x36

    .line 281
    .line 282
    invoke-static {v10, v3, v0, v12}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    const v10, -0x4ee9b9da

    .line 287
    .line 288
    .line 289
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 293
    .line 294
    .line 295
    move-result-object v10

    .line 296
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 301
    .line 302
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 303
    .line 304
    .line 305
    move-result-object v12

    .line 306
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v12

    .line 310
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 311
    .line 312
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 313
    .line 314
    .line 315
    move-result-object v13

    .line 316
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v13

    .line 320
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 321
    .line 322
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 323
    .line 324
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 333
    .line 334
    .line 335
    move-result-object v16

    .line 336
    if-nez v16, :cond_17

    .line 337
    .line 338
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 339
    .line 340
    .line 341
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 342
    .line 343
    .line 344
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 345
    .line 346
    .line 347
    move-result v16

    .line 348
    if-eqz v16, :cond_18

    .line 349
    .line 350
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 351
    .line 352
    .line 353
    goto :goto_d

    .line 354
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 355
    .line 356
    .line 357
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 358
    .line 359
    .line 360
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    move-object/from16 v16, v1

    .line 365
    .line 366
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v14, v3, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-static {v14, v10, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v14, v12, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v15}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v14, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 392
    .line 393
    .line 394
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 395
    .line 396
    .line 397
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const/4 v3, 0x0

    .line 406
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-interface {v2, v1, v0, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    const v1, 0x7ab4aae9

    .line 414
    .line 415
    .line 416
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 417
    .line 418
    .line 419
    const v1, -0x286e2e7f

    .line 420
    .line 421
    .line 422
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 423
    .line 424
    .line 425
    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 426
    .line 427
    const v2, -0x3d165dc6

    .line 428
    .line 429
    .line 430
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 431
    .line 432
    .line 433
    if-eqz v11, :cond_19

    .line 434
    .line 435
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    filled-new-array {v2}, [Landroidx/compose/runtime/ProvidedValue;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    new-instance v3, Landroidx/compose/material/BadgeKt$Badge$1$1;

    .line 452
    .line 453
    const/4 v10, 0x6

    .line 454
    invoke-direct {v3, v11, v1, v10, v4}, Landroidx/compose/material/BadgeKt$Badge$1$1;-><init>(Lat/n;Landroidx/compose/foundation/layout/RowScope;II)V

    .line 455
    .line 456
    .line 457
    const v1, 0x6a5db695

    .line 458
    .line 459
    .line 460
    const/4 v4, 0x1

    .line 461
    invoke-static {v0, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const/16 v3, 0x38

    .line 466
    .line 467
    invoke-static {v2, v1, v0, v3}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 468
    .line 469
    .line 470
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 471
    .line 472
    .line 473
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 474
    .line 475
    .line 476
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 477
    .line 478
    .line 479
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 480
    .line 481
    .line 482
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 483
    .line 484
    .line 485
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 486
    .line 487
    .line 488
    move-wide v2, v5

    .line 489
    move-wide v4, v8

    .line 490
    move-object v6, v11

    .line 491
    move-object/from16 v1, v16

    .line 492
    .line 493
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    if-nez v9, :cond_1a

    .line 498
    .line 499
    goto :goto_f

    .line 500
    :cond_1a
    new-instance v10, Landroidx/compose/material/BadgeKt$Badge$2;

    .line 501
    .line 502
    move-object v0, v10

    .line 503
    move/from16 v7, p7

    .line 504
    .line 505
    move/from16 v8, p8

    .line 506
    .line 507
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/BadgeKt$Badge$2;-><init>(Landroidx/compose/ui/Modifier;JJLat/n;II)V

    .line 508
    .line 509
    .line 510
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 511
    .line 512
    .line 513
    :goto_f
    return-void
.end method

.method public static final BadgedBox(Lat/n;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 17
    .param p0    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v4, p4

    .line 6
    .line 7
    const-string v0, "badge"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "content"

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v2, 0x333f9658

    .line 18
    .line 19
    .line 20
    move-object/from16 v5, p3

    .line 21
    .line 22
    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    and-int/lit8 v5, p5, 0x1

    .line 27
    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    or-int/lit8 v5, v4, 0x6

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    and-int/lit8 v5, v4, 0xe

    .line 34
    .line 35
    if-nez v5, :cond_2

    .line 36
    .line 37
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v5, 0x2

    .line 46
    :goto_0
    or-int/2addr v5, v4

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v5, v4

    .line 49
    :goto_1
    and-int/lit8 v6, p5, 0x2

    .line 50
    .line 51
    if-eqz v6, :cond_4

    .line 52
    .line 53
    or-int/lit8 v5, v5, 0x30

    .line 54
    .line 55
    :cond_3
    move-object/from16 v7, p1

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v7, v4, 0x70

    .line 59
    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    move-object/from16 v7, p1

    .line 63
    .line 64
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_5

    .line 69
    .line 70
    const/16 v8, 0x20

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    const/16 v8, 0x10

    .line 74
    .line 75
    :goto_2
    or-int/2addr v5, v8

    .line 76
    :goto_3
    and-int/lit8 v8, p5, 0x4

    .line 77
    .line 78
    if-eqz v8, :cond_6

    .line 79
    .line 80
    or-int/lit16 v5, v5, 0x180

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_6
    and-int/lit16 v8, v4, 0x380

    .line 84
    .line 85
    if-nez v8, :cond_8

    .line 86
    .line 87
    invoke-interface {v2, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_7

    .line 92
    .line 93
    const/16 v8, 0x100

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const/16 v8, 0x80

    .line 97
    .line 98
    :goto_4
    or-int/2addr v5, v8

    .line 99
    :cond_8
    :goto_5
    and-int/lit16 v8, v5, 0x2db

    .line 100
    .line 101
    const/16 v9, 0x92

    .line 102
    .line 103
    if-ne v8, v9, :cond_a

    .line 104
    .line 105
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    if-nez v8, :cond_9

    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 113
    .line 114
    .line 115
    move-object/from16 v16, v7

    .line 116
    .line 117
    goto/16 :goto_b

    .line 118
    .line 119
    :cond_a
    :goto_6
    if-eqz v6, :cond_b

    .line 120
    .line 121
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_b
    move-object v6, v7

    .line 125
    :goto_7
    sget-object v7, Landroidx/compose/material/BadgeKt$BadgedBox$2;->INSTANCE:Landroidx/compose/material/BadgeKt$BadgedBox$2;

    .line 126
    .line 127
    const v8, -0x4ee9b9da

    .line 128
    .line 129
    .line 130
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v10

    .line 151
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 152
    .line 153
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 162
    .line 163
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 164
    .line 165
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 170
    .line 171
    .line 172
    move-result-object v14

    .line 173
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 174
    .line 175
    .line 176
    move-result-object v15

    .line 177
    if-nez v15, :cond_c

    .line 178
    .line 179
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 180
    .line 181
    .line 182
    :cond_c
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 183
    .line 184
    .line 185
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 186
    .line 187
    .line 188
    move-result v15

    .line 189
    if-eqz v15, :cond_d

    .line 190
    .line 191
    invoke-interface {v2, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 192
    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 196
    .line 197
    .line 198
    :goto_8
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 199
    .line 200
    .line 201
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    invoke-static {v13, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    invoke-static {v13, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 220
    .line 221
    .line 222
    move-result-object v7

    .line 223
    invoke-static {v13, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    invoke-static {v13, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 234
    .line 235
    .line 236
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 241
    .line 242
    .line 243
    move-result-object v7

    .line 244
    const/4 v9, 0x0

    .line 245
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    invoke-interface {v14, v7, v2, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    const v7, 0x7ab4aae9

    .line 253
    .line 254
    .line 255
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 256
    .line 257
    .line 258
    const v10, 0x6b48e38f

    .line 259
    .line 260
    .line 261
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 262
    .line 263
    .line 264
    sget-object v10, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 265
    .line 266
    const-string v11, "anchor"

    .line 267
    .line 268
    invoke-static {v10, v11}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 269
    .line 270
    .line 271
    move-result-object v11

    .line 272
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 273
    .line 274
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    shl-int/lit8 v15, v5, 0x3

    .line 279
    .line 280
    and-int/lit16 v15, v15, 0x1c00

    .line 281
    .line 282
    or-int/lit8 v15, v15, 0x36

    .line 283
    .line 284
    const v7, 0x2bb5b5d7

    .line 285
    .line 286
    .line 287
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 288
    .line 289
    .line 290
    const/4 v7, 0x6

    .line 291
    invoke-static {v14, v9, v2, v7}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 307
    .line 308
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 317
    .line 318
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v9

    .line 326
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 327
    .line 328
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 333
    .line 334
    .line 335
    move-result-object v11

    .line 336
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 337
    .line 338
    .line 339
    move-result-object v16

    .line 340
    if-nez v16, :cond_e

    .line 341
    .line 342
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 343
    .line 344
    .line 345
    :cond_e
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 346
    .line 347
    .line 348
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 349
    .line 350
    .line 351
    move-result v16

    .line 352
    if-eqz v16, :cond_f

    .line 353
    .line 354
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 355
    .line 356
    .line 357
    goto :goto_9

    .line 358
    :cond_f
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 359
    .line 360
    .line 361
    :goto_9
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 362
    .line 363
    .line 364
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    move-object/from16 v16, v6

    .line 369
    .line 370
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-static {v4, v14, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-static {v4, v8, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 385
    .line 386
    .line 387
    move-result-object v6

    .line 388
    invoke-static {v4, v7, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-static {v4, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 399
    .line 400
    .line 401
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 402
    .line 403
    .line 404
    move-result-object v4

    .line 405
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    const/4 v6, 0x0

    .line 410
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    .line 412
    .line 413
    move-result-object v7

    .line 414
    invoke-interface {v11, v4, v2, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    const v4, 0x7ab4aae9

    .line 418
    .line 419
    .line 420
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 421
    .line 422
    .line 423
    const v4, -0x7f65a980

    .line 424
    .line 425
    .line 426
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 427
    .line 428
    .line 429
    sget-object v6, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 430
    .line 431
    const/4 v7, 0x6

    .line 432
    shr-int/lit8 v8, v15, 0x6

    .line 433
    .line 434
    and-int/lit8 v8, v8, 0x70

    .line 435
    .line 436
    or-int/2addr v8, v7

    .line 437
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-interface {v3, v6, v2, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 445
    .line 446
    .line 447
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 448
    .line 449
    .line 450
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 451
    .line 452
    .line 453
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 454
    .line 455
    .line 456
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 457
    .line 458
    .line 459
    invoke-static {v10, v0}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    shl-int/lit8 v5, v5, 0x9

    .line 464
    .line 465
    and-int/lit16 v5, v5, 0x1c00

    .line 466
    .line 467
    const/4 v7, 0x6

    .line 468
    or-int/2addr v5, v7

    .line 469
    const v7, 0x2bb5b5d7

    .line 470
    .line 471
    .line 472
    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 476
    .line 477
    .line 478
    move-result-object v7

    .line 479
    const/4 v8, 0x0

    .line 480
    invoke-static {v7, v8, v2, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 481
    .line 482
    .line 483
    move-result-object v7

    .line 484
    const v8, -0x4ee9b9da

    .line 485
    .line 486
    .line 487
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 488
    .line 489
    .line 490
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 491
    .line 492
    .line 493
    move-result-object v8

    .line 494
    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 499
    .line 500
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 501
    .line 502
    .line 503
    move-result-object v9

    .line 504
    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 509
    .line 510
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 511
    .line 512
    .line 513
    move-result-object v10

    .line 514
    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v10

    .line 518
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 519
    .line 520
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 521
    .line 522
    .line 523
    move-result-object v11

    .line 524
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 529
    .line 530
    .line 531
    move-result-object v13

    .line 532
    if-nez v13, :cond_10

    .line 533
    .line 534
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 535
    .line 536
    .line 537
    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 538
    .line 539
    .line 540
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 541
    .line 542
    .line 543
    move-result v13

    .line 544
    if-eqz v13, :cond_11

    .line 545
    .line 546
    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 547
    .line 548
    .line 549
    goto :goto_a

    .line 550
    :cond_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 551
    .line 552
    .line 553
    :goto_a
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 554
    .line 555
    .line 556
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 557
    .line 558
    .line 559
    move-result-object v11

    .line 560
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    invoke-static {v11, v7, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 575
    .line 576
    .line 577
    move-result-object v7

    .line 578
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 582
    .line 583
    .line 584
    move-result-object v7

    .line 585
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 586
    .line 587
    .line 588
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 589
    .line 590
    .line 591
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 592
    .line 593
    .line 594
    move-result-object v7

    .line 595
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    const/4 v8, 0x0

    .line 600
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    invoke-interface {v0, v7, v2, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    const v0, 0x7ab4aae9

    .line 608
    .line 609
    .line 610
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 611
    .line 612
    .line 613
    invoke-interface {v2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 614
    .line 615
    .line 616
    const/4 v0, 0x6

    .line 617
    shr-int/lit8 v4, v5, 0x6

    .line 618
    .line 619
    and-int/lit8 v4, v4, 0x70

    .line 620
    .line 621
    or-int/2addr v0, v4

    .line 622
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-interface {v1, v6, v2, v0}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 630
    .line 631
    .line 632
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 633
    .line 634
    .line 635
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 636
    .line 637
    .line 638
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 639
    .line 640
    .line 641
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 642
    .line 643
    .line 644
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 645
    .line 646
    .line 647
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 648
    .line 649
    .line 650
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 651
    .line 652
    .line 653
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 654
    .line 655
    .line 656
    :goto_b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    if-nez v6, :cond_12

    .line 661
    .line 662
    goto :goto_c

    .line 663
    :cond_12
    new-instance v7, Landroidx/compose/material/BadgeKt$BadgedBox$3;

    .line 664
    .line 665
    move-object v0, v7

    .line 666
    move-object/from16 v1, p0

    .line 667
    .line 668
    move-object/from16 v2, v16

    .line 669
    .line 670
    move-object/from16 v3, p2

    .line 671
    .line 672
    move/from16 v4, p4

    .line 673
    .line 674
    move/from16 v5, p5

    .line 675
    .line 676
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/BadgeKt$BadgedBox$3;-><init>(Lat/n;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 677
    .line 678
    .line 679
    invoke-interface {v6, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 680
    .line 681
    .line 682
    :goto_c
    return-void
.end method

.method public static final synthetic access$getBadgeContentFontSize$p()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/material/BadgeKt;->BadgeContentFontSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final getBadgeHorizontalOffset()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeHorizontalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getBadgeRadius()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getBadgeWithContentHorizontalOffset()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getBadgeWithContentHorizontalPadding()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeWithContentHorizontalPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final getBadgeWithContentRadius()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/BadgeKt;->BadgeWithContentRadius:F

    .line 2
    .line 3
    return v0
.end method
