.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p3

    .line 3
    .line 4
    move/from16 v2, p4

    .line 5
    .line 6
    move-object/from16 v3, p9

    .line 7
    .line 8
    move/from16 v4, p11

    .line 9
    .line 10
    move/from16 v5, p6

    .line 11
    .line 12
    if-eqz p8, :cond_0

    .line 13
    .line 14
    move v6, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v6, v1

    .line 17
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v7, 0x0

    .line 22
    move/from16 v8, p5

    .line 23
    .line 24
    if-ge v8, v5, :cond_1

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v5, v7

    .line 29
    :goto_1
    if-eqz v5, :cond_3

    .line 30
    .line 31
    if-nez p7, :cond_2

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string v1, "Check failed."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v9

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v10

    .line 52
    add-int/2addr v9, v10

    .line 53
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    add-int/2addr v9, v10

    .line 58
    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    if-eqz v5, :cond_e

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_d

    .line 68
    .line 69
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_d

    .line 74
    .line 75
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    new-array v9, v5, [I

    .line 80
    .line 81
    move v10, v7

    .line 82
    :goto_3
    if-ge v10, v5, :cond_4

    .line 83
    .line 84
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 93
    .line 94
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    aput v11, v9, v10

    .line 99
    .line 100
    add-int/lit8 v10, v10, 0x1

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    new-array v10, v5, [I

    .line 104
    .line 105
    move v11, v7

    .line 106
    :goto_4
    if-ge v11, v5, :cond_5

    .line 107
    .line 108
    aput v7, v10, v11

    .line 109
    .line 110
    add-int/lit8 v11, v11, 0x1

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_5
    const-string v7, "Required value was null."

    .line 114
    .line 115
    if-eqz p8, :cond_7

    .line 116
    .line 117
    if-eqz v3, :cond_6

    .line 118
    .line 119
    move-object/from16 v11, p12

    .line 120
    .line 121
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 122
    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw v0

    .line 131
    :cond_7
    move-object/from16 v11, p12

    .line 132
    .line 133
    if-eqz p10, :cond_c

    .line 134
    .line 135
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 136
    .line 137
    move-object/from16 p5, p10

    .line 138
    .line 139
    move-object/from16 p6, p12

    .line 140
    .line 141
    move/from16 p7, v6

    .line 142
    .line 143
    move-object/from16 p8, v9

    .line 144
    .line 145
    move-object/from16 p9, v3

    .line 146
    .line 147
    move-object/from16 p10, v10

    .line 148
    .line 149
    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 150
    .line 151
    .line 152
    :goto_5
    invoke-static {v10}, Lkotlin/collections/n;->n0([I)Lkotlin/ranges/IntRange;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-nez v4, :cond_8

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_8
    invoke-static {v3}, Lkotlin/ranges/e;->t(Lkotlin/ranges/d;)Lkotlin/ranges/d;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/d;->c()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    invoke-virtual {v3}, Lkotlin/ranges/d;->d()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    invoke-virtual {v3}, Lkotlin/ranges/d;->e()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-lez v3, :cond_9

    .line 176
    .line 177
    if-le v7, v9, :cond_a

    .line 178
    .line 179
    :cond_9
    if-gez v3, :cond_11

    .line 180
    .line 181
    if-gt v9, v7, :cond_11

    .line 182
    .line 183
    :cond_a
    :goto_7
    aget v11, v10, v7

    .line 184
    .line 185
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    .line 186
    .line 187
    .line 188
    move-result v12

    .line 189
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v12

    .line 193
    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 194
    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    sub-int v11, v6, v11

    .line 198
    .line 199
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    sub-int/2addr v11, v13

    .line 204
    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    if-eq v7, v9, :cond_11

    .line 212
    .line 213
    add-int/2addr v7, v3

    .line 214
    goto :goto_7

    .line 215
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 216
    .line 217
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 222
    .line 223
    const-string v1, "Failed requirement."

    .line 224
    .line 225
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw v0

    .line 229
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    move/from16 v5, p7

    .line 234
    .line 235
    move v4, v7

    .line 236
    :goto_8
    if-ge v4, v3, :cond_f

    .line 237
    .line 238
    move-object v6, p1

    .line 239
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    check-cast v9, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 244
    .line 245
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    sub-int/2addr v5, v10

    .line 250
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    add-int/lit8 v4, v4, 0x1

    .line 258
    .line 259
    goto :goto_8

    .line 260
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    move/from16 v4, p7

    .line 265
    .line 266
    move v5, v7

    .line 267
    :goto_9
    if-ge v5, v3, :cond_10

    .line 268
    .line 269
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    check-cast v6, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 274
    .line 275
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 276
    .line 277
    .line 278
    move-result-object v9

    .line 279
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    add-int/2addr v4, v6

    .line 287
    add-int/lit8 v5, v5, 0x1

    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    :goto_a
    if-ge v7, v0, :cond_11

    .line 295
    .line 296
    move-object/from16 v3, p2

    .line 297
    .line 298
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    check-cast v5, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 303
    .line 304
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    add-int/2addr v4, v5

    .line 316
    add-int/lit8 v7, v7, 0x1

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_11
    return-object v8
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sub-int/2addr p2, p0

    .line 5
    add-int/lit8 p0, p2, -0x1

    .line 6
    .line 7
    :goto_0
    return p0
.end method

.method public static final measureLazyList-7Xnphek(ILandroidx/compose/foundation/lazy/LazyMeasuredItemProvider;IIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;Lat/n;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 32
    .param p1    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p18    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "IIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;",
            "Lat/n<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v9, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v3, p3

    move-wide/from16 v0, p8

    move-object/from16 v2, p11

    move-object/from16 v4, p17

    move-object/from16 v8, p18

    const/16 v23, 0x1

    const-string v5, "itemProvider"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headerIndexes"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "density"

    move-object/from16 v15, p15

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "placementAnimator"

    move-object/from16 v14, p16

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "beyondBoundsInfo"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "layout"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v5, "Failed requirement."

    if-ltz v3, :cond_21

    if-ltz p4, :cond_20

    if-gtz v9, :cond_1

    .line 2
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 3
    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p8 .. p9}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;

    invoke-interface {v8, v4, v0, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/compose/ui/layout/MeasureResult;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v12

    neg-int v13, v3

    add-int v14, v7, p4

    if-eqz p10, :cond_0

    .line 5
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object/from16 v17, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    move-object v6, v2

    move/from16 v16, p14

    move/from16 v18, p4

    .line 6
    invoke-direct/range {v6 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v2

    :cond_1
    const/4 v5, 0x0

    move/from16 v10, p5

    if-lt v10, v9, :cond_2

    add-int/lit8 v10, v9, -0x1

    .line 7
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v10

    move v11, v5

    goto :goto_2

    :cond_2
    move/from16 v11, p6

    .line 8
    :goto_2
    invoke-static/range {p7 .. p7}, Lbt/a;->c(F)I

    move-result v12

    sub-int/2addr v11, v12

    .line 9
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v13

    invoke-static {v10, v13}, Landroidx/compose/foundation/lazy/DataIndex;->equals-impl0(II)Z

    move-result v13

    if-eqz v13, :cond_3

    if-gez v11, :cond_3

    add-int/2addr v12, v11

    move v11, v5

    .line 10
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sub-int/2addr v11, v3

    neg-int v5, v3

    const/4 v14, 0x0

    :goto_3
    if-gez v11, :cond_4

    const/16 p5, 0x0

    .line 11
    invoke-static/range {p5 .. p5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v10, v16

    if-lez v16, :cond_4

    add-int/lit8 v10, v10, -0x1

    .line 12
    invoke-static {v10}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v10

    .line 13
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v15

    move/from16 p6, v10

    move/from16 v10, p5

    .line 14
    invoke-interface {v13, v10, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 16
    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    add-int/2addr v11, v10

    move/from16 v10, p6

    move-object/from16 v15, p15

    goto :goto_3

    :cond_4
    if-ge v11, v5, :cond_5

    add-int/2addr v12, v11

    move v11, v5

    :cond_5
    add-int/2addr v11, v3

    add-int v15, v7, p4

    move/from16 p5, v10

    move/from16 v16, v14

    const/4 v10, 0x0

    .line 17
    invoke-static {v15, v10}, Lkotlin/ranges/e;->e(II)I

    move-result v14

    neg-int v10, v11

    move/from16 v17, v10

    .line 18
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v18, p5

    move/from16 p6, v11

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_6

    .line 19
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 20
    check-cast v19, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    add-int/lit8 v18, v18, 0x1

    .line 21
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v18

    .line 22
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v19

    add-int v17, v17, v19

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move/from16 v10, p6

    move/from16 p6, v15

    move/from16 v11, v16

    move/from16 v15, v17

    move/from16 v8, v18

    :goto_5
    if-le v15, v14, :cond_8

    .line 23
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v25, v5

    goto :goto_8

    :cond_8
    :goto_6
    if-ge v8, v9, :cond_7

    move/from16 v16, v14

    .line 24
    invoke-virtual {v6, v8}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    .line 25
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v17

    add-int v15, v15, v17

    move/from16 v25, v5

    if-gt v15, v5, :cond_9

    add-int/lit8 v5, v9, -0x1

    if-eq v8, v5, :cond_9

    add-int/lit8 v5, v8, 0x1

    .line 26
    invoke-static {v5}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v5

    .line 27
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v14

    sub-int/2addr v10, v14

    goto :goto_7

    .line 28
    :cond_9
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 29
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v5

    move/from16 v5, p5

    :goto_7
    add-int/lit8 v8, v8, 0x1

    .line 30
    invoke-static {v8}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v8

    move/from16 p5, v5

    move/from16 v14, v16

    move/from16 v5, v25

    goto :goto_5

    :goto_8
    if-ge v15, v7, :cond_c

    sub-int v5, v7, v15

    sub-int/2addr v10, v5

    add-int/2addr v15, v5

    move v8, v11

    move/from16 v11, p5

    :goto_9
    if-ge v10, v3, :cond_a

    const/4 v14, 0x0

    .line 31
    invoke-static {v14}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v11, v16

    if-lez v16, :cond_a

    add-int/lit8 v11, v11, -0x1

    .line 32
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v11

    .line 33
    invoke-virtual {v6, v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v7

    .line 34
    invoke-interface {v13, v14, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getCrossAxisSize()I

    move-result v14

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 36
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v7

    add-int/2addr v10, v7

    move/from16 v7, p2

    goto :goto_9

    :cond_a
    add-int/2addr v12, v5

    if-gez v10, :cond_b

    add-int/2addr v12, v10

    add-int/2addr v15, v10

    move v11, v8

    move v7, v15

    const/4 v10, 0x0

    goto :goto_a

    :cond_b
    move v11, v8

    :cond_c
    move v7, v15

    .line 37
    :goto_a
    invoke-static/range {p7 .. p7}, Lbt/a;->c(F)I

    move-result v5

    invoke-static {v5}, Lbt/a;->a(I)I

    move-result v5

    invoke-static {v12}, Lbt/a;->a(I)I

    move-result v8

    if-ne v5, v8, :cond_d

    .line 38
    invoke-static/range {p7 .. p7}, Lbt/a;->c(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v5, v8, :cond_d

    int-to-float v5, v12

    move v8, v5

    goto :goto_b

    :cond_d
    move/from16 v8, p7

    :goto_b
    neg-int v5, v10

    .line 39
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    if-lez v3, :cond_10

    .line 40
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    move-object v15, v12

    move v12, v10

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v14, :cond_e

    .line 41
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    move-result v3

    if-eqz v12, :cond_e

    if-gt v3, v12, :cond_e

    move/from16 p5, v11

    .line 42
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    move-result v11

    if-eq v10, v11, :cond_f

    sub-int/2addr v12, v3

    add-int/lit8 v10, v10, 0x1

    .line 43
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move/from16 v3, p3

    move/from16 v11, p5

    goto :goto_c

    :cond_e
    move/from16 p5, v11

    :cond_f
    move/from16 v26, v12

    move-object v3, v15

    goto :goto_d

    :cond_10
    move/from16 p5, v11

    move/from16 v26, v10

    move-object v3, v12

    .line 44
    :goto_d
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 45
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v10

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_7Xnphek$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v11

    if-le v10, v11, :cond_12

    .line 46
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_7Xnphek$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-gt v12, v11, :cond_11

    .line 48
    :goto_e
    invoke-static {v11}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v11, v12, :cond_11

    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 49
    :cond_11
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_f
    move-object v11, v10

    goto :goto_10

    .line 50
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v10

    goto :goto_f

    .line 51
    :goto_10
    invoke-virtual/range {p17 .. p17}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->hasIntervals()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 52
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v10

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_7Xnphek$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v12

    if-ge v10, v12, :cond_14

    .line 53
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v12

    invoke-static {v4, v9}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList_7Xnphek$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I

    move-result v4

    :goto_11
    if-ge v12, v4, :cond_13

    add-int/lit8 v12, v12, 0x1

    .line 55
    invoke-static {v12}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 56
    :cond_13
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v12, v10

    goto :goto_12

    .line 57
    :cond_14
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v4

    move-object v12, v4

    .line 58
    :goto_12
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 59
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 60
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v27, v23

    goto :goto_13

    :cond_15
    const/16 v27, 0x0

    :goto_13
    if-eqz p10, :cond_16

    move/from16 v4, p5

    goto :goto_14

    :cond_16
    move v4, v7

    .line 61
    :goto_14
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v28

    if-eqz p10, :cond_17

    move v4, v7

    goto :goto_15

    :cond_17
    move/from16 v4, p5

    .line 62
    :goto_15
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v29

    move-object v10, v13

    move-object/from16 v30, v13

    move/from16 v13, v28

    const/16 v24, 0x0

    move/from16 v14, v29

    move/from16 v31, p6

    move v15, v7

    move/from16 v16, p2

    move/from16 v17, v5

    move/from16 v18, p10

    move-object/from16 v19, p12

    move-object/from16 v20, p13

    move/from16 v21, p14

    move-object/from16 v22, p15

    .line 63
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    .line 64
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p11

    move-object v15, v3

    move/from16 v3, p3

    move/from16 v4, v28

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v5, v29

    .line 65
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    move-result-object v0

    :goto_16
    move-object v13, v0

    goto :goto_17

    :cond_18
    move-object v15, v3

    move/from16 v11, v24

    move/from16 v12, v25

    const/4 v0, 0x0

    goto :goto_16

    :goto_17
    float-to-int v1, v8

    move-object/from16 v0, p16

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, p14

    move-object v5, v10

    move-object/from16 v6, p1

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->onMeasured(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V

    move/from16 v0, p2

    if-le v7, v0, :cond_19

    move/from16 v3, v23

    goto :goto_18

    :cond_19
    move v3, v11

    .line 67
    :goto_18
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;

    invoke-direct {v2, v10, v13}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$3;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListPositionedItem;)V

    move-object/from16 v4, p18

    invoke-interface {v4, v0, v1, v2}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v27, :cond_1a

    move-object v6, v10

    goto :goto_1a

    .line 68
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    :goto_19
    if-ge v11, v1, :cond_1e

    .line 70
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 71
    move-object v4, v2

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 72
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v6

    invoke-static/range {v30 .. v30}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v7

    if-lt v6, v7, :cond_1b

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    move-result v6

    invoke-static/range {v30 .. v30}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getIndex()I

    move-result v7

    if-le v6, v7, :cond_1c

    :cond_1b
    if-ne v4, v13, :cond_1d

    :cond_1c
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :cond_1e
    move-object v6, v0

    :goto_1a
    if-eqz p10, :cond_1f

    .line 73
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1b
    move-object v11, v0

    goto :goto_1c

    :cond_1f
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1b

    .line 74
    :goto_1c
    new-instance v13, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object v0, v13

    move-object v1, v15

    move/from16 v2, v26

    move v4, v8

    move v7, v12

    move/from16 v8, v31

    move/from16 v9, p0

    move/from16 v10, p14

    move/from16 v12, p4

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v13

    .line 75
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final measureLazyList_7Xnphek$endIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getEnd()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final measureLazyList_7Xnphek$startIndex(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getStart()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
