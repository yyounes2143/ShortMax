.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;
.super Ljava/lang/Object;
.source "LazyLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final MaxItemsToRetainForReuse:I = 0x7


# direct methods
.method public static final LazyLayout(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 13
    .param p0    # Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v4, p3

    .line 3
    .line 4
    move/from16 v5, p5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    const/4 v2, 0x4

    .line 8
    const-string v3, "itemProvider"

    .line 9
    .line 10
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "measurePolicy"

    .line 14
    .line 15
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const v3, 0x32d52bd3

    .line 19
    .line 20
    .line 21
    move-object/from16 v6, p4

    .line 22
    .line 23
    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    and-int/lit8 v6, p6, 0x1

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    or-int/lit8 v6, v5, 0x6

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    and-int/lit8 v6, v5, 0xe

    .line 35
    .line 36
    if-nez v6, :cond_2

    .line 37
    .line 38
    invoke-interface {v3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    move v6, v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move v6, v0

    .line 47
    :goto_0
    or-int/2addr v6, v5

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v6, v5

    .line 50
    :goto_1
    and-int/lit8 v0, p6, 0x2

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    or-int/lit8 v6, v6, 0x30

    .line 55
    .line 56
    :cond_3
    move-object v7, p1

    .line 57
    goto :goto_3

    .line 58
    :cond_4
    and-int/lit8 v7, v5, 0x70

    .line 59
    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    move-object v7, p1

    .line 63
    invoke-interface {v3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_5

    .line 68
    .line 69
    const/16 v8, 0x20

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    const/16 v8, 0x10

    .line 73
    .line 74
    :goto_2
    or-int/2addr v6, v8

    .line 75
    :goto_3
    and-int/lit8 v2, p6, 0x4

    .line 76
    .line 77
    if-eqz v2, :cond_7

    .line 78
    .line 79
    or-int/lit16 v6, v6, 0x180

    .line 80
    .line 81
    :cond_6
    move-object v8, p2

    .line 82
    goto :goto_5

    .line 83
    :cond_7
    and-int/lit16 v8, v5, 0x380

    .line 84
    .line 85
    if-nez v8, :cond_6

    .line 86
    .line 87
    move-object v8, p2

    .line 88
    invoke-interface {v3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_8

    .line 93
    .line 94
    const/16 v9, 0x100

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    const/16 v9, 0x80

    .line 98
    .line 99
    :goto_4
    or-int/2addr v6, v9

    .line 100
    :goto_5
    and-int/lit8 v9, p6, 0x8

    .line 101
    .line 102
    if-eqz v9, :cond_9

    .line 103
    .line 104
    or-int/lit16 v6, v6, 0xc00

    .line 105
    .line 106
    goto :goto_7

    .line 107
    :cond_9
    and-int/lit16 v9, v5, 0x1c00

    .line 108
    .line 109
    if-nez v9, :cond_b

    .line 110
    .line 111
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_a

    .line 116
    .line 117
    const/16 v9, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_a
    const/16 v9, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v6, v9

    .line 123
    :cond_b
    :goto_7
    and-int/lit16 v9, v6, 0x16db

    .line 124
    .line 125
    const/16 v10, 0x492

    .line 126
    .line 127
    if-ne v9, v10, :cond_d

    .line 128
    .line 129
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-nez v9, :cond_c

    .line 134
    .line 135
    goto :goto_8

    .line 136
    :cond_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    move-object v2, v7

    .line 140
    goto/16 :goto_c

    .line 141
    .line 142
    :cond_d
    :goto_8
    if-eqz v0, :cond_e

    .line 143
    .line 144
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 145
    .line 146
    goto :goto_9

    .line 147
    :cond_e
    move-object v0, v7

    .line 148
    :goto_9
    if-eqz v2, :cond_f

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    goto :goto_a

    .line 152
    :cond_f
    move-object v2, v8

    .line 153
    :goto_a
    and-int/lit8 v7, v6, 0xe

    .line 154
    .line 155
    invoke-static {p0, v3, v7}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    const/4 v8, 0x0

    .line 160
    invoke-static {v3, v8}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    const v9, -0x1d58f75c

    .line 165
    .line 166
    .line 167
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 175
    .line 176
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    if-ne v10, v12, :cond_10

    .line 181
    .line 182
    new-instance v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 183
    .line 184
    new-instance v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$itemContentFactory$1$1;

    .line 185
    .line 186
    invoke-direct {v12, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$itemContentFactory$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v10, v8, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolder;Lkotlin/jvm/functions/Function0;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    :cond_10
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 196
    .line 197
    .line 198
    check-cast v10, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 199
    .line 200
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    if-ne v7, v8, :cond_11

    .line 212
    .line 213
    new-instance v7, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 214
    .line 215
    new-instance v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;

    .line 216
    .line 217
    invoke-direct {v8, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemReusePolicy;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v7, v8}, Landroidx/compose/ui/layout/SubcomposeLayoutState;-><init>(Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_11
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 227
    .line 228
    .line 229
    check-cast v7, Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 230
    .line 231
    const v8, 0x24cb81e7

    .line 232
    .line 233
    .line 234
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 235
    .line 236
    .line 237
    if-nez v2, :cond_12

    .line 238
    .line 239
    goto :goto_b

    .line 240
    :cond_12
    shr-int/lit8 v8, v6, 0x6

    .line 241
    .line 242
    and-int/lit8 v8, v8, 0xe

    .line 243
    .line 244
    or-int/lit8 v8, v8, 0x40

    .line 245
    .line 246
    sget v9, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    .line 247
    .line 248
    shl-int/lit8 v9, v9, 0x6

    .line 249
    .line 250
    or-int/2addr v8, v9

    .line 251
    invoke-static {v2, v10, v7, v3, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher_androidKt;->LazyLayoutPrefetcher(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/runtime/Composer;I)V

    .line 252
    .line 253
    .line 254
    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 255
    .line 256
    :goto_b
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 257
    .line 258
    .line 259
    const v8, 0x1e7b2b64

    .line 260
    .line 261
    .line 262
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 263
    .line 264
    .line 265
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v8

    .line 269
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    move-result v9

    .line 273
    or-int/2addr v8, v9

    .line 274
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    if-nez v8, :cond_13

    .line 279
    .line 280
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    if-ne v9, v8, :cond_14

    .line 285
    .line 286
    :cond_13
    new-instance v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2$1;

    .line 287
    .line 288
    invoke-direct {v9, v10, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$2$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Lkotlin/jvm/functions/Function2;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 292
    .line 293
    .line 294
    :cond_14
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 295
    .line 296
    .line 297
    move-object v8, v9

    .line 298
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 299
    .line 300
    sget v9, Landroidx/compose/ui/layout/SubcomposeLayoutState;->$stable:I

    .line 301
    .line 302
    and-int/lit8 v6, v6, 0x70

    .line 303
    .line 304
    or-int v10, v9, v6

    .line 305
    .line 306
    const/4 v11, 0x0

    .line 307
    move-object v6, v7

    .line 308
    move-object v7, v0

    .line 309
    move-object v9, v3

    .line 310
    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/layout/SubcomposeLayoutKt;->SubcomposeLayout(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 311
    .line 312
    .line 313
    move-object v8, v2

    .line 314
    move-object v2, v0

    .line 315
    :goto_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    if-nez v7, :cond_15

    .line 320
    .line 321
    goto :goto_d

    .line 322
    :cond_15
    new-instance v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$3;

    .line 323
    .line 324
    move-object v0, v9

    .line 325
    move-object v1, p0

    .line 326
    move-object v3, v8

    .line 327
    move-object/from16 v4, p3

    .line 328
    .line 329
    move/from16 v5, p5

    .line 330
    .line 331
    move/from16 v6, p6

    .line 332
    .line 333
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt$LazyLayout$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;II)V

    .line 334
    .line 335
    .line 336
    invoke-interface {v7, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 337
    .line 338
    .line 339
    :goto_d
    return-void
.end method
