.class public final Landroidx/compose/material/ProgressIndicatorKt;
.super Ljava/lang/Object;
.source "ProgressIndicator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final BaseRotationAngle:F = 286.0f

.field private static final CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CircularIndicatorDiameter:F

.field private static final FirstLineHeadDelay:I = 0x0

.field private static final FirstLineHeadDuration:I = 0x2ee

.field private static final FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final FirstLineTailDelay:I = 0x14d

.field private static final FirstLineTailDuration:I = 0x352

.field private static final FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final HeadAndTailAnimationDuration:I = 0x29a

.field private static final HeadAndTailDelayDuration:I = 0x29a

.field private static final JumpRotationAngle:F = 290.0f

.field private static final LinearAnimationDuration:I = 0x708

.field private static final LinearIndicatorHeight:F

.field private static final LinearIndicatorWidth:F

.field private static final RotationAngleOffset:F = 216.0f

.field private static final RotationDuration:I = 0x534

.field private static final RotationsPerCycle:I = 0x5

.field private static final SecondLineHeadDelay:I = 0x3e8

.field private static final SecondLineHeadDuration:I = 0x237

.field private static final SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SecondLineTailDelay:I = 0x4f3

.field private static final SecondLineTailDuration:I = 0x215

.field private static final SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final StartAngleOffset:F = -90.0f


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/material/ProgressIndicatorDefaults;->getStrokeWidth-D9Ej5fM()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 8
    .line 9
    const/16 v0, 0xf0

    .line 10
    .line 11
    int-to-float v0, v0

    .line 12
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 17
    .line 18
    const/16 v0, 0x28

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
    sput v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 26
    .line 27
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 28
    .line 29
    const v1, 0x3e4ccccd    # 0.2f

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    const v3, 0x3f4ccccd    # 0.8f

    .line 34
    .line 35
    .line 36
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    .line 38
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 42
    .line 43
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 44
    .line 45
    const v3, 0x3ecccccd    # 0.4f

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v3, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 52
    .line 53
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 54
    .line 55
    const v5, 0x3f266666    # 0.65f

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2, v2, v5, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 62
    .line 63
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 64
    .line 65
    const v5, 0x3dcccccd    # 0.1f

    .line 66
    .line 67
    .line 68
    const v6, 0x3ee66666    # 0.45f

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v5, v2, v6, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 72
    .line 73
    .line 74
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 75
    .line 76
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 77
    .line 78
    invoke-direct {v0, v3, v2, v1, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 82
    .line 83
    return-void
.end method

.method public static final CircularProgressIndicator-MBs18nI(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p6

    .line 4
    .line 5
    const v0, -0x186ac24b

    .line 6
    .line 7
    .line 8
    move-object/from16 v1, p5

    .line 9
    .line 10
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    .line 13
    move-result-object v8

    .line 14
    and-int/lit8 v0, p7, 0x1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    or-int/lit8 v0, v7, 0x6

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v0, v7, 0xe

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x2

    .line 34
    :goto_0
    or-int/2addr v0, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v0, v7

    .line 37
    :goto_1
    and-int/lit8 v1, p7, 0x2

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    or-int/lit8 v0, v0, 0x30

    .line 42
    .line 43
    :cond_3
    move-object/from16 v2, p1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    and-int/lit8 v2, v7, 0x70

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    move-object/from16 v2, p1

    .line 51
    .line 52
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_5

    .line 57
    .line 58
    const/16 v3, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    const/16 v3, 0x10

    .line 62
    .line 63
    :goto_2
    or-int/2addr v0, v3

    .line 64
    :goto_3
    and-int/lit16 v3, v7, 0x380

    .line 65
    .line 66
    if-nez v3, :cond_8

    .line 67
    .line 68
    and-int/lit8 v3, p7, 0x4

    .line 69
    .line 70
    if-nez v3, :cond_6

    .line 71
    .line 72
    move-wide/from16 v3, p2

    .line 73
    .line 74
    invoke-interface {v8, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_7

    .line 79
    .line 80
    const/16 v5, 0x100

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_6
    move-wide/from16 v3, p2

    .line 84
    .line 85
    :cond_7
    const/16 v5, 0x80

    .line 86
    .line 87
    :goto_4
    or-int/2addr v0, v5

    .line 88
    goto :goto_5

    .line 89
    :cond_8
    move-wide/from16 v3, p2

    .line 90
    .line 91
    :goto_5
    and-int/lit8 v5, p7, 0x8

    .line 92
    .line 93
    if-eqz v5, :cond_a

    .line 94
    .line 95
    or-int/lit16 v0, v0, 0xc00

    .line 96
    .line 97
    :cond_9
    move/from16 v9, p4

    .line 98
    .line 99
    goto :goto_7

    .line 100
    :cond_a
    and-int/lit16 v9, v7, 0x1c00

    .line 101
    .line 102
    if-nez v9, :cond_9

    .line 103
    .line 104
    move/from16 v9, p4

    .line 105
    .line 106
    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_b

    .line 111
    .line 112
    const/16 v10, 0x800

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_b
    const/16 v10, 0x400

    .line 116
    .line 117
    :goto_6
    or-int/2addr v0, v10

    .line 118
    :goto_7
    and-int/lit16 v0, v0, 0x16db

    .line 119
    .line 120
    const/16 v10, 0x492

    .line 121
    .line 122
    if-ne v0, v10, :cond_d

    .line 123
    .line 124
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_c

    .line 129
    .line 130
    goto :goto_8

    .line 131
    :cond_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 132
    .line 133
    .line 134
    move v5, v9

    .line 135
    goto/16 :goto_d

    .line 136
    .line 137
    :cond_d
    :goto_8
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 138
    .line 139
    .line 140
    and-int/lit8 v0, v7, 0x1

    .line 141
    .line 142
    if-eqz v0, :cond_f

    .line 143
    .line 144
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_e

    .line 149
    .line 150
    goto :goto_9

    .line 151
    :cond_e
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 152
    .line 153
    .line 154
    move-wide v10, v3

    .line 155
    move v12, v9

    .line 156
    move-object v9, v2

    .line 157
    goto :goto_c

    .line 158
    :cond_f
    :goto_9
    if-eqz v1, :cond_10

    .line 159
    .line 160
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 161
    .line 162
    goto :goto_a

    .line 163
    :cond_10
    move-object v0, v2

    .line 164
    :goto_a
    and-int/lit8 v1, p7, 0x4

    .line 165
    .line 166
    if-eqz v1, :cond_11

    .line 167
    .line 168
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 169
    .line 170
    const/4 v2, 0x6

    .line 171
    invoke-virtual {v1, v8, v2}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    goto :goto_b

    .line 180
    :cond_11
    move-wide v1, v3

    .line 181
    :goto_b
    if-eqz v5, :cond_12

    .line 182
    .line 183
    sget-object v3, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 184
    .line 185
    invoke-virtual {v3}, Landroidx/compose/material/ProgressIndicatorDefaults;->getStrokeWidth-D9Ej5fM()F

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    move-object v9, v0

    .line 190
    move-wide v10, v1

    .line 191
    move v12, v3

    .line 192
    goto :goto_c

    .line 193
    :cond_12
    move-wide v10, v1

    .line 194
    move v12, v9

    .line 195
    move-object v9, v0

    .line 196
    :goto_c
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 208
    .line 209
    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 210
    .line 211
    invoke-interface {v0, v12}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 218
    .line 219
    .line 220
    move-result v16

    .line 221
    const/16 v19, 0x1a

    .line 222
    .line 223
    const/16 v20, 0x0

    .line 224
    .line 225
    const/4 v15, 0x0

    .line 226
    const/16 v17, 0x0

    .line 227
    .line 228
    const/16 v18, 0x0

    .line 229
    .line 230
    move-object v13, v5

    .line 231
    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    .line 233
    .line 234
    const/4 v4, 0x6

    .line 235
    const/4 v13, 0x0

    .line 236
    const/4 v2, 0x0

    .line 237
    const/4 v3, 0x0

    .line 238
    move-object v0, v9

    .line 239
    move/from16 v1, p0

    .line 240
    .line 241
    move-object v14, v5

    .line 242
    move-object v5, v13

    .line 243
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics$default(Landroidx/compose/ui/Modifier;FLdt/b;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    sget v1, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 248
    .line 249
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v1, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$1;

    .line 254
    .line 255
    invoke-direct {v1, v6, v10, v11, v14}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$1;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 256
    .line 257
    .line 258
    const/4 v2, 0x0

    .line 259
    invoke-static {v0, v1, v8, v2}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 260
    .line 261
    .line 262
    move-object v2, v9

    .line 263
    move-wide v3, v10

    .line 264
    move v5, v12

    .line 265
    :goto_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    if-nez v8, :cond_13

    .line 270
    .line 271
    goto :goto_e

    .line 272
    :cond_13
    new-instance v9, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$2;

    .line 273
    .line 274
    move-object v0, v9

    .line 275
    move/from16 v1, p0

    .line 276
    .line 277
    move/from16 v6, p6

    .line 278
    .line 279
    move/from16 v7, p7

    .line 280
    .line 281
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JFII)V

    .line 282
    .line 283
    .line 284
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 285
    .line 286
    .line 287
    :goto_e
    return-void
.end method

.method public static final CircularProgressIndicator-aM-cp0Q(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V
    .locals 30
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v5, p5

    .line 2
    .line 3
    const v0, -0x175ed17b

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p4

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p6, 0x1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    or-int/lit8 v3, v5, 0x6

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
    and-int/lit8 v3, v5, 0xe

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
    or-int/2addr v4, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move-object/from16 v3, p0

    .line 41
    .line 42
    move v4, v5

    .line 43
    :goto_1
    and-int/lit8 v6, v5, 0x70

    .line 44
    .line 45
    if-nez v6, :cond_5

    .line 46
    .line 47
    and-int/lit8 v6, p6, 0x2

    .line 48
    .line 49
    if-nez v6, :cond_3

    .line 50
    .line 51
    move-wide/from16 v6, p1

    .line 52
    .line 53
    invoke-interface {v0, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

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
    move-wide/from16 v6, p1

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
    move-wide/from16 v6, p1

    .line 69
    .line 70
    :goto_3
    and-int/lit8 v8, p6, 0x4

    .line 71
    .line 72
    if-eqz v8, :cond_7

    .line 73
    .line 74
    or-int/lit16 v4, v4, 0x180

    .line 75
    .line 76
    :cond_6
    move/from16 v9, p3

    .line 77
    .line 78
    goto :goto_5

    .line 79
    :cond_7
    and-int/lit16 v9, v5, 0x380

    .line 80
    .line 81
    if-nez v9, :cond_6

    .line 82
    .line 83
    move/from16 v9, p3

    .line 84
    .line 85
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 86
    .line 87
    .line 88
    move-result v10

    .line 89
    if-eqz v10, :cond_8

    .line 90
    .line 91
    const/16 v10, 0x100

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_8
    const/16 v10, 0x80

    .line 95
    .line 96
    :goto_4
    or-int/2addr v4, v10

    .line 97
    :goto_5
    and-int/lit16 v4, v4, 0x2db

    .line 98
    .line 99
    const/16 v10, 0x92

    .line 100
    .line 101
    if-ne v4, v10, :cond_a

    .line 102
    .line 103
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_9

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 111
    .line 112
    .line 113
    move-object v1, v3

    .line 114
    move-wide v2, v6

    .line 115
    move v4, v9

    .line 116
    goto/16 :goto_b

    .line 117
    .line 118
    :cond_a
    :goto_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 119
    .line 120
    .line 121
    and-int/lit8 v4, v5, 0x1

    .line 122
    .line 123
    if-eqz v4, :cond_d

    .line 124
    .line 125
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_b

    .line 130
    .line 131
    goto :goto_7

    .line 132
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    move-object v1, v3

    .line 136
    move-wide v3, v6

    .line 137
    :cond_c
    move v15, v9

    .line 138
    goto :goto_a

    .line 139
    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 140
    .line 141
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_e
    move-object v1, v3

    .line 145
    :goto_8
    and-int/lit8 v3, p6, 0x2

    .line 146
    .line 147
    if-eqz v3, :cond_f

    .line 148
    .line 149
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 150
    .line 151
    const/4 v4, 0x6

    .line 152
    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 157
    .line 158
    .line 159
    move-result-wide v3

    .line 160
    goto :goto_9

    .line 161
    :cond_f
    move-wide v3, v6

    .line 162
    :goto_9
    if-eqz v8, :cond_c

    .line 163
    .line 164
    sget-object v6, Landroidx/compose/material/ProgressIndicatorDefaults;->INSTANCE:Landroidx/compose/material/ProgressIndicatorDefaults;

    .line 165
    .line 166
    invoke-virtual {v6}, Landroidx/compose/material/ProgressIndicatorDefaults;->getStrokeWidth-D9Ej5fM()F

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    move v15, v6

    .line 171
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Landroidx/compose/ui/unit/Density;

    .line 183
    .line 184
    new-instance v16, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 185
    .line 186
    invoke-interface {v6, v15}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    sget-object v6, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 191
    .line 192
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getSquare-KaPHkGw()I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    const/16 v13, 0x1a

    .line 197
    .line 198
    const/4 v14, 0x0

    .line 199
    const/4 v9, 0x0

    .line 200
    const/4 v11, 0x0

    .line 201
    const/4 v12, 0x0

    .line 202
    move-object/from16 v7, v16

    .line 203
    .line 204
    invoke-direct/range {v7 .. v14}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 205
    .line 206
    .line 207
    const/4 v14, 0x0

    .line 208
    invoke-static {v0, v14}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const/4 v6, 0x5

    .line 217
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    sget-object v6, Lkotlin/jvm/internal/IntCompanionObject;->INSTANCE:Lkotlin/jvm/internal/IntCompanionObject;

    .line 222
    .line 223
    invoke-static {v6}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/IntCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 224
    .line 225
    .line 226
    move-result-object v9

    .line 227
    const/16 v6, 0x1a04

    .line 228
    .line 229
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-static {v6, v14, v10, v2, v12}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 234
    .line 235
    .line 236
    move-result-object v17

    .line 237
    const/16 v21, 0x6

    .line 238
    .line 239
    const/16 v22, 0x0

    .line 240
    .line 241
    const/16 v18, 0x0

    .line 242
    .line 243
    const-wide/16 v19, 0x0

    .line 244
    .line 245
    invoke-static/range {v17 .. v22}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 246
    .line 247
    .line 248
    move-result-object v10

    .line 249
    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    .line 250
    .line 251
    or-int/lit16 v6, v11, 0x11b0

    .line 252
    .line 253
    sget v17, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    .line 254
    .line 255
    shl-int/lit8 v18, v17, 0xc

    .line 256
    .line 257
    or-int v18, v6, v18

    .line 258
    .line 259
    move-object v6, v13

    .line 260
    move/from16 v23, v11

    .line 261
    .line 262
    move-object v11, v0

    .line 263
    move-object v5, v12

    .line 264
    move/from16 v12, v18

    .line 265
    .line 266
    invoke-static/range {v6 .. v12}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateValue(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 267
    .line 268
    .line 269
    move-result-object v12

    .line 270
    const/16 v6, 0x534

    .line 271
    .line 272
    invoke-static {}, Landroidx/compose/animation/core/EasingKt;->getLinearEasing()Landroidx/compose/animation/core/Easing;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    invoke-static {v6, v14, v7, v2, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    .line 277
    .line 278
    .line 279
    move-result-object v24

    .line 280
    const/16 v28, 0x6

    .line 281
    .line 282
    const/16 v29, 0x0

    .line 283
    .line 284
    const/16 v25, 0x0

    .line 285
    .line 286
    const-wide/16 v26, 0x0

    .line 287
    .line 288
    invoke-static/range {v24 .. v29}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    move/from16 v2, v23

    .line 293
    .line 294
    or-int/lit16 v5, v2, 0x1b0

    .line 295
    .line 296
    shl-int/lit8 v6, v17, 0x9

    .line 297
    .line 298
    or-int v11, v5, v6

    .line 299
    .line 300
    const/4 v7, 0x0

    .line 301
    const/high16 v8, 0x438f0000    # 286.0f

    .line 302
    .line 303
    move-object v6, v13

    .line 304
    move-object v10, v0

    .line 305
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    sget-object v6, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$endAngle$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$endAngle$2;

    .line 310
    .line 311
    invoke-static {v6}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 312
    .line 313
    .line 314
    move-result-object v18

    .line 315
    const/16 v22, 0x6

    .line 316
    .line 317
    const/16 v23, 0x0

    .line 318
    .line 319
    const/16 v19, 0x0

    .line 320
    .line 321
    const-wide/16 v20, 0x0

    .line 322
    .line 323
    invoke-static/range {v18 .. v23}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    or-int/lit16 v6, v2, 0x1b0

    .line 328
    .line 329
    shl-int/lit8 v7, v17, 0x9

    .line 330
    .line 331
    or-int v11, v6, v7

    .line 332
    .line 333
    const/4 v7, 0x0

    .line 334
    const/high16 v8, 0x43910000    # 290.0f

    .line 335
    .line 336
    move-object v6, v13

    .line 337
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 338
    .line 339
    .line 340
    move-result-object v18

    .line 341
    sget-object v6, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$startAngle$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$startAngle$2;

    .line 342
    .line 343
    invoke-static {v6}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 344
    .line 345
    .line 346
    move-result-object v19

    .line 347
    const/16 v23, 0x6

    .line 348
    .line 349
    const/16 v24, 0x0

    .line 350
    .line 351
    const/16 v20, 0x0

    .line 352
    .line 353
    const-wide/16 v21, 0x0

    .line 354
    .line 355
    invoke-static/range {v19 .. v24}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 356
    .line 357
    .line 358
    move-result-object v9

    .line 359
    or-int/lit16 v2, v2, 0x1b0

    .line 360
    .line 361
    shl-int/lit8 v6, v17, 0x9

    .line 362
    .line 363
    or-int v11, v2, v6

    .line 364
    .line 365
    move-object v6, v13

    .line 366
    invoke-static/range {v6 .. v11}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 367
    .line 368
    .line 369
    move-result-object v13

    .line 370
    invoke-static {v1}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    sget v6, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 375
    .line 376
    invoke-static {v2, v6}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    new-instance v11, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3;

    .line 381
    .line 382
    move-object v6, v11

    .line 383
    move v7, v15

    .line 384
    move-wide v8, v3

    .line 385
    move-object/from16 v10, v16

    .line 386
    .line 387
    move-object/from16 p0, v1

    .line 388
    .line 389
    move-object v1, v11

    .line 390
    move-object v11, v12

    .line 391
    move-object/from16 v12, v18

    .line 392
    .line 393
    move-wide/from16 p1, v3

    .line 394
    .line 395
    move v3, v14

    .line 396
    move-object v14, v5

    .line 397
    invoke-direct/range {v6 .. v14}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$3;-><init>(FJLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 398
    .line 399
    .line 400
    invoke-static {v2, v1, v0, v3}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 401
    .line 402
    .line 403
    move-object/from16 v1, p0

    .line 404
    .line 405
    move-wide/from16 v2, p1

    .line 406
    .line 407
    move v4, v15

    .line 408
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 409
    .line 410
    .line 411
    move-result-object v7

    .line 412
    if-nez v7, :cond_10

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_10
    new-instance v8, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;

    .line 416
    .line 417
    move-object v0, v8

    .line 418
    move/from16 v5, p5

    .line 419
    .line 420
    move/from16 v6, p6

    .line 421
    .line 422
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/ProgressIndicatorKt$CircularProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JFII)V

    .line 423
    .line 424
    .line 425
    invoke-interface {v7, v8}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    :goto_c
    return-void
.end method

.method private static final CircularProgressIndicator_aM_cp0Q$lambda-10(Landroidx/compose/runtime/State;)F
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

.method private static final CircularProgressIndicator_aM_cp0Q$lambda-11(Landroidx/compose/runtime/State;)F
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

.method private static final CircularProgressIndicator_aM_cp0Q$lambda-8(Landroidx/compose/runtime/State;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)I"
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
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final CircularProgressIndicator_aM_cp0Q$lambda-9(Landroidx/compose/runtime/State;)F
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

.method public static final LinearProgressIndicator-RIQooxk(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    const v0, -0x30d701c2

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p7, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    or-int/lit8 v2, v6, 0x6

    .line 17
    .line 18
    move v3, v2

    .line 19
    move-object/from16 v2, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object/from16 v2, p0

    .line 40
    .line 41
    move v3, v6

    .line 42
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 43
    .line 44
    if-nez v4, :cond_5

    .line 45
    .line 46
    and-int/lit8 v4, p7, 0x2

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move-wide/from16 v4, p1

    .line 51
    .line 52
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_4

    .line 57
    .line 58
    const/16 v7, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-wide/from16 v4, p1

    .line 62
    .line 63
    :cond_4
    const/16 v7, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v3, v7

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    move-wide/from16 v4, p1

    .line 68
    .line 69
    :goto_3
    and-int/lit16 v7, v6, 0x380

    .line 70
    .line 71
    if-nez v7, :cond_8

    .line 72
    .line 73
    and-int/lit8 v7, p7, 0x4

    .line 74
    .line 75
    if-nez v7, :cond_6

    .line 76
    .line 77
    move-wide/from16 v7, p3

    .line 78
    .line 79
    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-eqz v9, :cond_7

    .line 84
    .line 85
    const/16 v9, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    move-wide/from16 v7, p3

    .line 89
    .line 90
    :cond_7
    const/16 v9, 0x80

    .line 91
    .line 92
    :goto_4
    or-int/2addr v3, v9

    .line 93
    goto :goto_5

    .line 94
    :cond_8
    move-wide/from16 v7, p3

    .line 95
    .line 96
    :goto_5
    and-int/lit16 v3, v3, 0x2db

    .line 97
    .line 98
    const/16 v9, 0x92

    .line 99
    .line 100
    if-ne v3, v9, :cond_a

    .line 101
    .line 102
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_9

    .line 107
    .line 108
    goto :goto_7

    .line 109
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 110
    .line 111
    .line 112
    move-object v1, v2

    .line 113
    move-wide v2, v4

    .line 114
    :goto_6
    move-wide v4, v7

    .line 115
    goto/16 :goto_d

    .line 116
    .line 117
    :cond_a
    :goto_7
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 118
    .line 119
    .line 120
    and-int/lit8 v3, v6, 0x1

    .line 121
    .line 122
    const/4 v9, 0x6

    .line 123
    if-eqz v3, :cond_c

    .line 124
    .line 125
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_b

    .line 130
    .line 131
    goto :goto_8

    .line 132
    :cond_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 133
    .line 134
    .line 135
    move-object v1, v2

    .line 136
    move-wide v2, v4

    .line 137
    goto :goto_b

    .line 138
    :cond_c
    :goto_8
    if-eqz v1, :cond_d

    .line 139
    .line 140
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_d
    move-object v1, v2

    .line 144
    :goto_9
    and-int/lit8 v2, p7, 0x2

    .line 145
    .line 146
    if-eqz v2, :cond_e

    .line 147
    .line 148
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 149
    .line 150
    invoke-virtual {v2, v0, v9}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 155
    .line 156
    .line 157
    move-result-wide v2

    .line 158
    goto :goto_a

    .line 159
    :cond_e
    move-wide v2, v4

    .line 160
    :goto_a
    and-int/lit8 v4, p7, 0x4

    .line 161
    .line 162
    if-eqz v4, :cond_f

    .line 163
    .line 164
    const/16 v16, 0xe

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    const v12, 0x3e75c28f    # 0.24f

    .line 169
    .line 170
    .line 171
    const/4 v13, 0x0

    .line 172
    const/4 v14, 0x0

    .line 173
    const/4 v15, 0x0

    .line 174
    move-wide v10, v2

    .line 175
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v4

    .line 179
    move-wide v7, v4

    .line 180
    :cond_f
    :goto_b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 181
    .line 182
    .line 183
    const/4 v4, 0x0

    .line 184
    invoke-static {v0, v4}, Landroidx/compose/animation/core/InfiniteTransitionKt;->rememberInfiniteTransition(Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/InfiniteTransition;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    sget-object v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineHead$2;

    .line 189
    .line 190
    invoke-static {v10}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    const/4 v11, 0x6

    .line 195
    const/4 v12, 0x0

    .line 196
    const/4 v13, 0x0

    .line 197
    const-wide/16 v14, 0x0

    .line 198
    .line 199
    move-object/from16 p0, v10

    .line 200
    .line 201
    move-object/from16 p1, v13

    .line 202
    .line 203
    move-wide/from16 p2, v14

    .line 204
    .line 205
    move/from16 p4, v11

    .line 206
    .line 207
    move-object/from16 p5, v12

    .line 208
    .line 209
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    sget v11, Landroidx/compose/animation/core/InfiniteTransition;->$stable:I

    .line 214
    .line 215
    or-int/lit16 v12, v11, 0x1b0

    .line 216
    .line 217
    sget v13, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->$stable:I

    .line 218
    .line 219
    shl-int/lit8 v14, v13, 0x9

    .line 220
    .line 221
    or-int/2addr v12, v14

    .line 222
    const/4 v14, 0x0

    .line 223
    const/high16 v15, 0x3f800000    # 1.0f

    .line 224
    .line 225
    move-object/from16 p0, v5

    .line 226
    .line 227
    move/from16 p1, v14

    .line 228
    .line 229
    move/from16 p2, v15

    .line 230
    .line 231
    move-object/from16 p3, v10

    .line 232
    .line 233
    move-object/from16 p4, v0

    .line 234
    .line 235
    move/from16 p5, v12

    .line 236
    .line 237
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    sget-object v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$firstLineTail$2;

    .line 242
    .line 243
    invoke-static {v10}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 244
    .line 245
    .line 246
    move-result-object v10

    .line 247
    const/4 v12, 0x6

    .line 248
    const/4 v14, 0x0

    .line 249
    const/16 v16, 0x0

    .line 250
    .line 251
    const-wide/16 v17, 0x0

    .line 252
    .line 253
    move-object/from16 p0, v10

    .line 254
    .line 255
    move-object/from16 p1, v16

    .line 256
    .line 257
    move-wide/from16 p2, v17

    .line 258
    .line 259
    move/from16 p4, v12

    .line 260
    .line 261
    move-object/from16 p5, v14

    .line 262
    .line 263
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 264
    .line 265
    .line 266
    move-result-object v10

    .line 267
    or-int/lit16 v12, v11, 0x1b0

    .line 268
    .line 269
    shl-int/lit8 v14, v13, 0x9

    .line 270
    .line 271
    or-int/2addr v12, v14

    .line 272
    const/4 v14, 0x0

    .line 273
    const/high16 v16, 0x3f800000    # 1.0f

    .line 274
    .line 275
    move-object/from16 p0, v5

    .line 276
    .line 277
    move/from16 p1, v14

    .line 278
    .line 279
    move/from16 p2, v16

    .line 280
    .line 281
    move-object/from16 p3, v10

    .line 282
    .line 283
    move-object/from16 p4, v0

    .line 284
    .line 285
    move/from16 p5, v12

    .line 286
    .line 287
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 288
    .line 289
    .line 290
    move-result-object v16

    .line 291
    sget-object v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineHead$2;

    .line 292
    .line 293
    invoke-static {v10}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    const/4 v12, 0x6

    .line 298
    const/4 v14, 0x0

    .line 299
    const/16 v17, 0x0

    .line 300
    .line 301
    const-wide/16 v18, 0x0

    .line 302
    .line 303
    move-object/from16 p0, v10

    .line 304
    .line 305
    move-object/from16 p1, v17

    .line 306
    .line 307
    move-wide/from16 p2, v18

    .line 308
    .line 309
    move/from16 p4, v12

    .line 310
    .line 311
    move-object/from16 p5, v14

    .line 312
    .line 313
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 314
    .line 315
    .line 316
    move-result-object v10

    .line 317
    or-int/lit16 v12, v11, 0x1b0

    .line 318
    .line 319
    shl-int/lit8 v14, v13, 0x9

    .line 320
    .line 321
    or-int/2addr v12, v14

    .line 322
    const/4 v14, 0x0

    .line 323
    const/high16 v17, 0x3f800000    # 1.0f

    .line 324
    .line 325
    move-object/from16 p0, v5

    .line 326
    .line 327
    move/from16 p1, v14

    .line 328
    .line 329
    move/from16 p2, v17

    .line 330
    .line 331
    move-object/from16 p3, v10

    .line 332
    .line 333
    move-object/from16 p4, v0

    .line 334
    .line 335
    move/from16 p5, v12

    .line 336
    .line 337
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 338
    .line 339
    .line 340
    move-result-object v17

    .line 341
    sget-object v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2;->INSTANCE:Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$secondLineTail$2;

    .line 342
    .line 343
    invoke-static {v10}, Landroidx/compose/animation/core/AnimationSpecKt;->keyframes(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/KeyframesSpec;

    .line 344
    .line 345
    .line 346
    move-result-object v10

    .line 347
    const/4 v12, 0x6

    .line 348
    const/4 v14, 0x0

    .line 349
    const/16 v18, 0x0

    .line 350
    .line 351
    const-wide/16 v19, 0x0

    .line 352
    .line 353
    move-object/from16 p0, v10

    .line 354
    .line 355
    move-object/from16 p1, v18

    .line 356
    .line 357
    move-wide/from16 p2, v19

    .line 358
    .line 359
    move/from16 p4, v12

    .line 360
    .line 361
    move-object/from16 p5, v14

    .line 362
    .line 363
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/AnimationSpecKt;->infiniteRepeatable-9IiC70o$default(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;JILjava/lang/Object;)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    or-int/lit16 v11, v11, 0x1b0

    .line 368
    .line 369
    shl-int/lit8 v12, v13, 0x9

    .line 370
    .line 371
    or-int/2addr v11, v12

    .line 372
    const/4 v12, 0x0

    .line 373
    const/high16 v13, 0x3f800000    # 1.0f

    .line 374
    .line 375
    move-object/from16 p0, v5

    .line 376
    .line 377
    move/from16 p1, v12

    .line 378
    .line 379
    move/from16 p2, v13

    .line 380
    .line 381
    move-object/from16 p3, v10

    .line 382
    .line 383
    move-object/from16 p4, v0

    .line 384
    .line 385
    move/from16 p5, v11

    .line 386
    .line 387
    invoke-static/range {p0 .. p5}, Landroidx/compose/animation/core/InfiniteTransitionKt;->animateFloat(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 388
    .line 389
    .line 390
    move-result-object v18

    .line 391
    invoke-static {v1}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    sget v10, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 396
    .line 397
    sget v11, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 398
    .line 399
    invoke-static {v5, v10, v11}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 404
    .line 405
    .line 406
    move-result-object v10

    .line 407
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    move-object/from16 p0, v10

    .line 412
    .line 413
    move-object/from16 p1, v15

    .line 414
    .line 415
    move-object/from16 p2, v16

    .line 416
    .line 417
    move-object/from16 p3, v11

    .line 418
    .line 419
    move-object/from16 p4, v17

    .line 420
    .line 421
    move-object/from16 p5, v18

    .line 422
    .line 423
    filled-new-array/range {p0 .. p5}, [Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v10

    .line 427
    const v11, -0x21de6e89

    .line 428
    .line 429
    .line 430
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 431
    .line 432
    .line 433
    move v11, v4

    .line 434
    move v12, v11

    .line 435
    :goto_c
    if-ge v11, v9, :cond_10

    .line 436
    .line 437
    aget-object v13, v10, v11

    .line 438
    .line 439
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result v13

    .line 443
    or-int/2addr v12, v13

    .line 444
    add-int/lit8 v11, v11, 0x1

    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v9

    .line 451
    if-nez v12, :cond_11

    .line 452
    .line 453
    sget-object v10, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 454
    .line 455
    invoke-virtual {v10}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v10

    .line 459
    if-ne v9, v10, :cond_12

    .line 460
    .line 461
    :cond_11
    new-instance v9, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;

    .line 462
    .line 463
    move-object v10, v9

    .line 464
    move-wide v11, v7

    .line 465
    move-wide v13, v2

    .line 466
    invoke-direct/range {v10 .. v18}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$3$1;-><init>(JJLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    :cond_12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 473
    .line 474
    .line 475
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 476
    .line 477
    invoke-static {v5, v9, v0, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_6

    .line 481
    .line 482
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    if-nez v8, :cond_13

    .line 487
    .line 488
    goto :goto_e

    .line 489
    :cond_13
    new-instance v9, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$4;

    .line 490
    .line 491
    move-object v0, v9

    .line 492
    move/from16 v6, p6

    .line 493
    .line 494
    move/from16 v7, p7

    .line 495
    .line 496
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$4;-><init>(Landroidx/compose/ui/Modifier;JJII)V

    .line 497
    .line 498
    .line 499
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 500
    .line 501
    .line 502
    :goto_e
    return-void
.end method

.method public static final LinearProgressIndicator-eaDK9VM(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V
    .locals 16
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    const v0, -0x32aeb272

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
    if-eqz v1, :cond_0

    .line 15
    .line 16
    or-int/lit8 v1, v7, 0x6

    .line 17
    .line 18
    move v2, v1

    .line 19
    move/from16 v1, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v1, v7, 0xe

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    move/from16 v1, p0

    .line 27
    .line 28
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    const/4 v2, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x2

    .line 37
    :goto_0
    or-int/2addr v2, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move/from16 v1, p0

    .line 40
    .line 41
    move v2, v7

    .line 42
    :goto_1
    and-int/lit8 v3, p8, 0x2

    .line 43
    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    or-int/lit8 v2, v2, 0x30

    .line 47
    .line 48
    :cond_3
    move-object/from16 v4, p1

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    and-int/lit8 v4, v7, 0x70

    .line 52
    .line 53
    if-nez v4, :cond_3

    .line 54
    .line 55
    move-object/from16 v4, p1

    .line 56
    .line 57
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_5

    .line 62
    .line 63
    const/16 v5, 0x20

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    const/16 v5, 0x10

    .line 67
    .line 68
    :goto_2
    or-int/2addr v2, v5

    .line 69
    :goto_3
    and-int/lit16 v5, v7, 0x380

    .line 70
    .line 71
    if-nez v5, :cond_8

    .line 72
    .line 73
    and-int/lit8 v5, p8, 0x4

    .line 74
    .line 75
    if-nez v5, :cond_6

    .line 76
    .line 77
    move-wide/from16 v5, p2

    .line 78
    .line 79
    invoke-interface {v0, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    const/16 v8, 0x100

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    move-wide/from16 v5, p2

    .line 89
    .line 90
    :cond_7
    const/16 v8, 0x80

    .line 91
    .line 92
    :goto_4
    or-int/2addr v2, v8

    .line 93
    goto :goto_5

    .line 94
    :cond_8
    move-wide/from16 v5, p2

    .line 95
    .line 96
    :goto_5
    and-int/lit16 v8, v7, 0x1c00

    .line 97
    .line 98
    if-nez v8, :cond_b

    .line 99
    .line 100
    and-int/lit8 v8, p8, 0x8

    .line 101
    .line 102
    if-nez v8, :cond_9

    .line 103
    .line 104
    move-wide/from16 v8, p4

    .line 105
    .line 106
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_a

    .line 111
    .line 112
    const/16 v10, 0x800

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_9
    move-wide/from16 v8, p4

    .line 116
    .line 117
    :cond_a
    const/16 v10, 0x400

    .line 118
    .line 119
    :goto_6
    or-int/2addr v2, v10

    .line 120
    goto :goto_7

    .line 121
    :cond_b
    move-wide/from16 v8, p4

    .line 122
    .line 123
    :goto_7
    and-int/lit16 v2, v2, 0x16db

    .line 124
    .line 125
    const/16 v10, 0x492

    .line 126
    .line 127
    if-ne v2, v10, :cond_d

    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_c

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    move-object v2, v4

    .line 140
    move-wide v3, v5

    .line 141
    :goto_8
    move-wide v5, v8

    .line 142
    goto/16 :goto_e

    .line 143
    .line 144
    :cond_d
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 145
    .line 146
    .line 147
    and-int/lit8 v2, v7, 0x1

    .line 148
    .line 149
    if-eqz v2, :cond_f

    .line 150
    .line 151
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_e

    .line 156
    .line 157
    goto :goto_a

    .line 158
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 159
    .line 160
    .line 161
    move-object v2, v4

    .line 162
    move-wide v3, v5

    .line 163
    goto :goto_d

    .line 164
    :cond_f
    :goto_a
    if-eqz v3, :cond_10

    .line 165
    .line 166
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 167
    .line 168
    goto :goto_b

    .line 169
    :cond_10
    move-object v2, v4

    .line 170
    :goto_b
    and-int/lit8 v3, p8, 0x4

    .line 171
    .line 172
    if-eqz v3, :cond_11

    .line 173
    .line 174
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 175
    .line 176
    const/4 v4, 0x6

    .line 177
    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    goto :goto_c

    .line 186
    :cond_11
    move-wide v3, v5

    .line 187
    :goto_c
    and-int/lit8 v5, p8, 0x8

    .line 188
    .line 189
    if-eqz v5, :cond_12

    .line 190
    .line 191
    const/16 v14, 0xe

    .line 192
    .line 193
    const/4 v15, 0x0

    .line 194
    const v10, 0x3e75c28f    # 0.24f

    .line 195
    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    const/4 v12, 0x0

    .line 199
    const/4 v13, 0x0

    .line 200
    move-wide v8, v3

    .line 201
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v5

    .line 205
    move-wide v8, v5

    .line 206
    :cond_12
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 207
    .line 208
    .line 209
    const/4 v5, 0x6

    .line 210
    const/4 v6, 0x0

    .line 211
    const/4 v10, 0x0

    .line 212
    const/4 v11, 0x0

    .line 213
    move-object/from16 p1, v2

    .line 214
    .line 215
    move/from16 p2, p0

    .line 216
    .line 217
    move-object/from16 p3, v10

    .line 218
    .line 219
    move/from16 p4, v11

    .line 220
    .line 221
    move/from16 p5, v5

    .line 222
    .line 223
    move-object/from16 p6, v6

    .line 224
    .line 225
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/ProgressSemanticsKt;->progressSemantics$default(Landroidx/compose/ui/Modifier;FLdt/b;IILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    sget v6, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorWidth:F

    .line 230
    .line 231
    sget v10, Landroidx/compose/material/ProgressIndicatorKt;->LinearIndicatorHeight:F

    .line 232
    .line 233
    invoke-static {v5, v6, v10}, Landroidx/compose/foundation/layout/SizeKt;->size-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    const v12, 0x607fb4c4

    .line 250
    .line 251
    .line 252
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 253
    .line 254
    .line 255
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    or-int/2addr v6, v10

    .line 264
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v10

    .line 268
    or-int/2addr v6, v10

    .line 269
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v10

    .line 273
    if-nez v6, :cond_13

    .line 274
    .line 275
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 276
    .line 277
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    if-ne v10, v6, :cond_14

    .line 282
    .line 283
    :cond_13
    new-instance v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;

    .line 284
    .line 285
    move-object/from16 p1, v10

    .line 286
    .line 287
    move-wide/from16 p2, v8

    .line 288
    .line 289
    move/from16 p4, p0

    .line 290
    .line 291
    move-wide/from16 p5, v3

    .line 292
    .line 293
    invoke-direct/range {p1 .. p6}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$1$1;-><init>(JFJ)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 300
    .line 301
    .line 302
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 303
    .line 304
    const/4 v6, 0x0

    .line 305
    invoke-static {v5, v10, v0, v6}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_8

    .line 309
    .line 310
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    if-nez v9, :cond_15

    .line 315
    .line 316
    goto :goto_f

    .line 317
    :cond_15
    new-instance v10, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;

    .line 318
    .line 319
    move-object v0, v10

    .line 320
    move/from16 v1, p0

    .line 321
    .line 322
    move/from16 v7, p7

    .line 323
    .line 324
    move/from16 v8, p8

    .line 325
    .line 326
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/ProgressIndicatorKt$LinearProgressIndicator$2;-><init>(FLandroidx/compose/ui/Modifier;JJII)V

    .line 327
    .line 328
    .line 329
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    :goto_f
    return-void
.end method

.method private static final LinearProgressIndicator_RIQooxk$lambda-1(Landroidx/compose/runtime/State;)F
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

.method private static final LinearProgressIndicator_RIQooxk$lambda-2(Landroidx/compose/runtime/State;)F
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

.method private static final LinearProgressIndicator_RIQooxk$lambda-3(Landroidx/compose/runtime/State;)F
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

.method private static final LinearProgressIndicator_RIQooxk$lambda-4(Landroidx/compose/runtime/State;)F
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

.method public static final synthetic access$CircularProgressIndicator_aM_cp0Q$lambda-10(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator_aM_cp0Q$lambda-10(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$CircularProgressIndicator_aM_cp0Q$lambda-11(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator_aM_cp0Q$lambda-11(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$CircularProgressIndicator_aM_cp0Q$lambda-8(Landroidx/compose/runtime/State;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator_aM_cp0Q$lambda-8(Landroidx/compose/runtime/State;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$CircularProgressIndicator_aM_cp0Q$lambda-9(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->CircularProgressIndicator_aM_cp0Q$lambda-9(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$LinearProgressIndicator_RIQooxk$lambda-1(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->LinearProgressIndicator_RIQooxk$lambda-1(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$LinearProgressIndicator_RIQooxk$lambda-2(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->LinearProgressIndicator_RIQooxk$lambda-2(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$LinearProgressIndicator_RIQooxk$lambda-3(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->LinearProgressIndicator_RIQooxk$lambda-3(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$LinearProgressIndicator_RIQooxk$lambda-4(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ProgressIndicatorKt;->LinearProgressIndicator_RIQooxk$lambda-4(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroidx/compose/material/ProgressIndicatorKt;->drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$drawLinearIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->drawLinearIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$drawLinearIndicatorBackground-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/ProgressIndicatorKt;->drawLinearIndicatorBackground-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getCircularEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirstLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getFirstLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->FirstLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSecondLineHeadEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineHeadEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getSecondLineTailEasing$p()Landroidx/compose/animation/core/CubicBezierEasing;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/ProgressIndicatorKt;->SecondLineTailEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 19

    .line 1
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/Stroke;->getWidth()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    int-to-float v1, v1

    .line 7
    div-float/2addr v0, v1

    .line 8
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    mul-float/2addr v1, v0

    .line 17
    sub-float/2addr v2, v1

    .line 18
    invoke-static {v0, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 19
    .line 20
    .line 21
    move-result-wide v9

    .line 22
    invoke-static {v2, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 23
    .line 24
    .line 25
    move-result-wide v11

    .line 26
    const/16 v17, 0x340

    .line 27
    .line 28
    const/16 v18, 0x0

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v13, 0x0

    .line 32
    const/4 v15, 0x0

    .line 33
    const/16 v16, 0x0

    .line 34
    .line 35
    move-object/from16 v3, p0

    .line 36
    .line 37
    move-wide/from16 v4, p3

    .line 38
    .line 39
    move/from16 v6, p1

    .line 40
    .line 41
    move/from16 v7, p2

    .line 42
    .line 43
    move-object/from16 v14, p5

    .line 44
    .line 45
    invoke-static/range {v3 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private static final drawDeterminateCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/material/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final drawIndeterminateCircularIndicator-hrjfTZI(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V
    .locals 6

    .line 1
    sget v0, Landroidx/compose/material/ProgressIndicatorKt;->CircularIndicatorDiameter:F

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    int-to-float v1, v1

    .line 5
    div-float/2addr v0, v1

    .line 6
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    div-float/2addr p2, v0

    .line 11
    const v0, 0x42652ee1

    .line 12
    .line 13
    .line 14
    mul-float/2addr p2, v0

    .line 15
    const/high16 v0, 0x40000000    # 2.0f

    .line 16
    .line 17
    div-float/2addr p2, v0

    .line 18
    add-float v1, p1, p2

    .line 19
    .line 20
    const p1, 0x3dcccccd    # 0.1f

    .line 21
    .line 22
    .line 23
    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    move-object v0, p0

    .line 28
    move-wide v3, p4

    .line 29
    move-object v5, p6

    .line 30
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->drawCircularIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final drawLinearIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V
    .locals 20

    .line 1
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    int-to-float v2, v2

    .line 19
    div-float/2addr v1, v2

    .line 20
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move/from16 v4, p1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    sub-float v4, v3, p2

    .line 39
    .line 40
    :goto_1
    mul-float/2addr v4, v0

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    move/from16 v2, p2

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    sub-float v2, v3, p1

    .line 47
    .line 48
    :goto_2
    mul-float/2addr v2, v0

    .line 49
    invoke-static {v4, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 50
    .line 51
    .line 52
    move-result-wide v8

    .line 53
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    const/16 v18, 0x1f0

    .line 58
    .line 59
    const/16 v19, 0x0

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v14, 0x0

    .line 63
    const/4 v15, 0x0

    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    move-object/from16 v5, p0

    .line 69
    .line 70
    move-wide/from16 v6, p3

    .line 71
    .line 72
    move/from16 v12, p5

    .line 73
    .line 74
    invoke-static/range {v5 .. v19}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private static final drawLinearIndicatorBackground-bw27NRU(Landroidx/compose/ui/graphics/drawscope/DrawScope;JF)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-wide v3, p1

    .line 6
    move v5, p3

    .line 7
    invoke-static/range {v0 .. v5}, Landroidx/compose/material/ProgressIndicatorKt;->drawLinearIndicator-42QJj7c(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
