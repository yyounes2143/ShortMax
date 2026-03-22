.class public final Landroidx/compose/material/NavigationRailKt;
.super Ljava/lang/Object;
.source "NavigationRail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final HeaderPadding:F

.field private static final ItemIconTopOffset:F

.field private static final ItemLabelBaselineBottomOffset:F

.field private static final NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;
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

.field private static final NavigationRailItemCompactSize:F

.field private static final NavigationRailItemSize:F

.field private static final NavigationRailPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getFastOutSlowInEasing()Landroidx/compose/animation/core/Easing;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v1, 0x12c

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    sput-object v6, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 17
    .line 18
    const/16 v0, 0x48

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 26
    .line 27
    const/16 v0, 0x38

    .line 28
    .line 29
    int-to-float v0, v0

    .line 30
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    sput v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    .line 35
    .line 36
    const/16 v0, 0x8

    .line 37
    .line 38
    int-to-float v0, v0

    .line 39
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    sput v1, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    .line 44
    .line 45
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    .line 50
    .line 51
    const/16 v0, 0x10

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    .line 59
    .line 60
    const/16 v0, 0xe

    .line 61
    .line 62
    int-to-float v0, v0

    .line 63
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    sput v0, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    .line 68
    .line 69
    return-void
.end method

.method public static final NavigationRail-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLat/n;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
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
    move-object/from16 v8, p7

    .line 2
    .line 3
    move/from16 v9, p9

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x6ac00e83

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p8

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    and-int/lit8 v1, p10, 0x1

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    or-int/lit8 v2, v9, 0x6

    .line 24
    .line 25
    move v3, v2

    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v2, v9, 0xe

    .line 30
    .line 31
    if-nez v2, :cond_2

    .line 32
    .line 33
    move-object/from16 v2, p0

    .line 34
    .line 35
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    const/4 v3, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v3, 0x2

    .line 44
    :goto_0
    or-int/2addr v3, v9

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v2, p0

    .line 47
    .line 48
    move v3, v9

    .line 49
    :goto_1
    and-int/lit8 v4, v9, 0x70

    .line 50
    .line 51
    if-nez v4, :cond_5

    .line 52
    .line 53
    and-int/lit8 v4, p10, 0x2

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    move-wide/from16 v4, p1

    .line 58
    .line 59
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    const/16 v6, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-wide/from16 v4, p1

    .line 69
    .line 70
    :cond_4
    const/16 v6, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v3, v6

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    move-wide/from16 v4, p1

    .line 75
    .line 76
    :goto_3
    and-int/lit16 v6, v9, 0x380

    .line 77
    .line 78
    if-nez v6, :cond_8

    .line 79
    .line 80
    and-int/lit8 v6, p10, 0x4

    .line 81
    .line 82
    if-nez v6, :cond_6

    .line 83
    .line 84
    move-wide/from16 v6, p3

    .line 85
    .line 86
    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 87
    .line 88
    .line 89
    move-result v10

    .line 90
    if-eqz v10, :cond_7

    .line 91
    .line 92
    const/16 v10, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-wide/from16 v6, p3

    .line 96
    .line 97
    :cond_7
    const/16 v10, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v3, v10

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move-wide/from16 v6, p3

    .line 102
    .line 103
    :goto_5
    and-int/lit8 v10, p10, 0x8

    .line 104
    .line 105
    if-eqz v10, :cond_a

    .line 106
    .line 107
    or-int/lit16 v3, v3, 0xc00

    .line 108
    .line 109
    :cond_9
    move/from16 v11, p5

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_a
    and-int/lit16 v11, v9, 0x1c00

    .line 113
    .line 114
    if-nez v11, :cond_9

    .line 115
    .line 116
    move/from16 v11, p5

    .line 117
    .line 118
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_b

    .line 123
    .line 124
    const/16 v12, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/16 v12, 0x400

    .line 128
    .line 129
    :goto_6
    or-int/2addr v3, v12

    .line 130
    :goto_7
    and-int/lit8 v12, p10, 0x10

    .line 131
    .line 132
    if-eqz v12, :cond_d

    .line 133
    .line 134
    or-int/lit16 v3, v3, 0x6000

    .line 135
    .line 136
    :cond_c
    move-object/from16 v13, p6

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v13, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v13, v9

    .line 143
    if-nez v13, :cond_c

    .line 144
    .line 145
    move-object/from16 v13, p6

    .line 146
    .line 147
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v14

    .line 151
    if-eqz v14, :cond_e

    .line 152
    .line 153
    const/16 v14, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/16 v14, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v3, v14

    .line 159
    :goto_9
    and-int/lit8 v14, p10, 0x20

    .line 160
    .line 161
    const/high16 v15, 0x70000

    .line 162
    .line 163
    if-eqz v14, :cond_f

    .line 164
    .line 165
    const/high16 v14, 0x30000

    .line 166
    .line 167
    :goto_a
    or-int/2addr v3, v14

    .line 168
    goto :goto_b

    .line 169
    :cond_f
    and-int v14, v9, v15

    .line 170
    .line 171
    if-nez v14, :cond_11

    .line 172
    .line 173
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v14

    .line 177
    if-eqz v14, :cond_10

    .line 178
    .line 179
    const/high16 v14, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_10
    const/high16 v14, 0x10000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    :goto_b
    const v14, 0x5b6db

    .line 186
    .line 187
    .line 188
    and-int/2addr v14, v3

    .line 189
    const v15, 0x12492

    .line 190
    .line 191
    .line 192
    if-ne v14, v15, :cond_13

    .line 193
    .line 194
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 195
    .line 196
    .line 197
    move-result v14

    .line 198
    if-nez v14, :cond_12

    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 202
    .line 203
    .line 204
    move-object v1, v2

    .line 205
    move-wide v2, v4

    .line 206
    move-wide v4, v6

    .line 207
    move v6, v11

    .line 208
    move-object v7, v13

    .line 209
    goto/16 :goto_10

    .line 210
    .line 211
    :cond_13
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 212
    .line 213
    .line 214
    and-int/lit8 v14, v9, 0x1

    .line 215
    .line 216
    const/4 v15, 0x6

    .line 217
    if-eqz v14, :cond_18

    .line 218
    .line 219
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    if-eqz v14, :cond_14

    .line 224
    .line 225
    goto :goto_d

    .line 226
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 227
    .line 228
    .line 229
    and-int/lit8 v1, p10, 0x2

    .line 230
    .line 231
    if-eqz v1, :cond_15

    .line 232
    .line 233
    and-int/lit8 v3, v3, -0x71

    .line 234
    .line 235
    :cond_15
    and-int/lit8 v1, p10, 0x4

    .line 236
    .line 237
    if-eqz v1, :cond_16

    .line 238
    .line 239
    and-int/lit16 v3, v3, -0x381

    .line 240
    .line 241
    :cond_16
    move-object v1, v2

    .line 242
    :cond_17
    move v10, v3

    .line 243
    move v2, v11

    .line 244
    move-object v3, v13

    .line 245
    goto :goto_f

    .line 246
    :cond_18
    :goto_d
    if-eqz v1, :cond_19

    .line 247
    .line 248
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 249
    .line 250
    goto :goto_e

    .line 251
    :cond_19
    move-object v1, v2

    .line 252
    :goto_e
    and-int/lit8 v2, p10, 0x2

    .line 253
    .line 254
    if-eqz v2, :cond_1a

    .line 255
    .line 256
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 257
    .line 258
    invoke-virtual {v2, v0, v15}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 263
    .line 264
    .line 265
    move-result-wide v4

    .line 266
    and-int/lit8 v3, v3, -0x71

    .line 267
    .line 268
    :cond_1a
    and-int/lit8 v2, p10, 0x4

    .line 269
    .line 270
    if-eqz v2, :cond_1b

    .line 271
    .line 272
    shr-int/lit8 v2, v3, 0x3

    .line 273
    .line 274
    and-int/lit8 v2, v2, 0xe

    .line 275
    .line 276
    invoke-static {v4, v5, v0, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 277
    .line 278
    .line 279
    move-result-wide v6

    .line 280
    and-int/lit16 v2, v3, -0x381

    .line 281
    .line 282
    move v3, v2

    .line 283
    :cond_1b
    if-eqz v10, :cond_1c

    .line 284
    .line 285
    sget-object v2, Landroidx/compose/material/NavigationRailDefaults;->INSTANCE:Landroidx/compose/material/NavigationRailDefaults;

    .line 286
    .line 287
    invoke-virtual {v2}, Landroidx/compose/material/NavigationRailDefaults;->getElevation-D9Ej5fM()F

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    move v11, v2

    .line 292
    :cond_1c
    if-eqz v12, :cond_17

    .line 293
    .line 294
    const/4 v2, 0x0

    .line 295
    move v10, v3

    .line 296
    move-object v3, v2

    .line 297
    move v2, v11

    .line 298
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 299
    .line 300
    .line 301
    new-instance v11, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;

    .line 302
    .line 303
    invoke-direct {v11, v3, v10, v8}, Landroidx/compose/material/NavigationRailKt$NavigationRail$1;-><init>(Lat/n;ILat/n;)V

    .line 304
    .line 305
    .line 306
    const v12, -0x5dab4939

    .line 307
    .line 308
    .line 309
    const/4 v13, 0x1

    .line 310
    invoke-static {v0, v12, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 311
    .line 312
    .line 313
    move-result-object v18

    .line 314
    and-int/lit8 v11, v10, 0xe

    .line 315
    .line 316
    const/high16 v12, 0x180000

    .line 317
    .line 318
    or-int/2addr v11, v12

    .line 319
    shl-int/lit8 v12, v10, 0x3

    .line 320
    .line 321
    and-int/lit16 v13, v12, 0x380

    .line 322
    .line 323
    or-int/2addr v11, v13

    .line 324
    and-int/lit16 v12, v12, 0x1c00

    .line 325
    .line 326
    or-int/2addr v11, v12

    .line 327
    shl-int/2addr v10, v15

    .line 328
    const/high16 v12, 0x70000

    .line 329
    .line 330
    and-int/2addr v10, v12

    .line 331
    or-int v20, v11, v10

    .line 332
    .line 333
    const/16 v21, 0x12

    .line 334
    .line 335
    const/4 v11, 0x0

    .line 336
    const/16 v16, 0x0

    .line 337
    .line 338
    move-object v10, v1

    .line 339
    move-wide v12, v4

    .line 340
    move-wide v14, v6

    .line 341
    move/from16 v17, v2

    .line 342
    .line 343
    move-object/from16 v19, v0

    .line 344
    .line 345
    invoke-static/range {v10 .. v21}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 346
    .line 347
    .line 348
    move-wide/from16 v22, v6

    .line 349
    .line 350
    move v6, v2

    .line 351
    move-object v7, v3

    .line 352
    move-wide v2, v4

    .line 353
    move-wide/from16 v4, v22

    .line 354
    .line 355
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 356
    .line 357
    .line 358
    move-result-object v11

    .line 359
    if-nez v11, :cond_1d

    .line 360
    .line 361
    goto :goto_11

    .line 362
    :cond_1d
    new-instance v12, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;

    .line 363
    .line 364
    move-object v0, v12

    .line 365
    move-object/from16 v8, p7

    .line 366
    .line 367
    move/from16 v9, p9

    .line 368
    .line 369
    move/from16 v10, p10

    .line 370
    .line 371
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/NavigationRailKt$NavigationRail$2;-><init>(Landroidx/compose/ui/Modifier;JJFLat/n;Lat/n;II)V

    .line 372
    .line 373
    .line 374
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 375
    .line 376
    .line 377
    :goto_11
    return-void
.end method

.method public static final NavigationRailItem-0S3VyRs(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/interaction/MutableInteractionSource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
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
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v13, p13

    .line 6
    .line 7
    move/from16 v14, p14

    .line 8
    .line 9
    const/16 v0, 0x80

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    const/16 v4, 0x20

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x4

    .line 17
    const/4 v7, 0x6

    .line 18
    const-string v9, "onClick"

    .line 19
    .line 20
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v9, "icon"

    .line 24
    .line 25
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const v9, -0x6c188d9d

    .line 29
    .line 30
    .line 31
    move-object/from16 v10, p12

    .line 32
    .line 33
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    const/4 v10, 0x1

    .line 38
    and-int/lit8 v11, v14, 0x1

    .line 39
    .line 40
    if-eqz v11, :cond_0

    .line 41
    .line 42
    or-int/lit8 v11, v13, 0x6

    .line 43
    .line 44
    move v12, v11

    .line 45
    move/from16 v11, p0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    and-int/lit8 v11, v13, 0xe

    .line 49
    .line 50
    if-nez v11, :cond_2

    .line 51
    .line 52
    move/from16 v11, p0

    .line 53
    .line 54
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-eqz v12, :cond_1

    .line 59
    .line 60
    move v12, v6

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v12, v5

    .line 63
    :goto_0
    or-int/2addr v12, v13

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move/from16 v11, p0

    .line 66
    .line 67
    move v12, v13

    .line 68
    :goto_1
    and-int/2addr v5, v14

    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    or-int/lit8 v12, v12, 0x30

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    and-int/lit8 v5, v13, 0x70

    .line 75
    .line 76
    if-nez v5, :cond_5

    .line 77
    .line 78
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_4

    .line 83
    .line 84
    move v5, v4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v5, v1

    .line 87
    :goto_2
    or-int/2addr v12, v5

    .line 88
    :cond_5
    :goto_3
    and-int/lit8 v5, v14, 0x4

    .line 89
    .line 90
    if-eqz v5, :cond_6

    .line 91
    .line 92
    or-int/lit16 v12, v12, 0x180

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_6
    and-int/lit16 v5, v13, 0x380

    .line 96
    .line 97
    if-nez v5, :cond_8

    .line 98
    .line 99
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_7

    .line 104
    .line 105
    const/16 v5, 0x100

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_7
    move v5, v0

    .line 109
    :goto_4
    or-int/2addr v12, v5

    .line 110
    :cond_8
    :goto_5
    and-int/lit8 v5, v14, 0x8

    .line 111
    .line 112
    if-eqz v5, :cond_a

    .line 113
    .line 114
    or-int/lit16 v12, v12, 0xc00

    .line 115
    .line 116
    :cond_9
    move-object/from16 v6, p3

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_a
    and-int/lit16 v6, v13, 0x1c00

    .line 120
    .line 121
    if-nez v6, :cond_9

    .line 122
    .line 123
    move-object/from16 v6, p3

    .line 124
    .line 125
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    if-eqz v15, :cond_b

    .line 130
    .line 131
    const/16 v15, 0x800

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_b
    const/16 v15, 0x400

    .line 135
    .line 136
    :goto_6
    or-int/2addr v12, v15

    .line 137
    :goto_7
    and-int/2addr v1, v14

    .line 138
    if-eqz v1, :cond_d

    .line 139
    .line 140
    or-int/lit16 v12, v12, 0x6000

    .line 141
    .line 142
    :cond_c
    move/from16 v15, p4

    .line 143
    .line 144
    goto :goto_9

    .line 145
    :cond_d
    const v15, 0xe000

    .line 146
    .line 147
    .line 148
    and-int/2addr v15, v13

    .line 149
    if-nez v15, :cond_c

    .line 150
    .line 151
    move/from16 v15, p4

    .line 152
    .line 153
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 154
    .line 155
    .line 156
    move-result v16

    .line 157
    if-eqz v16, :cond_e

    .line 158
    .line 159
    const/16 v16, 0x4000

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_e
    const/16 v16, 0x2000

    .line 163
    .line 164
    :goto_8
    or-int v12, v12, v16

    .line 165
    .line 166
    :goto_9
    and-int/2addr v4, v14

    .line 167
    if-eqz v4, :cond_f

    .line 168
    .line 169
    const/high16 v16, 0x30000

    .line 170
    .line 171
    or-int v12, v12, v16

    .line 172
    .line 173
    move-object/from16 v7, p5

    .line 174
    .line 175
    goto :goto_b

    .line 176
    :cond_f
    const/high16 v16, 0x70000

    .line 177
    .line 178
    and-int v16, v13, v16

    .line 179
    .line 180
    move-object/from16 v7, p5

    .line 181
    .line 182
    if-nez v16, :cond_11

    .line 183
    .line 184
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v17

    .line 188
    if-eqz v17, :cond_10

    .line 189
    .line 190
    const/high16 v17, 0x20000

    .line 191
    .line 192
    goto :goto_a

    .line 193
    :cond_10
    const/high16 v17, 0x10000

    .line 194
    .line 195
    :goto_a
    or-int v12, v12, v17

    .line 196
    .line 197
    :cond_11
    :goto_b
    and-int/lit8 v17, v14, 0x40

    .line 198
    .line 199
    if-eqz v17, :cond_12

    .line 200
    .line 201
    const/high16 v18, 0x180000

    .line 202
    .line 203
    or-int v12, v12, v18

    .line 204
    .line 205
    move/from16 v10, p6

    .line 206
    .line 207
    goto :goto_d

    .line 208
    :cond_12
    const/high16 v18, 0x380000

    .line 209
    .line 210
    and-int v18, v13, v18

    .line 211
    .line 212
    move/from16 v10, p6

    .line 213
    .line 214
    if-nez v18, :cond_14

    .line 215
    .line 216
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 217
    .line 218
    .line 219
    move-result v18

    .line 220
    if-eqz v18, :cond_13

    .line 221
    .line 222
    const/high16 v18, 0x100000

    .line 223
    .line 224
    goto :goto_c

    .line 225
    :cond_13
    const/high16 v18, 0x80000

    .line 226
    .line 227
    :goto_c
    or-int v12, v12, v18

    .line 228
    .line 229
    :cond_14
    :goto_d
    and-int/2addr v0, v14

    .line 230
    if-eqz v0, :cond_15

    .line 231
    .line 232
    const/high16 v18, 0xc00000

    .line 233
    .line 234
    or-int v12, v12, v18

    .line 235
    .line 236
    move-object/from16 v8, p7

    .line 237
    .line 238
    goto :goto_f

    .line 239
    :cond_15
    const/high16 v18, 0x1c00000

    .line 240
    .line 241
    and-int v18, v13, v18

    .line 242
    .line 243
    move-object/from16 v8, p7

    .line 244
    .line 245
    if-nez v18, :cond_17

    .line 246
    .line 247
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v19

    .line 251
    if-eqz v19, :cond_16

    .line 252
    .line 253
    const/high16 v19, 0x800000

    .line 254
    .line 255
    goto :goto_e

    .line 256
    :cond_16
    const/high16 v19, 0x400000

    .line 257
    .line 258
    :goto_e
    or-int v12, v12, v19

    .line 259
    .line 260
    :cond_17
    :goto_f
    const/high16 v19, 0xe000000

    .line 261
    .line 262
    and-int v19, v13, v19

    .line 263
    .line 264
    if-nez v19, :cond_1a

    .line 265
    .line 266
    const/16 v2, 0x100

    .line 267
    .line 268
    and-int/lit16 v6, v14, 0x100

    .line 269
    .line 270
    if-nez v6, :cond_18

    .line 271
    .line 272
    move-wide/from16 v6, p8

    .line 273
    .line 274
    invoke-interface {v9, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_19

    .line 279
    .line 280
    const/high16 v2, 0x4000000

    .line 281
    .line 282
    goto :goto_10

    .line 283
    :cond_18
    move-wide/from16 v6, p8

    .line 284
    .line 285
    :cond_19
    const/high16 v2, 0x2000000

    .line 286
    .line 287
    :goto_10
    or-int/2addr v12, v2

    .line 288
    goto :goto_11

    .line 289
    :cond_1a
    move-wide/from16 v6, p8

    .line 290
    .line 291
    :goto_11
    const/high16 v2, 0x70000000

    .line 292
    .line 293
    and-int/2addr v2, v13

    .line 294
    if-nez v2, :cond_1c

    .line 295
    .line 296
    and-int/lit16 v2, v14, 0x200

    .line 297
    .line 298
    move-wide/from16 v6, p10

    .line 299
    .line 300
    if-nez v2, :cond_1b

    .line 301
    .line 302
    invoke-interface {v9, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-eqz v2, :cond_1b

    .line 307
    .line 308
    const/high16 v2, 0x20000000

    .line 309
    .line 310
    goto :goto_12

    .line 311
    :cond_1b
    const/high16 v2, 0x10000000

    .line 312
    .line 313
    :goto_12
    or-int/2addr v12, v2

    .line 314
    goto :goto_13

    .line 315
    :cond_1c
    move-wide/from16 v6, p10

    .line 316
    .line 317
    :goto_13
    const v2, 0x5b6db6db

    .line 318
    .line 319
    .line 320
    and-int/2addr v2, v12

    .line 321
    const v6, 0x12492492

    .line 322
    .line 323
    .line 324
    if-ne v2, v6, :cond_1e

    .line 325
    .line 326
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    if-nez v2, :cond_1d

    .line 331
    .line 332
    goto :goto_14

    .line 333
    :cond_1d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 334
    .line 335
    .line 336
    move-object/from16 v4, p3

    .line 337
    .line 338
    move-object/from16 v6, p5

    .line 339
    .line 340
    move-wide/from16 v17, p8

    .line 341
    .line 342
    move-wide/from16 v19, p10

    .line 343
    .line 344
    move v7, v10

    .line 345
    move v5, v15

    .line 346
    goto/16 :goto_1c

    .line 347
    .line 348
    :cond_1e
    :goto_14
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 349
    .line 350
    .line 351
    const/4 v2, 0x1

    .line 352
    and-int/lit8 v6, v13, 0x1

    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    const v7, -0x70000001

    .line 356
    .line 357
    .line 358
    const v19, -0xe000001

    .line 359
    .line 360
    .line 361
    if-eqz v6, :cond_23

    .line 362
    .line 363
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 364
    .line 365
    .line 366
    move-result v6

    .line 367
    if-eqz v6, :cond_1f

    .line 368
    .line 369
    goto :goto_15

    .line 370
    :cond_1f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 371
    .line 372
    .line 373
    const/16 v0, 0x100

    .line 374
    .line 375
    and-int/2addr v0, v14

    .line 376
    if-eqz v0, :cond_20

    .line 377
    .line 378
    and-int v12, v12, v19

    .line 379
    .line 380
    :cond_20
    and-int/lit16 v0, v14, 0x200

    .line 381
    .line 382
    if-eqz v0, :cond_21

    .line 383
    .line 384
    and-int/2addr v12, v7

    .line 385
    :cond_21
    move-object/from16 v5, p3

    .line 386
    .line 387
    move-object/from16 v1, p5

    .line 388
    .line 389
    move-wide/from16 v17, p8

    .line 390
    .line 391
    :cond_22
    move-wide/from16 v19, p10

    .line 392
    .line 393
    goto/16 :goto_19

    .line 394
    .line 395
    :cond_23
    :goto_15
    if-eqz v5, :cond_24

    .line 396
    .line 397
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 398
    .line 399
    goto :goto_16

    .line 400
    :cond_24
    move-object/from16 v5, p3

    .line 401
    .line 402
    :goto_16
    if-eqz v1, :cond_25

    .line 403
    .line 404
    const/4 v15, 0x1

    .line 405
    :cond_25
    if-eqz v4, :cond_26

    .line 406
    .line 407
    move-object v1, v2

    .line 408
    goto :goto_17

    .line 409
    :cond_26
    move-object/from16 v1, p5

    .line 410
    .line 411
    :goto_17
    if-eqz v17, :cond_27

    .line 412
    .line 413
    const/4 v10, 0x1

    .line 414
    :cond_27
    if-eqz v0, :cond_29

    .line 415
    .line 416
    const v0, -0x1d58f75c

    .line 417
    .line 418
    .line 419
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 420
    .line 421
    .line 422
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 427
    .line 428
    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    if-ne v0, v4, :cond_28

    .line 433
    .line 434
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->MutableInteractionSource()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    :cond_28
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 442
    .line 443
    .line 444
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 445
    .line 446
    move-object v8, v0

    .line 447
    :cond_29
    const/16 v0, 0x100

    .line 448
    .line 449
    and-int/2addr v0, v14

    .line 450
    if-eqz v0, :cond_2a

    .line 451
    .line 452
    sget-object v0, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 453
    .line 454
    const/4 v4, 0x6

    .line 455
    invoke-virtual {v0, v9, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-virtual {v0}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 460
    .line 461
    .line 462
    move-result-wide v17

    .line 463
    and-int v12, v12, v19

    .line 464
    .line 465
    goto :goto_18

    .line 466
    :cond_2a
    move-wide/from16 v17, p8

    .line 467
    .line 468
    :goto_18
    and-int/lit16 v0, v14, 0x200

    .line 469
    .line 470
    if-eqz v0, :cond_22

    .line 471
    .line 472
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 481
    .line 482
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 483
    .line 484
    .line 485
    move-result-wide v19

    .line 486
    sget-object v0, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 487
    .line 488
    const/4 v4, 0x6

    .line 489
    invoke-virtual {v0, v9, v4}, Landroidx/compose/material/ContentAlpha;->getMedium(Landroidx/compose/runtime/Composer;I)F

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    const/16 v4, 0xe

    .line 494
    .line 495
    const/4 v6, 0x0

    .line 496
    const/16 v21, 0x0

    .line 497
    .line 498
    const/16 v22, 0x0

    .line 499
    .line 500
    const/16 v23, 0x0

    .line 501
    .line 502
    move-wide/from16 p3, v19

    .line 503
    .line 504
    move/from16 p5, v0

    .line 505
    .line 506
    move/from16 p6, v21

    .line 507
    .line 508
    move/from16 p7, v22

    .line 509
    .line 510
    move/from16 p8, v23

    .line 511
    .line 512
    move/from16 p9, v4

    .line 513
    .line 514
    move-object/from16 p10, v6

    .line 515
    .line 516
    invoke-static/range {p3 .. p10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 517
    .line 518
    .line 519
    move-result-wide v19

    .line 520
    and-int/2addr v12, v7

    .line 521
    :goto_19
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 522
    .line 523
    .line 524
    if-eqz v1, :cond_2b

    .line 525
    .line 526
    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;

    .line 527
    .line 528
    invoke-direct {v0, v1, v12}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$styledLabel$1$1;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 529
    .line 530
    .line 531
    const v2, -0xac0aa17

    .line 532
    .line 533
    .line 534
    const/4 v4, 0x1

    .line 535
    invoke-static {v9, v2, v4, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    :cond_2b
    if-nez v1, :cond_2c

    .line 540
    .line 541
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemCompactSize:F

    .line 542
    .line 543
    goto :goto_1a

    .line 544
    :cond_2c
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemSize:F

    .line 545
    .line 546
    :goto_1a
    shr-int/lit8 v4, v12, 0x12

    .line 547
    .line 548
    and-int/lit16 v4, v4, 0x380

    .line 549
    .line 550
    const/4 v6, 0x6

    .line 551
    or-int/2addr v4, v6

    .line 552
    const/4 v6, 0x2

    .line 553
    const/4 v7, 0x0

    .line 554
    const/16 v21, 0x0

    .line 555
    .line 556
    move/from16 p3, v7

    .line 557
    .line 558
    move/from16 p4, v21

    .line 559
    .line 560
    move-wide/from16 p5, v17

    .line 561
    .line 562
    move-object/from16 p7, v9

    .line 563
    .line 564
    move/from16 p8, v4

    .line 565
    .line 566
    move/from16 p9, v6

    .line 567
    .line 568
    invoke-static/range {p3 .. p9}, Landroidx/compose/material/ripple/RippleKt;->rememberRipple-9IZ8Weo(ZFJLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/Indication;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    sget-object v6, Landroidx/compose/ui/semantics/Role;->Companion:Landroidx/compose/ui/semantics/Role$Companion;

    .line 573
    .line 574
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/Role$Companion;->getTab-o7Vup1c()I

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    invoke-static {v6}, Landroidx/compose/ui/semantics/Role;->box-impl(I)Landroidx/compose/ui/semantics/Role;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    move-object/from16 p3, v5

    .line 583
    .line 584
    move/from16 p4, p0

    .line 585
    .line 586
    move-object/from16 p5, v8

    .line 587
    .line 588
    move-object/from16 p6, v4

    .line 589
    .line 590
    move/from16 p7, v15

    .line 591
    .line 592
    move-object/from16 p8, v6

    .line 593
    .line 594
    move-object/from16 p9, p1

    .line 595
    .line 596
    invoke-static/range {p3 .. p9}, Landroidx/compose/foundation/selection/SelectableKt;->selectable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-static {v4, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sget-object v4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 605
    .line 606
    invoke-virtual {v4}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    const v6, 0x2bb5b5d7

    .line 611
    .line 612
    .line 613
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 614
    .line 615
    .line 616
    const/4 v6, 0x0

    .line 617
    const/4 v7, 0x6

    .line 618
    invoke-static {v4, v6, v9, v7}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    const v7, -0x4ee9b9da

    .line 623
    .line 624
    .line 625
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 626
    .line 627
    .line 628
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 629
    .line 630
    .line 631
    move-result-object v7

    .line 632
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 637
    .line 638
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 639
    .line 640
    .line 641
    move-result-object v6

    .line 642
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v6

    .line 646
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 647
    .line 648
    move-object/from16 p11, v1

    .line 649
    .line 650
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 659
    .line 660
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 661
    .line 662
    move-object/from16 v22, v5

    .line 663
    .line 664
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 665
    .line 666
    .line 667
    move-result-object v5

    .line 668
    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 673
    .line 674
    .line 675
    move-result-object v23

    .line 676
    if-nez v23, :cond_2d

    .line 677
    .line 678
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 679
    .line 680
    .line 681
    :cond_2d
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 682
    .line 683
    .line 684
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 685
    .line 686
    .line 687
    move-result v23

    .line 688
    if-eqz v23, :cond_2e

    .line 689
    .line 690
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 691
    .line 692
    .line 693
    goto :goto_1b

    .line 694
    :cond_2e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 695
    .line 696
    .line 697
    :goto_1b
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 698
    .line 699
    .line 700
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 701
    .line 702
    .line 703
    move-result-object v5

    .line 704
    move-object/from16 v23, v8

    .line 705
    .line 706
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 707
    .line 708
    .line 709
    move-result-object v8

    .line 710
    invoke-static {v5, v4, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    invoke-static {v5, v7, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 718
    .line 719
    .line 720
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 721
    .line 722
    .line 723
    move-result-object v4

    .line 724
    invoke-static {v5, v6, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    invoke-static {v5, v1, v4}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 732
    .line 733
    .line 734
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 735
    .line 736
    .line 737
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    const/4 v4, 0x0

    .line 746
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    invoke-interface {v0, v1, v9, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    const v0, 0x7ab4aae9

    .line 754
    .line 755
    .line 756
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 757
    .line 758
    .line 759
    const v0, -0x7f65a980

    .line 760
    .line 761
    .line 762
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 763
    .line 764
    .line 765
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 766
    .line 767
    const v0, -0xa4dce63

    .line 768
    .line 769
    .line 770
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 771
    .line 772
    .line 773
    new-instance v0, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;

    .line 774
    .line 775
    invoke-direct {v0, v10, v3, v2, v12}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$2$1;-><init>(ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 776
    .line 777
    .line 778
    const v1, 0x27f83098

    .line 779
    .line 780
    .line 781
    const/4 v2, 0x1

    .line 782
    invoke-static {v9, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    shr-int/lit8 v1, v12, 0x18

    .line 787
    .line 788
    and-int/lit8 v2, v1, 0xe

    .line 789
    .line 790
    or-int/lit16 v2, v2, 0xc00

    .line 791
    .line 792
    and-int/lit8 v1, v1, 0x70

    .line 793
    .line 794
    or-int/2addr v1, v2

    .line 795
    const/4 v2, 0x6

    .line 796
    shl-int/lit8 v2, v12, 0x6

    .line 797
    .line 798
    and-int/lit16 v2, v2, 0x380

    .line 799
    .line 800
    or-int/2addr v1, v2

    .line 801
    move-wide/from16 p3, v17

    .line 802
    .line 803
    move-wide/from16 p5, v19

    .line 804
    .line 805
    move/from16 p7, p0

    .line 806
    .line 807
    move-object/from16 p8, v0

    .line 808
    .line 809
    move-object/from16 p9, v9

    .line 810
    .line 811
    move/from16 p10, v1

    .line 812
    .line 813
    invoke-static/range {p3 .. p10}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition-Klgx-Pg(JJZLat/n;Landroidx/compose/runtime/Composer;I)V

    .line 814
    .line 815
    .line 816
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 817
    .line 818
    .line 819
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 820
    .line 821
    .line 822
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 823
    .line 824
    .line 825
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 826
    .line 827
    .line 828
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 829
    .line 830
    .line 831
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 832
    .line 833
    .line 834
    move-object/from16 v6, p11

    .line 835
    .line 836
    move v7, v10

    .line 837
    move v5, v15

    .line 838
    move-object/from16 v4, v22

    .line 839
    .line 840
    move-object/from16 v8, v23

    .line 841
    .line 842
    :goto_1c
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 843
    .line 844
    .line 845
    move-result-object v15

    .line 846
    if-nez v15, :cond_2f

    .line 847
    .line 848
    goto :goto_1d

    .line 849
    :cond_2f
    new-instance v12, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$3;

    .line 850
    .line 851
    move-object v0, v12

    .line 852
    move/from16 v1, p0

    .line 853
    .line 854
    move-object/from16 v2, p1

    .line 855
    .line 856
    move-object/from16 v3, p2

    .line 857
    .line 858
    move-wide/from16 v9, v17

    .line 859
    .line 860
    move-object/from16 v24, v12

    .line 861
    .line 862
    move-wide/from16 v11, v19

    .line 863
    .line 864
    move/from16 v13, p13

    .line 865
    .line 866
    move/from16 v14, p14

    .line 867
    .line 868
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material/NavigationRailKt$NavigationRailItem$3;-><init>(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V

    .line 869
    .line 870
    .line 871
    move-object/from16 v0, v24

    .line 872
    .line 873
    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 874
    .line 875
    .line 876
    :goto_1d
    return-void
.end method

.method private static final NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
    .locals 17
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
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
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;F",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    const v4, -0x717a9fb4

    .line 10
    .line 11
    .line 12
    move-object/from16 v5, p3

    .line 13
    .line 14
    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    and-int/lit8 v5, v3, 0xe

    .line 19
    .line 20
    if-nez v5, :cond_1

    .line 21
    .line 22
    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v5, 0x2

    .line 31
    :goto_0
    or-int/2addr v5, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v5, v3

    .line 34
    :goto_1
    and-int/lit8 v6, v3, 0x70

    .line 35
    .line 36
    if-nez v6, :cond_3

    .line 37
    .line 38
    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    const/16 v6, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v6, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v5, v6

    .line 50
    :cond_3
    and-int/lit16 v6, v3, 0x380

    .line 51
    .line 52
    if-nez v6, :cond_5

    .line 53
    .line 54
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    const/16 v6, 0x100

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    const/16 v6, 0x80

    .line 64
    .line 65
    :goto_3
    or-int/2addr v5, v6

    .line 66
    :cond_5
    and-int/lit16 v6, v5, 0x2db

    .line 67
    .line 68
    const/16 v7, 0x92

    .line 69
    .line 70
    if-ne v6, v7, :cond_7

    .line 71
    .line 72
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_6

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_8

    .line 83
    .line 84
    :cond_7
    :goto_4
    new-instance v6, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2;

    .line 85
    .line 86
    invoke-direct {v6, v1, v2}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$2;-><init>(Lkotlin/jvm/functions/Function2;F)V

    .line 87
    .line 88
    .line 89
    const v7, -0x4ee9b9da

    .line 90
    .line 91
    .line 92
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 93
    .line 94
    .line 95
    sget-object v8, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 116
    .line 117
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 126
    .line 127
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 138
    .line 139
    .line 140
    move-result-object v15

    .line 141
    if-nez v15, :cond_8

    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 144
    .line 145
    .line 146
    :cond_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    if-eqz v15, :cond_9

    .line 154
    .line 155
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 160
    .line 161
    .line 162
    :goto_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 163
    .line 164
    .line 165
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    invoke-static {v13, v6, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v13, v9, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v13, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v13, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 198
    .line 199
    .line 200
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    const/4 v9, 0x0

    .line 209
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    invoke-interface {v14, v6, v4, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const v6, 0x7ab4aae9

    .line 217
    .line 218
    .line 219
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 220
    .line 221
    .line 222
    const v10, 0x73d41275

    .line 223
    .line 224
    .line 225
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 226
    .line 227
    .line 228
    const-string v10, "icon"

    .line 229
    .line 230
    invoke-static {v8, v10}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    const v11, 0x2bb5b5d7

    .line 235
    .line 236
    .line 237
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 238
    .line 239
    .line 240
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 241
    .line 242
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 243
    .line 244
    .line 245
    move-result-object v14

    .line 246
    invoke-static {v14, v9, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 254
    .line 255
    .line 256
    move-result-object v15

    .line 257
    invoke-interface {v4, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 262
    .line 263
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 272
    .line 273
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 282
    .line 283
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 288
    .line 289
    .line 290
    move-result-object v10

    .line 291
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 292
    .line 293
    .line 294
    move-result-object v16

    .line 295
    if-nez v16, :cond_a

    .line 296
    .line 297
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 298
    .line 299
    .line 300
    :cond_a
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 301
    .line 302
    .line 303
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 304
    .line 305
    .line 306
    move-result v16

    .line 307
    if-eqz v16, :cond_b

    .line 308
    .line 309
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 310
    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 314
    .line 315
    .line 316
    :goto_6
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 317
    .line 318
    .line 319
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    invoke-static {v6, v14, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    invoke-static {v6, v15, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 338
    .line 339
    .line 340
    move-result-object v9

    .line 341
    invoke-static {v6, v7, v9}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 345
    .line 346
    .line 347
    move-result-object v7

    .line 348
    invoke-static {v6, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 352
    .line 353
    .line 354
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 355
    .line 356
    .line 357
    move-result-object v6

    .line 358
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    const/4 v7, 0x0

    .line 363
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-interface {v10, v6, v4, v9}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    const v6, 0x7ab4aae9

    .line 371
    .line 372
    .line 373
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 374
    .line 375
    .line 376
    const v6, -0x7f65a980

    .line 377
    .line 378
    .line 379
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 380
    .line 381
    .line 382
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 383
    .line 384
    const v7, 0x53c732af

    .line 385
    .line 386
    .line 387
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 388
    .line 389
    .line 390
    and-int/lit8 v7, v5, 0xe

    .line 391
    .line 392
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-interface {v0, v4, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 400
    .line 401
    .line 402
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 403
    .line 404
    .line 405
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 406
    .line 407
    .line 408
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 409
    .line 410
    .line 411
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 412
    .line 413
    .line 414
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 415
    .line 416
    .line 417
    if-eqz v1, :cond_e

    .line 418
    .line 419
    const-string v7, "label"

    .line 420
    .line 421
    invoke-static {v8, v7}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 422
    .line 423
    .line 424
    move-result-object v7

    .line 425
    invoke-static {v7, v2}, Landroidx/compose/ui/draw/AlphaKt;->alpha(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    const v8, 0x2bb5b5d7

    .line 430
    .line 431
    .line 432
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 436
    .line 437
    .line 438
    move-result-object v8

    .line 439
    const/4 v9, 0x0

    .line 440
    invoke-static {v8, v9, v4, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 441
    .line 442
    .line 443
    move-result-object v8

    .line 444
    const v9, -0x4ee9b9da

    .line 445
    .line 446
    .line 447
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 448
    .line 449
    .line 450
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 451
    .line 452
    .line 453
    move-result-object v9

    .line 454
    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v9

    .line 458
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 459
    .line 460
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v10

    .line 468
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 469
    .line 470
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 471
    .line 472
    .line 473
    move-result-object v11

    .line 474
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v11

    .line 478
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 479
    .line 480
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 481
    .line 482
    .line 483
    move-result-object v13

    .line 484
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 485
    .line 486
    .line 487
    move-result-object v7

    .line 488
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    if-nez v14, :cond_c

    .line 493
    .line 494
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 495
    .line 496
    .line 497
    :cond_c
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 498
    .line 499
    .line 500
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 501
    .line 502
    .line 503
    move-result v14

    .line 504
    if-eqz v14, :cond_d

    .line 505
    .line 506
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 507
    .line 508
    .line 509
    goto :goto_7

    .line 510
    :cond_d
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 511
    .line 512
    .line 513
    :goto_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 514
    .line 515
    .line 516
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 517
    .line 518
    .line 519
    move-result-object v13

    .line 520
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 521
    .line 522
    .line 523
    move-result-object v14

    .line 524
    invoke-static {v13, v8, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 528
    .line 529
    .line 530
    move-result-object v8

    .line 531
    invoke-static {v13, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 535
    .line 536
    .line 537
    move-result-object v8

    .line 538
    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v12}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    invoke-static {v13, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 546
    .line 547
    .line 548
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 549
    .line 550
    .line 551
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 552
    .line 553
    .line 554
    move-result-object v8

    .line 555
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 556
    .line 557
    .line 558
    move-result-object v8

    .line 559
    const/4 v9, 0x0

    .line 560
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v9

    .line 564
    invoke-interface {v7, v8, v4, v9}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    const v7, 0x7ab4aae9

    .line 568
    .line 569
    .line 570
    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 571
    .line 572
    .line 573
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 574
    .line 575
    .line 576
    const v6, 0x7d9886f4

    .line 577
    .line 578
    .line 579
    invoke-interface {v4, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 580
    .line 581
    .line 582
    shr-int/lit8 v5, v5, 0x3

    .line 583
    .line 584
    and-int/lit8 v5, v5, 0xe

    .line 585
    .line 586
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    invoke-interface {v1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 594
    .line 595
    .line 596
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 597
    .line 598
    .line 599
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 600
    .line 601
    .line 602
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 603
    .line 604
    .line 605
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 606
    .line 607
    .line 608
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 609
    .line 610
    .line 611
    :cond_e
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 612
    .line 613
    .line 614
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 615
    .line 616
    .line 617
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 618
    .line 619
    .line 620
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 621
    .line 622
    .line 623
    :goto_8
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 624
    .line 625
    .line 626
    move-result-object v4

    .line 627
    if-nez v4, :cond_f

    .line 628
    .line 629
    goto :goto_9

    .line 630
    :cond_f
    new-instance v5, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;

    .line 631
    .line 632
    invoke-direct {v5, v0, v1, v2, v3}, Landroidx/compose/material/NavigationRailKt$NavigationRailItemBaselineLayout$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FI)V

    .line 633
    .line 634
    .line 635
    invoke-interface {v4, v5}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 636
    .line 637
    .line 638
    :goto_9
    return-void
.end method

.method private static final NavigationRailTransition-Klgx-Pg(JJZLat/n;Landroidx/compose/runtime/Composer;I)V
    .locals 24
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lat/n<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-wide/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v3, p2

    .line 4
    .line 5
    move/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move/from16 v7, p7

    .line 10
    .line 11
    const v0, -0xc590a32

    .line 12
    .line 13
    .line 14
    move-object/from16 v8, p6

    .line 15
    .line 16
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    and-int/lit8 v8, v7, 0xe

    .line 21
    .line 22
    if-nez v8, :cond_1

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    const/4 v8, 0x4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v8, 0x2

    .line 33
    :goto_0
    or-int/2addr v8, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v8, v7

    .line 36
    :goto_1
    and-int/lit8 v9, v7, 0x70

    .line 37
    .line 38
    if-nez v9, :cond_3

    .line 39
    .line 40
    invoke-interface {v0, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_2

    .line 45
    .line 46
    const/16 v9, 0x20

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    const/16 v9, 0x10

    .line 50
    .line 51
    :goto_2
    or-int/2addr v8, v9

    .line 52
    :cond_3
    and-int/lit16 v9, v7, 0x380

    .line 53
    .line 54
    if-nez v9, :cond_5

    .line 55
    .line 56
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 57
    .line 58
    .line 59
    move-result v9

    .line 60
    if-eqz v9, :cond_4

    .line 61
    .line 62
    const/16 v9, 0x100

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/16 v9, 0x80

    .line 66
    .line 67
    :goto_3
    or-int/2addr v8, v9

    .line 68
    :cond_5
    and-int/lit16 v9, v7, 0x1c00

    .line 69
    .line 70
    if-nez v9, :cond_7

    .line 71
    .line 72
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v9

    .line 76
    if-eqz v9, :cond_6

    .line 77
    .line 78
    const/16 v9, 0x800

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const/16 v9, 0x400

    .line 82
    .line 83
    :goto_4
    or-int/2addr v8, v9

    .line 84
    :cond_7
    move v15, v8

    .line 85
    and-int/lit16 v8, v15, 0x16db

    .line 86
    .line 87
    const/16 v9, 0x492

    .line 88
    .line 89
    if-ne v8, v9, :cond_9

    .line 90
    .line 91
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_8

    .line 96
    .line 97
    goto :goto_5

    .line 98
    :cond_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 99
    .line 100
    .line 101
    goto :goto_7

    .line 102
    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    .line 103
    .line 104
    const/high16 v8, 0x3f800000    # 1.0f

    .line 105
    .line 106
    goto :goto_6

    .line 107
    :cond_a
    const/4 v8, 0x0

    .line 108
    :goto_6
    sget-object v9, Landroidx/compose/material/NavigationRailKt;->NavigationRailAnimationSpec:Landroidx/compose/animation/core/TweenSpec;

    .line 109
    .line 110
    const/16 v13, 0x30

    .line 111
    .line 112
    const/16 v14, 0xc

    .line 113
    .line 114
    const/4 v10, 0x0

    .line 115
    const/4 v11, 0x0

    .line 116
    move-object v12, v0

    .line 117
    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/core/AnimateAsStateKt;->animateFloatAsState(FLandroidx/compose/animation/core/AnimationSpec;FLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-static {v8}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition_Klgx_Pg$lambda-3(Landroidx/compose/runtime/State;)F

    .line 122
    .line 123
    .line 124
    move-result v9

    .line 125
    invoke-static {v3, v4, v1, v2, v9}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    .line 126
    .line 127
    .line 128
    move-result-wide v9

    .line 129
    invoke-static {}, Landroidx/compose/material/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 130
    .line 131
    .line 132
    move-result-object v11

    .line 133
    const/16 v22, 0xe

    .line 134
    .line 135
    const/16 v23, 0x0

    .line 136
    .line 137
    const/high16 v18, 0x3f800000    # 1.0f

    .line 138
    .line 139
    const/16 v19, 0x0

    .line 140
    .line 141
    const/16 v20, 0x0

    .line 142
    .line 143
    const/16 v21, 0x0

    .line 144
    .line 145
    move-wide/from16 v16, v9

    .line 146
    .line 147
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 148
    .line 149
    .line 150
    move-result-wide v12

    .line 151
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 152
    .line 153
    .line 154
    move-result-object v12

    .line 155
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 156
    .line 157
    .line 158
    move-result-object v11

    .line 159
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 160
    .line 161
    .line 162
    move-result-object v12

    .line 163
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 164
    .line 165
    .line 166
    move-result v9

    .line 167
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    filled-new-array {v11, v9}, [Landroidx/compose/runtime/ProvidedValue;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    new-instance v10, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;

    .line 180
    .line 181
    invoke-direct {v10, v6, v15, v8}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$1;-><init>(Lat/n;ILandroidx/compose/runtime/State;)V

    .line 182
    .line 183
    .line 184
    const v8, -0x649ff6f2

    .line 185
    .line 186
    .line 187
    const/4 v11, 0x1

    .line 188
    invoke-static {v0, v8, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    const/16 v10, 0x38

    .line 193
    .line 194
    invoke-static {v9, v8, v0, v10}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 195
    .line 196
    .line 197
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    if-nez v8, :cond_b

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_b
    new-instance v9, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;

    .line 205
    .line 206
    move-object v0, v9

    .line 207
    move-wide/from16 v1, p0

    .line 208
    .line 209
    move-wide/from16 v3, p2

    .line 210
    .line 211
    move/from16 v5, p4

    .line 212
    .line 213
    move-object/from16 v6, p5

    .line 214
    .line 215
    move/from16 v7, p7

    .line 216
    .line 217
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/NavigationRailKt$NavigationRailTransition$2;-><init>(JJZLat/n;I)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 221
    .line 222
    .line 223
    :goto_8
    return-void
.end method

.method private static final NavigationRailTransition_Klgx_Pg$lambda-3(Landroidx/compose/runtime/State;)F
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

.method public static final synthetic access$NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material/NavigationRailKt;->NavigationRailItemBaselineLayout(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$NavigationRailTransition-Klgx-Pg(JJZLat/n;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition-Klgx-Pg(JJZLat/n;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$NavigationRailTransition_Klgx_Pg$lambda-3(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/NavigationRailKt;->NavigationRailTransition_Klgx_Pg$lambda-3(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getHeaderPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->HeaderPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNavigationRailPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/NavigationRailKt;->NavigationRailPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/NavigationRailKt;->placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/NavigationRailKt;->placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final placeIcon-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9

    .line 1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    div-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sub-int/2addr v2, v3

    .line 26
    div-int/lit8 v2, v2, 0x2

    .line 27
    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    new-instance v6, Landroidx/compose/material/NavigationRailKt$placeIcon$1;

    .line 41
    .line 42
    invoke-direct {v6, p1, v0, v1}, Landroidx/compose/material/NavigationRailKt$placeIcon$1;-><init>(Landroidx/compose/ui/layout/Placeable;II)V

    .line 43
    .line 44
    .line 45
    const/4 v7, 0x4

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v2, p0

    .line 49
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static final placeLabelAndIcon-DIyivk0(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JF)Landroidx/compose/ui/layout/MeasureResult;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    move-object v4, p1

    .line 7
    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sget v2, Landroidx/compose/material/NavigationRailKt;->ItemLabelBaselineBottomOffset:F

    .line 12
    .line 13
    invoke-interface {p0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, v1

    .line 22
    sub-int v6, v3, v2

    .line 23
    .line 24
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    sub-int/2addr v1, v2

    .line 33
    div-int/lit8 v5, v1, 0x2

    .line 34
    .line 35
    sget v1, Landroidx/compose/material/NavigationRailKt;->ItemIconTopOffset:F

    .line 36
    .line 37
    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    sub-int/2addr v1, v2

    .line 50
    div-int/lit8 v1, v1, 0x2

    .line 51
    .line 52
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sub-int/2addr v2, v3

    .line 61
    div-int/lit8 v9, v2, 0x2

    .line 62
    .line 63
    sub-int/2addr v1, v10

    .line 64
    int-to-float v1, v1

    .line 65
    const/4 v2, 0x1

    .line 66
    int-to-float v2, v2

    .line 67
    sub-float v2, v2, p5

    .line 68
    .line 69
    mul-float/2addr v1, v2

    .line 70
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    new-instance v12, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;

    .line 83
    .line 84
    move-object v2, v12

    .line 85
    move/from16 v3, p5

    .line 86
    .line 87
    move-object v8, p2

    .line 88
    invoke-direct/range {v2 .. v10}, Landroidx/compose/material/NavigationRailKt$placeLabelAndIcon$1;-><init>(FLandroidx/compose/ui/layout/Placeable;IIILandroidx/compose/ui/layout/Placeable;II)V

    .line 89
    .line 90
    .line 91
    const/4 v5, 0x4

    .line 92
    const/4 v6, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    move v2, v11

    .line 95
    move-object v4, v12

    .line 96
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method
