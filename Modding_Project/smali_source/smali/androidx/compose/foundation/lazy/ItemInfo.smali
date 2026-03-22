.class final Landroidx/compose/foundation/lazy/ItemInfo;
.super Ljava/lang/Object;
.source "LazyListItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private index:I

.field private notAnimatableDelta:J

.field private final placeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->index:I

    .line 5
    .line 6
    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

    .line 13
    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->placeables:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNotAnimatableDelta-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

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
            "Landroidx/compose/foundation/lazy/PlaceableInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/ItemInfo;->placeables:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->index:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNotAnimatableDelta--gyyYBs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/ItemInfo;->notAnimatableDelta:J

    .line 2
    .line 3
    return-void
.end method
