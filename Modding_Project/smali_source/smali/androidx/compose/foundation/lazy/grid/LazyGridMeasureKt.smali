.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "LazyGridMeasure.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private static final calculateItemsOffsets(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p7

    .line 6
    .line 7
    move/from16 v4, p9

    .line 8
    .line 9
    move/from16 v5, p4

    .line 10
    .line 11
    if-eqz p6, :cond_0

    .line 12
    .line 13
    move v6, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v6, v1

    .line 16
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v7, 0x0

    .line 21
    move/from16 v8, p3

    .line 22
    .line 23
    if-ge v8, v5, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v5, v7

    .line 28
    :goto_1
    if-eqz v5, :cond_3

    .line 29
    .line 30
    if-nez p5, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Check failed."

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    move v9, v7

    .line 46
    move v10, v9

    .line 47
    :goto_3
    if-ge v9, v8, :cond_4

    .line 48
    .line 49
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v11

    .line 53
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 54
    .line 55
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    .line 56
    .line 57
    .line 58
    move-result-object v11

    .line 59
    array-length v11, v11

    .line 60
    add-int/2addr v10, v11

    .line 61
    add-int/lit8 v9, v9, 0x1

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    if-eqz v5, :cond_e

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    new-array v9, v5, [I

    .line 76
    .line 77
    move v10, v7

    .line 78
    :goto_4
    if-ge v10, v5, :cond_5

    .line 79
    .line 80
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    check-cast v11, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 89
    .line 90
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSize()I

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    aput v11, v9, v10

    .line 95
    .line 96
    add-int/lit8 v10, v10, 0x1

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_5
    new-array v10, v5, [I

    .line 100
    .line 101
    move v11, v7

    .line 102
    :goto_5
    if-ge v11, v5, :cond_6

    .line 103
    .line 104
    aput v7, v10, v11

    .line 105
    .line 106
    add-int/lit8 v11, v11, 0x1

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :cond_6
    const-string v7, "Required value was null."

    .line 110
    .line 111
    if-eqz p6, :cond_8

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move-object/from16 v11, p10

    .line 116
    .line 117
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    .line 118
    .line 119
    .line 120
    goto :goto_6

    .line 121
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :cond_8
    move-object/from16 v11, p10

    .line 128
    .line 129
    if-eqz p8, :cond_d

    .line 130
    .line 131
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 132
    .line 133
    move-object/from16 p3, p8

    .line 134
    .line 135
    move-object/from16 p4, p10

    .line 136
    .line 137
    move/from16 p5, v6

    .line 138
    .line 139
    move-object/from16 p6, v9

    .line 140
    .line 141
    move-object/from16 p7, v3

    .line 142
    .line 143
    move-object/from16 p8, v10

    .line 144
    .line 145
    invoke-interface/range {p3 .. p8}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 146
    .line 147
    .line 148
    :goto_6
    invoke-static {v10}, Lkotlin/collections/n;->n0([I)Lkotlin/ranges/IntRange;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    if-eqz v4, :cond_9

    .line 153
    .line 154
    invoke-static {v3}, Lkotlin/ranges/e;->t(Lkotlin/ranges/d;)Lkotlin/ranges/d;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    :cond_9
    invoke-virtual {v3}, Lkotlin/ranges/d;->c()I

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    invoke-virtual {v3}, Lkotlin/ranges/d;->d()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-virtual {v3}, Lkotlin/ranges/d;->e()I

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-lez v3, :cond_a

    .line 171
    .line 172
    if-le v7, v9, :cond_b

    .line 173
    .line 174
    :cond_a
    if-gez v3, :cond_f

    .line 175
    .line 176
    if-gt v9, v7, :cond_f

    .line 177
    .line 178
    :cond_b
    :goto_7
    aget v11, v10, v7

    .line 179
    .line 180
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 189
    .line 190
    if-eqz v4, :cond_c

    .line 191
    .line 192
    sub-int v11, v6, v11

    .line 193
    .line 194
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSize()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    sub-int/2addr v11, v13

    .line 199
    :cond_c
    invoke-virtual {v12, v11, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->position(III)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    check-cast v11, Ljava/util/Collection;

    .line 204
    .line 205
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    .line 207
    .line 208
    if-eq v7, v9, :cond_f

    .line 209
    .line 210
    add-int/2addr v7, v3

    .line 211
    goto :goto_7

    .line 212
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw v0

    .line 218
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    move/from16 v4, p5

    .line 223
    .line 224
    :goto_8
    if-ge v7, v3, :cond_f

    .line 225
    .line 226
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    .line 231
    .line 232
    invoke-virtual {v5, v4, p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->position(III)Ljava/util/List;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    check-cast v6, Ljava/util/Collection;

    .line 237
    .line 238
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    add-int/2addr v4, v5

    .line 246
    add-int/lit8 v7, v7, 0x1

    .line 247
    .line 248
    goto :goto_8

    .line 249
    :cond_f
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

.method public static final measureLazyGrid-zIfe3eg(ILandroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Lat/n;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 29
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/foundation/layout/Arrangement$Vertical;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/foundation/layout/Arrangement$Horizontal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p17    # Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
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
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
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
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    move/from16 v11, p3

    move/from16 v1, p5

    move-wide/from16 v2, p10

    move-object/from16 v12, p18

    const-string v4, "measuredLineProvider"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "measuredItemProvider"

    move-object/from16 v15, p2

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "density"

    move-object/from16 v10, p16

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "placementAnimator"

    move-object/from16 v13, p17

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layout"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v4, "Failed requirement."

    if-ltz v1, :cond_16

    if-ltz p6, :cond_15

    if-gtz p0, :cond_1

    .line 2
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 3
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;

    invoke-interface {v12, v4, v2, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/compose/ui/layout/MeasureResult;

    .line 4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    move-result-object v2

    neg-int v12, v1

    add-int v13, v11, p6

    if-eqz p12, :cond_0

    .line 5
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object/from16 v16, v1

    goto :goto_1

    :cond_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    move-object v5, v0

    move-object v11, v2

    move/from16 v15, p15

    move/from16 v17, p6

    .line 6
    invoke-direct/range {v5 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v0

    .line 7
    :cond_1
    invoke-static/range {p9 .. p9}, Lbt/a;->c(F)I

    move-result v4

    sub-int v5, p8, v4

    const/4 v14, 0x0

    .line 8
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v6

    move/from16 v7, p7

    invoke-static {v7, v6}, Landroidx/compose/foundation/lazy/grid/LineIndex;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_2

    if-gez v5, :cond_2

    add-int/2addr v4, v5

    move v5, v14

    .line 9
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sub-int/2addr v5, v1

    neg-int v9, v1

    :goto_2
    if-gez v5, :cond_3

    .line 10
    invoke-static {v14}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v8

    sub-int v8, v7, v8

    if-lez v8, :cond_3

    add-int/lit8 v7, v7, -0x1

    .line 11
    invoke-static {v7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v7

    .line 12
    invoke-virtual {v0, v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v8

    .line 13
    invoke-interface {v6, v14, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    :cond_3
    if-ge v5, v9, :cond_4

    add-int/2addr v4, v5

    move v5, v4

    move v4, v9

    goto :goto_3

    :cond_4
    move/from16 v28, v5

    move v5, v4

    move/from16 v4, v28

    :goto_3
    add-int/2addr v4, v1

    add-int v8, v11, p6

    move/from16 p7, v7

    .line 15
    invoke-static {v8, v14}, Lkotlin/ranges/e;->e(II)I

    move-result v7

    neg-int v14, v4

    move/from16 v16, v4

    .line 16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v18, p7

    move/from16 v17, v8

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v4, :cond_5

    .line 17
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 18
    check-cast v19, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    add-int/lit8 v18, v18, 0x1

    .line 19
    invoke-static/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v18

    .line 20
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v19

    add-int v14, v14, v19

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move/from16 v4, v16

    move/from16 v8, v18

    :goto_5
    const/16 v21, 0x1

    if-le v14, v7, :cond_6

    .line 21
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    move/from16 v16, v7

    .line 22
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v7

    .line 23
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_13

    add-int/lit8 v8, v8, -0x1

    .line 24
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    :cond_7
    if-ge v14, v11, :cond_a

    sub-int v7, v11, v14

    sub-int/2addr v4, v7

    add-int/2addr v14, v7

    move/from16 v8, p7

    :goto_6
    if-ge v4, v1, :cond_9

    const/16 p7, 0x0

    .line 25
    invoke-static/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v16

    sub-int v16, v8, v16

    if-lez v16, :cond_8

    add-int/lit8 v8, v8, -0x1

    .line 26
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v8

    move/from16 v18, v9

    .line 27
    invoke-virtual {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLineProvider;->getAndMeasure-bKFJvoY(I)Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    move-result-object v9

    move/from16 v15, p7

    .line 28
    invoke-interface {v6, v15, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v9

    add-int/2addr v4, v9

    move-object/from16 v15, p2

    move/from16 v9, v18

    goto :goto_6

    :cond_8
    move/from16 v15, p7

    move/from16 v18, v9

    goto :goto_7

    :cond_9
    move/from16 v18, v9

    const/4 v15, 0x0

    :goto_7
    add-int/2addr v5, v7

    if-gez v4, :cond_b

    add-int/2addr v5, v4

    add-int/2addr v14, v4

    move v4, v15

    goto :goto_8

    :cond_a
    move/from16 v18, v9

    const/4 v15, 0x0

    .line 30
    :cond_b
    :goto_8
    invoke-static/range {p9 .. p9}, Lbt/a;->c(F)I

    move-result v0

    invoke-static {v0}, Lbt/a;->a(I)I

    move-result v0

    invoke-static {v5}, Lbt/a;->a(I)I

    move-result v7

    if-ne v0, v7, :cond_c

    .line 31
    invoke-static/range {p9 .. p9}, Lbt/a;->c(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-lt v0, v7, :cond_c

    int-to-float v0, v5

    move/from16 v19, v0

    goto :goto_9

    :cond_c
    move/from16 v19, p9

    :goto_9
    neg-int v5, v4

    .line 32
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    if-lez v1, :cond_e

    .line 33
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    move v7, v4

    move-object v4, v0

    move v0, v15

    :goto_a
    if-ge v0, v1, :cond_d

    .line 34
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v8

    if-eqz v7, :cond_d

    if-gt v8, v7, :cond_d

    .line 35
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    move-result v9

    if-eq v0, v9, :cond_d

    sub-int/2addr v7, v8

    add-int/lit8 v0, v0, 0x1

    .line 36
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;

    goto :goto_a

    :cond_d
    move-object/from16 v22, v4

    move/from16 v23, v7

    goto :goto_b

    :cond_e
    move-object/from16 v22, v0

    move/from16 v23, v4

    :goto_b
    if-eqz p12, :cond_f

    .line 37
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    :goto_c
    move/from16 v24, v0

    goto :goto_d

    .line 38
    :cond_f
    invoke-static {v2, v3, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v0

    goto :goto_c

    :goto_d
    if-eqz p12, :cond_10

    .line 39
    invoke-static {v2, v3, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v0

    :goto_e
    move/from16 v25, v0

    goto :goto_f

    .line 40
    :cond_10
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    goto :goto_e

    :goto_f
    move-object v0, v6

    move/from16 v1, v24

    move/from16 v2, v25

    move v3, v14

    move/from16 v4, p3

    move/from16 v6, p12

    move-object/from16 v7, p13

    move/from16 v26, v17

    move-object/from16 v8, p14

    move/from16 p8, v18

    move/from16 v12, v19

    move/from16 v9, p15

    move-object/from16 v10, p16

    .line 41
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v0

    float-to-int v1, v12

    move-object/from16 v13, p17

    move v2, v14

    move v9, v15

    move v14, v1

    move/from16 v15, v24

    move/from16 v16, v25

    move/from16 v17, p4

    move/from16 v18, p15

    move-object/from16 v19, v0

    move-object/from16 v20, p2

    .line 42
    invoke-virtual/range {v13 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->onMeasured(IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;)V

    if-le v2, v11, :cond_11

    move/from16 v18, v21

    goto :goto_10

    :cond_11
    move/from16 v18, v9

    .line 43
    :goto_10
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;-><init>(Ljava/util/List;)V

    move v4, v12

    move-object/from16 v12, p18

    invoke-interface {v12, v1, v2, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p12, :cond_12

    .line 44
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_11

    :cond_12
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 45
    :goto_11
    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object v15, v2

    move-object/from16 v16, v22

    move/from16 v17, v23

    move/from16 v19, v4

    move-object/from16 v21, v0

    move/from16 v22, p8

    move/from16 v23, v26

    move/from16 v24, p0

    move/from16 v25, p15

    move-object/from16 v26, v1

    move/from16 v27, p6

    invoke-direct/range {v15 .. v27}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;I)V

    return-object v2

    :cond_13
    move/from16 p8, v9

    move/from16 v26, v17

    const/4 v9, 0x0

    .line 46
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v15

    add-int/2addr v14, v15

    move/from16 v15, p8

    if-gt v14, v15, :cond_14

    .line 47
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/n;->X0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getIndex-VZbfaAc()I

    move-result v9

    add-int/lit8 v0, p0, -0x1

    if-eq v9, v0, :cond_14

    add-int/lit8 v0, v8, 0x1

    .line 48
    invoke-static {v0}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v0

    .line 49
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v7

    sub-int/2addr v4, v7

    goto :goto_12

    .line 50
    :cond_14
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, p7

    :goto_12
    add-int/lit8 v8, v8, 0x1

    .line 51
    invoke-static {v8}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    move-result v8

    move/from16 p7, v0

    move v9, v15

    move/from16 v7, v16

    move/from16 v17, v26

    move-object/from16 v0, p1

    move-object/from16 v15, p2

    goto/16 :goto_5

    .line 52
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
