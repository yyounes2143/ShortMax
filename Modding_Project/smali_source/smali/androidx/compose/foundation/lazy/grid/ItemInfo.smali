.class final Landroidx/compose/foundation/lazy/grid/ItemInfo;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private crossAxisOffset:I

.field private crossAxisSize:I

.field private index:I

.field private notAnimatableDelta:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->index:I

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->notAnimatableDelta:J

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->placeables:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getCrossAxisOffset()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCrossAxisSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotAnimatableDelta-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->notAnimatableDelta:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPlaceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->placeables:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCrossAxisOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCrossAxisSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNotAnimatableDelta--gyyYBs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->notAnimatableDelta:J

    .line 2
    .line 3
    return-void
.end method
