.class public final Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyListItemPlacementAnimator.kt"


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
            "Landroidx/compose/foundation/lazy/ItemInfo;",
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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lgt/g0;

    .line 10
    .line 11
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 25
    .line 26
    const/4 p1, -0x1

    .line 27
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 28
    .line 29
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 30
    .line 31
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 37
    .line 38
    return-void
.end method

.method private final calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJZII",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 4
    .line 5
    if-nez p6, :cond_1

    .line 6
    .line 7
    if-ge v2, p1, :cond_0

    .line 8
    .line 9
    :goto_0
    move v2, v1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    move v2, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    if-le v2, p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    iget v3, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 17
    .line 18
    if-nez p6, :cond_3

    .line 19
    .line 20
    if-le v3, p1, :cond_2

    .line 21
    .line 22
    :goto_2
    move v3, v1

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    move v3, v0

    .line 25
    goto :goto_3

    .line 26
    :cond_3
    if-ge v3, p1, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :goto_3
    if-eqz v2, :cond_6

    .line 30
    .line 31
    if-nez p6, :cond_4

    .line 32
    .line 33
    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 34
    .line 35
    add-int/2addr p2, v1

    .line 36
    invoke-static {p2, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_4

    .line 41
    :cond_4
    add-int/2addr p1, v1

    .line 42
    iget p2, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 43
    .line 44
    invoke-static {p1, p2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_4
    invoke-virtual {p1}, Lkotlin/ranges/d;->c()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1}, Lkotlin/ranges/d;->d()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-gt p2, p1, :cond_5

    .line 57
    .line 58
    :goto_5
    invoke-direct {p0, p9, p2, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getItemSize(Ljava/util/List;II)I

    .line 59
    .line 60
    .line 61
    move-result p6

    .line 62
    add-int/2addr v0, p6

    .line 63
    if-eq p2, p1, :cond_5

    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_5
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 69
    .line 70
    add-int/2addr p7, p1

    .line 71
    add-int/2addr p7, v0

    .line 72
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    add-int p8, p7, p1

    .line 77
    .line 78
    goto :goto_8

    .line 79
    :cond_6
    if-eqz v3, :cond_9

    .line 80
    .line 81
    if-nez p6, :cond_7

    .line 82
    .line 83
    add-int/2addr p1, v1

    .line 84
    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 85
    .line 86
    invoke-static {p1, p6}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_6

    .line 91
    :cond_7
    iget p6, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 92
    .line 93
    add-int/2addr p6, v1

    .line 94
    invoke-static {p6, p1}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_6
    invoke-virtual {p1}, Lkotlin/ranges/d;->c()I

    .line 99
    .line 100
    .line 101
    move-result p6

    .line 102
    invoke-virtual {p1}, Lkotlin/ranges/d;->d()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-gt p6, p1, :cond_8

    .line 107
    .line 108
    :goto_7
    invoke-direct {p0, p9, p6, p3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getItemSize(Ljava/util/List;II)I

    .line 109
    .line 110
    .line 111
    move-result p7

    .line 112
    add-int/2addr p2, p7

    .line 113
    if-eq p6, p1, :cond_8

    .line 114
    .line 115
    add-int/lit8 p6, p6, 0x1

    .line 116
    .line 117
    goto :goto_7

    .line 118
    :cond_8
    iget p1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 119
    .line 120
    sub-int/2addr p1, p2

    .line 121
    invoke-direct {p0, p4, p5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    add-int p8, p1, p2

    .line 126
    .line 127
    :cond_9
    :goto_8
    return p8
.end method

.method private final getItemSize(Ljava/util/List;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;II)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p2, v0, :cond_4

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-le p2, v0, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sub-int v0, p2, v0

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    sub-int/2addr v1, p2

    .line 55
    if-ge v0, v1, :cond_2

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    const/4 v1, 0x0

    .line 62
    :goto_0
    if-ge v1, v0, :cond_4

    .line 63
    .line 64
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-ne v3, p2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    return p1

    .line 81
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-gt v2, p2, :cond_4

    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :goto_1
    const/4 v1, -0x1

    .line 95
    if-ge v1, v0, :cond_4

    .line 96
    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-ne v2, p2, :cond_3

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    return p1

    .line 114
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-lt v1, p2, :cond_4

    .line 119
    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_2
    return p3
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

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

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-le v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v6, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 57
    .line 58
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

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
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-direct {v6, v4, v5, v1, v3}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 113
    .line 114
    .line 115
    move-result-wide v6

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

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
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 143
    .line 144
    .line 145
    move-result-wide v8

    .line 146
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    invoke-virtual {v5, v10}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setSize(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

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
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

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
    invoke-virtual {v5, v6, v7}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setTargetOffset--gyyYBs(J)V

    .line 190
    .line 191
    .line 192
    if-eqz v10, :cond_2

    .line 193
    .line 194
    const/4 v6, 0x1

    .line 195
    invoke-virtual {v5, v6}, Landroidx/compose/foundation/lazy/PlaceableInfo;->setInProgress(Z)V

    .line 196
    .line 197
    .line 198
    move-object/from16 v6, p0

    .line 199
    .line 200
    iget-object v11, v6, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lgt/g0;

    .line 201
    .line 202
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;

    .line 203
    .line 204
    invoke-direct {v14, v5, v10, v3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$startAnimationsIfNeeded$1$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Landroidx/compose/animation/core/FiniteAnimationSpec;Lrs/c;)V

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
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-wide p5

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

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
    check-cast p2, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getAnimatedOffset()Landroidx/compose/animation/core/Animatable;

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
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

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
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

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
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getInProgress()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-ge p1, p3, :cond_1

    .line 108
    .line 109
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-lt p1, p3, :cond_2

    .line 114
    .line 115
    :cond_1
    invoke-direct {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-le p1, p4, :cond_3

    .line 120
    .line 121
    invoke-direct {p0, p5, p6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-le p1, p4, :cond_3

    .line 126
    .line 127
    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->scope:Lgt/g0;

    .line 128
    .line 129
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;

    .line 130
    .line 131
    const/4 p1, 0x0

    .line 132
    invoke-direct {v3, p2, p1}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$getAnimatedOffset$1;-><init>(Landroidx/compose/foundation/lazy/PlaceableInfo;Lrs/c;)V

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

.method public final onMeasured(IIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;)V
    .locals 32
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v11, p5

    .line 4
    .line 5
    move-object/from16 v12, p6

    .line 6
    .line 7
    const/4 v13, 0x1

    .line 8
    const-string v0, "positionedItems"

    .line 9
    .line 10
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "itemProvider"

    .line 14
    .line 15
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v14, 0x0

    .line 23
    move v1, v14

    .line 24
    :goto_0
    if-ge v1, v0, :cond_19

    .line 25
    .line 26
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 31
    .line 32
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_18

    .line 37
    .line 38
    iget-boolean v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    move/from16 v15, p3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    move/from16 v15, p2

    .line 46
    .line 47
    :goto_1
    move/from16 v2, p1

    .line 48
    .line 49
    if-eqz p4, :cond_1

    .line 50
    .line 51
    neg-int v0, v2

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    move v0, v2

    .line 54
    :goto_2
    invoke-direct {v10, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->toOffset-Bjo55l4(I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v16

    .line 58
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object/from16 v18, v0

    .line 63
    .line 64
    check-cast v18, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 65
    .line 66
    invoke-static/range {p5 .. p5}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object/from16 v19, v0

    .line 71
    .line 72
    check-cast v19, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 73
    .line 74
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    move v1, v14

    .line 79
    move v2, v1

    .line 80
    :goto_3
    if-ge v1, v0, :cond_3

    .line 81
    .line 82
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 87
    .line 88
    iget-object v4, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 89
    .line 90
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 99
    .line 100
    if-nez v4, :cond_2

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    invoke-virtual {v4, v5}, Landroidx/compose/foundation/lazy/ItemInfo;->setIndex(I)V

    .line 108
    .line 109
    .line 110
    :goto_4
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    add-int/2addr v2, v3

    .line 115
    add-int/2addr v1, v13

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    div-int v20, v2, v0

    .line 122
    .line 123
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 126
    .line 127
    .line 128
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    move v8, v14

    .line 133
    :goto_5
    if-ge v8, v9, :cond_c

    .line 134
    .line 135
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    move-object v7, v0

    .line 140
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 141
    .line 142
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 143
    .line 144
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 152
    .line 153
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 162
    .line 163
    if-nez v0, :cond_a

    .line 164
    .line 165
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    new-instance v6, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 172
    .line 173
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-direct {v6, v0}, Landroidx/compose/foundation/lazy/ItemInfo;-><init>(I)V

    .line 178
    .line 179
    .line 180
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 181
    .line 182
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, Ljava/lang/Integer;

    .line 191
    .line 192
    invoke-virtual {v7, v14}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 193
    .line 194
    .line 195
    move-result-wide v4

    .line 196
    invoke-virtual {v7, v14}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    .line 197
    .line 198
    .line 199
    move-result v21

    .line 200
    if-nez v0, :cond_4

    .line 201
    .line 202
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    move-wide/from16 v27, v4

    .line 207
    .line 208
    move-object/from16 p1, v6

    .line 209
    .line 210
    move-object/from16 v29, v7

    .line 211
    .line 212
    move/from16 v30, v8

    .line 213
    .line 214
    move/from16 v31, v9

    .line 215
    .line 216
    goto :goto_9

    .line 217
    :cond_4
    if-nez p4, :cond_5

    .line 218
    .line 219
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    :goto_6
    move/from16 v22, v1

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_5
    invoke-direct {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    sub-int/2addr v1, v2

    .line 235
    add-int v1, v1, v21

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :goto_7
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    move-object/from16 v0, p0

    .line 247
    .line 248
    move/from16 v3, v20

    .line 249
    .line 250
    move-wide/from16 v27, v4

    .line 251
    .line 252
    move-wide/from16 v4, v16

    .line 253
    .line 254
    move-object/from16 p1, v6

    .line 255
    .line 256
    move/from16 v6, p4

    .line 257
    .line 258
    move-object/from16 v29, v7

    .line 259
    .line 260
    move v7, v15

    .line 261
    move/from16 v30, v8

    .line 262
    .line 263
    move/from16 v8, v22

    .line 264
    .line 265
    move/from16 v31, v9

    .line 266
    .line 267
    move-object/from16 v9, p5

    .line 268
    .line 269
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    if-eqz p4, :cond_6

    .line 274
    .line 275
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    sub-int v1, v1, v21

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_6
    move v1, v14

    .line 283
    :goto_8
    add-int/2addr v0, v1

    .line 284
    :goto_9
    iget-boolean v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->isVertical:Z

    .line 285
    .line 286
    if-eqz v1, :cond_7

    .line 287
    .line 288
    const/16 v25, 0x1

    .line 289
    .line 290
    const/16 v26, 0x0

    .line 291
    .line 292
    const/16 v23, 0x0

    .line 293
    .line 294
    move-wide/from16 v21, v27

    .line 295
    .line 296
    move/from16 v24, v0

    .line 297
    .line 298
    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    .line 299
    .line 300
    .line 301
    move-result-wide v0

    .line 302
    goto :goto_a

    .line 303
    :cond_7
    const/16 v25, 0x2

    .line 304
    .line 305
    const/16 v26, 0x0

    .line 306
    .line 307
    const/16 v24, 0x0

    .line 308
    .line 309
    move-wide/from16 v21, v27

    .line 310
    .line 311
    move/from16 v23, v0

    .line 312
    .line 313
    invoke-static/range {v21 .. v26}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    :goto_a
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    move v3, v14

    .line 322
    :goto_b
    if-ge v3, v2, :cond_8

    .line 323
    .line 324
    move-object/from16 v4, v29

    .line 325
    .line 326
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 327
    .line 328
    .line 329
    move-result-wide v5

    .line 330
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 331
    .line 332
    .line 333
    move-result v7

    .line 334
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 335
    .line 336
    .line 337
    move-result v8

    .line 338
    sub-int/2addr v7, v8

    .line 339
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 340
    .line 341
    .line 342
    move-result v5

    .line 343
    invoke-static/range {v27 .. v28}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    sub-int/2addr v5, v6

    .line 348
    invoke-static {v7, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 349
    .line 350
    .line 351
    move-result-wide v5

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    new-instance v8, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 357
    .line 358
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 359
    .line 360
    .line 361
    move-result v9

    .line 362
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 363
    .line 364
    .line 365
    move-result v21

    .line 366
    add-int v9, v9, v21

    .line 367
    .line 368
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 369
    .line 370
    .line 371
    move-result v21

    .line 372
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    add-int v5, v21, v5

    .line 377
    .line 378
    invoke-static {v9, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 379
    .line 380
    .line 381
    move-result-wide v5

    .line 382
    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(I)I

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    const/4 v14, 0x0

    .line 387
    invoke-direct {v8, v5, v6, v9, v14}, Landroidx/compose/foundation/lazy/PlaceableInfo;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 394
    .line 395
    add-int/2addr v3, v13

    .line 396
    const/4 v14, 0x0

    .line 397
    goto :goto_b

    .line 398
    :cond_8
    move-object/from16 v4, v29

    .line 399
    .line 400
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 401
    .line 402
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    move-object/from16 v2, p1

    .line 407
    .line 408
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    invoke-direct {v10, v4, v2}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    .line 412
    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_9
    move/from16 v30, v8

    .line 416
    .line 417
    move/from16 v31, v9

    .line 418
    .line 419
    goto :goto_c

    .line 420
    :cond_a
    move-object v4, v7

    .line 421
    move/from16 v30, v8

    .line 422
    .line 423
    move/from16 v31, v9

    .line 424
    .line 425
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getHasAnimations()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_b

    .line 430
    .line 431
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 432
    .line 433
    .line 434
    move-result-wide v1

    .line 435
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 436
    .line 437
    .line 438
    move-result v3

    .line 439
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 440
    .line 441
    .line 442
    move-result v5

    .line 443
    add-int/2addr v3, v5

    .line 444
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 449
    .line 450
    .line 451
    move-result v2

    .line 452
    add-int/2addr v1, v2

    .line 453
    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 454
    .line 455
    .line 456
    move-result-wide v1

    .line 457
    invoke-virtual {v0, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 458
    .line 459
    .line 460
    invoke-direct {v10, v4, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    .line 461
    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_b
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 465
    .line 466
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    :goto_c
    add-int/lit8 v8, v30, 0x1

    .line 474
    .line 475
    move/from16 v9, v31

    .line 476
    .line 477
    const/4 v14, 0x0

    .line 478
    goto/16 :goto_5

    .line 479
    .line 480
    :cond_c
    if-nez p4, :cond_d

    .line 481
    .line 482
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 487
    .line 488
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 493
    .line 494
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 499
    .line 500
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 505
    .line 506
    .line 507
    move-result v1

    .line 508
    add-int/2addr v0, v1

    .line 509
    sub-int/2addr v0, v15

    .line 510
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 511
    .line 512
    goto :goto_d

    .line 513
    :cond_d
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 518
    .line 519
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    sub-int v0, v15, v0

    .line 524
    .line 525
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    sub-int/2addr v0, v1

    .line 530
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 531
    .line 532
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 533
    .line 534
    .line 535
    move-result v0

    .line 536
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 537
    .line 538
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    neg-int v0, v0

    .line 543
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSizeWithSpacings()I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getSize()I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    sub-int/2addr v1, v2

    .line 552
    add-int/2addr v0, v1

    .line 553
    iput v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 554
    .line 555
    :goto_d
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 556
    .line 557
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 562
    .line 563
    .line 564
    move-result-object v14

    .line 565
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 566
    .line 567
    .line 568
    move-result v0

    .line 569
    if-eqz v0, :cond_17

    .line 570
    .line 571
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Ljava/util/Map$Entry;

    .line 576
    .line 577
    iget-object v1, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->positionedKeys:Ljava/util/Set;

    .line 578
    .line 579
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    if-nez v1, :cond_16

    .line 588
    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    move-object v9, v1

    .line 594
    check-cast v9, Landroidx/compose/foundation/lazy/ItemInfo;

    .line 595
    .line 596
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 597
    .line 598
    .line 599
    move-result-wide v1

    .line 600
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 601
    .line 602
    .line 603
    move-result v3

    .line 604
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    add-int/2addr v3, v4

    .line 609
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 610
    .line 611
    .line 612
    move-result v1

    .line 613
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 614
    .line 615
    .line 616
    move-result v2

    .line 617
    add-int/2addr v1, v2

    .line 618
    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 619
    .line 620
    .line 621
    move-result-wide v1

    .line 622
    invoke-virtual {v9, v1, v2}, Landroidx/compose/foundation/lazy/ItemInfo;->setNotAnimatableDelta--gyyYBs(J)V

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    check-cast v0, Ljava/lang/Integer;

    .line 638
    .line 639
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    const/4 v3, 0x0

    .line 648
    :goto_f
    if-ge v3, v2, :cond_f

    .line 649
    .line 650
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    check-cast v4, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 655
    .line 656
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getTargetOffset-nOcc-ac()J

    .line 657
    .line 658
    .line 659
    move-result-wide v5

    .line 660
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getNotAnimatableDelta-nOcc-ac()J

    .line 661
    .line 662
    .line 663
    move-result-wide v7

    .line 664
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 665
    .line 666
    .line 667
    move-result v18

    .line 668
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 669
    .line 670
    .line 671
    move-result v19

    .line 672
    add-int v13, v18, v19

    .line 673
    .line 674
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 675
    .line 676
    .line 677
    move-result v5

    .line 678
    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 679
    .line 680
    .line 681
    move-result v6

    .line 682
    add-int/2addr v5, v6

    .line 683
    invoke-static {v13, v5}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 684
    .line 685
    .line 686
    move-result-wide v5

    .line 687
    invoke-direct {v10, v5, v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 688
    .line 689
    .line 690
    move-result v7

    .line 691
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getSize()I

    .line 692
    .line 693
    .line 694
    move-result v4

    .line 695
    add-int/2addr v7, v4

    .line 696
    if-lez v7, :cond_e

    .line 697
    .line 698
    invoke-direct {v10, v5, v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getMainAxis--gyyYBs(J)I

    .line 699
    .line 700
    .line 701
    move-result v4

    .line 702
    if-ge v4, v15, :cond_e

    .line 703
    .line 704
    const/4 v4, 0x1

    .line 705
    goto :goto_10

    .line 706
    :cond_e
    const/4 v4, 0x1

    .line 707
    add-int/2addr v3, v4

    .line 708
    move v13, v4

    .line 709
    goto :goto_f

    .line 710
    :cond_f
    const/4 v4, 0x0

    .line 711
    :goto_10
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 712
    .line 713
    .line 714
    move-result-object v1

    .line 715
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 716
    .line 717
    .line 718
    move-result v2

    .line 719
    const/4 v3, 0x0

    .line 720
    :goto_11
    if-ge v3, v2, :cond_11

    .line 721
    .line 722
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    check-cast v5, Landroidx/compose/foundation/lazy/PlaceableInfo;

    .line 727
    .line 728
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/PlaceableInfo;->getInProgress()Z

    .line 729
    .line 730
    .line 731
    move-result v5

    .line 732
    if-eqz v5, :cond_10

    .line 733
    .line 734
    const/4 v1, 0x1

    .line 735
    goto :goto_12

    .line 736
    :cond_10
    const/4 v5, 0x1

    .line 737
    add-int/2addr v3, v5

    .line 738
    goto :goto_11

    .line 739
    :cond_11
    const/4 v1, 0x0

    .line 740
    :goto_12
    if-nez v4, :cond_13

    .line 741
    .line 742
    if-eqz v1, :cond_12

    .line 743
    .line 744
    goto :goto_14

    .line 745
    :cond_12
    :goto_13
    move/from16 v3, p2

    .line 746
    .line 747
    move/from16 v4, p3

    .line 748
    .line 749
    goto :goto_16

    .line 750
    :cond_13
    :goto_14
    if-eqz v0, :cond_12

    .line 751
    .line 752
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/ItemInfo;->getPlaceables()Ljava/util/List;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    if-eqz v1, :cond_14

    .line 761
    .line 762
    goto :goto_13

    .line 763
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    invoke-static {v1}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    invoke-virtual {v12, v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 772
    .line 773
    .line 774
    move-result-object v13

    .line 775
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSizeWithSpacings()I

    .line 776
    .line 777
    .line 778
    move-result v2

    .line 779
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 780
    .line 781
    .line 782
    move-result v1

    .line 783
    move-object/from16 v0, p0

    .line 784
    .line 785
    move/from16 v3, v20

    .line 786
    .line 787
    move-wide/from16 v4, v16

    .line 788
    .line 789
    move/from16 v6, p4

    .line 790
    .line 791
    move v7, v15

    .line 792
    move v8, v15

    .line 793
    move-object v12, v9

    .line 794
    move-object/from16 v9, p5

    .line 795
    .line 796
    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->calculateExpectedOffset-diAxcj4(IIIJZIILjava/util/List;)I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    if-eqz p4, :cond_15

    .line 801
    .line 802
    sub-int v0, v15, v0

    .line 803
    .line 804
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    .line 805
    .line 806
    .line 807
    move-result v1

    .line 808
    sub-int/2addr v0, v1

    .line 809
    :cond_15
    move/from16 v3, p2

    .line 810
    .line 811
    move/from16 v4, p3

    .line 812
    .line 813
    invoke-virtual {v13, v0, v3, v4}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    .line 819
    .line 820
    invoke-direct {v10, v0, v12}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListPositionedItem;Landroidx/compose/foundation/lazy/ItemInfo;)V

    .line 821
    .line 822
    .line 823
    :goto_15
    move-object/from16 v12, p6

    .line 824
    .line 825
    const/4 v13, 0x1

    .line 826
    goto/16 :goto_e

    .line 827
    .line 828
    :goto_16
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V

    .line 829
    .line 830
    .line 831
    goto :goto_15

    .line 832
    :cond_16
    move/from16 v3, p2

    .line 833
    .line 834
    move/from16 v4, p3

    .line 835
    .line 836
    move-object/from16 v12, p6

    .line 837
    .line 838
    goto/16 :goto_e

    .line 839
    .line 840
    :cond_17
    invoke-virtual/range {p6 .. p6}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getKeyToIndexMap()Ljava/util/Map;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    iput-object v0, v10, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 845
    .line 846
    return-void

    .line 847
    :cond_18
    move/from16 v2, p1

    .line 848
    .line 849
    move/from16 v3, p2

    .line 850
    .line 851
    move/from16 v4, p3

    .line 852
    .line 853
    move v5, v13

    .line 854
    add-int/2addr v1, v5

    .line 855
    move-object/from16 v12, p6

    .line 856
    .line 857
    const/4 v14, 0x0

    .line 858
    goto/16 :goto_0

    .line 859
    .line 860
    :cond_19
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->reset()V

    .line 861
    .line 862
    .line 863
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

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
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyToIndexMap:Ljava/util/Map;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemIndex:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportStartItemNotVisiblePartSize:I

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemIndex:I

    .line 19
    .line 20
    iput v1, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->viewportEndItemNotVisiblePartSize:I

    .line 21
    .line 22
    return-void
.end method
