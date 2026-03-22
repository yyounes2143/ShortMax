.class public final Landroidx/compose/foundation/lazy/LazyListPositionedItem;
.super Ljava/lang/Object;
.source "LazyMeasuredItem.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final hasAnimations:Z

.field private final index:I

.field private final isVertical:Z

.field private final key:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxMainAxisOffset:I

.field private final minMainAxisOffset:I

.field private final offset:I

.field private final placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final size:I

.field private final sizeWithSpacings:I

.field private final visualOffset:J

.field private final wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(IILjava/lang/Object;IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Object;",
            "IIIIZ",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->offset:I

    .line 4
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->index:I

    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->key:Ljava/lang/Object;

    .line 6
    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->size:I

    .line 7
    iput p5, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->sizeWithSpacings:I

    .line 8
    iput p6, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->minMainAxisOffset:I

    .line 9
    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->maxMainAxisOffset:I

    .line 10
    iput-boolean p8, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->isVertical:Z

    .line 11
    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

    .line 12
    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 13
    iput-wide p11, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->visualOffset:J

    .line 14
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 15
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p4

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    :goto_1
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->hasAnimations:Z

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;-><init>(IILjava/lang/Object;IIIIZLjava/util/List;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;J)V

    return-void
.end method

.method private final getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I
    .locals 1

    .line 2
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->isVertical:Z

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
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->getParentData()Ljava/lang/Object;

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

.method public final getHasAnimations()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->hasAnimations:Z

    .line 2
    .line 3
    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->key:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainAxisSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    move-result p1

    return p1
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOffset-Bjo55l4(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->getOffset-nOcc-ac()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public final getPlaceablesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

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

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSizeWithSpacings()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->sizeWithSpacings:I

    .line 2
    .line 3
    return v0
.end method

.method public final place(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 11
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
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getPlaceablesCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->wrappers:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListPlaceableWrapper;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->minMainAxisOffset:I

    .line 26
    .line 27
    invoke-direct {p0, v9}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getMainAxisSize(Landroidx/compose/ui/layout/Placeable;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    sub-int v5, v2, v3

    .line 32
    .line 33
    iget v6, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->maxMainAxisOffset:I

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getAnimationSpec(I)Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->placementAnimator:Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getKey()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    move v4, v1

    .line 52
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getAnimatedOffset-YT5a7pE(Ljava/lang/Object;IIIJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset-Bjo55l4(I)J

    .line 58
    .line 59
    .line 60
    move-result-wide v2

    .line 61
    :goto_1
    iget-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->isVertical:Z

    .line 62
    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    iget-wide v4, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->visualOffset:J

    .line 66
    .line 67
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    add-int/2addr v6, v7

    .line 76
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    add-int/2addr v2, v3

    .line 85
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 86
    .line 87
    .line 88
    move-result-wide v5

    .line 89
    const/4 v2, 0x6

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    .line 93
    move-object v3, p1

    .line 94
    move-object v4, v9

    .line 95
    move v9, v2

    .line 96
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_1
    iget-wide v4, p0, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->visualOffset:J

    .line 101
    .line 102
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    add-int/2addr v6, v7

    .line 111
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    add-int/2addr v2, v3

    .line 120
    invoke-static {v6, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 121
    .line 122
    .line 123
    move-result-wide v5

    .line 124
    const/4 v2, 0x6

    .line 125
    const/4 v10, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/4 v8, 0x0

    .line 128
    move-object v3, p1

    .line 129
    move-object v4, v9

    .line 130
    move v9, v2

    .line 131
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method
