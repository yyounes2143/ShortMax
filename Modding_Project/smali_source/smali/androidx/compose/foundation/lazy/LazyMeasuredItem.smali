.class public final Landroidx/compose/foundation/lazy/LazyMeasuredItem;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final crossAxisSize:I

.field private final horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private final placeables:[Landroidx/compose/ui/layout/Placeable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseLayout:Z

.field private final size:I

.field private final sizeWithSpacings:I

.field private final spacing:I

.field private final verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final visualOffset:J


# direct methods
.method private constructor <init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 4
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 6
    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 7
    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 8
    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 9
    iput-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 10
    iput p8, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 11
    iput p9, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 12
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 13
    iput p11, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    .line 14
    iput-wide p12, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    .line 15
    iput-object p14, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 16
    array-length p1, p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_0
    if-ge p3, p1, :cond_2

    aget-object p6, p2, p3

    .line 17
    iget-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-eqz p7, :cond_0

    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p7

    goto :goto_1

    :cond_0
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p7

    :goto_1
    add-int/2addr p4, p7

    .line 18
    iget-boolean p7, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    if-nez p7, :cond_1

    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p6

    goto :goto_2

    :cond_1
    invoke-virtual {p6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p6

    :goto_2
    invoke-static {p5, p6}, Ljava/lang/Math;->max(II)I

    move-result p5

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 19
    :cond_2
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 20
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->spacing:I

    add-int/2addr p4, p1

    iput p4, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    .line 21
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    return-void
.end method

.method public synthetic constructor <init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;-><init>(I[Landroidx/compose/ui/layout/Placeable;ZLandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZIILandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;IJLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCrossAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->crossAxisSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSizeWithSpacings()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    .line 2
    .line 3
    return v0
.end method

.method public final position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;
    .locals 17
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v10, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move/from16 v1, p3

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move/from16 v1, p2

    .line 16
    .line 17
    :goto_0
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    sub-int v3, v1, p1

    .line 22
    .line 23
    iget v4, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 24
    .line 25
    sub-int/2addr v3, v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move/from16 v3, p1

    .line 28
    .line 29
    :goto_1
    const/4 v4, 0x0

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 33
    .line 34
    invoke-static {v2}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    move v2, v4

    .line 40
    :goto_2
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 41
    .line 42
    if-eqz v5, :cond_3

    .line 43
    .line 44
    if-ltz v2, :cond_a

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_3
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 48
    .line 49
    array-length v6, v6

    .line 50
    if-ge v2, v6, :cond_a

    .line 51
    .line 52
    :goto_3
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 53
    .line 54
    aget-object v14, v6, v2

    .line 55
    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    move v5, v4

    .line 59
    goto :goto_4

    .line 60
    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    :goto_4
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 65
    .line 66
    const-string v7, "Required value was null."

    .line 67
    .line 68
    if-eqz v6, :cond_6

    .line 69
    .line 70
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 79
    .line 80
    move/from16 v9, p2

    .line 81
    .line 82
    invoke-interface {v6, v7, v9, v8}, Landroidx/compose/ui/Alignment$Horizontal;->align(IILandroidx/compose/ui/unit/LayoutDirection;)I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    invoke-static {v6, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    move/from16 v8, p3

    .line 91
    .line 92
    :goto_5
    move-wide v12, v6

    .line 93
    goto :goto_6

    .line 94
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    .line 96
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_6
    move/from16 v9, p2

    .line 101
    .line 102
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 103
    .line 104
    if-eqz v6, :cond_9

    .line 105
    .line 106
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    move/from16 v8, p3

    .line 111
    .line 112
    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/Alignment$Vertical;->align(II)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v3, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 117
    .line 118
    .line 119
    move-result-wide v6

    .line 120
    goto :goto_5

    .line 121
    :goto_6
    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 122
    .line 123
    if-eqz v6, :cond_7

    .line 124
    .line 125
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    goto :goto_7

    .line 130
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    :goto_7
    add-int/2addr v3, v6

    .line 135
    new-instance v6, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    .line 136
    .line 137
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placeables:[Landroidx/compose/ui/layout/Placeable;

    .line 138
    .line 139
    aget-object v7, v7, v2

    .line 140
    .line 141
    invoke-interface {v7}, Landroidx/compose/ui/layout/Measured;->getParentData()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v15

    .line 145
    const/16 v16, 0x0

    .line 146
    .line 147
    move-object v11, v6

    .line 148
    invoke-direct/range {v11 .. v16}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;-><init>(JLandroidx/compose/ui/layout/Placeable;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v10, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->reverseLayout:Z

    .line 155
    .line 156
    if-eqz v5, :cond_8

    .line 157
    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 165
    .line 166
    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v1

    .line 170
    :cond_a
    new-instance v15, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 171
    .line 172
    iget v3, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->index:I

    .line 173
    .line 174
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->key:Ljava/lang/Object;

    .line 175
    .line 176
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->size:I

    .line 177
    .line 178
    iget v7, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->sizeWithSpacings:I

    .line 179
    .line 180
    if-nez v5, :cond_b

    .line 181
    .line 182
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_b
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 186
    .line 187
    :goto_8
    neg-int v8, v2

    .line 188
    if-nez v5, :cond_c

    .line 189
    .line 190
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->afterContentPadding:I

    .line 191
    .line 192
    goto :goto_9

    .line 193
    :cond_c
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->beforeContentPadding:I

    .line 194
    .line 195
    :goto_9
    add-int v9, v1, v2

    .line 196
    .line 197
    iget-boolean v11, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->isVertical:Z

    .line 198
    .line 199
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 200
    .line 201
    iget-wide v13, v0, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->visualOffset:J

    .line 202
    .line 203
    const/16 v16, 0x0

    .line 204
    .line 205
    move-object v1, v15

    .line 206
    move/from16 v2, p1

    .line 207
    .line 208
    move v5, v6

    .line 209
    move v6, v7

    .line 210
    move v7, v8

    .line 211
    move v8, v9

    .line 212
    move v9, v11

    .line 213
    move-object v11, v12

    .line 214
    move-wide v12, v13

    .line 215
    move-object/from16 v14, v16

    .line 216
    .line 217
    invoke-direct/range {v1 .. v14}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;-><init>(IILjava/lang/Object;IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 218
    .line 219
    .line 220
    return-object v15
.end method
