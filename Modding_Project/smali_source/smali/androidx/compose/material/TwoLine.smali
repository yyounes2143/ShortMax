.class final Landroidx/compose/material/TwoLine;
.super Ljava/lang/Object;
.source "ListItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ContentLeftPadding:F

.field private static final ContentRightPadding:F

.field public static final INSTANCE:Landroidx/compose/material/TwoLine;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IconLeftPadding:F

.field private static final IconMinPaddedWidth:F

.field private static final IconVerticalPadding:F

.field private static final MinHeight:F

.field private static final MinHeightWithIcon:F

.field private static final OverlineBaselineOffset:F

.field private static final OverlineToPrimaryBaselineOffset:F

.field private static final PrimaryBaselineOffsetNoIcon:F

.field private static final PrimaryBaselineOffsetWithIcon:F

.field private static final PrimaryToSecondaryBaselineOffsetNoIcon:F

.field private static final PrimaryToSecondaryBaselineOffsetWithIcon:F

.field private static final TrailingRightPadding:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/material/TwoLine;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/TwoLine;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/TwoLine;->INSTANCE:Landroidx/compose/material/TwoLine;

    .line 7
    .line 8
    const/16 v0, 0x40

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
    sput v0, Landroidx/compose/material/TwoLine;->MinHeight:F

    .line 16
    .line 17
    const/16 v0, 0x48

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
    sput v0, Landroidx/compose/material/TwoLine;->MinHeightWithIcon:F

    .line 25
    .line 26
    const/16 v0, 0x28

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    sput v0, Landroidx/compose/material/TwoLine;->IconMinPaddedWidth:F

    .line 34
    .line 35
    const/16 v0, 0x10

    .line 36
    .line 37
    int-to-float v0, v0

    .line 38
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sput v1, Landroidx/compose/material/TwoLine;->IconLeftPadding:F

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    sput v1, Landroidx/compose/material/TwoLine;->IconVerticalPadding:F

    .line 49
    .line 50
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sput v1, Landroidx/compose/material/TwoLine;->ContentLeftPadding:F

    .line 55
    .line 56
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    sput v1, Landroidx/compose/material/TwoLine;->ContentRightPadding:F

    .line 61
    .line 62
    const/16 v1, 0x18

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    sput v1, Landroidx/compose/material/TwoLine;->OverlineBaselineOffset:F

    .line 70
    .line 71
    const/16 v1, 0x14

    .line 72
    .line 73
    int-to-float v1, v1

    .line 74
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sput v2, Landroidx/compose/material/TwoLine;->OverlineToPrimaryBaselineOffset:F

    .line 79
    .line 80
    const/16 v2, 0x1c

    .line 81
    .line 82
    int-to-float v2, v2

    .line 83
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 88
    .line 89
    const/16 v2, 0x20

    .line 90
    .line 91
    int-to-float v2, v2

    .line 92
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 97
    .line 98
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    sput v2, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetNoIcon:F

    .line 103
    .line 104
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    sput v1, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetWithIcon:F

    .line 109
    .line 110
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    sput v0, Landroidx/compose/material/TwoLine;->TrailingRightPadding:F

    .line 115
    .line 116
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

.method public static final synthetic access$getTrailingRightPadding$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/TwoLine;->TrailingRightPadding:F

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public final ListItem(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 32
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
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    move-object/from16 v7, p6

    .line 10
    .line 11
    move/from16 v8, p8

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
    const/4 v9, 0x6

    .line 19
    const-string v10, "text"

    .line 20
    .line 21
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v10, -0x4fe82181

    .line 25
    .line 26
    .line 27
    move-object/from16 v11, p7

    .line 28
    .line 29
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    const/4 v15, 0x1

    .line 34
    and-int/lit8 v11, p9, 0x1

    .line 35
    .line 36
    const/4 v12, 0x2

    .line 37
    if-eqz v11, :cond_0

    .line 38
    .line 39
    or-int/lit8 v13, v8, 0x6

    .line 40
    .line 41
    move v14, v13

    .line 42
    move-object/from16 v13, p1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    and-int/lit8 v13, v8, 0xe

    .line 46
    .line 47
    if-nez v13, :cond_2

    .line 48
    .line 49
    move-object/from16 v13, p1

    .line 50
    .line 51
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v14

    .line 55
    if-eqz v14, :cond_1

    .line 56
    .line 57
    move v14, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v14, v12

    .line 60
    :goto_0
    or-int/2addr v14, v8

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object/from16 v13, p1

    .line 63
    .line 64
    move v14, v8

    .line 65
    :goto_1
    and-int/lit8 v16, p9, 0x2

    .line 66
    .line 67
    if-eqz v16, :cond_3

    .line 68
    .line 69
    or-int/lit8 v14, v14, 0x30

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    and-int/lit8 v16, v8, 0x70

    .line 73
    .line 74
    if-nez v16, :cond_5

    .line 75
    .line 76
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v16

    .line 80
    if-eqz v16, :cond_4

    .line 81
    .line 82
    move/from16 v16, v1

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    move/from16 v16, v0

    .line 86
    .line 87
    :goto_2
    or-int v14, v14, v16

    .line 88
    .line 89
    :cond_5
    :goto_3
    and-int/lit8 v2, p9, 0x4

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    or-int/lit16 v14, v14, 0x180

    .line 94
    .line 95
    goto :goto_5

    .line 96
    :cond_6
    and-int/lit16 v2, v8, 0x380

    .line 97
    .line 98
    if-nez v2, :cond_8

    .line 99
    .line 100
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_7

    .line 105
    .line 106
    const/16 v2, 0x100

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_7
    const/16 v2, 0x80

    .line 110
    .line 111
    :goto_4
    or-int/2addr v14, v2

    .line 112
    :cond_8
    :goto_5
    and-int/lit8 v2, p9, 0x8

    .line 113
    .line 114
    if-eqz v2, :cond_9

    .line 115
    .line 116
    or-int/lit16 v14, v14, 0xc00

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_9
    and-int/lit16 v2, v8, 0x1c00

    .line 120
    .line 121
    if-nez v2, :cond_b

    .line 122
    .line 123
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_a

    .line 128
    .line 129
    const/16 v2, 0x800

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_a
    const/16 v2, 0x400

    .line 133
    .line 134
    :goto_6
    or-int/2addr v14, v2

    .line 135
    :cond_b
    :goto_7
    and-int/lit8 v0, p9, 0x10

    .line 136
    .line 137
    if-eqz v0, :cond_c

    .line 138
    .line 139
    or-int/lit16 v14, v14, 0x6000

    .line 140
    .line 141
    goto :goto_9

    .line 142
    :cond_c
    const v0, 0xe000

    .line 143
    .line 144
    .line 145
    and-int/2addr v0, v8

    .line 146
    if-nez v0, :cond_e

    .line 147
    .line 148
    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_d

    .line 153
    .line 154
    const/16 v0, 0x4000

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_d
    const/16 v0, 0x2000

    .line 158
    .line 159
    :goto_8
    or-int/2addr v14, v0

    .line 160
    :cond_e
    :goto_9
    and-int/lit8 v0, p9, 0x20

    .line 161
    .line 162
    if-eqz v0, :cond_f

    .line 163
    .line 164
    const/high16 v0, 0x30000

    .line 165
    .line 166
    :goto_a
    or-int/2addr v14, v0

    .line 167
    goto :goto_b

    .line 168
    :cond_f
    const/high16 v0, 0x70000

    .line 169
    .line 170
    and-int/2addr v0, v8

    .line 171
    if-nez v0, :cond_11

    .line 172
    .line 173
    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-eqz v0, :cond_10

    .line 178
    .line 179
    const/high16 v0, 0x20000

    .line 180
    .line 181
    goto :goto_a

    .line 182
    :cond_10
    const/high16 v0, 0x10000

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_11
    :goto_b
    and-int/lit8 v0, p9, 0x40

    .line 186
    .line 187
    if-eqz v0, :cond_13

    .line 188
    .line 189
    const/high16 v0, 0x180000

    .line 190
    .line 191
    or-int/2addr v14, v0

    .line 192
    move-object/from16 v2, p0

    .line 193
    .line 194
    :cond_12
    :goto_c
    move v0, v14

    .line 195
    goto :goto_e

    .line 196
    :cond_13
    const/high16 v0, 0x380000

    .line 197
    .line 198
    and-int/2addr v0, v8

    .line 199
    move-object/from16 v2, p0

    .line 200
    .line 201
    if-nez v0, :cond_12

    .line 202
    .line 203
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_14

    .line 208
    .line 209
    const/high16 v0, 0x100000

    .line 210
    .line 211
    goto :goto_d

    .line 212
    :cond_14
    const/high16 v0, 0x80000

    .line 213
    .line 214
    :goto_d
    or-int/2addr v14, v0

    .line 215
    goto :goto_c

    .line 216
    :goto_e
    const v1, 0x2db6db

    .line 217
    .line 218
    .line 219
    and-int/2addr v1, v0

    .line 220
    const v14, 0x92492

    .line 221
    .line 222
    .line 223
    if-ne v1, v14, :cond_16

    .line 224
    .line 225
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_15

    .line 230
    .line 231
    goto :goto_f

    .line 232
    :cond_15
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 233
    .line 234
    .line 235
    move-object v2, v13

    .line 236
    goto/16 :goto_1a

    .line 237
    .line 238
    :cond_16
    :goto_f
    if-eqz v11, :cond_17

    .line 239
    .line 240
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 241
    .line 242
    goto :goto_10

    .line 243
    :cond_17
    move-object v1, v13

    .line 244
    :goto_10
    if-nez v3, :cond_18

    .line 245
    .line 246
    sget v11, Landroidx/compose/material/TwoLine;->MinHeight:F

    .line 247
    .line 248
    :goto_11
    move v14, v11

    .line 249
    goto :goto_12

    .line 250
    :cond_18
    sget v11, Landroidx/compose/material/TwoLine;->MinHeightWithIcon:F

    .line 251
    .line 252
    goto :goto_11

    .line 253
    :goto_12
    const/4 v11, 0x0

    .line 254
    const/4 v13, 0x0

    .line 255
    invoke-static {v1, v14, v11, v12, v13}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 256
    .line 257
    .line 258
    move-result-object v11

    .line 259
    const v12, 0x2952b718

    .line 260
    .line 261
    .line 262
    invoke-interface {v10, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 263
    .line 264
    .line 265
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 266
    .line 267
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/Arrangement;->getStart()Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 272
    .line 273
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    const/4 v9, 0x0

    .line 278
    invoke-static {v12, v15, v10, v9}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    const v15, -0x4ee9b9da

    .line 283
    .line 284
    .line 285
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 286
    .line 287
    .line 288
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 289
    .line 290
    .line 291
    move-result-object v15

    .line 292
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v15

    .line 296
    check-cast v15, Landroidx/compose/ui/unit/Density;

    .line 297
    .line 298
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 307
    .line 308
    move-object/from16 v23, v1

    .line 309
    .line 310
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast v1, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 319
    .line 320
    sget-object v24, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 321
    .line 322
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-static {v11}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 327
    .line 328
    .line 329
    move-result-object v11

    .line 330
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 331
    .line 332
    .line 333
    move-result-object v16

    .line 334
    if-nez v16, :cond_19

    .line 335
    .line 336
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 337
    .line 338
    .line 339
    :cond_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 340
    .line 341
    .line 342
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 343
    .line 344
    .line 345
    move-result v16

    .line 346
    if-eqz v16, :cond_1a

    .line 347
    .line 348
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 349
    .line 350
    .line 351
    goto :goto_13

    .line 352
    :cond_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 353
    .line 354
    .line 355
    :goto_13
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 356
    .line 357
    .line 358
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-static {v2, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 370
    .line 371
    .line 372
    move-result-object v8

    .line 373
    invoke-static {v2, v15, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    invoke-static {v2, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 391
    .line 392
    .line 393
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    const/4 v2, 0x0

    .line 402
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    invoke-interface {v11, v1, v10, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    const v1, 0x7ab4aae9

    .line 410
    .line 411
    .line 412
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 413
    .line 414
    .line 415
    const v2, -0x286e2e7f

    .line 416
    .line 417
    .line 418
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 419
    .line 420
    .line 421
    sget-object v15, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 422
    .line 423
    const v2, 0x72020ee3

    .line 424
    .line 425
    .line 426
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 427
    .line 428
    .line 429
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 430
    .line 431
    const/16 v19, 0x2

    .line 432
    .line 433
    const/16 v20, 0x0

    .line 434
    .line 435
    const/high16 v17, 0x3f800000    # 1.0f

    .line 436
    .line 437
    const/16 v18, 0x0

    .line 438
    .line 439
    move-object/from16 v16, v2

    .line 440
    .line 441
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/RowScope;->weight$default(Landroidx/compose/foundation/layout/RowScope;Landroidx/compose/ui/Modifier;FZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v25

    .line 445
    sget v26, Landroidx/compose/material/TwoLine;->ContentLeftPadding:F

    .line 446
    .line 447
    sget v28, Landroidx/compose/material/TwoLine;->ContentRightPadding:F

    .line 448
    .line 449
    const/16 v30, 0xa

    .line 450
    .line 451
    const/16 v31, 0x0

    .line 452
    .line 453
    const/16 v27, 0x0

    .line 454
    .line 455
    const/16 v29, 0x0

    .line 456
    .line 457
    invoke-static/range {v25 .. v31}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 458
    .line 459
    .line 460
    move-result-object v12

    .line 461
    const v8, -0x1017cd67

    .line 462
    .line 463
    .line 464
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 465
    .line 466
    .line 467
    if-eqz v3, :cond_1d

    .line 468
    .line 469
    sget v8, Landroidx/compose/material/TwoLine;->IconLeftPadding:F

    .line 470
    .line 471
    sget v9, Landroidx/compose/material/TwoLine;->IconMinPaddedWidth:F

    .line 472
    .line 473
    add-float/2addr v9, v8

    .line 474
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 475
    .line 476
    .line 477
    move-result v17

    .line 478
    const/16 v21, 0xc

    .line 479
    .line 480
    const/16 v22, 0x0

    .line 481
    .line 482
    const/16 v19, 0x0

    .line 483
    .line 484
    const/16 v20, 0x0

    .line 485
    .line 486
    move-object/from16 v16, v2

    .line 487
    .line 488
    move/from16 v18, v14

    .line 489
    .line 490
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/layout/SizeKt;->sizeIn-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 491
    .line 492
    .line 493
    move-result-object v15

    .line 494
    sget v19, Landroidx/compose/material/TwoLine;->IconVerticalPadding:F

    .line 495
    .line 496
    const/16 v20, 0x4

    .line 497
    .line 498
    const/16 v21, 0x0

    .line 499
    .line 500
    const/16 v18, 0x0

    .line 501
    .line 502
    move/from16 v16, v8

    .line 503
    .line 504
    move/from16 v17, v19

    .line 505
    .line 506
    invoke-static/range {v15 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 511
    .line 512
    .line 513
    move-result-object v8

    .line 514
    const v9, 0x2bb5b5d7

    .line 515
    .line 516
    .line 517
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 518
    .line 519
    .line 520
    const/4 v9, 0x0

    .line 521
    const/4 v11, 0x6

    .line 522
    invoke-static {v8, v9, v10, v11}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 523
    .line 524
    .line 525
    move-result-object v8

    .line 526
    const v9, -0x4ee9b9da

    .line 527
    .line 528
    .line 529
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 530
    .line 531
    .line 532
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 533
    .line 534
    .line 535
    move-result-object v9

    .line 536
    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object v9

    .line 540
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 541
    .line 542
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 543
    .line 544
    .line 545
    move-result-object v11

    .line 546
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v11

    .line 550
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 551
    .line 552
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 553
    .line 554
    .line 555
    move-result-object v13

    .line 556
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v13

    .line 560
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 561
    .line 562
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 563
    .line 564
    .line 565
    move-result-object v15

    .line 566
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 571
    .line 572
    .line 573
    move-result-object v16

    .line 574
    if-nez v16, :cond_1b

    .line 575
    .line 576
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 577
    .line 578
    .line 579
    :cond_1b
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 580
    .line 581
    .line 582
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 583
    .line 584
    .line 585
    move-result v16

    .line 586
    if-eqz v16, :cond_1c

    .line 587
    .line 588
    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 589
    .line 590
    .line 591
    goto :goto_14

    .line 592
    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 593
    .line 594
    .line 595
    :goto_14
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 596
    .line 597
    .line 598
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 599
    .line 600
    .line 601
    move-result-object v15

    .line 602
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    invoke-static {v15, v8, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 607
    .line 608
    .line 609
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    invoke-static {v15, v9, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 614
    .line 615
    .line 616
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 617
    .line 618
    .line 619
    move-result-object v1

    .line 620
    invoke-static {v15, v11, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 621
    .line 622
    .line 623
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-static {v15, v13, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 631
    .line 632
    .line 633
    invoke-static {v10}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    const/4 v8, 0x0

    .line 642
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 643
    .line 644
    .line 645
    move-result-object v8

    .line 646
    invoke-interface {v2, v1, v10, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    const v1, 0x7ab4aae9

    .line 650
    .line 651
    .line 652
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 653
    .line 654
    .line 655
    const v1, -0x7f65a980

    .line 656
    .line 657
    .line 658
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 659
    .line 660
    .line 661
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 662
    .line 663
    const v1, 0x6540fb84

    .line 664
    .line 665
    .line 666
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 667
    .line 668
    .line 669
    shr-int/lit8 v1, v0, 0x3

    .line 670
    .line 671
    and-int/lit8 v1, v1, 0xe

    .line 672
    .line 673
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 674
    .line 675
    .line 676
    move-result-object v1

    .line 677
    invoke-interface {v3, v10, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 681
    .line 682
    .line 683
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 684
    .line 685
    .line 686
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 687
    .line 688
    .line 689
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 690
    .line 691
    .line 692
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 693
    .line 694
    .line 695
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 696
    .line 697
    .line 698
    :cond_1d
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 699
    .line 700
    .line 701
    if-eqz v6, :cond_1e

    .line 702
    .line 703
    const v1, -0x1017caf9

    .line 704
    .line 705
    .line 706
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 707
    .line 708
    .line 709
    sget v1, Landroidx/compose/material/TwoLine;->OverlineBaselineOffset:F

    .line 710
    .line 711
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    sget v2, Landroidx/compose/material/TwoLine;->OverlineToPrimaryBaselineOffset:F

    .line 716
    .line 717
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    filled-new-array {v1, v2}, [Landroidx/compose/ui/unit/Dp;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 726
    .line 727
    .line 728
    move-result-object v11

    .line 729
    new-instance v1, Landroidx/compose/material/TwoLine$ListItem$1$2;

    .line 730
    .line 731
    invoke-direct {v1, v6, v0, v4}, Landroidx/compose/material/TwoLine$ListItem$1$2;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;)V

    .line 732
    .line 733
    .line 734
    const v2, -0x63d6cc81

    .line 735
    .line 736
    .line 737
    const/4 v8, 0x1

    .line 738
    invoke-static {v10, v2, v8, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 739
    .line 740
    .line 741
    move-result-object v13

    .line 742
    const/16 v15, 0x180

    .line 743
    .line 744
    const/16 v16, 0x0

    .line 745
    .line 746
    move v1, v14

    .line 747
    move-object v14, v10

    .line 748
    move v2, v8

    .line 749
    invoke-static/range {v11 .. v16}, Landroidx/compose/material/ListItemKt;->access$BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 750
    .line 751
    .line 752
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 753
    .line 754
    .line 755
    goto :goto_17

    .line 756
    :cond_1e
    move v1, v14

    .line 757
    const/4 v2, 0x1

    .line 758
    const v8, -0x1017c9e1

    .line 759
    .line 760
    .line 761
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 762
    .line 763
    .line 764
    if-eqz v3, :cond_1f

    .line 765
    .line 766
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 767
    .line 768
    goto :goto_15

    .line 769
    :cond_1f
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 770
    .line 771
    :goto_15
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 772
    .line 773
    .line 774
    move-result-object v8

    .line 775
    if-eqz v3, :cond_20

    .line 776
    .line 777
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetWithIcon:F

    .line 778
    .line 779
    goto :goto_16

    .line 780
    :cond_20
    sget v9, Landroidx/compose/material/TwoLine;->PrimaryToSecondaryBaselineOffsetNoIcon:F

    .line 781
    .line 782
    :goto_16
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 783
    .line 784
    .line 785
    move-result-object v9

    .line 786
    filled-new-array {v8, v9}, [Landroidx/compose/ui/unit/Dp;

    .line 787
    .line 788
    .line 789
    move-result-object v8

    .line 790
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v11

    .line 794
    new-instance v8, Landroidx/compose/material/TwoLine$ListItem$1$3;

    .line 795
    .line 796
    invoke-direct {v8, v4, v0, v5}, Landroidx/compose/material/TwoLine$ListItem$1$3;-><init>(Lkotlin/jvm/functions/Function2;ILkotlin/jvm/functions/Function2;)V

    .line 797
    .line 798
    .line 799
    const v9, 0x3b3cbdc8

    .line 800
    .line 801
    .line 802
    invoke-static {v10, v9, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 803
    .line 804
    .line 805
    move-result-object v13

    .line 806
    const/16 v15, 0x180

    .line 807
    .line 808
    const/16 v16, 0x0

    .line 809
    .line 810
    move-object v14, v10

    .line 811
    invoke-static/range {v11 .. v16}, Landroidx/compose/material/ListItemKt;->access$BaselinesOffsetColumn(Ljava/util/List;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 812
    .line 813
    .line 814
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 815
    .line 816
    .line 817
    :goto_17
    if-eqz v7, :cond_22

    .line 818
    .line 819
    if-eqz v3, :cond_21

    .line 820
    .line 821
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetWithIcon:F

    .line 822
    .line 823
    :goto_18
    move v11, v8

    .line 824
    goto :goto_19

    .line 825
    :cond_21
    sget v8, Landroidx/compose/material/TwoLine;->PrimaryBaselineOffsetNoIcon:F

    .line 826
    .line 827
    goto :goto_18

    .line 828
    :goto_19
    new-instance v8, Landroidx/compose/material/TwoLine$ListItem$1$4;

    .line 829
    .line 830
    invoke-direct {v8, v1, v7, v0}, Landroidx/compose/material/TwoLine$ListItem$1$4;-><init>(FLkotlin/jvm/functions/Function2;I)V

    .line 831
    .line 832
    .line 833
    const v0, -0x65260bb0

    .line 834
    .line 835
    .line 836
    invoke-static {v10, v0, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 837
    .line 838
    .line 839
    move-result-object v13

    .line 840
    const/16 v15, 0x180

    .line 841
    .line 842
    const/16 v16, 0x2

    .line 843
    .line 844
    const/4 v12, 0x0

    .line 845
    move-object v14, v10

    .line 846
    invoke-static/range {v11 .. v16}, Landroidx/compose/material/ListItemKt;->access$OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 847
    .line 848
    .line 849
    :cond_22
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 850
    .line 851
    .line 852
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 853
    .line 854
    .line 855
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 856
    .line 857
    .line 858
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 859
    .line 860
    .line 861
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 862
    .line 863
    .line 864
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 865
    .line 866
    .line 867
    move-object/from16 v2, v23

    .line 868
    .line 869
    :goto_1a
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 870
    .line 871
    .line 872
    move-result-object v10

    .line 873
    if-nez v10, :cond_23

    .line 874
    .line 875
    goto :goto_1b

    .line 876
    :cond_23
    new-instance v11, Landroidx/compose/material/TwoLine$ListItem$2;

    .line 877
    .line 878
    move-object v0, v11

    .line 879
    move-object/from16 v1, p0

    .line 880
    .line 881
    move-object/from16 v3, p2

    .line 882
    .line 883
    move-object/from16 v4, p3

    .line 884
    .line 885
    move-object/from16 v5, p4

    .line 886
    .line 887
    move-object/from16 v6, p5

    .line 888
    .line 889
    move-object/from16 v7, p6

    .line 890
    .line 891
    move/from16 v8, p8

    .line 892
    .line 893
    move/from16 v9, p9

    .line 894
    .line 895
    invoke-direct/range {v0 .. v9}, Landroidx/compose/material/TwoLine$ListItem$2;-><init>(Landroidx/compose/material/TwoLine;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 896
    .line 897
    .line 898
    invoke-interface {v10, v11}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 899
    .line 900
    .line 901
    :goto_1b
    return-void
.end method
