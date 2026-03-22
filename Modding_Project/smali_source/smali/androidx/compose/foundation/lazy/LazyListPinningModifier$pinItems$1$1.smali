.class public final Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;
.super Ljava/lang/Object;
.source "LazyListPinningModifier.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListPinningModifier;->pinItems()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

.field private final interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListPinningModifier;Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->$this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->getPinnableGrandParent()Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/PinnableParent;->pinItems()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getStart()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->getEnd()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->addInterval(II)Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final getInterval()Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParentPinnedItemsHandle()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 2
    .line 3
    return-object v0
.end method

.method public unpin()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->$this_with:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->interval:Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo;->removeInterval(Landroidx/compose/foundation/lazy/LazyListBeyondBoundsInfo$Interval;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->parentPinnedItemsHandle:Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->unpin()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListPinningModifier$pinItems$1$1;->this$0:Landroidx/compose/foundation/lazy/LazyListPinningModifier;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/compose/foundation/lazy/LazyListPinningModifier;->access$getState$p(Landroidx/compose/foundation/lazy/LazyListPinningModifier;)Landroidx/compose/foundation/lazy/LazyListState;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
