.class final Landroidx/compose/material/ThreeLine;
.super Ljava/lang/Object;
.source "ListItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ContentLeftPadding:F

.field private static final ContentRightPadding:F

.field public static final INSTANCE:Landroidx/compose/material/ThreeLine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconLeftPadding:F

.field private static final IconMinPaddedWidth:F

.field private static final IconThreeLineVerticalPadding:F

.field private static final MinHeight:F

.field private static final ThreeLineBaselineFirstOffset:F

.field private static final ThreeLineBaselineSecondOffset:F

.field private static final ThreeLineBaselineThirdOffset:F

.field private static final ThreeLineTrailingTopPadding:F

.field private static final TrailingRightPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material/ThreeLine;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/ThreeLine;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/ThreeLine;->INSTANCE:Landroidx/compose/material/ThreeLine;

    .line 7
    .line 8
    const/16 v0, 0x58

    .line 9
    .line 10
    int-to-float v0, v0

    .line 11
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroidx/compose/material/ThreeLine;->MinHeight:F

    .line 16
    .line 17
    const/16 v0, 0x28

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput v0, Landroidx/compose/material/ThreeLine;->IconMinPaddedWidth:F

    .line 25
    .line 26
    const/16 v0, 0x10

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sput v1, Landroidx/compose/material/ThreeLine;->IconLeftPadding:F

    .line 34
    .line 35
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    sput v1, Landroidx/compose/material/ThreeLine;->IconThreeLineVerticalPadding:F

    .line 40
    .line 41
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sput v1, Landroidx/compose/material/ThreeLine;->ContentLeftPadding:F

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    sput v1, Landroidx/compose/material/ThreeLine;->ContentRightPadding:F

    .line 52
    .line 53
    const/16 v1, 0x1c

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineFirstOffset:F

    .line 61
    .line 62
    const/16 v1, 0x14

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    sput v2, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineSecondOffset:F

    .line 70
    .line 71
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineThirdOffset:F

    .line 76
    .line 77
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sput v1, Landroidx/compose/material/ThreeLine;->ThreeLineTrailingTopPadding:F

    .line 82
    .line 83
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    sput v0, Landroidx/compose/material/ThreeLine;->TrailingRightPadding:F

    .line 88
    .line 89
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 35
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
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
    move-object/from16 v3, p2

    .line 2
    .line 3
    move-object/from16 v4, p3

    .line 4
    .line 5
    move-object/from16 v5, p4

    .line 6
    .line 7
    move-object/from16 v6, p5

    .line 8
    .line 9
    move-object/from16 v13, p6

    .line 10
    .line 11
    move/from16 v14, p8

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    const/4 v7, 0x6

    .line 19
    const-string v8, "text"

    .line 20
    .line 21
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v8, "secondaryText"

    .line 25
    .line 26
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const v8, 0x684ae52d

    .line 30
    .line 31
    .line 32
    move-object/from16 v9, p7

    .line 33
    .line 34
    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    const/4 v8, 0x1

    .line 39
    and-int/lit8 v9, p9, 0x1

    .line 40
    .line 41
    const/4 v10, 0x2

    .line 42
    if-eqz v9, :cond_0

    .line 43
    .line 44
    or-int/lit8 v11, v14, 0x6

    .line 45
    .line 46
    move v15, v11

    .line 47
    move-object/from16 v11, p1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    and-int/lit8 v11, v14, 0xe

    .line 51
    .line 52
    if-nez v11, :cond_2

    .line 53
    .line 54
    move-object/from16 v11, p1

    .line 55
    .line 56
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v15

    .line 60
    if-eqz v15, :cond_1

    .line 61
    .line 62
    move v15, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v15, v10

    .line 65
    :goto_0
    or-int/2addr v15, v14

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object/from16 v11, p1

    .line 68
    .line 69
    move v15, v14

    .line 70
    :goto_1
    and-int/lit8 v16, p9, 0x2

    .line 71
    .line 72
    if-eqz v16, :cond_3

    .line 73
    .line 74
    or-int/lit8 v15, v15, 0x30

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_3
    and-int/lit8 v16, v14, 0x70

    .line 78
    .line 79
    if-nez v16, :cond_5

    .line 80
    .line 81
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v16

    .line 85
    if-eqz v16, :cond_4

    .line 86
    .line 87
    move/from16 v16, v1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    move/from16 v16, v0

    .line 91
    .line 92
    :goto_2
    or-int v15, v15, v16

    .line 93
    .line 94
    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    or-int/lit16 v15, v15, 0x180

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    and-int/lit16 v2, v14, 0x380

    .line 102
    .line 103
    if-nez v2, :cond_8

    .line 104
    .line 105
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    const/16 v2, 0x100

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    const/16 v2, 0x80

    .line 115
    .line 116
    :goto_4
    or-int/2addr v15, v2

    .line 117
    :cond_8
    :goto_5
    and-int/lit8 v2, p9, 0x8

    .line 118
    .line 119
    if-eqz v2, :cond_9

    .line 120
    .line 121
    or-int/lit16 v15, v15, 0xc00

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_9
    and-int/lit16 v2, v14, 0x1c00

    .line 125
    .line 126
    if-nez v2, :cond_b

    .line 127
    .line 128
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_a

    .line 133
    .line 134
    const/16 v2, 0x800

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_a
    const/16 v2, 0x400

    .line 138
    .line 139
    :goto_6
    or-int/2addr v15, v2

    .line 140
    :cond_b
    :goto_7
    and-int/lit8 v0, p9, 0x10

    .line 141
    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    or-int/lit16 v15, v15, 0x6000

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_c
    const v0, 0xe000

    .line 148
    .line 149
    .line 150
    and-int/2addr v0, v14

    .line 151
    if-nez v0, :cond_e

    .line 152
    .line 153
    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_d

    .line 158
    .line 159
    const/16 v0, 0x4000

    .line 160
    .line 161
    goto :goto_8

    .line 162
    :cond_d
    const/16 v0, 0x2000

    .line 163
    .line 164
    :goto_8
    or-int/2addr v15, v0

    .line 165
    :cond_e
    :goto_9
    and-int/lit8 v0, p9, 0x20

    .line 166
    .line 167
    if-eqz v0, :cond_f

    .line 168
    .line 169
    const/high16 v0, 0x30000

    .line 170
    .line 171
    :goto_a
    or-int/2addr v15, v0

    .line 172
    goto :goto_b

    .line 173
    :cond_f
    const/high16 v0, 0x70000

    .line 174
    .line 175
    and-int/2addr v0, v14

    .line 176
    if-nez v0, :cond_11

    .line 177
    .line 178
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eqz v0, :cond_10

    .line 183
    .line 184
    const/high16 v0, 0x20000

    .line 185
    .line 186
    goto :goto_a

    .line 187
    :cond_10
    const/high16 v0, 0x10000

    .line 188
    .line 189
    goto :goto_a

    .line 190
    :cond_11
    :goto_b
    and-int/lit8 v0, p9, 0x40

    .line 191
    .line 192
    if-eqz v0, :cond_13

    .line 193
    .line 194
    const/high16 v0, 0x180000

    .line 195
    .line 196
    or-int/2addr v15, v0

    .line 197
    move-object/from16 v2, p0

    .line 198
    .line 199
    :cond_12
    :goto_c
    move v0, v15

    .line 200
    goto :goto_e

    .line 201
    :cond_13
    const/high16 v0, 0x380000

    .line 202
    .line 203
    and-int/2addr v0, v14

    .line 204
    move-object/from16 v2, p0

    .line 205
    .line 206
    if-nez v0, :cond_12

    .line 207
    .line 208
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_14

    .line 213
    .line 214
    const/high16 v0, 0x100000

    .line 215
    .line 216
    goto :goto_d

    .line 217
    :cond_14
    const/high16 v0, 0x80000

    .line 218
    .line 219
    :goto_d
    or-int/2addr v15, v0

    .line 220
    goto :goto_c

    .line 221
    :goto_e
    const v1, 0x2db6db

    .line 222
    .line 223
    .line 224
    and-int/2addr v1, v0

    .line 225
    const v15, 0x92492

    .line 226
    .line 227
    .line 228
    if-ne v1, v15, :cond_16

    .line 229
    .line 230
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-nez v1, :cond_15

    .line 235
    .line 236
    goto :goto_f

    .line 237
    :cond_15
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 238
    .line 239
    .line 240
    move-object v2, v11

    .line 241
    move-object v1, v12

    .line 242
    goto/16 :goto_14

    .line 243
    .line 244
    :cond_16
    :goto_f
    if-eqz v9, :cond_17

    .line 245
    .line 246
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 247
    .line 248
    goto :goto_10

    .line 249
    :cond_17
    move-object v1, v11

    .line 250
    :goto_10
    sget v9, Landroidx/compose/material/ThreeLine;->MinHeight:F

    .line 251
    .line 252
    const/4 v11, 0x0

    .line 253
    const/4 v15, 0x0

    .line 254
    invoke-static {v1, v9, v11, v10, v15}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 255
    .line 256
    .line 257
    move-result-object v9

    .line 258
    const v10, 0x2952b718

    .line 259
    .line 260
    .line 261
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 262
    .line 263
    .line 264
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 265
    .line 266
    invoke-virtual {v10}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 271
    .line 272
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    .line 273
    .line 274
    .line 275
    move-result-object v15

    .line 276
    const/4 v8, 0x0

    .line 277
    invoke-static {v10, v15, v12, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    const v15, -0x4ee9b9da

    .line 282
    .line 283
    .line 284
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 285
    .line 286
    .line 287
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 288
    .line 289
    .line 290
    move-result-object v15

    .line 291
    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 296
    .line 297
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    check-cast v7, Landroidx/compose/ui/unit/LayoutDirection;

    .line 306
    .line 307
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 316
    .line 317
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 318
    .line 319
    move-object/from16 v21, v1

    .line 320
    .line 321
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 326
    .line 327
    .line 328
    move-result-object v9

    .line 329
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 330
    .line 331
    .line 332
    move-result-object v19

    .line 333
    if-nez v19, :cond_18

    .line 334
    .line 335
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 336
    .line 337
    .line 338
    :cond_18
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 339
    .line 340
    .line 341
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 342
    .line 343
    .line 344
    move-result v19

    .line 345
    if-eqz v19, :cond_19

    .line 346
    .line 347
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 348
    .line 349
    .line 350
    goto :goto_11

    .line 351
    :cond_19
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 352
    .line 353
    .line 354
    :goto_11
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 355
    .line 356
    .line 357
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-static {v1, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-static {v1, v15, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-static {v1, v7, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    invoke-static {v1, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 387
    .line 388
    .line 389
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 390
    .line 391
    .line 392
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    const/4 v2, 0x0

    .line 401
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    invoke-interface {v9, v1, v12, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    const v1, 0x7ab4aae9

    .line 409
    .line 410
    .line 411
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 412
    .line 413
    .line 414
    const v2, -0x286e2e7f

    .line 415
    .line 416
    .line 417
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 418
    .line 419
    .line 420
    sget-object v22, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 421
    .line 422
    const v2, 0x586a8c91

    .line 423
    .line 424
    .line 425
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 426
    .line 427
    .line 428
    const v2, -0x10b64e10

    .line 429
    .line 430
    .line 431
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 432
    .line 433
    .line 434
    if-eqz v3, :cond_1c

    .line 435
    .line 436
    sget v24, Landroidx/compose/material/ThreeLine;->IconLeftPadding:F

    .line 437
    .line 438
    sget v2, Landroidx/compose/material/ThreeLine;->IconMinPaddedWidth:F

    .line 439
    .line 440
    add-float v2, v24, v2

    .line 441
    .line 442
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 443
    .line 444
    .line 445
    move-result v27

    .line 446
    sget-object v25, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 447
    .line 448
    const/16 v30, 0xc

    .line 449
    .line 450
    const/16 v31, 0x0

    .line 451
    .line 452
    const/16 v28, 0x0

    .line 453
    .line 454
    const/16 v29, 0x0

    .line 455
    .line 456
    move/from16 v26, v27

    .line 457
    .line 458
    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 459
    .line 460
    .line 461
    move-result-object v23

    .line 462
    sget v27, Landroidx/compose/material/ThreeLine;->IconThreeLineVerticalPadding:F

    .line 463
    .line 464
    const/16 v28, 0x4

    .line 465
    .line 466
    const/16 v29, 0x0

    .line 467
    .line 468
    const/16 v26, 0x0

    .line 469
    .line 470
    move/from16 v25, v27

    .line 471
    .line 472
    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    const v8, 0x2bb5b5d7

    .line 481
    .line 482
    .line 483
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 484
    .line 485
    .line 486
    const/4 v8, 0x0

    .line 487
    const/4 v9, 0x6

    .line 488
    invoke-static {v7, v8, v12, v9}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    const v8, -0x4ee9b9da

    .line 493
    .line 494
    .line 495
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 496
    .line 497
    .line 498
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 499
    .line 500
    .line 501
    move-result-object v8

    .line 502
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 507
    .line 508
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 509
    .line 510
    .line 511
    move-result-object v9

    .line 512
    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v9

    .line 516
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 517
    .line 518
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 519
    .line 520
    .line 521
    move-result-object v10

    .line 522
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v10

    .line 526
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 527
    .line 528
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 529
    .line 530
    .line 531
    move-result-object v11

    .line 532
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 537
    .line 538
    .line 539
    move-result-object v15

    .line 540
    if-nez v15, :cond_1a

    .line 541
    .line 542
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 543
    .line 544
    .line 545
    :cond_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 546
    .line 547
    .line 548
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 549
    .line 550
    .line 551
    move-result v15

    .line 552
    if-eqz v15, :cond_1b

    .line 553
    .line 554
    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 555
    .line 556
    .line 557
    goto :goto_12

    .line 558
    :cond_1b
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 559
    .line 560
    .line 561
    :goto_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 562
    .line 563
    .line 564
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 565
    .line 566
    .line 567
    move-result-object v11

    .line 568
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 569
    .line 570
    .line 571
    move-result-object v15

    .line 572
    invoke-static {v11, v7, v15}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 576
    .line 577
    .line 578
    move-result-object v7

    .line 579
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 580
    .line 581
    .line 582
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 583
    .line 584
    .line 585
    move-result-object v7

    .line 586
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 590
    .line 591
    .line 592
    move-result-object v7

    .line 593
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 594
    .line 595
    .line 596
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 597
    .line 598
    .line 599
    invoke-static {v12}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 604
    .line 605
    .line 606
    move-result-object v7

    .line 607
    const/4 v8, 0x0

    .line 608
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    .line 610
    .line 611
    move-result-object v8

    .line 612
    invoke-interface {v2, v7, v12, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 616
    .line 617
    .line 618
    const v1, -0x7f65a980

    .line 619
    .line 620
    .line 621
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 622
    .line 623
    .line 624
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 625
    .line 626
    const v1, 0x77a0d4f2

    .line 627
    .line 628
    .line 629
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 630
    .line 631
    .line 632
    shr-int/lit8 v1, v0, 0x3

    .line 633
    .line 634
    and-int/lit8 v1, v1, 0xe

    .line 635
    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-interface {v3, v12, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 644
    .line 645
    .line 646
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 647
    .line 648
    .line 649
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 650
    .line 651
    .line 652
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 653
    .line 654
    .line 655
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 656
    .line 657
    .line 658
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 659
    .line 660
    .line 661
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 662
    .line 663
    .line 664
    sget v1, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineFirstOffset:F

    .line 665
    .line 666
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    sget v7, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineSecondOffset:F

    .line 671
    .line 672
    invoke-static {v7}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    sget v8, Landroidx/compose/material/ThreeLine;->ThreeLineBaselineThirdOffset:F

    .line 677
    .line 678
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 679
    .line 680
    .line 681
    move-result-object v8

    .line 682
    filled-new-array {v2, v7, v8}, [Landroidx/compose/ui/unit/Dp;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 687
    .line 688
    .line 689
    move-result-object v15

    .line 690
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 691
    .line 692
    const/16 v26, 0x2

    .line 693
    .line 694
    const/16 v27, 0x0

    .line 695
    .line 696
    const/high16 v24, 0x3f800000    # 1.0f

    .line 697
    .line 698
    const/16 v25, 0x0

    .line 699
    .line 700
    move-object/from16 v23, v2

    .line 701
    .line 702
    invoke-static/range {v22 .. v27}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 703
    .line 704
    .line 705
    move-result-object v28

    .line 706
    sget v29, Landroidx/compose/material/ThreeLine;->ContentLeftPadding:F

    .line 707
    .line 708
    sget v31, Landroidx/compose/material/ThreeLine;->ContentRightPadding:F

    .line 709
    .line 710
    const/16 v33, 0xa

    .line 711
    .line 712
    const/16 v34, 0x0

    .line 713
    .line 714
    const/16 v30, 0x0

    .line 715
    .line 716
    const/16 v32, 0x0

    .line 717
    .line 718
    invoke-static/range {v28 .. v34}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 719
    .line 720
    .line 721
    move-result-object v16

    .line 722
    new-instance v7, Landroidx/compose/material/ThreeLine$ListItem$1$2;

    .line 723
    .line 724
    invoke-direct {v7, v6, v0, v4, v5}, Landroidx/compose/material/ThreeLine$ListItem$1$2;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    .line 725
    .line 726
    .line 727
    const v8, -0x12f5bba5

    .line 728
    .line 729
    .line 730
    const/4 v9, 0x1

    .line 731
    invoke-static {v12, v8, v9, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 732
    .line 733
    .line 734
    move-result-object v17

    .line 735
    const/16 v19, 0x180

    .line 736
    .line 737
    const/16 v20, 0x0

    .line 738
    .line 739
    move-object/from16 v18, v12

    .line 740
    .line 741
    invoke-static/range {v15 .. v20}, Landroidx/compose/material/ListItemKt;->access$BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 742
    .line 743
    .line 744
    if-eqz v13, :cond_1d

    .line 745
    .line 746
    sget v25, Landroidx/compose/material/ThreeLine;->ThreeLineTrailingTopPadding:F

    .line 747
    .line 748
    sub-float v1, v1, v25

    .line 749
    .line 750
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 751
    .line 752
    .line 753
    move-result v7

    .line 754
    sget v26, Landroidx/compose/material/ThreeLine;->TrailingRightPadding:F

    .line 755
    .line 756
    const/16 v28, 0x9

    .line 757
    .line 758
    const/16 v29, 0x0

    .line 759
    .line 760
    const/16 v24, 0x0

    .line 761
    .line 762
    const/16 v27, 0x0

    .line 763
    .line 764
    move-object/from16 v23, v2

    .line 765
    .line 766
    invoke-static/range {v23 .. v29}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 767
    .line 768
    .line 769
    move-result-object v8

    .line 770
    shr-int/lit8 v0, v0, 0x9

    .line 771
    .line 772
    and-int/lit16 v0, v0, 0x380

    .line 773
    .line 774
    or-int/lit8 v11, v0, 0x36

    .line 775
    .line 776
    const/4 v0, 0x0

    .line 777
    move-object/from16 v9, p6

    .line 778
    .line 779
    move-object v10, v12

    .line 780
    move-object v1, v12

    .line 781
    move v12, v0

    .line 782
    invoke-static/range {v7 .. v12}, Landroidx/compose/material/ListItemKt;->access$OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 783
    .line 784
    .line 785
    goto :goto_13

    .line 786
    :cond_1d
    move-object v1, v12

    .line 787
    :goto_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 788
    .line 789
    .line 790
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 791
    .line 792
    .line 793
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 794
    .line 795
    .line 796
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 797
    .line 798
    .line 799
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 800
    .line 801
    .line 802
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 803
    .line 804
    .line 805
    move-object/from16 v2, v21

    .line 806
    .line 807
    :goto_14
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 808
    .line 809
    .line 810
    move-result-object v10

    .line 811
    if-nez v10, :cond_1e

    .line 812
    .line 813
    goto :goto_15

    .line 814
    :cond_1e
    new-instance v11, Landroidx/compose/material/ThreeLine$ListItem$2;

    .line 815
    .line 816
    move-object v0, v11

    .line 817
    move-object/from16 v1, p0

    .line 818
    .line 819
    move-object/from16 v3, p2

    .line 820
    .line 821
    move-object/from16 v4, p3

    .line 822
    .line 823
    move-object/from16 v5, p4

    .line 824
    .line 825
    move-object/from16 v6, p5

    .line 826
    .line 827
    move-object/from16 v7, p6

    .line 828
    .line 829
    move/from16 v8, p8

    .line 830
    .line 831
    move/from16 v9, p9

    .line 832
    .line 833
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/ThreeLine$ListItem$2;-><init>(Landroidx/compose/material/ThreeLine;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 834
    .line 835
    .line 836
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 837
    .line 838
    .line 839
    :goto_15
    return-void
.end method
