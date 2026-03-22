.class public final Landroidx/compose/material/SnackbarKt;
.super Ljava/lang/Object;
.source "Snackbar.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final HeightToFirstLine:F

.field private static final HorizontalSpacing:F

.field private static final HorizontalSpacingButtonSide:F

.field private static final LongButtonVerticalOffset:F

.field private static final SeparateButtonExtraY:F

.field private static final SnackbarMinHeightOneLine:F

.field private static final SnackbarMinHeightTwoLines:F

.field private static final SnackbarVerticalPadding:F

.field private static final TextEndExtraSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x1e

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
    sput v0, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    .line 9
    .line 10
    const/16 v0, 0x10

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
    sput v0, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    int-to-float v0, v0

    .line 22
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    sput v1, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    int-to-float v1, v1

    .line 30
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sput v1, Landroidx/compose/material/SnackbarKt;->SeparateButtonExtraY:F

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    int-to-float v1, v1

    .line 38
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sput v1, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 43
    .line 44
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    sput v0, Landroidx/compose/material/SnackbarKt;->TextEndExtraSpacing:F

    .line 49
    .line 50
    const/16 v0, 0xc

    .line 51
    .line 52
    int-to-float v0, v0

    .line 53
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sput v0, Landroidx/compose/material/SnackbarKt;->LongButtonVerticalOffset:F

    .line 58
    .line 59
    const/16 v0, 0x30

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    sput v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightOneLine:F

    .line 67
    .line 68
    const/16 v0, 0x44

    .line 69
    .line 70
    int-to-float v0, v0

    .line 71
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    sput v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightTwoLines:F

    .line 76
    .line 77
    return-void
.end method

.method private static final NewLineButtonSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19
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
            ">;",
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
    move/from16 v2, p3

    .line 6
    .line 7
    const v3, -0x494235bc

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p2

    .line 11
    .line 12
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    and-int/lit8 v4, v2, 0xe

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    :goto_0
    or-int/2addr v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    :goto_1
    and-int/lit8 v5, v2, 0x70

    .line 33
    .line 34
    if-nez v5, :cond_3

    .line 35
    .line 36
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const/16 v5, 0x20

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v5, 0x10

    .line 46
    .line 47
    :goto_2
    or-int/2addr v4, v5

    .line 48
    :cond_3
    and-int/lit8 v5, v4, 0x5b

    .line 49
    .line 50
    const/16 v6, 0x12

    .line 51
    .line 52
    if-ne v5, v6, :cond_5

    .line 53
    .line 54
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    const/4 v7, 0x0

    .line 70
    const/4 v8, 0x0

    .line 71
    invoke-static {v5, v8, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    sget v10, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 76
    .line 77
    sget v6, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 78
    .line 79
    sget v13, Landroidx/compose/material/SnackbarKt;->SeparateButtonExtraY:F

    .line 80
    .line 81
    const/4 v14, 0x2

    .line 82
    const/4 v15, 0x0

    .line 83
    const/4 v11, 0x0

    .line 84
    move v12, v6

    .line 85
    invoke-static/range {v9 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    const v8, -0x1cd0f17e

    .line 90
    .line 91
    .line 92
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 93
    .line 94
    .line 95
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    .line 96
    .line 97
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/Arrangement;->getTop()Landroidx/compose/foundation/layout/Arrangement$Vertical;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    sget-object v9, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 102
    .line 103
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    const/4 v15, 0x0

    .line 108
    invoke-static {v8, v10, v3, v15}, Landroidx/compose/foundation/layout/ColumnKt;->columnMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    const v10, -0x4ee9b9da

    .line 113
    .line 114
    .line 115
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 127
    .line 128
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v12

    .line 136
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 137
    .line 138
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 139
    .line 140
    .line 141
    move-result-object v13

    .line 142
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 147
    .line 148
    sget-object v18, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 149
    .line 150
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    if-nez v16, :cond_6

    .line 163
    .line 164
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 165
    .line 166
    .line 167
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    if-eqz v16, :cond_7

    .line 175
    .line 176
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 181
    .line 182
    .line 183
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 187
    .line 188
    .line 189
    move-result-object v14

    .line 190
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    invoke-static {v14, v8, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-static {v14, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    invoke-static {v14, v12, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 212
    .line 213
    .line 214
    move-result-object v8

    .line 215
    invoke-static {v14, v13, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 219
    .line 220
    .line 221
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    invoke-interface {v7, v8, v3, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    const v7, 0x7ab4aae9

    .line 237
    .line 238
    .line 239
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 240
    .line 241
    .line 242
    const v8, -0x455f09d5

    .line 243
    .line 244
    .line 245
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 246
    .line 247
    .line 248
    sget-object v8, Landroidx/compose/foundation/layout/ColumnScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 249
    .line 250
    const v10, -0x48628246

    .line 251
    .line 252
    .line 253
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 254
    .line 255
    .line 256
    sget v10, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    .line 257
    .line 258
    sget v11, Landroidx/compose/material/SnackbarKt;->LongButtonVerticalOffset:F

    .line 259
    .line 260
    invoke-static {v5, v10, v11}, Landroidx/compose/foundation/layout/AlignmentLineKt;->paddingFromBaseline-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 261
    .line 262
    .line 263
    move-result-object v11

    .line 264
    const/16 v16, 0xb

    .line 265
    .line 266
    const/16 v17, 0x0

    .line 267
    .line 268
    const/4 v12, 0x0

    .line 269
    const/4 v13, 0x0

    .line 270
    const/4 v10, 0x0

    .line 271
    move v14, v6

    .line 272
    move v6, v15

    .line 273
    move v15, v10

    .line 274
    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    const v11, 0x2bb5b5d7

    .line 279
    .line 280
    .line 281
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 285
    .line 286
    .line 287
    move-result-object v12

    .line 288
    invoke-static {v12, v6, v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    const v13, -0x4ee9b9da

    .line 293
    .line 294
    .line 295
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 296
    .line 297
    .line 298
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 299
    .line 300
    .line 301
    move-result-object v13

    .line 302
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 307
    .line 308
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v14

    .line 316
    check-cast v14, Landroidx/compose/ui/unit/LayoutDirection;

    .line 317
    .line 318
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 319
    .line 320
    .line 321
    move-result-object v15

    .line 322
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    check-cast v15, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 327
    .line 328
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 337
    .line 338
    .line 339
    move-result-object v17

    .line 340
    if-nez v17, :cond_8

    .line 341
    .line 342
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 343
    .line 344
    .line 345
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 346
    .line 347
    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 349
    .line 350
    .line 351
    move-result v17

    .line 352
    if-eqz v17, :cond_9

    .line 353
    .line 354
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 355
    .line 356
    .line 357
    goto :goto_5

    .line 358
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 359
    .line 360
    .line 361
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 362
    .line 363
    .line 364
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 369
    .line 370
    .line 371
    move-result-object v7

    .line 372
    invoke-static {v11, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-static {v11, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 383
    .line 384
    .line 385
    move-result-object v7

    .line 386
    invoke-static {v11, v14, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    invoke-static {v11, v15, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 394
    .line 395
    .line 396
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 397
    .line 398
    .line 399
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 404
    .line 405
    .line 406
    move-result-object v7

    .line 407
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 408
    .line 409
    .line 410
    move-result-object v11

    .line 411
    invoke-interface {v10, v7, v3, v11}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    const v7, 0x7ab4aae9

    .line 415
    .line 416
    .line 417
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 418
    .line 419
    .line 420
    const v7, -0x7f65a980

    .line 421
    .line 422
    .line 423
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 424
    .line 425
    .line 426
    sget-object v10, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 427
    .line 428
    const v10, 0x471c3dc0    # 39997.75f

    .line 429
    .line 430
    .line 431
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 432
    .line 433
    .line 434
    and-int/lit8 v10, v4, 0xe

    .line 435
    .line 436
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v10

    .line 440
    invoke-interface {v0, v3, v10}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 444
    .line 445
    .line 446
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 447
    .line 448
    .line 449
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 450
    .line 451
    .line 452
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 453
    .line 454
    .line 455
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 456
    .line 457
    .line 458
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    .line 462
    .line 463
    .line 464
    move-result-object v10

    .line 465
    invoke-interface {v8, v5, v10}, Landroidx/compose/foundation/layout/ColumnScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    const v8, 0x2bb5b5d7

    .line 470
    .line 471
    .line 472
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v9}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 476
    .line 477
    .line 478
    move-result-object v8

    .line 479
    invoke-static {v8, v6, v3, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    const v9, -0x4ee9b9da

    .line 484
    .line 485
    .line 486
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 487
    .line 488
    .line 489
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 490
    .line 491
    .line 492
    move-result-object v9

    .line 493
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 498
    .line 499
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 500
    .line 501
    .line 502
    move-result-object v10

    .line 503
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v10

    .line 507
    check-cast v10, Landroidx/compose/ui/unit/LayoutDirection;

    .line 508
    .line 509
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 510
    .line 511
    .line 512
    move-result-object v11

    .line 513
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v11

    .line 517
    check-cast v11, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 518
    .line 519
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 520
    .line 521
    .line 522
    move-result-object v12

    .line 523
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 524
    .line 525
    .line 526
    move-result-object v5

    .line 527
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 528
    .line 529
    .line 530
    move-result-object v13

    .line 531
    if-nez v13, :cond_a

    .line 532
    .line 533
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 534
    .line 535
    .line 536
    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 537
    .line 538
    .line 539
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 540
    .line 541
    .line 542
    move-result v13

    .line 543
    if-eqz v13, :cond_b

    .line 544
    .line 545
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 546
    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 550
    .line 551
    .line 552
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 553
    .line 554
    .line 555
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 556
    .line 557
    .line 558
    move-result-object v12

    .line 559
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 560
    .line 561
    .line 562
    move-result-object v13

    .line 563
    invoke-static {v12, v8, v13}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    invoke-static {v12, v9, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 574
    .line 575
    .line 576
    move-result-object v8

    .line 577
    invoke-static {v12, v10, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 581
    .line 582
    .line 583
    move-result-object v8

    .line 584
    invoke-static {v12, v11, v8}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 585
    .line 586
    .line 587
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 588
    .line 589
    .line 590
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 591
    .line 592
    .line 593
    move-result-object v8

    .line 594
    invoke-static {v8}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 595
    .line 596
    .line 597
    move-result-object v8

    .line 598
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v6

    .line 602
    invoke-interface {v5, v8, v3, v6}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    const v5, 0x7ab4aae9

    .line 606
    .line 607
    .line 608
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 609
    .line 610
    .line 611
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 612
    .line 613
    .line 614
    const v5, -0x7d315f89

    .line 615
    .line 616
    .line 617
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 618
    .line 619
    .line 620
    shr-int/lit8 v4, v4, 0x3

    .line 621
    .line 622
    and-int/lit8 v4, v4, 0xe

    .line 623
    .line 624
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 632
    .line 633
    .line 634
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 635
    .line 636
    .line 637
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 638
    .line 639
    .line 640
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 641
    .line 642
    .line 643
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 644
    .line 645
    .line 646
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 647
    .line 648
    .line 649
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 650
    .line 651
    .line 652
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 653
    .line 654
    .line 655
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 656
    .line 657
    .line 658
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 659
    .line 660
    .line 661
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 662
    .line 663
    .line 664
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 665
    .line 666
    .line 667
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 668
    .line 669
    .line 670
    move-result-object v3

    .line 671
    if-nez v3, :cond_c

    .line 672
    .line 673
    goto :goto_8

    .line 674
    :cond_c
    new-instance v4, Landroidx/compose/material/SnackbarKt$NewLineButtonSnackbar$2;

    .line 675
    .line 676
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/material/SnackbarKt$NewLineButtonSnackbar$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 677
    .line 678
    .line 679
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 680
    .line 681
    .line 682
    :goto_8
    return-void
.end method

.method private static final OneRowSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18
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
            ">;",
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
    move/from16 v2, p3

    .line 6
    .line 7
    const v3, -0x1fe09a12

    .line 8
    .line 9
    .line 10
    move-object/from16 v4, p2

    .line 11
    .line 12
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    and-int/lit8 v4, v2, 0xe

    .line 17
    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    const/4 v4, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x2

    .line 29
    :goto_0
    or-int/2addr v4, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v4, v2

    .line 32
    :goto_1
    and-int/lit8 v5, v2, 0x70

    .line 33
    .line 34
    if-nez v5, :cond_3

    .line 35
    .line 36
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    const/16 v5, 0x20

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/16 v5, 0x10

    .line 46
    .line 47
    :goto_2
    or-int/2addr v4, v5

    .line 48
    :cond_3
    and-int/lit8 v5, v4, 0x5b

    .line 49
    .line 50
    const/16 v6, 0x12

    .line 51
    .line 52
    if-ne v5, v6, :cond_5

    .line 53
    .line 54
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-nez v5, :cond_4

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_5
    :goto_3
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 67
    .line 68
    sget v7, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 69
    .line 70
    sget v9, Landroidx/compose/material/SnackbarKt;->HorizontalSpacingButtonSide:F

    .line 71
    .line 72
    const/16 v11, 0xa

    .line 73
    .line 74
    const/4 v12, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v10, 0x0

    .line 77
    move-object v6, v5

    .line 78
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    new-instance v7, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;

    .line 83
    .line 84
    const-string v8, "action"

    .line 85
    .line 86
    const-string v9, "text"

    .line 87
    .line 88
    invoke-direct {v7, v8, v9}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const v10, -0x4ee9b9da

    .line 92
    .line 93
    .line 94
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v11

    .line 105
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 106
    .line 107
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 116
    .line 117
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 126
    .line 127
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 128
    .line 129
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 130
    .line 131
    .line 132
    move-result-object v15

    .line 133
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    if-nez v16, :cond_6

    .line 142
    .line 143
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 144
    .line 145
    .line 146
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    if-eqz v16, :cond_7

    .line 154
    .line 155
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 160
    .line 161
    .line 162
    :goto_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 163
    .line 164
    .line 165
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    invoke-static {v15, v7, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    invoke-static {v15, v11, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    invoke-static {v15, v12, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    invoke-static {v15, v13, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 198
    .line 199
    .line 200
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    const/4 v10, 0x0

    .line 209
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v11

    .line 213
    invoke-interface {v6, v7, v3, v11}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const v6, 0x7ab4aae9

    .line 217
    .line 218
    .line 219
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 220
    .line 221
    .line 222
    const v7, -0x2653ea29

    .line 223
    .line 224
    .line 225
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 226
    .line 227
    .line 228
    invoke-static {v5, v9}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    sget v9, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 233
    .line 234
    const/4 v11, 0x1

    .line 235
    const/4 v12, 0x0

    .line 236
    const/4 v13, 0x0

    .line 237
    invoke-static {v7, v13, v9, v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    const v9, 0x2bb5b5d7

    .line 242
    .line 243
    .line 244
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 245
    .line 246
    .line 247
    sget-object v11, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 248
    .line 249
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    invoke-static {v12, v10, v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    const v13, -0x4ee9b9da

    .line 258
    .line 259
    .line 260
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    check-cast v13, Landroidx/compose/ui/unit/Density;

    .line 272
    .line 273
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v15

    .line 281
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    .line 282
    .line 283
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v9

    .line 291
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 292
    .line 293
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 298
    .line 299
    .line 300
    move-result-object v7

    .line 301
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 302
    .line 303
    .line 304
    move-result-object v17

    .line 305
    if-nez v17, :cond_8

    .line 306
    .line 307
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 308
    .line 309
    .line 310
    :cond_8
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 311
    .line 312
    .line 313
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 314
    .line 315
    .line 316
    move-result v17

    .line 317
    if-eqz v17, :cond_9

    .line 318
    .line 319
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 324
    .line 325
    .line 326
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 327
    .line 328
    .line 329
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 334
    .line 335
    .line 336
    move-result-object v10

    .line 337
    invoke-static {v6, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 341
    .line 342
    .line 343
    move-result-object v10

    .line 344
    invoke-static {v6, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 348
    .line 349
    .line 350
    move-result-object v10

    .line 351
    invoke-static {v6, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 355
    .line 356
    .line 357
    move-result-object v10

    .line 358
    invoke-static {v6, v9, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 359
    .line 360
    .line 361
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 362
    .line 363
    .line 364
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-static {v6}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 369
    .line 370
    .line 371
    move-result-object v6

    .line 372
    const/4 v9, 0x0

    .line 373
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v10

    .line 377
    invoke-interface {v7, v6, v3, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    const v6, 0x7ab4aae9

    .line 381
    .line 382
    .line 383
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 384
    .line 385
    .line 386
    const v6, -0x7f65a980

    .line 387
    .line 388
    .line 389
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 390
    .line 391
    .line 392
    sget-object v7, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 393
    .line 394
    const v7, 0x605d7791

    .line 395
    .line 396
    .line 397
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 398
    .line 399
    .line 400
    and-int/lit8 v7, v4, 0xe

    .line 401
    .line 402
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 403
    .line 404
    .line 405
    move-result-object v7

    .line 406
    invoke-interface {v0, v3, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 410
    .line 411
    .line 412
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 413
    .line 414
    .line 415
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 416
    .line 417
    .line 418
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 419
    .line 420
    .line 421
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 422
    .line 423
    .line 424
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 425
    .line 426
    .line 427
    invoke-static {v5, v8}, Landroidx/compose/ui/layout/LayoutIdKt;->layoutId(Landroidx/compose/ui/Modifier;Ljava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 428
    .line 429
    .line 430
    move-result-object v5

    .line 431
    const v7, 0x2bb5b5d7

    .line 432
    .line 433
    .line 434
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    const/4 v8, 0x0

    .line 442
    invoke-static {v7, v8, v3, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    const v8, -0x4ee9b9da

    .line 447
    .line 448
    .line 449
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 450
    .line 451
    .line 452
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 453
    .line 454
    .line 455
    move-result-object v8

    .line 456
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v8

    .line 460
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 461
    .line 462
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v9

    .line 470
    check-cast v9, Landroidx/compose/ui/unit/LayoutDirection;

    .line 471
    .line 472
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 473
    .line 474
    .line 475
    move-result-object v10

    .line 476
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    check-cast v10, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 481
    .line 482
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 483
    .line 484
    .line 485
    move-result-object v11

    .line 486
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 487
    .line 488
    .line 489
    move-result-object v5

    .line 490
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 491
    .line 492
    .line 493
    move-result-object v12

    .line 494
    if-nez v12, :cond_a

    .line 495
    .line 496
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 497
    .line 498
    .line 499
    :cond_a
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 500
    .line 501
    .line 502
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    if-eqz v12, :cond_b

    .line 507
    .line 508
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 513
    .line 514
    .line 515
    :goto_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 516
    .line 517
    .line 518
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 519
    .line 520
    .line 521
    move-result-object v11

    .line 522
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 523
    .line 524
    .line 525
    move-result-object v12

    .line 526
    invoke-static {v11, v7, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 530
    .line 531
    .line 532
    move-result-object v7

    .line 533
    invoke-static {v11, v8, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    invoke-static {v11, v9, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v14}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    invoke-static {v11, v10, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 548
    .line 549
    .line 550
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 551
    .line 552
    .line 553
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 554
    .line 555
    .line 556
    move-result-object v7

    .line 557
    invoke-static {v7}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 558
    .line 559
    .line 560
    move-result-object v7

    .line 561
    const/4 v8, 0x0

    .line 562
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v8

    .line 566
    invoke-interface {v5, v7, v3, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    const v5, 0x7ab4aae9

    .line 570
    .line 571
    .line 572
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 573
    .line 574
    .line 575
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 576
    .line 577
    .line 578
    const v5, -0x64bda5c6

    .line 579
    .line 580
    .line 581
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 582
    .line 583
    .line 584
    shr-int/lit8 v4, v4, 0x3

    .line 585
    .line 586
    and-int/lit8 v4, v4, 0xe

    .line 587
    .line 588
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    invoke-interface {v1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 596
    .line 597
    .line 598
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 599
    .line 600
    .line 601
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 602
    .line 603
    .line 604
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 605
    .line 606
    .line 607
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 608
    .line 609
    .line 610
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 611
    .line 612
    .line 613
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 614
    .line 615
    .line 616
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 617
    .line 618
    .line 619
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 620
    .line 621
    .line 622
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 623
    .line 624
    .line 625
    :goto_7
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 626
    .line 627
    .line 628
    move-result-object v3

    .line 629
    if-nez v3, :cond_c

    .line 630
    .line 631
    goto :goto_8

    .line 632
    :cond_c
    new-instance v4, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$3;

    .line 633
    .line 634
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    .line 635
    .line 636
    .line 637
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 638
    .line 639
    .line 640
    :goto_8
    return-void
.end method

.method public static final Snackbar-7zSek6w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
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
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
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
    move-object/from16 v10, p9

    .line 2
    .line 3
    move/from16 v11, p11

    .line 4
    .line 5
    move/from16 v12, p12

    .line 6
    .line 7
    const-string v0, "content"

    .line 8
    .line 9
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, -0x21465a48

    .line 13
    .line 14
    .line 15
    move-object/from16 v1, p10

    .line 16
    .line 17
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    and-int/lit8 v1, v12, 0x1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    or-int/lit8 v2, v11, 0x6

    .line 26
    .line 27
    move v3, v2

    .line 28
    move-object/from16 v2, p0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    and-int/lit8 v2, v11, 0xe

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    move-object/from16 v2, p0

    .line 36
    .line 37
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v3, 0x2

    .line 46
    :goto_0
    or-int/2addr v3, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move-object/from16 v2, p0

    .line 49
    .line 50
    move v3, v11

    .line 51
    :goto_1
    and-int/lit8 v4, v12, 0x2

    .line 52
    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    or-int/lit8 v3, v3, 0x30

    .line 56
    .line 57
    :cond_3
    move-object/from16 v5, p1

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    and-int/lit8 v5, v11, 0x70

    .line 61
    .line 62
    if-nez v5, :cond_3

    .line 63
    .line 64
    move-object/from16 v5, p1

    .line 65
    .line 66
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_5

    .line 71
    .line 72
    const/16 v6, 0x20

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    const/16 v6, 0x10

    .line 76
    .line 77
    :goto_2
    or-int/2addr v3, v6

    .line 78
    :goto_3
    and-int/lit8 v6, v12, 0x4

    .line 79
    .line 80
    if-eqz v6, :cond_7

    .line 81
    .line 82
    or-int/lit16 v3, v3, 0x180

    .line 83
    .line 84
    :cond_6
    move/from16 v7, p2

    .line 85
    .line 86
    goto :goto_5

    .line 87
    :cond_7
    and-int/lit16 v7, v11, 0x380

    .line 88
    .line 89
    if-nez v7, :cond_6

    .line 90
    .line 91
    move/from16 v7, p2

    .line 92
    .line 93
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    if-eqz v8, :cond_8

    .line 98
    .line 99
    const/16 v8, 0x100

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_8
    const/16 v8, 0x80

    .line 103
    .line 104
    :goto_4
    or-int/2addr v3, v8

    .line 105
    :goto_5
    and-int/lit16 v8, v11, 0x1c00

    .line 106
    .line 107
    if-nez v8, :cond_b

    .line 108
    .line 109
    and-int/lit8 v8, v12, 0x8

    .line 110
    .line 111
    if-nez v8, :cond_9

    .line 112
    .line 113
    move-object/from16 v8, p3

    .line 114
    .line 115
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_a

    .line 120
    .line 121
    const/16 v9, 0x800

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_9
    move-object/from16 v8, p3

    .line 125
    .line 126
    :cond_a
    const/16 v9, 0x400

    .line 127
    .line 128
    :goto_6
    or-int/2addr v3, v9

    .line 129
    goto :goto_7

    .line 130
    :cond_b
    move-object/from16 v8, p3

    .line 131
    .line 132
    :goto_7
    const v9, 0xe000

    .line 133
    .line 134
    .line 135
    and-int/2addr v9, v11

    .line 136
    if-nez v9, :cond_d

    .line 137
    .line 138
    and-int/lit8 v9, v12, 0x10

    .line 139
    .line 140
    move-wide/from16 v13, p4

    .line 141
    .line 142
    if-nez v9, :cond_c

    .line 143
    .line 144
    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_c

    .line 149
    .line 150
    const/16 v9, 0x4000

    .line 151
    .line 152
    goto :goto_8

    .line 153
    :cond_c
    const/16 v9, 0x2000

    .line 154
    .line 155
    :goto_8
    or-int/2addr v3, v9

    .line 156
    goto :goto_9

    .line 157
    :cond_d
    move-wide/from16 v13, p4

    .line 158
    .line 159
    :goto_9
    const/high16 v9, 0x70000

    .line 160
    .line 161
    and-int v15, v11, v9

    .line 162
    .line 163
    if-nez v15, :cond_f

    .line 164
    .line 165
    and-int/lit8 v15, v12, 0x20

    .line 166
    .line 167
    move-wide/from16 v9, p6

    .line 168
    .line 169
    if-nez v15, :cond_e

    .line 170
    .line 171
    invoke-interface {v0, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 172
    .line 173
    .line 174
    move-result v15

    .line 175
    if-eqz v15, :cond_e

    .line 176
    .line 177
    const/high16 v15, 0x20000

    .line 178
    .line 179
    goto :goto_a

    .line 180
    :cond_e
    const/high16 v15, 0x10000

    .line 181
    .line 182
    :goto_a
    or-int/2addr v3, v15

    .line 183
    goto :goto_b

    .line 184
    :cond_f
    move-wide/from16 v9, p6

    .line 185
    .line 186
    :goto_b
    and-int/lit8 v15, v12, 0x40

    .line 187
    .line 188
    const/high16 v16, 0x180000

    .line 189
    .line 190
    if-eqz v15, :cond_10

    .line 191
    .line 192
    or-int v3, v3, v16

    .line 193
    .line 194
    move/from16 v2, p8

    .line 195
    .line 196
    goto :goto_d

    .line 197
    :cond_10
    const/high16 v17, 0x380000

    .line 198
    .line 199
    and-int v17, v11, v17

    .line 200
    .line 201
    move/from16 v2, p8

    .line 202
    .line 203
    if-nez v17, :cond_12

    .line 204
    .line 205
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 206
    .line 207
    .line 208
    move-result v17

    .line 209
    if-eqz v17, :cond_11

    .line 210
    .line 211
    const/high16 v17, 0x100000

    .line 212
    .line 213
    goto :goto_c

    .line 214
    :cond_11
    const/high16 v17, 0x80000

    .line 215
    .line 216
    :goto_c
    or-int v3, v3, v17

    .line 217
    .line 218
    :cond_12
    :goto_d
    and-int/lit16 v2, v12, 0x80

    .line 219
    .line 220
    if-eqz v2, :cond_13

    .line 221
    .line 222
    const/high16 v2, 0xc00000

    .line 223
    .line 224
    or-int/2addr v3, v2

    .line 225
    move-object/from16 v10, p9

    .line 226
    .line 227
    goto :goto_f

    .line 228
    :cond_13
    const/high16 v2, 0x1c00000

    .line 229
    .line 230
    and-int/2addr v2, v11

    .line 231
    move-object/from16 v10, p9

    .line 232
    .line 233
    if-nez v2, :cond_15

    .line 234
    .line 235
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_14

    .line 240
    .line 241
    const/high16 v2, 0x800000

    .line 242
    .line 243
    goto :goto_e

    .line 244
    :cond_14
    const/high16 v2, 0x400000

    .line 245
    .line 246
    :goto_e
    or-int/2addr v3, v2

    .line 247
    :cond_15
    :goto_f
    const v2, 0x16db6db

    .line 248
    .line 249
    .line 250
    and-int/2addr v2, v3

    .line 251
    const v9, 0x492492

    .line 252
    .line 253
    .line 254
    if-ne v2, v9, :cond_17

    .line 255
    .line 256
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-nez v2, :cond_16

    .line 261
    .line 262
    goto :goto_10

    .line 263
    :cond_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 264
    .line 265
    .line 266
    move-object/from16 v1, p0

    .line 267
    .line 268
    move/from16 v9, p8

    .line 269
    .line 270
    move-object v2, v5

    .line 271
    move v3, v7

    .line 272
    move-object v4, v8

    .line 273
    move-wide v5, v13

    .line 274
    move-wide/from16 v7, p6

    .line 275
    .line 276
    goto/16 :goto_16

    .line 277
    .line 278
    :cond_17
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 279
    .line 280
    .line 281
    and-int/lit8 v2, v11, 0x1

    .line 282
    .line 283
    const v9, -0x70001

    .line 284
    .line 285
    .line 286
    const v17, -0xe001

    .line 287
    .line 288
    .line 289
    if-eqz v2, :cond_1c

    .line 290
    .line 291
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_18

    .line 296
    .line 297
    goto :goto_11

    .line 298
    :cond_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    and-int/lit8 v1, v12, 0x8

    .line 302
    .line 303
    if-eqz v1, :cond_19

    .line 304
    .line 305
    and-int/lit16 v3, v3, -0x1c01

    .line 306
    .line 307
    :cond_19
    and-int/lit8 v1, v12, 0x10

    .line 308
    .line 309
    if-eqz v1, :cond_1a

    .line 310
    .line 311
    and-int v3, v3, v17

    .line 312
    .line 313
    :cond_1a
    and-int/lit8 v1, v12, 0x20

    .line 314
    .line 315
    if-eqz v1, :cond_1b

    .line 316
    .line 317
    and-int/2addr v3, v9

    .line 318
    :cond_1b
    move-object/from16 v1, p0

    .line 319
    .line 320
    move-wide/from16 v25, p6

    .line 321
    .line 322
    move/from16 v4, p8

    .line 323
    .line 324
    move v6, v3

    .line 325
    move-wide v2, v13

    .line 326
    goto :goto_15

    .line 327
    :cond_1c
    :goto_11
    if-eqz v1, :cond_1d

    .line 328
    .line 329
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 330
    .line 331
    goto :goto_12

    .line 332
    :cond_1d
    move-object/from16 v1, p0

    .line 333
    .line 334
    :goto_12
    if-eqz v4, :cond_1e

    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    move-object v5, v2

    .line 338
    :cond_1e
    if-eqz v6, :cond_1f

    .line 339
    .line 340
    const/4 v2, 0x0

    .line 341
    move v7, v2

    .line 342
    :cond_1f
    and-int/lit8 v2, v12, 0x8

    .line 343
    .line 344
    const/4 v4, 0x6

    .line 345
    if-eqz v2, :cond_20

    .line 346
    .line 347
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 348
    .line 349
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v2}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    and-int/lit16 v3, v3, -0x1c01

    .line 358
    .line 359
    move-object v8, v2

    .line 360
    :cond_20
    and-int/lit8 v2, v12, 0x10

    .line 361
    .line 362
    if-eqz v2, :cond_21

    .line 363
    .line 364
    sget-object v2, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 365
    .line 366
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/SnackbarDefaults;->getBackgroundColor(Landroidx/compose/runtime/Composer;I)J

    .line 367
    .line 368
    .line 369
    move-result-wide v13

    .line 370
    and-int v3, v3, v17

    .line 371
    .line 372
    :cond_21
    and-int/lit8 v2, v12, 0x20

    .line 373
    .line 374
    if-eqz v2, :cond_22

    .line 375
    .line 376
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 377
    .line 378
    invoke-virtual {v2, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 383
    .line 384
    .line 385
    move-result-wide v17

    .line 386
    and-int v2, v3, v9

    .line 387
    .line 388
    move v3, v2

    .line 389
    goto :goto_13

    .line 390
    :cond_22
    move-wide/from16 v17, p6

    .line 391
    .line 392
    :goto_13
    if-eqz v15, :cond_23

    .line 393
    .line 394
    int-to-float v2, v4

    .line 395
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    move v4, v2

    .line 400
    :goto_14
    move v6, v3

    .line 401
    move-wide v2, v13

    .line 402
    move-wide/from16 v25, v17

    .line 403
    .line 404
    goto :goto_15

    .line 405
    :cond_23
    move/from16 v4, p8

    .line 406
    .line 407
    goto :goto_14

    .line 408
    :goto_15
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 409
    .line 410
    .line 411
    new-instance v9, Landroidx/compose/material/SnackbarKt$Snackbar$1;

    .line 412
    .line 413
    invoke-direct {v9, v5, v10, v6, v7}, Landroidx/compose/material/SnackbarKt$Snackbar$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IZ)V

    .line 414
    .line 415
    .line 416
    const v13, -0x7c3ab304

    .line 417
    .line 418
    .line 419
    const/4 v14, 0x1

    .line 420
    invoke-static {v0, v13, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 421
    .line 422
    .line 423
    move-result-object v21

    .line 424
    and-int/lit8 v9, v6, 0xe

    .line 425
    .line 426
    or-int v9, v9, v16

    .line 427
    .line 428
    shr-int/lit8 v13, v6, 0x6

    .line 429
    .line 430
    and-int/lit8 v14, v13, 0x70

    .line 431
    .line 432
    or-int/2addr v9, v14

    .line 433
    and-int/lit16 v14, v13, 0x380

    .line 434
    .line 435
    or-int/2addr v9, v14

    .line 436
    and-int/lit16 v13, v13, 0x1c00

    .line 437
    .line 438
    or-int/2addr v9, v13

    .line 439
    shr-int/lit8 v6, v6, 0x3

    .line 440
    .line 441
    const/high16 v13, 0x70000

    .line 442
    .line 443
    and-int/2addr v6, v13

    .line 444
    or-int v23, v9, v6

    .line 445
    .line 446
    const/16 v24, 0x10

    .line 447
    .line 448
    const/16 v19, 0x0

    .line 449
    .line 450
    move-object v13, v1

    .line 451
    move-object v14, v8

    .line 452
    move-wide v15, v2

    .line 453
    move-wide/from16 v17, v25

    .line 454
    .line 455
    move/from16 v20, v4

    .line 456
    .line 457
    move-object/from16 v22, v0

    .line 458
    .line 459
    invoke-static/range {v13 .. v24}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 460
    .line 461
    .line 462
    move v9, v4

    .line 463
    move-object v4, v8

    .line 464
    move-wide/from16 v27, v2

    .line 465
    .line 466
    move-object v2, v5

    .line 467
    move-wide/from16 v5, v27

    .line 468
    .line 469
    move v3, v7

    .line 470
    move-wide/from16 v7, v25

    .line 471
    .line 472
    :goto_16
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 473
    .line 474
    .line 475
    move-result-object v13

    .line 476
    if-nez v13, :cond_24

    .line 477
    .line 478
    goto :goto_17

    .line 479
    :cond_24
    new-instance v14, Landroidx/compose/material/SnackbarKt$Snackbar$2;

    .line 480
    .line 481
    move-object v0, v14

    .line 482
    move-object/from16 v10, p9

    .line 483
    .line 484
    move/from16 v11, p11

    .line 485
    .line 486
    move/from16 v12, p12

    .line 487
    .line 488
    invoke-direct/range {v0 .. v12}, Landroidx/compose/material/SnackbarKt$Snackbar$2;-><init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;II)V

    .line 489
    .line 490
    .line 491
    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 492
    .line 493
    .line 494
    :goto_17
    return-void
.end method

.method public static final Snackbar-sPrSdHI(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;II)V
    .locals 29
    .param p0    # Landroidx/compose/material/SnackbarData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v12, p12

    .line 4
    .line 5
    move/from16 v13, p13

    .line 6
    .line 7
    const-string v0, "snackbarData"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v0, 0xf6ad9ce

    .line 13
    .line 14
    .line 15
    move-object/from16 v2, p11

    .line 16
    .line 17
    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    and-int/lit8 v2, v13, 0x1

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    or-int/lit8 v2, v12, 0x6

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    and-int/lit8 v2, v12, 0xe

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

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
    or-int/2addr v2, v12

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v12

    .line 44
    :goto_1
    and-int/lit8 v3, v13, 0x2

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
    and-int/lit8 v4, v12, 0x70

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
    and-int/lit8 v5, v13, 0x4

    .line 72
    .line 73
    if-eqz v5, :cond_7

    .line 74
    .line 75
    or-int/lit16 v2, v2, 0x180

    .line 76
    .line 77
    :cond_6
    move/from16 v6, p2

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    and-int/lit16 v6, v12, 0x380

    .line 81
    .line 82
    if-nez v6, :cond_6

    .line 83
    .line 84
    move/from16 v6, p2

    .line 85
    .line 86
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_8

    .line 91
    .line 92
    const/16 v7, 0x100

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_8
    const/16 v7, 0x80

    .line 96
    .line 97
    :goto_4
    or-int/2addr v2, v7

    .line 98
    :goto_5
    and-int/lit16 v7, v12, 0x1c00

    .line 99
    .line 100
    if-nez v7, :cond_b

    .line 101
    .line 102
    and-int/lit8 v7, v13, 0x8

    .line 103
    .line 104
    if-nez v7, :cond_9

    .line 105
    .line 106
    move-object/from16 v7, p3

    .line 107
    .line 108
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_a

    .line 113
    .line 114
    const/16 v8, 0x800

    .line 115
    .line 116
    goto :goto_6

    .line 117
    :cond_9
    move-object/from16 v7, p3

    .line 118
    .line 119
    :cond_a
    const/16 v8, 0x400

    .line 120
    .line 121
    :goto_6
    or-int/2addr v2, v8

    .line 122
    goto :goto_7

    .line 123
    :cond_b
    move-object/from16 v7, p3

    .line 124
    .line 125
    :goto_7
    const v8, 0xe000

    .line 126
    .line 127
    .line 128
    and-int v9, v12, v8

    .line 129
    .line 130
    if-nez v9, :cond_e

    .line 131
    .line 132
    and-int/lit8 v9, v13, 0x10

    .line 133
    .line 134
    if-nez v9, :cond_c

    .line 135
    .line 136
    move-wide/from16 v9, p4

    .line 137
    .line 138
    invoke-interface {v0, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_d

    .line 143
    .line 144
    const/16 v11, 0x4000

    .line 145
    .line 146
    goto :goto_8

    .line 147
    :cond_c
    move-wide/from16 v9, p4

    .line 148
    .line 149
    :cond_d
    const/16 v11, 0x2000

    .line 150
    .line 151
    :goto_8
    or-int/2addr v2, v11

    .line 152
    goto :goto_9

    .line 153
    :cond_e
    move-wide/from16 v9, p4

    .line 154
    .line 155
    :goto_9
    const/high16 v11, 0x70000

    .line 156
    .line 157
    and-int v14, v12, v11

    .line 158
    .line 159
    if-nez v14, :cond_11

    .line 160
    .line 161
    and-int/lit8 v14, v13, 0x20

    .line 162
    .line 163
    if-nez v14, :cond_f

    .line 164
    .line 165
    move-wide/from16 v14, p6

    .line 166
    .line 167
    invoke-interface {v0, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_10

    .line 172
    .line 173
    const/high16 v16, 0x20000

    .line 174
    .line 175
    goto :goto_a

    .line 176
    :cond_f
    move-wide/from16 v14, p6

    .line 177
    .line 178
    :cond_10
    const/high16 v16, 0x10000

    .line 179
    .line 180
    :goto_a
    or-int v2, v2, v16

    .line 181
    .line 182
    goto :goto_b

    .line 183
    :cond_11
    move-wide/from16 v14, p6

    .line 184
    .line 185
    :goto_b
    const/high16 v16, 0x380000

    .line 186
    .line 187
    and-int v17, v12, v16

    .line 188
    .line 189
    if-nez v17, :cond_13

    .line 190
    .line 191
    and-int/lit8 v17, v13, 0x40

    .line 192
    .line 193
    move-wide/from16 v8, p8

    .line 194
    .line 195
    if-nez v17, :cond_12

    .line 196
    .line 197
    invoke-interface {v0, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_12

    .line 202
    .line 203
    const/high16 v10, 0x100000

    .line 204
    .line 205
    goto :goto_c

    .line 206
    :cond_12
    const/high16 v10, 0x80000

    .line 207
    .line 208
    :goto_c
    or-int/2addr v2, v10

    .line 209
    goto :goto_d

    .line 210
    :cond_13
    move-wide/from16 v8, p8

    .line 211
    .line 212
    :goto_d
    and-int/lit16 v10, v13, 0x80

    .line 213
    .line 214
    const/high16 v17, 0xc00000

    .line 215
    .line 216
    if-eqz v10, :cond_14

    .line 217
    .line 218
    or-int v2, v2, v17

    .line 219
    .line 220
    move/from16 v11, p10

    .line 221
    .line 222
    goto :goto_f

    .line 223
    :cond_14
    const/high16 v18, 0x1c00000

    .line 224
    .line 225
    and-int v18, v12, v18

    .line 226
    .line 227
    move/from16 v11, p10

    .line 228
    .line 229
    if-nez v18, :cond_16

    .line 230
    .line 231
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 232
    .line 233
    .line 234
    move-result v19

    .line 235
    if-eqz v19, :cond_15

    .line 236
    .line 237
    const/high16 v19, 0x800000

    .line 238
    .line 239
    goto :goto_e

    .line 240
    :cond_15
    const/high16 v19, 0x400000

    .line 241
    .line 242
    :goto_e
    or-int v2, v2, v19

    .line 243
    .line 244
    :cond_16
    :goto_f
    const v19, 0x16db6db

    .line 245
    .line 246
    .line 247
    and-int v4, v2, v19

    .line 248
    .line 249
    const v6, 0x492492

    .line 250
    .line 251
    .line 252
    if-ne v4, v6, :cond_18

    .line 253
    .line 254
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-nez v4, :cond_17

    .line 259
    .line 260
    goto :goto_10

    .line 261
    :cond_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 262
    .line 263
    .line 264
    move-object/from16 v2, p1

    .line 265
    .line 266
    move/from16 v3, p2

    .line 267
    .line 268
    move-wide/from16 v5, p4

    .line 269
    .line 270
    move-object v4, v7

    .line 271
    move-wide v9, v8

    .line 272
    move-wide v7, v14

    .line 273
    goto/16 :goto_1b

    .line 274
    .line 275
    :cond_18
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 276
    .line 277
    .line 278
    and-int/lit8 v4, v12, 0x1

    .line 279
    .line 280
    const v6, -0x380001

    .line 281
    .line 282
    .line 283
    const v19, -0x70001

    .line 284
    .line 285
    .line 286
    const v20, -0xe001

    .line 287
    .line 288
    .line 289
    if-eqz v4, :cond_1e

    .line 290
    .line 291
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    if-eqz v4, :cond_19

    .line 296
    .line 297
    goto :goto_11

    .line 298
    :cond_19
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 299
    .line 300
    .line 301
    and-int/lit8 v3, v13, 0x8

    .line 302
    .line 303
    if-eqz v3, :cond_1a

    .line 304
    .line 305
    and-int/lit16 v2, v2, -0x1c01

    .line 306
    .line 307
    :cond_1a
    and-int/lit8 v3, v13, 0x10

    .line 308
    .line 309
    if-eqz v3, :cond_1b

    .line 310
    .line 311
    and-int v2, v2, v20

    .line 312
    .line 313
    :cond_1b
    and-int/lit8 v3, v13, 0x20

    .line 314
    .line 315
    if-eqz v3, :cond_1c

    .line 316
    .line 317
    and-int v2, v2, v19

    .line 318
    .line 319
    :cond_1c
    and-int/lit8 v3, v13, 0x40

    .line 320
    .line 321
    if-eqz v3, :cond_1d

    .line 322
    .line 323
    and-int/2addr v2, v6

    .line 324
    :cond_1d
    move-object/from16 v3, p1

    .line 325
    .line 326
    move/from16 v4, p2

    .line 327
    .line 328
    move-object v5, v7

    .line 329
    move-wide/from16 v6, p4

    .line 330
    .line 331
    move-wide/from16 v27, v14

    .line 332
    .line 333
    move v14, v2

    .line 334
    move v2, v11

    .line 335
    move-wide v10, v8

    .line 336
    move-wide/from16 v8, v27

    .line 337
    .line 338
    goto/16 :goto_18

    .line 339
    .line 340
    :cond_1e
    :goto_11
    if-eqz v3, :cond_1f

    .line 341
    .line 342
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 343
    .line 344
    goto :goto_12

    .line 345
    :cond_1f
    move-object/from16 v3, p1

    .line 346
    .line 347
    :goto_12
    if-eqz v5, :cond_20

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    goto :goto_13

    .line 351
    :cond_20
    move/from16 v4, p2

    .line 352
    .line 353
    :goto_13
    and-int/lit8 v5, v13, 0x8

    .line 354
    .line 355
    const/4 v6, 0x6

    .line 356
    if-eqz v5, :cond_21

    .line 357
    .line 358
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 359
    .line 360
    invoke-virtual {v5, v0, v6}, Landroidx/compose/material/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Shapes;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v5}, Landroidx/compose/material/Shapes;->getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    and-int/lit16 v2, v2, -0x1c01

    .line 369
    .line 370
    goto :goto_14

    .line 371
    :cond_21
    move-object v5, v7

    .line 372
    :goto_14
    and-int/lit8 v7, v13, 0x10

    .line 373
    .line 374
    if-eqz v7, :cond_22

    .line 375
    .line 376
    sget-object v7, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 377
    .line 378
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/SnackbarDefaults;->getBackgroundColor(Landroidx/compose/runtime/Composer;I)J

    .line 379
    .line 380
    .line 381
    move-result-wide v22

    .line 382
    and-int v2, v2, v20

    .line 383
    .line 384
    goto :goto_15

    .line 385
    :cond_22
    move-wide/from16 v22, p4

    .line 386
    .line 387
    :goto_15
    and-int/lit8 v7, v13, 0x20

    .line 388
    .line 389
    if-eqz v7, :cond_23

    .line 390
    .line 391
    sget-object v7, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 392
    .line 393
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    invoke-virtual {v7}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 398
    .line 399
    .line 400
    move-result-wide v14

    .line 401
    and-int v2, v2, v19

    .line 402
    .line 403
    :cond_23
    and-int/lit8 v7, v13, 0x40

    .line 404
    .line 405
    if-eqz v7, :cond_24

    .line 406
    .line 407
    sget-object v7, Landroidx/compose/material/SnackbarDefaults;->INSTANCE:Landroidx/compose/material/SnackbarDefaults;

    .line 408
    .line 409
    invoke-virtual {v7, v0, v6}, Landroidx/compose/material/SnackbarDefaults;->getPrimaryActionColor(Landroidx/compose/runtime/Composer;I)J

    .line 410
    .line 411
    .line 412
    move-result-wide v7

    .line 413
    const v9, -0x380001

    .line 414
    .line 415
    .line 416
    and-int/2addr v2, v9

    .line 417
    goto :goto_16

    .line 418
    :cond_24
    move-wide v7, v8

    .line 419
    :goto_16
    if-eqz v10, :cond_25

    .line 420
    .line 421
    int-to-float v6, v6

    .line 422
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 423
    .line 424
    .line 425
    move-result v6

    .line 426
    move-wide v10, v7

    .line 427
    move-wide v8, v14

    .line 428
    move v14, v2

    .line 429
    move v2, v6

    .line 430
    :goto_17
    move-wide/from16 v6, v22

    .line 431
    .line 432
    goto :goto_18

    .line 433
    :cond_25
    move-wide/from16 v27, v14

    .line 434
    .line 435
    move v14, v2

    .line 436
    move v2, v11

    .line 437
    move-wide v10, v7

    .line 438
    move-wide/from16 v8, v27

    .line 439
    .line 440
    goto :goto_17

    .line 441
    :goto_18
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 442
    .line 443
    .line 444
    invoke-interface/range {p0 .. p0}, Landroidx/compose/material/SnackbarData;->getActionLabel()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v15

    .line 448
    if-eqz v15, :cond_26

    .line 449
    .line 450
    new-instance v12, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;

    .line 451
    .line 452
    move-object/from16 p1, v12

    .line 453
    .line 454
    move-wide/from16 p2, v10

    .line 455
    .line 456
    move/from16 p4, v14

    .line 457
    .line 458
    move-object/from16 p5, p0

    .line 459
    .line 460
    move-object/from16 p6, v15

    .line 461
    .line 462
    invoke-direct/range {p1 .. p6}, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;-><init>(JILandroidx/compose/material/SnackbarData;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    const v15, 0x6de142b0

    .line 466
    .line 467
    .line 468
    move-wide/from16 p1, v10

    .line 469
    .line 470
    const/4 v10, 0x1

    .line 471
    invoke-static {v0, v15, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 472
    .line 473
    .line 474
    move-result-object v11

    .line 475
    :goto_19
    move-object v15, v11

    .line 476
    goto :goto_1a

    .line 477
    :cond_26
    move-wide/from16 p1, v10

    .line 478
    .line 479
    const/4 v10, 0x1

    .line 480
    const/4 v11, 0x0

    .line 481
    goto :goto_19

    .line 482
    :goto_1a
    const/16 v11, 0xc

    .line 483
    .line 484
    int-to-float v11, v11

    .line 485
    invoke-static {v11}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 486
    .line 487
    .line 488
    move-result v11

    .line 489
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 490
    .line 491
    .line 492
    move-result-object v11

    .line 493
    new-instance v12, Landroidx/compose/material/SnackbarKt$Snackbar$3;

    .line 494
    .line 495
    invoke-direct {v12, v1}, Landroidx/compose/material/SnackbarKt$Snackbar$3;-><init>(Landroidx/compose/material/SnackbarData;)V

    .line 496
    .line 497
    .line 498
    const v1, -0xf9b7319

    .line 499
    .line 500
    .line 501
    invoke-static {v0, v1, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 502
    .line 503
    .line 504
    move-result-object v23

    .line 505
    and-int/lit16 v1, v14, 0x380

    .line 506
    .line 507
    or-int v1, v1, v17

    .line 508
    .line 509
    and-int/lit16 v10, v14, 0x1c00

    .line 510
    .line 511
    or-int/2addr v1, v10

    .line 512
    const v10, 0xe000

    .line 513
    .line 514
    .line 515
    and-int/2addr v10, v14

    .line 516
    or-int/2addr v1, v10

    .line 517
    const/high16 v10, 0x70000

    .line 518
    .line 519
    and-int/2addr v10, v14

    .line 520
    or-int/2addr v1, v10

    .line 521
    shr-int/lit8 v10, v14, 0x3

    .line 522
    .line 523
    and-int v10, v10, v16

    .line 524
    .line 525
    or-int v25, v1, v10

    .line 526
    .line 527
    const/16 v26, 0x0

    .line 528
    .line 529
    move-object v14, v11

    .line 530
    move/from16 v16, v4

    .line 531
    .line 532
    move-object/from16 v17, v5

    .line 533
    .line 534
    move-wide/from16 v18, v6

    .line 535
    .line 536
    move-wide/from16 v20, v8

    .line 537
    .line 538
    move/from16 v22, v2

    .line 539
    .line 540
    move-object/from16 v24, v0

    .line 541
    .line 542
    invoke-static/range {v14 .. v26}, Landroidx/compose/material/SnackbarKt;->Snackbar-7zSek6w(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 543
    .line 544
    .line 545
    move v11, v2

    .line 546
    move-object v2, v3

    .line 547
    move v3, v4

    .line 548
    move-object v4, v5

    .line 549
    move-wide v5, v6

    .line 550
    move-wide v7, v8

    .line 551
    move-wide/from16 v9, p1

    .line 552
    .line 553
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 554
    .line 555
    .line 556
    move-result-object v14

    .line 557
    if-nez v14, :cond_27

    .line 558
    .line 559
    goto :goto_1c

    .line 560
    :cond_27
    new-instance v15, Landroidx/compose/material/SnackbarKt$Snackbar$4;

    .line 561
    .line 562
    move-object v0, v15

    .line 563
    move-object/from16 v1, p0

    .line 564
    .line 565
    move/from16 v12, p12

    .line 566
    .line 567
    move/from16 v13, p13

    .line 568
    .line 569
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/SnackbarKt$Snackbar$4;-><init>(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJFII)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v14, v15}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 573
    .line 574
    .line 575
    :goto_1c
    return-void
.end method

.method private static final TextOnlySnackbar(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 11
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const v0, 0x36ae61c7

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    and-int/lit8 v0, p2, 0xe

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    or-int/2addr v0, p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p2

    .line 25
    :goto_1
    and-int/lit8 v2, v0, 0xb

    .line 26
    .line 27
    if-ne v2, v1, :cond_3

    .line 28
    .line 29
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_3
    :goto_2
    sget-object v1, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;->INSTANCE:Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;

    .line 42
    .line 43
    const v2, -0x4ee9b9da

    .line 44
    .line 45
    .line 46
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 47
    .line 48
    .line 49
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 50
    .line 51
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 60
    .line 61
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 70
    .line 71
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 80
    .line 81
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 82
    .line 83
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    if-nez v10, :cond_4

    .line 96
    .line 97
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 98
    .line 99
    .line 100
    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 104
    .line 105
    .line 106
    move-result v10

    .line 107
    if-eqz v10, :cond_5

    .line 108
    .line 109
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 114
    .line 115
    .line 116
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    invoke-static {v8, v1, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v8, v4, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v8, v5, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v8, v6, v1}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const/4 v4, 0x0

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-interface {v9, v1, p1, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    const v1, 0x7ab4aae9

    .line 171
    .line 172
    .line 173
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 174
    .line 175
    .line 176
    const v5, -0xfe5f550

    .line 177
    .line 178
    .line 179
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 180
    .line 181
    .line 182
    sget v5, Landroidx/compose/material/SnackbarKt;->HorizontalSpacing:F

    .line 183
    .line 184
    sget v6, Landroidx/compose/material/SnackbarKt;->SnackbarVerticalPadding:F

    .line 185
    .line 186
    invoke-static {v3, v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->padding-VpY3zN4(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const v5, 0x2bb5b5d7

    .line 191
    .line 192
    .line 193
    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 194
    .line 195
    .line 196
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 197
    .line 198
    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    invoke-static {v5, v4, p1, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 218
    .line 219
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    .line 228
    .line 229
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-interface {p1, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    check-cast v8, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 238
    .line 239
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    if-nez v10, :cond_6

    .line 252
    .line 253
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 254
    .line 255
    .line 256
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 257
    .line 258
    .line 259
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 260
    .line 261
    .line 262
    move-result v10

    .line 263
    if-eqz v10, :cond_7

    .line 264
    .line 265
    invoke-interface {p1, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 270
    .line 271
    .line 272
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 273
    .line 274
    .line 275
    invoke-static {p1}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    invoke-static {v9, v5, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v9, v2, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {v9, v6, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v9, v8, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 305
    .line 306
    .line 307
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 308
    .line 309
    .line 310
    invoke-static {p1}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    invoke-interface {v3, v2, p1, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 326
    .line 327
    .line 328
    const v1, -0x7f65a980

    .line 329
    .line 330
    .line 331
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 332
    .line 333
    .line 334
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 335
    .line 336
    const v1, 0x52fdc66a

    .line 337
    .line 338
    .line 339
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 340
    .line 341
    .line 342
    and-int/lit8 v0, v0, 0xe

    .line 343
    .line 344
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 352
    .line 353
    .line 354
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 355
    .line 356
    .line 357
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 358
    .line 359
    .line 360
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 361
    .line 362
    .line 363
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 364
    .line 365
    .line 366
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 367
    .line 368
    .line 369
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 370
    .line 371
    .line 372
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 373
    .line 374
    .line 375
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 376
    .line 377
    .line 378
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 379
    .line 380
    .line 381
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    if-nez p1, :cond_8

    .line 386
    .line 387
    goto :goto_6

    .line 388
    :cond_8
    new-instance v0, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$3;

    .line 389
    .line 390
    invoke-direct {v0, p0, p2}, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$3;-><init>(Lkotlin/jvm/functions/Function2;I)V

    .line 391
    .line 392
    .line 393
    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 394
    .line 395
    .line 396
    :goto_6
    return-void
.end method

.method public static final synthetic access$NewLineButtonSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarKt;->NewLineButtonSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$OneRowSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SnackbarKt;->OneRowSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$TextOnlySnackbar(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/material/SnackbarKt;->TextOnlySnackbar(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getHeightToFirstLine$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->HeightToFirstLine:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSnackbarMinHeightOneLine$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightOneLine:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSnackbarMinHeightTwoLines$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->SnackbarMinHeightTwoLines:F

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTextEndExtraSpacing$p()F
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/SnackbarKt;->TextEndExtraSpacing:F

    .line 2
    .line 3
    return v0
.end method
