.class public final Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final column:I

.field private final hasAnimations:Z

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lineMainAxisSize:I

.field private final mainAxisSpacing:I

.field private final maxMainAxisOffset:I

.field private final minMainAxisOffset:I

.field private final offset:J

.field private final placeableOffset:J

.field private final placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final row:I

.field private final size:J

.field private final visualOffset:J

.field private final wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/Object;",
            "IIJIIIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->offset:J

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placeableOffset:J

    move v1, p5

    .line 5
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->index:I

    move-object v1, p6

    .line 6
    iput-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->key:Ljava/lang/Object;

    move v1, p7

    .line 7
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->row:I

    move v1, p8

    .line 8
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->column:I

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->size:J

    move/from16 v1, p11

    .line 10
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->lineMainAxisSize:I

    move/from16 v1, p12

    .line 11
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->mainAxisSpacing:I

    move/from16 v1, p13

    .line 12
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->minMainAxisOffset:I

    move/from16 v1, p14

    .line 13
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->maxMainAxisOffset:I

    move/from16 v1, p15

    .line 14
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->wrappers:Ljava/util/List;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    move-wide/from16 v1, p18

    .line 17
    iput-wide v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->visualOffset:J

    .line 18
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceablesCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 19
    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_1
    :goto_1
    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->hasAnimations:Z

    return-void
.end method

.method public synthetic constructor <init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p19}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;-><init>(JJILjava/lang/Object;IIJIIIIZLjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;J)V

    return-void
.end method

.method private final getMainAxis--gyyYBs(J)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

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

.method private final getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public final getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->wrappers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->getParentData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method public getColumn()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->column:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCrossAxisOffset()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getOffset-nOcc-ac()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method public final getHasAnimations()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->hasAnimations:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLineMainAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->lineMainAxisSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLineMainAxisSizeWithSpacings()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->mainAxisSpacing:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->lineMainAxisSize:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final getMainAxisSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->wrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p1

    return p1
.end method

.method public final getMainAxisSizeWithSpacings()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->mainAxisSpacing:I

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getSize-YbymL2g()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public getOffset-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPlaceableOffset-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placeableOffset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPlaceablesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->wrappers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getRow()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->row:I

    .line 2
    .line 3
    return v0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/layout/Placeable$PlacementScope;
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
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getPlaceablesCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_3

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->wrappers:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridPlaceableWrapper;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->minMainAxisOffset:I

    .line 26
    .line 27
    invoke-direct {p0, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int v10, v2, v3

    .line 32
    .line 33
    iget v11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->maxMainAxisOffset:I

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placementAnimator:Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-wide v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placeableOffset:J

    .line 48
    .line 49
    move v4, v1

    .line 50
    move v5, v10

    .line 51
    move v6, v11

    .line 52
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getAnimatedOffset-YT5a7pE(Ljava/lang/Object;IIIJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-wide v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->placeableOffset:J

    .line 58
    .line 59
    :goto_1
    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxis--gyyYBs(J)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-le v4, v10, :cond_2

    .line 64
    .line 65
    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->getMainAxis--gyyYBs(J)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-ge v4, v11, :cond_2

    .line 70
    .line 71
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->isVertical:Z

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    iget-wide v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->visualOffset:J

    .line 76
    .line 77
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    add-int/2addr v6, v7

    .line 86
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    add-int/2addr v2, v3

    .line 95
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    const/4 v2, 0x6

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    move-object v3, p1

    .line 104
    move-object v4, v9

    .line 105
    move v9, v2

    .line 106
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    iget-wide v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridPositionedItem;->visualOffset:J

    .line 111
    .line 112
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    add-int/2addr v6, v7

    .line 121
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    add-int/2addr v2, v3

    .line 130
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    const/4 v2, 0x6

    .line 135
    const/4 v10, 0x0

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    move-object v3, p1

    .line 139
    move-object v4, v9

    .line 140
    move v9, v2

    .line 141
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 145
    .line 146
    goto/16 :goto_0

    .line 147
    .line 148
    :cond_3
    return-void
.end method
