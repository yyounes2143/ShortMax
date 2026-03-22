.class public final Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainAxisSize:I

.field private final mainAxisSizeWithSpacings:I

.field private final mainAxisSpacing:I

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final visualOffset:J


# direct methods
.method private constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 6
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 7
    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    .line 8
    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 9
    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 10
    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    .line 11
    iput p9, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    .line 12
    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 13
    iput-object p11, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 14
    iput-wide p12, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    .line 15
    array-length p1, p10

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p4, p10, p2

    .line 16
    iget-boolean p5, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p4

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p4

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 18
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    add-int/2addr p3, p1

    iput p3, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;-><init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;II[Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    return-void
.end method


# virtual methods
.method public final getCrossAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndex-VZbfaAc()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSizeWithSpacings:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMainAxisSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlaceables()[Landroidx/compose/ui/layout/Placeable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final position(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;
    .locals 23
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v14, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    move/from16 v4, p4

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move/from16 v4, p3

    .line 20
    .line 21
    :goto_0
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 22
    .line 23
    if-eqz v5, :cond_1

    .line 24
    .line 25
    sub-int v5, v4, v1

    .line 26
    .line 27
    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 28
    .line 29
    sub-int/2addr v5, v6

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v5, v1

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    move/from16 v6, p3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    move/from16 v6, p4

    .line 38
    .line 39
    :goto_2
    if-eqz v3, :cond_3

    .line 40
    .line 41
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 42
    .line 43
    sget-object v8, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    .line 44
    .line 45
    if-ne v7, v8, :cond_3

    .line 46
    .line 47
    sub-int/2addr v6, v2

    .line 48
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 49
    .line 50
    sub-int/2addr v6, v7

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move v6, v2

    .line 53
    :goto_3
    if-eqz v3, :cond_4

    .line 54
    .line 55
    invoke-static {v6, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    :goto_4
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 65
    .line 66
    if-eqz v3, :cond_5

    .line 67
    .line 68
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 69
    .line 70
    invoke-static {v3}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    const/4 v3, 0x0

    .line 76
    :goto_5
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 77
    .line 78
    if-eqz v7, :cond_6

    .line 79
    .line 80
    if-ltz v3, :cond_9

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_6
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 84
    .line 85
    array-length v8, v8

    .line 86
    if-ge v3, v8, :cond_9

    .line 87
    .line 88
    :goto_6
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 89
    .line 90
    aget-object v10, v8, v3

    .line 91
    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    const/4 v15, 0x0

    .line 95
    goto :goto_7

    .line 96
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    move v15, v7

    .line 101
    :goto_7
    new-instance v12, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    .line 102
    .line 103
    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 104
    .line 105
    aget-object v7, v7, v3

    .line 106
    .line 107
    invoke-interface {v7}, Landroidx/compose/ui/layout/Measured;->getParentData()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    move-object v7, v12

    .line 114
    move-wide v8, v5

    .line 115
    move-object v13, v12

    .line 116
    move-object/from16 v12, v16

    .line 117
    .line 118
    invoke-direct/range {v7 .. v12}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v14, v15, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 125
    .line 126
    if-eqz v7, :cond_8

    .line 127
    .line 128
    add-int/lit8 v3, v3, -0x1

    .line 129
    .line 130
    goto :goto_5

    .line 131
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_9
    new-instance v22, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 135
    .line 136
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 137
    .line 138
    if-eqz v3, :cond_a

    .line 139
    .line 140
    invoke-static {v2, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    :goto_8
    move-wide v2, v1

    .line 145
    goto :goto_9

    .line 146
    :cond_a
    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 147
    .line 148
    .line 149
    move-result-wide v1

    .line 150
    goto :goto_8

    .line 151
    :goto_9
    iget v7, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->index:I

    .line 152
    .line 153
    iget-object v8, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 154
    .line 155
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 156
    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 160
    .line 161
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 162
    .line 163
    invoke-static {v1, v9}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    :goto_a
    move-wide v10, v9

    .line 168
    goto :goto_b

    .line 169
    :cond_b
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSize:I

    .line 170
    .line 171
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->crossAxisSize:I

    .line 172
    .line 173
    invoke-static {v1, v9}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 174
    .line 175
    .line 176
    move-result-wide v9

    .line 177
    goto :goto_a

    .line 178
    :goto_b
    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->mainAxisSpacing:I

    .line 179
    .line 180
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->reverseLayout:Z

    .line 181
    .line 182
    if-nez v1, :cond_c

    .line 183
    .line 184
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    .line 185
    .line 186
    goto :goto_c

    .line 187
    :cond_c
    iget v9, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    .line 188
    .line 189
    :goto_c
    neg-int v12, v9

    .line 190
    if-nez v1, :cond_d

    .line 191
    .line 192
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->afterContentPadding:I

    .line 193
    .line 194
    goto :goto_d

    .line 195
    :cond_d
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->beforeContentPadding:I

    .line 196
    .line 197
    :goto_d
    add-int v15, v4, v1

    .line 198
    .line 199
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->isVertical:Z

    .line 200
    .line 201
    move/from16 v16, v1

    .line 202
    .line 203
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 204
    .line 205
    move-object/from16 v18, v1

    .line 206
    .line 207
    move-object/from16 v17, v14

    .line 208
    .line 209
    move/from16 p1, v15

    .line 210
    .line 211
    iget-wide v14, v0, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->visualOffset:J

    .line 212
    .line 213
    move-wide/from16 v19, v14

    .line 214
    .line 215
    const/16 v21, 0x0

    .line 216
    .line 217
    move-object/from16 v1, v22

    .line 218
    .line 219
    move-wide v4, v5

    .line 220
    move v6, v7

    .line 221
    move-object v7, v8

    .line 222
    move/from16 v8, p5

    .line 223
    .line 224
    move/from16 v9, p6

    .line 225
    .line 226
    move v14, v12

    .line 227
    move/from16 v12, p7

    .line 228
    .line 229
    move-object/from16 v15, v17

    .line 230
    .line 231
    move/from16 v15, p1

    .line 232
    .line 233
    invoke-direct/range {v1 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;-><init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 234
    .line 235
    .line 236
    return-object v22
.end method
