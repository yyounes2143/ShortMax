.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final isVertical:Z

.field private keyToIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final positionedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slotsPerLine:I

.field private viewportEndItemIndex:I

.field private viewportEndItemNotVisiblePartSize:I

.field private viewportStartItemIndex:I

.field private viewportStartItemNotVisiblePartSize:I


# direct methods
.method public constructor <init>(Lgt/g0;Z)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lgt/g0;

    .line 10
    .line 11
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 28
    .line 29
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 30
    .line 31
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 37
    .line 38
    return-void
.end method

.method public static final synthetic access$isVertical$p(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 2
    .line 3
    return p0
.end method

.method private final calculateExpectedOffset-tGxSNXI(IIIJZII)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 8
    .line 9
    if-nez p6, :cond_1

    .line 10
    .line 11
    if-ge v2, p1, :cond_0

    .line 12
    .line 13
    :goto_0
    move v2, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v2, v0

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    if-le v2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :goto_1
    if-nez p6, :cond_2

    .line 21
    .line 22
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 23
    .line 24
    if-le p6, p1, :cond_3

    .line 25
    .line 26
    :goto_2
    move v0, v1

    .line 27
    goto :goto_3

    .line 28
    :cond_2
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 29
    .line 30
    if-ge p6, p1, :cond_3

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 34
    .line 35
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 36
    .line 37
    sub-int/2addr p1, p2

    .line 38
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 43
    .line 44
    add-int/2addr p1, p2

    .line 45
    sub-int/2addr p1, v1

    .line 46
    div-int/2addr p1, p2

    .line 47
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 48
    .line 49
    add-int/2addr p7, p2

    .line 50
    sub-int/2addr p1, v1

    .line 51
    mul-int/2addr p3, p1

    .line 52
    add-int/2addr p7, p3

    .line 53
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    add-int p8, p7, p1

    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_4
    if-eqz v0, :cond_5

    .line 61
    .line 62
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 63
    .line 64
    sub-int/2addr p6, p1

    .line 65
    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 70
    .line 71
    add-int/2addr p1, p6

    .line 72
    sub-int/2addr p1, v1

    .line 73
    div-int/2addr p1, p6

    .line 74
    iget p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 75
    .line 76
    sub-int/2addr p6, p2

    .line 77
    sub-int/2addr p1, v1

    .line 78
    mul-int/2addr p3, p1

    .line 79
    sub-int/2addr p6, p3

    .line 80
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    add-int p8, p6, p1

    .line 85
    .line 86
    :cond_5
    :goto_4
    return p8

    .line 87
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 88
    .line 89
    const-string p2, "Failed requirement."

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :goto_0
    return p1
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceablesCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-le v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/List;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceablesCount()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ge v1, v2, :cond_1

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v6, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    sub-int/2addr v9, v10

    .line 71
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    sub-int/2addr v4, v5

    .line 80
    invoke-static {v9, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-direct {v6, v4, v5, v1, v3}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/4 v4, 0x0

    .line 104
    :goto_2
    if-ge v4, v2, :cond_3

    .line 105
    .line 106
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    add-int/2addr v10, v11

    .line 129
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    add-int/2addr v6, v7

    .line 138
    invoke-static {v10, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 139
    .line 140
    .line 141
    move-result-wide v6

    .line 142
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceableOffset-nOcc-ac()J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->setMainAxisSize(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-nez v6, :cond_2

    .line 162
    .line 163
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 168
    .line 169
    .line 170
    move-result v11

    .line 171
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    sub-int/2addr v11, v12

    .line 176
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    sub-int/2addr v8, v6

    .line 185
    invoke-static {v11, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 186
    .line 187
    .line 188
    move-result-wide v6

    .line 189
    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->setTargetOffset--gyyYBs(J)V

    .line 190
    .line 191
    .line 192
    if-eqz v10, :cond_2

    .line 193
    .line 194
    const/4 v6, 0x1

    .line 195
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->setInProgress(Z)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v6, p0

    .line 199
    .line 200
    iget-object v11, v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lgt/g0;

    .line 201
    .line 202
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    .line 203
    .line 204
    invoke-direct {v14, v5, v10, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lrs/c;)V

    .line 205
    .line 206
    .line 207
    const/4 v15, 0x3

    .line 208
    const/16 v16, 0x0

    .line 209
    .line 210
    const/4 v12, 0x0

    .line 211
    const/4 v13, 0x0

    .line 212
    invoke-static/range {v11 .. v16}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_2
    move-object/from16 v6, p0

    .line 217
    .line 218
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_3
    move-object/from16 v6, p0

    .line 222
    .line 223
    return-void
.end method

.method private final toOffset-Bjo55l4(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move v2, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    move p1, v1

    .line 12
    :cond_1
    invoke-static {v2, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method


# virtual methods
.method public final getAnimatedOffset-YT5a7pE(Ljava/lang/Object;IIIJ)J
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-wide p5

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    invoke-virtual {p5}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p5

    .line 35
    check-cast p5, Landroidx/compose/ui/unit/IntOffset;

    .line 36
    .line 37
    invoke-virtual {p5}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    .line 38
    .line 39
    .line 40
    move-result-wide p5

    .line 41
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    add-int/2addr v2, v3

    .line 54
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 55
    .line 56
    .line 57
    move-result p5

    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 59
    .line 60
    .line 61
    move-result p6

    .line 62
    add-int/2addr p5, p6

    .line 63
    invoke-static {v2, p5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 64
    .line 65
    .line 66
    move-result-wide p5

    .line 67
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    add-int/2addr p1, v4

    .line 84
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    add-int/2addr v0, v1

    .line 93
    invoke-static {p1, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getInProgress()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ge p1, p3, :cond_1

    .line 108
    .line 109
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-lt p1, p3, :cond_2

    .line 114
    .line 115
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-le p1, p4, :cond_3

    .line 120
    .line 121
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-le p1, p4, :cond_3

    .line 126
    .line 127
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->scope:Lgt/g0;

    .line 128
    .line 129
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$getAnimatedOffset$1;

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$getAnimatedOffset$1;-><init>(Landroidx/compose/foundation/lazy/grid/PlaceableInfo;Lrs/c;)V

    .line 133
    .line 134
    .line 135
    const/4 v4, 0x3

    .line 136
    const/4 v5, 0x0

    .line 137
    const/4 v1, 0x0

    .line 138
    const/4 v2, 0x0

    .line 139
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 140
    .line 141
    .line 142
    :cond_3
    return-wide p5
.end method

.method public final onMeasured(IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;)V
    .locals 28
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;",
            ")V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    const/4 v11, 0x1

    const-string v0, "positionedItems"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measuredItemProvider"

    move-object/from16 v12, p7

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v13, 0x0

    move v1, v13

    :goto_0
    if-ge v1, v0, :cond_1d

    .line 2
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 3
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 4
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getHasAnimations()Z

    move-result v2

    if-eqz v2, :cond_1c

    move/from16 v2, p4

    .line 5
    iput v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->slotsPerLine:I

    .line 6
    iget-boolean v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    if-eqz v0, :cond_0

    move/from16 v14, p3

    goto :goto_1

    :cond_0
    move/from16 v14, p2

    :goto_1
    move/from16 v3, p1

    if-eqz p5, :cond_1

    neg-int v0, v3

    goto :goto_2

    :cond_1
    move v0, v3

    .line 7
    :goto_2
    invoke-direct {v9, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->toOffset-Bjo55l4(I)J

    move-result-wide v15

    .line 8
    invoke-static/range {p6 .. p6}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 9
    invoke-static/range {p6 .. p6}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 10
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v13

    :goto_3
    if-ge v1, v0, :cond_3

    .line 11
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 13
    iget-object v3, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    if-nez v3, :cond_2

    goto :goto_4

    .line 14
    :cond_2
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setIndex(I)V

    .line 15
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getCrossAxisSize()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisSize(I)V

    .line 16
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getCrossAxisOffset()I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisOffset(I)V

    :goto_4
    add-int/2addr v1, v11

    goto :goto_3

    .line 17
    :cond_3
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1;

    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$averageLineMainAxisSize$1$lineOf$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Ljava/util/List;)V

    move v1, v13

    move v2, v1

    move v3, v2

    .line 18
    :goto_5
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    add-int/2addr v1, v11

    goto :goto_5

    :cond_4
    move v5, v13

    .line 20
    :goto_6
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v4, :cond_5

    .line 21
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSizeWithSpacings()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v11

    goto :goto_6

    :cond_5
    add-int/2addr v2, v5

    add-int/2addr v3, v11

    goto :goto_5

    .line 22
    :cond_6
    div-int v19, v2, v3

    .line 23
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 24
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    move v7, v13

    :goto_7
    if-ge v7, v8, :cond_e

    .line 25
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 26
    move-object v6, v0

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    .line 27
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    if-nez v0, :cond_c

    .line 29
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getHasAnimations()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    new-instance v4, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 31
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    .line 32
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getCrossAxisSize()I

    move-result v1

    .line 33
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getCrossAxisOffset()I

    move-result v2

    .line 34
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;-><init>(III)V

    .line 35
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 36
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceableOffset-nOcc-ac()J

    move-result-wide v2

    if-nez v0, :cond_7

    .line 37
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    move-wide/from16 v21, v2

    move-object/from16 p1, v4

    move-object/from16 p4, v6

    move/from16 v26, v7

    move/from16 v27, v8

    goto :goto_a

    :cond_7
    if-nez p5, :cond_8

    .line 38
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v1

    :goto_8
    move/from16 v20, v1

    goto :goto_9

    .line 39
    :cond_8
    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v1

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_8

    .line 40
    :goto_9
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSizeWithSpacings()I

    move-result v5

    .line 41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move-wide/from16 v21, v2

    move v2, v5

    move/from16 v3, v19

    move-object/from16 p1, v4

    move-wide v4, v15

    move-object/from16 p4, v6

    move/from16 v6, p5

    move/from16 v26, v7

    move v7, v14

    move/from16 v27, v8

    move/from16 v8, v20

    .line 42
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->calculateExpectedOffset-tGxSNXI(IIIJZII)I

    move-result v0

    .line 43
    :goto_a
    iget-boolean v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    if-eqz v1, :cond_9

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/4 v1, 0x0

    move-wide/from16 v20, v21

    move/from16 v22, v1

    move/from16 v23, v0

    .line 44
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-wide/from16 v20, v21

    move/from16 v22, v0

    .line 45
    invoke-static/range {v20 .. v25}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 46
    :goto_b
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceablesCount()I

    move-result v2

    move v3, v13

    :goto_c
    if-ge v3, v2, :cond_a

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v4

    .line 48
    new-instance v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    move-object/from16 v6, p4

    .line 49
    invoke-virtual {v6, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSize(I)I

    move-result v7

    const/4 v8, 0x0

    .line 50
    invoke-direct {v5, v0, v1, v7, v8}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 51
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    add-int/2addr v3, v11

    goto :goto_c

    :cond_a
    move-object/from16 v6, p4

    .line 53
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-direct {v9, v6, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    goto :goto_d

    :cond_b
    move/from16 v26, v7

    move/from16 v27, v8

    goto :goto_d

    :cond_c
    move/from16 v26, v7

    move/from16 v27, v8

    .line 55
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getHasAnimations()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 56
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 59
    invoke-direct {v9, v6, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    goto :goto_d

    .line 60
    :cond_d
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v7, v26, 0x1

    move/from16 v8, v27

    goto/16 :goto_7

    :cond_e
    if-nez p5, :cond_f

    .line 61
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 62
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 63
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 64
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    .line 65
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getLineMainAxisSizeWithSpacings()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v14

    .line 66
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    goto :goto_f

    .line 67
    :cond_f
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 68
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    sub-int v0, v14, v0

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getLineMainAxisSize()I

    move-result v1

    sub-int/2addr v0, v1

    .line 69
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 70
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getIndex()I

    move-result v0

    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 71
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    move-result-wide v0

    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v0

    neg-int v0, v0

    .line 72
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getLineMainAxisSizeWithSpacings()I

    move-result v1

    .line 73
    iget-boolean v2, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    if-eqz v2, :cond_10

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v2

    goto :goto_e

    :cond_10
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    :goto_e
    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 74
    iput v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 75
    :goto_f
    iget-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 76
    :cond_11
    :goto_10
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 77
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    iget-object v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 80
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v1

    .line 81
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 82
    invoke-virtual {v8, v1, v2}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 83
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 84
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v13

    :goto_11
    if-ge v3, v2, :cond_13

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 87
    check-cast v4, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 88
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    move-result-wide v5

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    move-result-wide v20

    .line 89
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v18

    add-int v7, v7, v18

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v7, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 90
    invoke-direct {v9, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v7

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getMainAxisSize()I

    move-result v4

    add-int/2addr v7, v4

    if-lez v7, :cond_12

    .line 91
    invoke-direct {v9, v5, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    move-result v4

    if-ge v4, v14, :cond_12

    move v1, v11

    goto :goto_12

    :cond_12
    add-int/2addr v3, v11

    goto :goto_11

    :cond_13
    move v1, v13

    .line 92
    :goto_12
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v4, v13

    :goto_13
    if-ge v4, v3, :cond_15

    .line 94
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 95
    check-cast v5, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;

    .line 96
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/PlaceableInfo;->getInProgress()Z

    move-result v5

    if-eqz v5, :cond_14

    move v2, v11

    goto :goto_14

    :cond_14
    add-int/2addr v4, v11

    goto :goto_13

    :cond_15
    move v2, v13

    :goto_14
    if-nez v1, :cond_16

    if-eqz v2, :cond_1a

    :cond_16
    if-eqz v0, :cond_1a

    .line 97
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getPlaceables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_17

    .line 98
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/ItemIndex;->constructor-impl(I)I

    move-result v2

    .line 99
    iget-boolean v1, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->isVertical:Z

    if-eqz v1, :cond_18

    .line 100
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v3

    :goto_15
    move-wide v4, v3

    goto :goto_16

    .line 101
    :cond_18
    sget-object v1, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v3

    goto :goto_15

    :goto_16
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p7

    .line 102
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->getAndMeasure-ednRnyU$default(Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;

    move-result-object v20

    .line 103
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v3, v19

    move-wide v4, v15

    move/from16 v6, p5

    move v7, v14

    move-object/from16 p1, v8

    move v8, v14

    .line 105
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->calculateExpectedOffset-tGxSNXI(IIIJZII)I

    move-result v0

    if-eqz p5, :cond_19

    sub-int v0, v14, v0

    .line 106
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getMainAxisSize()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_19
    move/from16 v21, v0

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisOffset()I

    move-result v22

    const/16 v26, -0x1

    .line 108
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->getMainAxisSize()I

    move-result v27

    const/16 v25, -0x1

    move/from16 v23, p2

    move/from16 v24, p3

    .line 109
    invoke-virtual/range {v20 .. v27}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItem;->position(IIIIIII)Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;

    move-result-object v0

    .line 110
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    .line 111
    invoke-direct {v9, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;Landroidx/compose/foundation/lazy/grid/ItemInfo;)V

    goto/16 :goto_10

    .line 112
    :cond_1a
    :goto_17
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_10

    .line 113
    :cond_1b
    invoke-virtual/range {p7 .. p7}, Landroidx/compose/foundation/lazy/grid/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    return-void

    :cond_1c
    move/from16 v3, p1

    move/from16 v2, p4

    add-int/2addr v1, v11

    goto/16 :goto_0

    .line 114
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->reset()V

    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemIndex:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemIndex:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 21
    .line 22
    return-void
.end method
