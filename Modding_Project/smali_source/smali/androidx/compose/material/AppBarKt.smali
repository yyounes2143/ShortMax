.class public final Landroidx/compose/material/AppBarKt;
.super Ljava/lang/Object;
.source "AppBar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AppBarHeight:F

.field private static final AppBarHorizontalPadding:F

.field private static final BottomAppBarCutoutOffset:F

.field private static final BottomAppBarRoundedEdgeRadius:F

.field private static final TitleIconModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

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
    sput v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

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
    move-result v1

    .line 16
    sput v1, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .line 17
    .line 18
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 19
    .line 20
    const/16 v3, 0x10

    .line 21
    .line 22
    int-to-float v3, v3

    .line 23
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-float/2addr v3, v1

    .line 28
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    sput-object v3, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v2, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/16 v3, 0x48

    .line 46
    .line 47
    int-to-float v3, v3

    .line 48
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    sub-float/2addr v3, v1

    .line 53
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    .line 62
    .line 63
    const/16 v1, 0x8

    .line 64
    .line 65
    int-to-float v1, v1

    .line 66
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sput v1, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    .line 71
    .line 72
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sput v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    .line 77
    .line 78
    return-void
.end method

.method private static final AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/ui/Modifier;",
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
    move-object/from16 v6, p5

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    const v0, -0x4a7c9d94

    .line 8
    .line 9
    .line 10
    move-object/from16 v1, p9

    .line 11
    .line 12
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    and-int/lit8 v1, p11, 0x1

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    or-int/lit8 v1, v10, 0x6

    .line 21
    .line 22
    move v3, v1

    .line 23
    move-wide/from16 v1, p0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v1, v10, 0xe

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    move-wide/from16 v1, p0

    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v3, 0x2

    .line 41
    :goto_0
    or-int/2addr v3, v10

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move-wide/from16 v1, p0

    .line 44
    .line 45
    move v3, v10

    .line 46
    :goto_1
    and-int/lit8 v4, p11, 0x2

    .line 47
    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    or-int/lit8 v3, v3, 0x30

    .line 51
    .line 52
    :cond_3
    move-wide/from16 v4, p2

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_4
    and-int/lit8 v4, v10, 0x70

    .line 56
    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    move-wide/from16 v4, p2

    .line 60
    .line 61
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    if-eqz v7, :cond_5

    .line 66
    .line 67
    const/16 v7, 0x20

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_5
    const/16 v7, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v3, v7

    .line 73
    :goto_3
    and-int/lit8 v7, p11, 0x4

    .line 74
    .line 75
    if-eqz v7, :cond_7

    .line 76
    .line 77
    or-int/lit16 v3, v3, 0x180

    .line 78
    .line 79
    :cond_6
    move/from16 v7, p4

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_7
    and-int/lit16 v7, v10, 0x380

    .line 83
    .line 84
    if-nez v7, :cond_6

    .line 85
    .line 86
    move/from16 v7, p4

    .line 87
    .line 88
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_8

    .line 93
    .line 94
    const/16 v8, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    const/16 v8, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v3, v8

    .line 100
    :goto_5
    and-int/lit8 v8, p11, 0x8

    .line 101
    .line 102
    if-eqz v8, :cond_9

    .line 103
    .line 104
    or-int/lit16 v3, v3, 0xc00

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_9
    and-int/lit16 v8, v10, 0x1c00

    .line 108
    .line 109
    if-nez v8, :cond_b

    .line 110
    .line 111
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-eqz v8, :cond_a

    .line 116
    .line 117
    const/16 v8, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/16 v8, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v3, v8

    .line 123
    :cond_b
    :goto_7
    and-int/lit8 v8, p11, 0x10

    .line 124
    .line 125
    if-eqz v8, :cond_d

    .line 126
    .line 127
    or-int/lit16 v3, v3, 0x6000

    .line 128
    .line 129
    :cond_c
    move-object/from16 v8, p6

    .line 130
    .line 131
    goto :goto_9

    .line 132
    :cond_d
    const v8, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v8, v10

    .line 136
    if-nez v8, :cond_c

    .line 137
    .line 138
    move-object/from16 v8, p6

    .line 139
    .line 140
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-eqz v11, :cond_e

    .line 145
    .line 146
    const/16 v11, 0x4000

    .line 147
    .line 148
    goto :goto_8

    .line 149
    :cond_e
    const/16 v11, 0x2000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v3, v11

    .line 152
    :goto_9
    and-int/lit8 v11, p11, 0x20

    .line 153
    .line 154
    const/high16 v12, 0x70000

    .line 155
    .line 156
    if-eqz v11, :cond_10

    .line 157
    .line 158
    const/high16 v13, 0x30000

    .line 159
    .line 160
    or-int/2addr v3, v13

    .line 161
    :cond_f
    move-object/from16 v13, p7

    .line 162
    .line 163
    goto :goto_b

    .line 164
    :cond_10
    and-int v13, v10, v12

    .line 165
    .line 166
    if-nez v13, :cond_f

    .line 167
    .line 168
    move-object/from16 v13, p7

    .line 169
    .line 170
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    if-eqz v14, :cond_11

    .line 175
    .line 176
    const/high16 v14, 0x20000

    .line 177
    .line 178
    goto :goto_a

    .line 179
    :cond_11
    const/high16 v14, 0x10000

    .line 180
    .line 181
    :goto_a
    or-int/2addr v3, v14

    .line 182
    :goto_b
    and-int/lit8 v14, p11, 0x40

    .line 183
    .line 184
    const/high16 v15, 0x180000

    .line 185
    .line 186
    if-eqz v14, :cond_12

    .line 187
    .line 188
    or-int/2addr v3, v15

    .line 189
    goto :goto_d

    .line 190
    :cond_12
    const/high16 v14, 0x380000

    .line 191
    .line 192
    and-int/2addr v14, v10

    .line 193
    if-nez v14, :cond_14

    .line 194
    .line 195
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    if-eqz v14, :cond_13

    .line 200
    .line 201
    const/high16 v14, 0x100000

    .line 202
    .line 203
    goto :goto_c

    .line 204
    :cond_13
    const/high16 v14, 0x80000

    .line 205
    .line 206
    :goto_c
    or-int/2addr v3, v14

    .line 207
    :cond_14
    :goto_d
    const v14, 0x2db6db

    .line 208
    .line 209
    .line 210
    and-int/2addr v14, v3

    .line 211
    const v12, 0x92492

    .line 212
    .line 213
    .line 214
    if-ne v14, v12, :cond_16

    .line 215
    .line 216
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 217
    .line 218
    .line 219
    move-result v12

    .line 220
    if-nez v12, :cond_15

    .line 221
    .line 222
    goto :goto_e

    .line 223
    :cond_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 224
    .line 225
    .line 226
    move-object/from16 v23, v13

    .line 227
    .line 228
    goto :goto_10

    .line 229
    :cond_16
    :goto_e
    if-eqz v11, :cond_17

    .line 230
    .line 231
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 232
    .line 233
    move-object/from16 v23, v11

    .line 234
    .line 235
    goto :goto_f

    .line 236
    :cond_17
    move-object/from16 v23, v13

    .line 237
    .line 238
    :goto_f
    new-instance v11, Landroidx/compose/material/AppBarKt$AppBar$1;

    .line 239
    .line 240
    invoke-direct {v11, v6, v9, v3}, Landroidx/compose/material/AppBarKt$AppBar$1;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lat/n;I)V

    .line 241
    .line 242
    .line 243
    const v12, -0x3d437250

    .line 244
    .line 245
    .line 246
    const/4 v13, 0x1

    .line 247
    invoke-static {v0, v12, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 248
    .line 249
    .line 250
    move-result-object v19

    .line 251
    shr-int/lit8 v11, v3, 0xf

    .line 252
    .line 253
    and-int/lit8 v11, v11, 0xe

    .line 254
    .line 255
    or-int/2addr v11, v15

    .line 256
    shr-int/lit8 v12, v3, 0x9

    .line 257
    .line 258
    and-int/lit8 v12, v12, 0x70

    .line 259
    .line 260
    or-int/2addr v11, v12

    .line 261
    shl-int/lit8 v12, v3, 0x6

    .line 262
    .line 263
    and-int/lit16 v13, v12, 0x380

    .line 264
    .line 265
    or-int/2addr v11, v13

    .line 266
    and-int/lit16 v12, v12, 0x1c00

    .line 267
    .line 268
    or-int/2addr v11, v12

    .line 269
    shl-int/lit8 v3, v3, 0x9

    .line 270
    .line 271
    const/high16 v12, 0x70000

    .line 272
    .line 273
    and-int/2addr v3, v12

    .line 274
    or-int v21, v11, v3

    .line 275
    .line 276
    const/16 v22, 0x10

    .line 277
    .line 278
    const/16 v17, 0x0

    .line 279
    .line 280
    move-object/from16 v11, v23

    .line 281
    .line 282
    move-object/from16 v12, p6

    .line 283
    .line 284
    move-wide/from16 v13, p0

    .line 285
    .line 286
    move-wide/from16 v15, p2

    .line 287
    .line 288
    move/from16 v18, p4

    .line 289
    .line 290
    move-object/from16 v20, v0

    .line 291
    .line 292
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 293
    .line 294
    .line 295
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 296
    .line 297
    .line 298
    move-result-object v12

    .line 299
    if-nez v12, :cond_18

    .line 300
    .line 301
    goto :goto_11

    .line 302
    :cond_18
    new-instance v13, Landroidx/compose/material/AppBarKt$AppBar$2;

    .line 303
    .line 304
    move-object v0, v13

    .line 305
    move-wide/from16 v1, p0

    .line 306
    .line 307
    move-wide/from16 v3, p2

    .line 308
    .line 309
    move/from16 v5, p4

    .line 310
    .line 311
    move-object/from16 v6, p5

    .line 312
    .line 313
    move-object/from16 v7, p6

    .line 314
    .line 315
    move-object/from16 v8, v23

    .line 316
    .line 317
    move-object/from16 v9, p8

    .line 318
    .line 319
    move/from16 v10, p10

    .line 320
    .line 321
    move/from16 v11, p11

    .line 322
    .line 323
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$AppBar$2;-><init>(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;II)V

    .line 324
    .line 325
    .line 326
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 327
    .line 328
    .line 329
    :goto_11
    return-void
.end method

.method public static final BottomAppBar-Y1yfwus(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 24
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/layout/PaddingValues;
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
            "Landroidx/compose/ui/graphics/Shape;",
            "F",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
    move-object/from16 v12, p8

    .line 2
    .line 3
    move/from16 v13, p10

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x6276bdad

    .line 11
    .line 12
    .line 13
    move-object/from16 v1, p9

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v14

    .line 19
    and-int/lit8 v0, p11, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v1, v13, 0x6

    .line 24
    .line 25
    move v2, v1

    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v13

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v1, p0

    .line 47
    .line 48
    move v2, v13

    .line 49
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    and-int/lit8 v3, p11, 0x2

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    move-wide/from16 v3, p1

    .line 58
    .line 59
    invoke-interface {v14, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-wide/from16 v3, p1

    .line 69
    .line 70
    :cond_4
    const/16 v5, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    move-wide/from16 v3, p1

    .line 75
    .line 76
    :goto_3
    and-int/lit16 v5, v13, 0x380

    .line 77
    .line 78
    if-nez v5, :cond_8

    .line 79
    .line 80
    and-int/lit8 v5, p11, 0x4

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    move-wide/from16 v5, p3

    .line 85
    .line 86
    invoke-interface {v14, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    const/16 v7, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-wide/from16 v5, p3

    .line 96
    .line 97
    :cond_7
    const/16 v7, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v2, v7

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move-wide/from16 v5, p3

    .line 102
    .line 103
    :goto_5
    and-int/lit8 v7, p11, 0x8

    .line 104
    .line 105
    if-eqz v7, :cond_a

    .line 106
    .line 107
    or-int/lit16 v2, v2, 0xc00

    .line 108
    .line 109
    :cond_9
    move-object/from16 v8, p5

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_a
    and-int/lit16 v8, v13, 0x1c00

    .line 113
    .line 114
    if-nez v8, :cond_9

    .line 115
    .line 116
    move-object/from16 v8, p5

    .line 117
    .line 118
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_b

    .line 123
    .line 124
    const/16 v9, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/16 v9, 0x400

    .line 128
    .line 129
    :goto_6
    or-int/2addr v2, v9

    .line 130
    :goto_7
    and-int/lit8 v9, p11, 0x10

    .line 131
    .line 132
    if-eqz v9, :cond_d

    .line 133
    .line 134
    or-int/lit16 v2, v2, 0x6000

    .line 135
    .line 136
    :cond_c
    move/from16 v10, p6

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v10, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v10, v13

    .line 143
    if-nez v10, :cond_c

    .line 144
    .line 145
    move/from16 v10, p6

    .line 146
    .line 147
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_e

    .line 152
    .line 153
    const/16 v11, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/16 v11, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v2, v11

    .line 159
    :goto_9
    and-int/lit8 v11, p11, 0x20

    .line 160
    .line 161
    const/high16 v15, 0x70000

    .line 162
    .line 163
    if-eqz v11, :cond_f

    .line 164
    .line 165
    const/high16 v16, 0x30000

    .line 166
    .line 167
    or-int v2, v2, v16

    .line 168
    .line 169
    move-object/from16 v15, p7

    .line 170
    .line 171
    goto :goto_b

    .line 172
    :cond_f
    and-int v16, v13, v15

    .line 173
    .line 174
    move-object/from16 v15, p7

    .line 175
    .line 176
    if-nez v16, :cond_11

    .line 177
    .line 178
    invoke-interface {v14, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v16

    .line 182
    if-eqz v16, :cond_10

    .line 183
    .line 184
    const/high16 v16, 0x20000

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_10
    const/high16 v16, 0x10000

    .line 188
    .line 189
    :goto_a
    or-int v2, v2, v16

    .line 190
    .line 191
    :cond_11
    :goto_b
    and-int/lit8 v16, p11, 0x40

    .line 192
    .line 193
    const/high16 v17, 0x380000

    .line 194
    .line 195
    if-eqz v16, :cond_12

    .line 196
    .line 197
    const/high16 v16, 0x180000

    .line 198
    .line 199
    :goto_c
    or-int v2, v2, v16

    .line 200
    .line 201
    goto :goto_d

    .line 202
    :cond_12
    and-int v16, v13, v17

    .line 203
    .line 204
    if-nez v16, :cond_14

    .line 205
    .line 206
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v16

    .line 210
    if-eqz v16, :cond_13

    .line 211
    .line 212
    const/high16 v16, 0x100000

    .line 213
    .line 214
    goto :goto_c

    .line 215
    :cond_13
    const/high16 v16, 0x80000

    .line 216
    .line 217
    goto :goto_c

    .line 218
    :cond_14
    :goto_d
    const v16, 0x2db6db

    .line 219
    .line 220
    .line 221
    and-int v1, v2, v16

    .line 222
    .line 223
    const v3, 0x92492

    .line 224
    .line 225
    .line 226
    if-ne v1, v3, :cond_16

    .line 227
    .line 228
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-nez v1, :cond_15

    .line 233
    .line 234
    goto :goto_e

    .line 235
    :cond_15
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 236
    .line 237
    .line 238
    move-object/from16 v1, p0

    .line 239
    .line 240
    move-wide/from16 v2, p1

    .line 241
    .line 242
    move-wide v4, v5

    .line 243
    move-object v6, v8

    .line 244
    move v7, v10

    .line 245
    move-object v8, v15

    .line 246
    goto/16 :goto_14

    .line 247
    .line 248
    :cond_16
    :goto_e
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 249
    .line 250
    .line 251
    and-int/lit8 v1, v13, 0x1

    .line 252
    .line 253
    if-eqz v1, :cond_1a

    .line 254
    .line 255
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_17

    .line 260
    .line 261
    goto :goto_f

    .line 262
    :cond_17
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 263
    .line 264
    .line 265
    and-int/lit8 v0, p11, 0x2

    .line 266
    .line 267
    if-eqz v0, :cond_18

    .line 268
    .line 269
    and-int/lit8 v2, v2, -0x71

    .line 270
    .line 271
    :cond_18
    and-int/lit8 v0, p11, 0x4

    .line 272
    .line 273
    if-eqz v0, :cond_19

    .line 274
    .line 275
    and-int/lit16 v2, v2, -0x381

    .line 276
    .line 277
    :cond_19
    move-wide/from16 v18, p1

    .line 278
    .line 279
    move-wide/from16 v20, v5

    .line 280
    .line 281
    move-object v11, v8

    .line 282
    move/from16 v16, v10

    .line 283
    .line 284
    move-object/from16 v22, v15

    .line 285
    .line 286
    move-object/from16 v15, p0

    .line 287
    .line 288
    goto :goto_12

    .line 289
    :cond_1a
    :goto_f
    if-eqz v0, :cond_1b

    .line 290
    .line 291
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 292
    .line 293
    goto :goto_10

    .line 294
    :cond_1b
    move-object/from16 v0, p0

    .line 295
    .line 296
    :goto_10
    and-int/lit8 v1, p11, 0x2

    .line 297
    .line 298
    if-eqz v1, :cond_1c

    .line 299
    .line 300
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 301
    .line 302
    const/4 v3, 0x6

    .line 303
    invoke-virtual {v1, v14, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v1}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    .line 308
    .line 309
    .line 310
    move-result-wide v3

    .line 311
    and-int/lit8 v2, v2, -0x71

    .line 312
    .line 313
    goto :goto_11

    .line 314
    :cond_1c
    move-wide/from16 v3, p1

    .line 315
    .line 316
    :goto_11
    and-int/lit8 v1, p11, 0x4

    .line 317
    .line 318
    if-eqz v1, :cond_1d

    .line 319
    .line 320
    shr-int/lit8 v1, v2, 0x3

    .line 321
    .line 322
    and-int/lit8 v1, v1, 0xe

    .line 323
    .line 324
    invoke-static {v3, v4, v14, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v5

    .line 328
    and-int/lit16 v1, v2, -0x381

    .line 329
    .line 330
    move v2, v1

    .line 331
    :cond_1d
    if-eqz v7, :cond_1e

    .line 332
    .line 333
    const/4 v1, 0x0

    .line 334
    move-object v8, v1

    .line 335
    :cond_1e
    if-eqz v9, :cond_1f

    .line 336
    .line 337
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 338
    .line 339
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->getBottomAppBarElevation-D9Ej5fM()F

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    move v10, v1

    .line 344
    :cond_1f
    if-eqz v11, :cond_20

    .line 345
    .line 346
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 347
    .line 348
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    move-object v15, v0

    .line 353
    move-object/from16 v22, v1

    .line 354
    .line 355
    move-wide/from16 v18, v3

    .line 356
    .line 357
    move-wide/from16 v20, v5

    .line 358
    .line 359
    move-object v11, v8

    .line 360
    move/from16 v16, v10

    .line 361
    .line 362
    goto :goto_12

    .line 363
    :cond_20
    move-wide/from16 v18, v3

    .line 364
    .line 365
    move-wide/from16 v20, v5

    .line 366
    .line 367
    move-object v11, v8

    .line 368
    move/from16 v16, v10

    .line 369
    .line 370
    move-object/from16 v22, v15

    .line 371
    .line 372
    move-object v15, v0

    .line 373
    :goto_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 374
    .line 375
    .line 376
    invoke-static {}, Landroidx/compose/material/ScaffoldKt;->getLocalFabPlacement()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Landroidx/compose/material/FabPlacement;

    .line 385
    .line 386
    if-eqz v11, :cond_21

    .line 387
    .line 388
    if-eqz v0, :cond_21

    .line 389
    .line 390
    invoke-virtual {v0}, Landroidx/compose/material/FabPlacement;->isDocked()Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    const/4 v3, 0x1

    .line 395
    if-ne v1, v3, :cond_21

    .line 396
    .line 397
    new-instance v1, Landroidx/compose/material/BottomAppBarCutoutShape;

    .line 398
    .line 399
    invoke-direct {v1, v11, v0}, Landroidx/compose/material/BottomAppBarCutoutShape;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/FabPlacement;)V

    .line 400
    .line 401
    .line 402
    move-object v6, v1

    .line 403
    goto :goto_13

    .line 404
    :cond_21
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    move-object v6, v0

    .line 409
    :goto_13
    shr-int/lit8 v0, v2, 0x3

    .line 410
    .line 411
    and-int/lit8 v0, v0, 0x7e

    .line 412
    .line 413
    shr-int/lit8 v1, v2, 0x6

    .line 414
    .line 415
    and-int/lit16 v3, v1, 0x380

    .line 416
    .line 417
    or-int/2addr v0, v3

    .line 418
    and-int/lit16 v1, v1, 0x1c00

    .line 419
    .line 420
    or-int/2addr v0, v1

    .line 421
    shl-int/lit8 v1, v2, 0xf

    .line 422
    .line 423
    const/high16 v3, 0x70000

    .line 424
    .line 425
    and-int/2addr v1, v3

    .line 426
    or-int/2addr v0, v1

    .line 427
    and-int v1, v2, v17

    .line 428
    .line 429
    or-int v10, v0, v1

    .line 430
    .line 431
    const/16 v17, 0x0

    .line 432
    .line 433
    move-wide/from16 v0, v18

    .line 434
    .line 435
    move-wide/from16 v2, v20

    .line 436
    .line 437
    move/from16 v4, v16

    .line 438
    .line 439
    move-object/from16 v5, v22

    .line 440
    .line 441
    move-object v7, v15

    .line 442
    move-object/from16 v8, p8

    .line 443
    .line 444
    move-object v9, v14

    .line 445
    move-object/from16 v23, v11

    .line 446
    .line 447
    move/from16 v11, v17

    .line 448
    .line 449
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 450
    .line 451
    .line 452
    move-object v1, v15

    .line 453
    move/from16 v7, v16

    .line 454
    .line 455
    move-wide/from16 v2, v18

    .line 456
    .line 457
    move-wide/from16 v4, v20

    .line 458
    .line 459
    move-object/from16 v8, v22

    .line 460
    .line 461
    move-object/from16 v6, v23

    .line 462
    .line 463
    :goto_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 464
    .line 465
    .line 466
    move-result-object v14

    .line 467
    if-nez v14, :cond_22

    .line 468
    .line 469
    goto :goto_15

    .line 470
    :cond_22
    new-instance v15, Landroidx/compose/material/AppBarKt$BottomAppBar$1;

    .line 471
    .line 472
    move-object v0, v15

    .line 473
    move-object/from16 v9, p8

    .line 474
    .line 475
    move/from16 v10, p10

    .line 476
    .line 477
    move/from16 v11, p11

    .line 478
    .line 479
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$BottomAppBar$1;-><init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/graphics/Shape;FLandroidx/compose/foundation/layout/PaddingValues;Lat/n;II)V

    .line 480
    .line 481
    .line 482
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 483
    .line 484
    .line 485
    :goto_15
    return-void
.end method

.method public static final TopAppBar-HsRjFd4(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 22
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/layout/PaddingValues;
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
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "JJF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
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
    move-object/from16 v12, p7

    .line 2
    .line 3
    move/from16 v13, p9

    .line 4
    .line 5
    const-string v0, "content"

    .line 6
    .line 7
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7112d116

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
    move-result-object v14

    .line 19
    and-int/lit8 v0, p10, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    or-int/lit8 v1, v13, 0x6

    .line 24
    .line 25
    move v2, v1

    .line 26
    move-object/from16 v1, p0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v1, v13, 0xe

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    move-object/from16 v1, p0

    .line 34
    .line 35
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v2, 0x2

    .line 44
    :goto_0
    or-int/2addr v2, v13

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v1, p0

    .line 47
    .line 48
    move v2, v13

    .line 49
    :goto_1
    and-int/lit8 v3, v13, 0x70

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    and-int/lit8 v3, p10, 0x2

    .line 54
    .line 55
    if-nez v3, :cond_3

    .line 56
    .line 57
    move-wide/from16 v3, p1

    .line 58
    .line 59
    invoke-interface {v14, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_4

    .line 64
    .line 65
    const/16 v5, 0x20

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move-wide/from16 v3, p1

    .line 69
    .line 70
    :cond_4
    const/16 v5, 0x10

    .line 71
    .line 72
    :goto_2
    or-int/2addr v2, v5

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    move-wide/from16 v3, p1

    .line 75
    .line 76
    :goto_3
    and-int/lit16 v5, v13, 0x380

    .line 77
    .line 78
    if-nez v5, :cond_8

    .line 79
    .line 80
    and-int/lit8 v5, p10, 0x4

    .line 81
    .line 82
    if-nez v5, :cond_6

    .line 83
    .line 84
    move-wide/from16 v5, p3

    .line 85
    .line 86
    invoke-interface {v14, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_7

    .line 91
    .line 92
    const/16 v7, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-wide/from16 v5, p3

    .line 96
    .line 97
    :cond_7
    const/16 v7, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v2, v7

    .line 100
    goto :goto_5

    .line 101
    :cond_8
    move-wide/from16 v5, p3

    .line 102
    .line 103
    :goto_5
    and-int/lit8 v7, p10, 0x8

    .line 104
    .line 105
    if-eqz v7, :cond_a

    .line 106
    .line 107
    or-int/lit16 v2, v2, 0xc00

    .line 108
    .line 109
    :cond_9
    move/from16 v8, p5

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :cond_a
    and-int/lit16 v8, v13, 0x1c00

    .line 113
    .line 114
    if-nez v8, :cond_9

    .line 115
    .line 116
    move/from16 v8, p5

    .line 117
    .line 118
    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_b

    .line 123
    .line 124
    const/16 v9, 0x800

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_b
    const/16 v9, 0x400

    .line 128
    .line 129
    :goto_6
    or-int/2addr v2, v9

    .line 130
    :goto_7
    and-int/lit8 v9, p10, 0x10

    .line 131
    .line 132
    if-eqz v9, :cond_d

    .line 133
    .line 134
    or-int/lit16 v2, v2, 0x6000

    .line 135
    .line 136
    :cond_c
    move-object/from16 v10, p6

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_d
    const v10, 0xe000

    .line 140
    .line 141
    .line 142
    and-int/2addr v10, v13

    .line 143
    if-nez v10, :cond_c

    .line 144
    .line 145
    move-object/from16 v10, p6

    .line 146
    .line 147
    invoke-interface {v14, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    if-eqz v11, :cond_e

    .line 152
    .line 153
    const/16 v11, 0x4000

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_e
    const/16 v11, 0x2000

    .line 157
    .line 158
    :goto_8
    or-int/2addr v2, v11

    .line 159
    :goto_9
    and-int/lit8 v11, p10, 0x20

    .line 160
    .line 161
    const/high16 v15, 0x70000

    .line 162
    .line 163
    if-eqz v11, :cond_f

    .line 164
    .line 165
    const/high16 v11, 0x30000

    .line 166
    .line 167
    :goto_a
    or-int/2addr v2, v11

    .line 168
    goto :goto_b

    .line 169
    :cond_f
    and-int v11, v13, v15

    .line 170
    .line 171
    if-nez v11, :cond_11

    .line 172
    .line 173
    invoke-interface {v14, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    if-eqz v11, :cond_10

    .line 178
    .line 179
    const/high16 v11, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_10
    const/high16 v11, 0x10000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    :goto_b
    const v11, 0x5b6db

    .line 186
    .line 187
    .line 188
    and-int/2addr v11, v2

    .line 189
    const v15, 0x12492

    .line 190
    .line 191
    .line 192
    if-ne v11, v15, :cond_13

    .line 193
    .line 194
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-nez v11, :cond_12

    .line 199
    .line 200
    goto :goto_c

    .line 201
    :cond_12
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 202
    .line 203
    .line 204
    move-wide v2, v3

    .line 205
    move-wide v4, v5

    .line 206
    move v6, v8

    .line 207
    move-object v7, v10

    .line 208
    goto/16 :goto_11

    .line 209
    .line 210
    :cond_13
    :goto_c
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 211
    .line 212
    .line 213
    and-int/lit8 v11, v13, 0x1

    .line 214
    .line 215
    if-eqz v11, :cond_17

    .line 216
    .line 217
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 218
    .line 219
    .line 220
    move-result v11

    .line 221
    if-eqz v11, :cond_14

    .line 222
    .line 223
    goto :goto_e

    .line 224
    :cond_14
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 225
    .line 226
    .line 227
    and-int/lit8 v0, p10, 0x2

    .line 228
    .line 229
    if-eqz v0, :cond_15

    .line 230
    .line 231
    and-int/lit8 v2, v2, -0x71

    .line 232
    .line 233
    :cond_15
    and-int/lit8 v0, p10, 0x4

    .line 234
    .line 235
    if-eqz v0, :cond_16

    .line 236
    .line 237
    and-int/lit16 v2, v2, -0x381

    .line 238
    .line 239
    :cond_16
    move-object v15, v1

    .line 240
    :goto_d
    move-wide/from16 v16, v3

    .line 241
    .line 242
    move-wide/from16 v18, v5

    .line 243
    .line 244
    move/from16 v20, v8

    .line 245
    .line 246
    move-object/from16 v21, v10

    .line 247
    .line 248
    goto :goto_10

    .line 249
    :cond_17
    :goto_e
    if-eqz v0, :cond_18

    .line 250
    .line 251
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 252
    .line 253
    goto :goto_f

    .line 254
    :cond_18
    move-object v0, v1

    .line 255
    :goto_f
    and-int/lit8 v1, p10, 0x2

    .line 256
    .line 257
    if-eqz v1, :cond_19

    .line 258
    .line 259
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 260
    .line 261
    const/4 v3, 0x6

    .line 262
    invoke-virtual {v1, v14, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-static {v1}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    .line 267
    .line 268
    .line 269
    move-result-wide v3

    .line 270
    and-int/lit8 v2, v2, -0x71

    .line 271
    .line 272
    :cond_19
    and-int/lit8 v1, p10, 0x4

    .line 273
    .line 274
    if-eqz v1, :cond_1a

    .line 275
    .line 276
    shr-int/lit8 v1, v2, 0x3

    .line 277
    .line 278
    and-int/lit8 v1, v1, 0xe

    .line 279
    .line 280
    invoke-static {v3, v4, v14, v1}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 281
    .line 282
    .line 283
    move-result-wide v5

    .line 284
    and-int/lit16 v1, v2, -0x381

    .line 285
    .line 286
    move v2, v1

    .line 287
    :cond_1a
    if-eqz v7, :cond_1b

    .line 288
    .line 289
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 290
    .line 291
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    move v8, v1

    .line 296
    :cond_1b
    if-eqz v9, :cond_1c

    .line 297
    .line 298
    sget-object v1, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    move-object v15, v0

    .line 305
    move-object/from16 v21, v1

    .line 306
    .line 307
    move-wide/from16 v16, v3

    .line 308
    .line 309
    move-wide/from16 v18, v5

    .line 310
    .line 311
    move/from16 v20, v8

    .line 312
    .line 313
    goto :goto_10

    .line 314
    :cond_1c
    move-object v15, v0

    .line 315
    goto :goto_d

    .line 316
    :goto_10
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 317
    .line 318
    .line 319
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    shr-int/lit8 v0, v2, 0x3

    .line 324
    .line 325
    and-int/lit8 v1, v0, 0xe

    .line 326
    .line 327
    or-int/lit16 v1, v1, 0x6000

    .line 328
    .line 329
    and-int/lit8 v3, v0, 0x70

    .line 330
    .line 331
    or-int/2addr v1, v3

    .line 332
    and-int/lit16 v3, v0, 0x380

    .line 333
    .line 334
    or-int/2addr v1, v3

    .line 335
    and-int/lit16 v0, v0, 0x1c00

    .line 336
    .line 337
    or-int/2addr v0, v1

    .line 338
    shl-int/lit8 v1, v2, 0xf

    .line 339
    .line 340
    const/high16 v3, 0x70000

    .line 341
    .line 342
    and-int/2addr v1, v3

    .line 343
    or-int/2addr v0, v1

    .line 344
    const/high16 v1, 0x380000

    .line 345
    .line 346
    shl-int/lit8 v2, v2, 0x3

    .line 347
    .line 348
    and-int/2addr v1, v2

    .line 349
    or-int v10, v0, v1

    .line 350
    .line 351
    const/4 v11, 0x0

    .line 352
    move-wide/from16 v0, v16

    .line 353
    .line 354
    move-wide/from16 v2, v18

    .line 355
    .line 356
    move/from16 v4, v20

    .line 357
    .line 358
    move-object/from16 v5, v21

    .line 359
    .line 360
    move-object v7, v15

    .line 361
    move-object/from16 v8, p7

    .line 362
    .line 363
    move-object v9, v14

    .line 364
    invoke-static/range {v0 .. v11}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 365
    .line 366
    .line 367
    move-object v1, v15

    .line 368
    move-wide/from16 v2, v16

    .line 369
    .line 370
    move-wide/from16 v4, v18

    .line 371
    .line 372
    move/from16 v6, v20

    .line 373
    .line 374
    move-object/from16 v7, v21

    .line 375
    .line 376
    :goto_11
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 377
    .line 378
    .line 379
    move-result-object v11

    .line 380
    if-nez v11, :cond_1d

    .line 381
    .line 382
    goto :goto_12

    .line 383
    :cond_1d
    new-instance v14, Landroidx/compose/material/AppBarKt$TopAppBar$3;

    .line 384
    .line 385
    move-object v0, v14

    .line 386
    move-object/from16 v8, p7

    .line 387
    .line 388
    move/from16 v9, p9

    .line 389
    .line 390
    move/from16 v10, p10

    .line 391
    .line 392
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/AppBarKt$TopAppBar$3;-><init>(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Lat/n;II)V

    .line 393
    .line 394
    .line 395
    invoke-interface {v11, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 396
    .line 397
    .line 398
    :goto_12
    return-void
.end method

.method public static final TopAppBar-xWeB9-s(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lat/n;JJFLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
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
            "Landroidx/compose/ui/Modifier;",
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
            ">;JJF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v10, p10

    .line 4
    .line 5
    const-string v0, "title"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v0, -0x7c70822b

    .line 11
    .line 12
    .line 13
    move-object/from16 v2, p9

    .line 14
    .line 15
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    and-int/lit8 v2, p11, 0x1

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    or-int/lit8 v2, v10, 0x6

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    and-int/lit8 v2, v10, 0xe

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x2

    .line 39
    :goto_0
    or-int/2addr v2, v10

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v10

    .line 42
    :goto_1
    and-int/lit8 v3, p11, 0x2

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
    and-int/lit8 v4, v10, 0x70

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
    and-int/lit8 v5, p11, 0x4

    .line 70
    .line 71
    if-eqz v5, :cond_7

    .line 72
    .line 73
    or-int/lit16 v2, v2, 0x180

    .line 74
    .line 75
    :cond_6
    move-object/from16 v6, p2

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v6, v10, 0x380

    .line 79
    .line 80
    if-nez v6, :cond_6

    .line 81
    .line 82
    move-object/from16 v6, p2

    .line 83
    .line 84
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_8

    .line 89
    .line 90
    const/16 v7, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v7, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v2, v7

    .line 96
    :goto_5
    and-int/lit8 v7, p11, 0x8

    .line 97
    .line 98
    if-eqz v7, :cond_a

    .line 99
    .line 100
    or-int/lit16 v2, v2, 0xc00

    .line 101
    .line 102
    :cond_9
    move-object/from16 v8, p3

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_a
    and-int/lit16 v8, v10, 0x1c00

    .line 106
    .line 107
    if-nez v8, :cond_9

    .line 108
    .line 109
    move-object/from16 v8, p3

    .line 110
    .line 111
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_b

    .line 116
    .line 117
    const/16 v9, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_b
    const/16 v9, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v2, v9

    .line 123
    :goto_7
    const v9, 0xe000

    .line 124
    .line 125
    .line 126
    and-int/2addr v9, v10

    .line 127
    if-nez v9, :cond_d

    .line 128
    .line 129
    and-int/lit8 v9, p11, 0x10

    .line 130
    .line 131
    move-wide/from16 v11, p4

    .line 132
    .line 133
    if-nez v9, :cond_c

    .line 134
    .line 135
    invoke-interface {v0, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_c

    .line 140
    .line 141
    const/16 v9, 0x4000

    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_c
    const/16 v9, 0x2000

    .line 145
    .line 146
    :goto_8
    or-int/2addr v2, v9

    .line 147
    goto :goto_9

    .line 148
    :cond_d
    move-wide/from16 v11, p4

    .line 149
    .line 150
    :goto_9
    const/high16 v9, 0x70000

    .line 151
    .line 152
    and-int v13, v10, v9

    .line 153
    .line 154
    if-nez v13, :cond_10

    .line 155
    .line 156
    and-int/lit8 v13, p11, 0x20

    .line 157
    .line 158
    if-nez v13, :cond_e

    .line 159
    .line 160
    move-wide/from16 v13, p6

    .line 161
    .line 162
    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 163
    .line 164
    .line 165
    move-result v15

    .line 166
    if-eqz v15, :cond_f

    .line 167
    .line 168
    const/high16 v15, 0x20000

    .line 169
    .line 170
    goto :goto_a

    .line 171
    :cond_e
    move-wide/from16 v13, p6

    .line 172
    .line 173
    :cond_f
    const/high16 v15, 0x10000

    .line 174
    .line 175
    :goto_a
    or-int/2addr v2, v15

    .line 176
    goto :goto_b

    .line 177
    :cond_10
    move-wide/from16 v13, p6

    .line 178
    .line 179
    :goto_b
    and-int/lit8 v15, p11, 0x40

    .line 180
    .line 181
    if-eqz v15, :cond_11

    .line 182
    .line 183
    const/high16 v16, 0x180000

    .line 184
    .line 185
    or-int v2, v2, v16

    .line 186
    .line 187
    move/from16 v9, p8

    .line 188
    .line 189
    goto :goto_d

    .line 190
    :cond_11
    const/high16 v16, 0x380000

    .line 191
    .line 192
    and-int v16, v10, v16

    .line 193
    .line 194
    move/from16 v9, p8

    .line 195
    .line 196
    if-nez v16, :cond_13

    .line 197
    .line 198
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 199
    .line 200
    .line 201
    move-result v16

    .line 202
    if-eqz v16, :cond_12

    .line 203
    .line 204
    const/high16 v16, 0x100000

    .line 205
    .line 206
    goto :goto_c

    .line 207
    :cond_12
    const/high16 v16, 0x80000

    .line 208
    .line 209
    :goto_c
    or-int v2, v2, v16

    .line 210
    .line 211
    :cond_13
    :goto_d
    const v16, 0x2db6db

    .line 212
    .line 213
    .line 214
    and-int v4, v2, v16

    .line 215
    .line 216
    const v6, 0x92492

    .line 217
    .line 218
    .line 219
    if-ne v4, v6, :cond_15

    .line 220
    .line 221
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-nez v4, :cond_14

    .line 226
    .line 227
    goto :goto_e

    .line 228
    :cond_14
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 229
    .line 230
    .line 231
    move-object/from16 v2, p1

    .line 232
    .line 233
    move-object/from16 v3, p2

    .line 234
    .line 235
    move-object v4, v8

    .line 236
    move-wide v5, v11

    .line 237
    move-wide v7, v13

    .line 238
    goto/16 :goto_16

    .line 239
    .line 240
    :cond_15
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 241
    .line 242
    .line 243
    and-int/lit8 v4, v10, 0x1

    .line 244
    .line 245
    const v6, -0x70001

    .line 246
    .line 247
    .line 248
    const v16, -0xe001

    .line 249
    .line 250
    .line 251
    if-eqz v4, :cond_19

    .line 252
    .line 253
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_16

    .line 258
    .line 259
    goto :goto_f

    .line 260
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 261
    .line 262
    .line 263
    and-int/lit8 v3, p11, 0x10

    .line 264
    .line 265
    if-eqz v3, :cond_17

    .line 266
    .line 267
    and-int v2, v2, v16

    .line 268
    .line 269
    :cond_17
    and-int/lit8 v3, p11, 0x20

    .line 270
    .line 271
    if-eqz v3, :cond_18

    .line 272
    .line 273
    and-int/2addr v2, v6

    .line 274
    :cond_18
    move-object/from16 v3, p1

    .line 275
    .line 276
    move-object/from16 v4, p2

    .line 277
    .line 278
    move-object v5, v8

    .line 279
    move-wide v7, v11

    .line 280
    move-wide/from16 v23, v13

    .line 281
    .line 282
    goto :goto_15

    .line 283
    :cond_19
    :goto_f
    if-eqz v3, :cond_1a

    .line 284
    .line 285
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 286
    .line 287
    goto :goto_10

    .line 288
    :cond_1a
    move-object/from16 v3, p1

    .line 289
    .line 290
    :goto_10
    if-eqz v5, :cond_1b

    .line 291
    .line 292
    const/4 v4, 0x0

    .line 293
    goto :goto_11

    .line 294
    :cond_1b
    move-object/from16 v4, p2

    .line 295
    .line 296
    :goto_11
    if-eqz v7, :cond_1c

    .line 297
    .line 298
    sget-object v5, Landroidx/compose/material/ComposableSingletons$AppBarKt;->INSTANCE:Landroidx/compose/material/ComposableSingletons$AppBarKt;

    .line 299
    .line 300
    invoke-virtual {v5}, Landroidx/compose/material/ComposableSingletons$AppBarKt;->getLambda-1$material_release()Lat/n;

    .line 301
    .line 302
    .line 303
    move-result-object v5

    .line 304
    goto :goto_12

    .line 305
    :cond_1c
    move-object v5, v8

    .line 306
    :goto_12
    and-int/lit8 v7, p11, 0x10

    .line 307
    .line 308
    if-eqz v7, :cond_1d

    .line 309
    .line 310
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 311
    .line 312
    const/4 v8, 0x6

    .line 313
    invoke-virtual {v7, v0, v8}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 314
    .line 315
    .line 316
    move-result-object v7

    .line 317
    invoke-static {v7}, Landroidx/compose/material/ColorsKt;->getPrimarySurface(Landroidx/compose/material/Colors;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v7

    .line 321
    and-int v2, v2, v16

    .line 322
    .line 323
    goto :goto_13

    .line 324
    :cond_1d
    move-wide v7, v11

    .line 325
    :goto_13
    and-int/lit8 v11, p11, 0x20

    .line 326
    .line 327
    if-eqz v11, :cond_1e

    .line 328
    .line 329
    shr-int/lit8 v11, v2, 0xc

    .line 330
    .line 331
    and-int/lit8 v11, v11, 0xe

    .line 332
    .line 333
    invoke-static {v7, v8, v0, v11}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 334
    .line 335
    .line 336
    move-result-wide v11

    .line 337
    and-int/2addr v2, v6

    .line 338
    goto :goto_14

    .line 339
    :cond_1e
    move-wide v11, v13

    .line 340
    :goto_14
    if-eqz v15, :cond_1f

    .line 341
    .line 342
    sget-object v6, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 343
    .line 344
    invoke-virtual {v6}, Landroidx/compose/material/AppBarDefaults;->getTopAppBarElevation-D9Ej5fM()F

    .line 345
    .line 346
    .line 347
    move-result v6

    .line 348
    move v9, v6

    .line 349
    :cond_1f
    move-wide/from16 v23, v11

    .line 350
    .line 351
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 352
    .line 353
    .line 354
    sget-object v6, Landroidx/compose/material/AppBarDefaults;->INSTANCE:Landroidx/compose/material/AppBarDefaults;

    .line 355
    .line 356
    invoke-virtual {v6}, Landroidx/compose/material/AppBarDefaults;->getContentPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 357
    .line 358
    .line 359
    move-result-object v16

    .line 360
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    .line 361
    .line 362
    .line 363
    move-result-object v17

    .line 364
    new-instance v6, Landroidx/compose/material/AppBarKt$TopAppBar$1;

    .line 365
    .line 366
    invoke-direct {v6, v4, v2, v1, v5}, Landroidx/compose/material/AppBarKt$TopAppBar$1;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lat/n;)V

    .line 367
    .line 368
    .line 369
    const v11, -0x58753a7e

    .line 370
    .line 371
    .line 372
    const/4 v12, 0x1

    .line 373
    invoke-static {v0, v11, v12, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 374
    .line 375
    .line 376
    move-result-object v19

    .line 377
    shr-int/lit8 v6, v2, 0xc

    .line 378
    .line 379
    and-int/lit8 v11, v6, 0xe

    .line 380
    .line 381
    const v12, 0x186c00

    .line 382
    .line 383
    .line 384
    or-int/2addr v11, v12

    .line 385
    and-int/lit8 v12, v6, 0x70

    .line 386
    .line 387
    or-int/2addr v11, v12

    .line 388
    and-int/lit16 v6, v6, 0x380

    .line 389
    .line 390
    or-int/2addr v6, v11

    .line 391
    shl-int/lit8 v2, v2, 0xc

    .line 392
    .line 393
    const/high16 v11, 0x70000

    .line 394
    .line 395
    and-int/2addr v2, v11

    .line 396
    or-int v21, v6, v2

    .line 397
    .line 398
    const/16 v22, 0x0

    .line 399
    .line 400
    move-wide v11, v7

    .line 401
    move-wide/from16 v13, v23

    .line 402
    .line 403
    move v15, v9

    .line 404
    move-object/from16 v18, v3

    .line 405
    .line 406
    move-object/from16 v20, v0

    .line 407
    .line 408
    invoke-static/range {v11 .. v22}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 409
    .line 410
    .line 411
    move-object v2, v3

    .line 412
    move-object v3, v4

    .line 413
    move-object v4, v5

    .line 414
    move-wide v5, v7

    .line 415
    move-wide/from16 v7, v23

    .line 416
    .line 417
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 418
    .line 419
    .line 420
    move-result-object v12

    .line 421
    if-nez v12, :cond_20

    .line 422
    .line 423
    goto :goto_17

    .line 424
    :cond_20
    new-instance v13, Landroidx/compose/material/AppBarKt$TopAppBar$2;

    .line 425
    .line 426
    move-object v0, v13

    .line 427
    move-object/from16 v1, p0

    .line 428
    .line 429
    move/from16 v10, p10

    .line 430
    .line 431
    move/from16 v11, p11

    .line 432
    .line 433
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material/AppBarKt$TopAppBar$2;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lat/n;JJFII)V

    .line 434
    .line 435
    .line 436
    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 437
    .line 438
    .line 439
    :goto_17
    return-void
.end method

.method public static final synthetic access$AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Landroidx/compose/material/AppBarKt;->AppBar-celAv9A(JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAppBarHeight$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHeight:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getAppBarHorizontalPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->AppBarHorizontalPadding:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getBottomAppBarCutoutOffset$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarCutoutOffset:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getBottomAppBarRoundedEdgeRadius$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/AppBarKt;->BottomAppBarRoundedEdgeRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTitleIconModifier$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleIconModifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTitleInsetWithoutIcon$p()Landroidx/compose/ui/Modifier;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/AppBarKt;->TitleInsetWithoutIcon:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final calculateCutoutCircleYIntercept(FF)F
    .locals 0

    .line 1
    mul-float/2addr p0, p0

    .line 2
    mul-float/2addr p1, p1

    .line 3
    sub-float/2addr p0, p1

    .line 4
    float-to-double p0, p0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    double-to-float p0, p0

    .line 10
    neg-float p0, p0

    .line 11
    return p0
.end method

.method public static final calculateRoundedEdgeIntercept(FFF)Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF)",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    mul-float v0, p1, p1

    .line 2
    .line 3
    mul-float/2addr p2, p2

    .line 4
    mul-float v1, v0, p2

    .line 5
    .line 6
    mul-float v2, p0, p0

    .line 7
    .line 8
    add-float/2addr v2, v0

    .line 9
    sub-float v0, v2, p2

    .line 10
    .line 11
    mul-float/2addr v1, v0

    .line 12
    mul-float v0, p0, p2

    .line 13
    .line 14
    float-to-double v3, v1

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    double-to-float v1, v5

    .line 20
    sub-float v1, v0, v1

    .line 21
    .line 22
    div-float/2addr v1, v2

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    double-to-float v3, v3

    .line 28
    add-float/2addr v0, v3

    .line 29
    div-float/2addr v0, v2

    .line 30
    mul-float v2, v1, v1

    .line 31
    .line 32
    sub-float v2, p2, v2

    .line 33
    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float v3, v0, v0

    .line 41
    .line 42
    sub-float/2addr p2, v3

    .line 43
    float-to-double v3, p2

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    double-to-float p2, v3

    .line 49
    const/4 v3, 0x0

    .line 50
    cmpl-float p1, p1, v3

    .line 51
    .line 52
    if-lez p1, :cond_1

    .line 53
    .line 54
    cmpl-float p1, v2, p2

    .line 55
    .line 56
    if-lez p1, :cond_0

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    :goto_0
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    cmpg-float p1, v2, p2

    .line 81
    .line 82
    if-gez p1, :cond_2

    .line 83
    .line 84
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    :goto_1
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    goto :goto_1

    .line 106
    :goto_2
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    check-cast p2, Ljava/lang/Number;

    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/Number;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    cmpg-float p0, p2, p0

    .line 127
    .line 128
    if-gez p0, :cond_3

    .line 129
    .line 130
    neg-float p1, p1

    .line 131
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-static {p0, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method private static final square(F)F
    .locals 0

    .line 1
    mul-float/2addr p0, p0

    .line 2
    return p0
.end method
