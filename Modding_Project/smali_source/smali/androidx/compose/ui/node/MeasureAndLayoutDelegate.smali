.class public final Landroidx/compose/ui/node/MeasureAndLayoutDelegate;
.super Ljava/lang/Object;
.source "MeasureAndLayoutDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private duringMeasureLayout:Z

.field private measureIteration:J

.field private final onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final postponedMeasureRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/node/LayoutNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final root:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rootConstraints:Landroidx/compose/ui/unit/Constraints;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "root"

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
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/node/DepthSortedSet;

    .line 12
    .line 13
    sget-object v1, Landroidx/compose/ui/node/Owner;->Companion:Landroidx/compose/ui/node/Owner$Companion;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroidx/compose/ui/node/Owner$Companion;->getEnableExtraAssertions()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {v0, v2}, Landroidx/compose/ui/node/DepthSortedSet;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 23
    .line 24
    new-instance v2, Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 25
    .line 26
    invoke-direct {v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 30
    .line 31
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    .line 32
    .line 33
    const/16 v3, 0x10

    .line 34
    .line 35
    new-array v3, v3, [Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 42
    .line 43
    const-wide/16 v2, 0x1

    .line 44
    .line 45
    iput-wide v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    .line 46
    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/node/Owner$Companion;->getEnableExtraAssertions()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    new-instance v1, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 61
    .line 62
    invoke-direct {v1, p1, v0, v2}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/DepthSortedSet;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    iput-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic access$getRoot$p(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;)Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final callOnLayoutCompletedListeners()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :cond_0
    aget-object v3, v0, v2

    .line 15
    .line 16
    check-cast v3, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;

    .line 17
    .line 18
    invoke-interface {v3}, Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;->onLayoutComplete()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    if-lt v2, v1, :cond_0

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static synthetic dispatchOnPositionedCallbacks$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->dispatchOnPositionedCallbacks(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNode;->remeasure-_Sx5XlM$ui_release(Landroidx/compose/ui/unit/Constraints;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x1

    .line 10
    invoke-static {p1, v0, p2, v0}, Landroidx/compose/ui/node/LayoutNode;->remeasure-_Sx5XlM$ui_release$default(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;ILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    const/4 v5, 0x0

    .line 30
    if-ne v2, v3, :cond_1

    .line 31
    .line 32
    invoke-static {p0, v1, v5, v4, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 41
    .line 42
    if-ne p1, v2, :cond_2

    .line 43
    .line 44
    invoke-static {p0, v1, v5, v4, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRelayout$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_1
    return p2
.end method

.method private final getCanAffectParent(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasuredByParent$ui_release()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InMeasureBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getRequired$ui_release()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    return p1
.end method

.method public static synthetic measureAndLayout$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureAndLayout(Lkotlin/jvm/functions/Function0;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method private final performMeasureAndLayout(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Failed requirement."

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 38
    .line 39
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 55
    .line 56
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method private final remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getCanAffectParent(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getAlignmentLines$ui_release()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeAlignmentLines;->getRequired$ui_release()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_8

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 32
    .line 33
    if-ne p1, v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move-object v0, v2

    .line 42
    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v0, v1

    .line 48
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 61
    .line 62
    if-ne p1, v3, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1, v1, v1}, Landroidx/compose/ui/node/LayoutNode;->place$ui_release(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->replace$ui_release()V

    .line 69
    .line 70
    .line 71
    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 72
    .line 73
    invoke-virtual {v3, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->onNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 84
    .line 85
    check-cast p1, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_7

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    move v4, v1

    .line 100
    :goto_3
    if-ge v4, v3, :cond_6

    .line 101
    .line 102
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 107
    .line 108
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_5

    .line 113
    .line 114
    const/4 v6, 0x2

    .line 115
    invoke-static {p0, v5, v1, v6, v2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 124
    .line 125
    .line 126
    :cond_7
    move v1, v0

    .line 127
    :cond_8
    return v1
.end method

.method public static synthetic requestRelayout$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRelayout(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic requestRemeasure$default(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method


# virtual methods
.method public final dispatchOnPositionedCallbacks(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/OnPositionedDispatcher;->onRootNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->dispatch()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 16
    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_6

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->get_children$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-lez v1, :cond_4

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x0

    .line 40
    :cond_1
    aget-object v3, v0, v2

    .line 41
    .line 42
    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    invoke-direct {p0, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-nez v4, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->forceMeasureTheSubtree(Landroidx/compose/ui/node/LayoutNode;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    if-lt v2, v1, :cond_1

    .line 73
    .line 74
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 89
    .line 90
    .line 91
    :cond_5
    return-void

    .line 92
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    const-string v0, "Failed requirement."

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    const-string v0, "Check failed."

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final getHasPendingMeasureOrLayout()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public final getMeasureIteration()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->measureIteration:J

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "measureIteration should be only used during the measure/layout pass"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public final measureAndLayout(Lkotlin/jvm/functions/Function0;)Z
    .locals 7
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Failed requirement."

    .line 8
    .line 9
    if-eqz v0, :cond_8

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 20
    .line 21
    if-nez v0, :cond_6

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_5

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 40
    .line 41
    move v3, v1

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroidx/compose/ui/node/DepthSortedSet;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/node/DepthSortedSet;->pop()Landroidx/compose/ui/node/LayoutNode;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-static {p0, v4}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->access$remeasureAndRelayoutIfNeeded(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;Landroidx/compose/ui/node/LayoutNode;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->access$getRoot$p(Landroidx/compose/ui/node/MeasureAndLayoutDelegate;)Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-ne v4, v6, :cond_0

    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    move v3, v0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move v3, v1

    .line 75
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 76
    .line 77
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 82
    .line 83
    .line 84
    :cond_4
    move v1, v3

    .line 85
    goto :goto_3

    .line 86
    :goto_2
    iput-boolean v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 87
    .line 88
    throw p1

    .line 89
    :cond_5
    :goto_3
    invoke-direct {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->callOnLayoutCompletedListeners()V

    .line 90
    .line 91
    .line 92
    return v1

    .line 93
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p1
.end method

.method public final measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const-string v1, "Failed requirement."

    .line 13
    .line 14
    if-nez v0, :cond_5

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 47
    .line 48
    .line 49
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->doRemeasure-sdFAvZA(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/unit/Constraints;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_0

    .line 61
    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->replace$ui_release()V

    .line 69
    .line 70
    .line 71
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onPositionedDispatcher:Landroidx/compose/ui/node/OnPositionedDispatcher;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/OnPositionedDispatcher;->onNodePositioned(Landroidx/compose/ui/node/LayoutNode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 80
    .line 81
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :goto_1
    iput-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 90
    .line 91
    throw p1

    .line 92
    :cond_1
    :goto_2
    invoke-direct {p0}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->callOnLayoutCompletedListeners()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1

    .line 114
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1
.end method

.method public final onNodeDetached(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "node"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/DepthSortedSet;->remove(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final registerOnLayoutCompletedListener(Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "listener"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->onLayoutCompletedListeners:Landroidx/compose/runtime/collection/MutableVector;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final requestRelayout(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eq v0, v2, :cond_6

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_6

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-ne v0, v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 43
    .line 44
    if-eqz p1, :cond_7

    .line 45
    .line 46
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->markLayoutPending$ui_release()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_4

    .line 58
    .line 59
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getLayoutPending$ui_release()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v2, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    if-eqz p2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    if-ne p2, v2, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->add(Landroidx/compose/ui/node/LayoutNode;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    iget-boolean p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 87
    .line 88
    if-nez p1, :cond_7

    .line 89
    .line 90
    move v1, v2

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 93
    .line 94
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_6
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 99
    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 103
    .line 104
    .line 105
    :cond_7
    :goto_1
    return v1
.end method

.method public final requestRemeasure(Landroidx/compose/ui/node/LayoutNode;Z)Z
    .locals 4
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutState$ui_release()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Landroidx/compose/ui/node/MeasureAndLayoutDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    aget v0, v1, v0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq v0, v3, :cond_6

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-ne v0, v3, :cond_5

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    :cond_0
    :goto_0
    move v1, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->markMeasurePending$ui_release()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-nez p2, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->getCanAffectParent(Landroidx/compose/ui/node/LayoutNode;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    if-eqz p2, :cond_3

    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNode;->getMeasurePending$ui_release()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ne p2, v1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/DepthSortedSet;->add(Landroidx/compose/ui/node/LayoutNode;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    iget-boolean p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 72
    .line 73
    if-nez p1, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 77
    .line 78
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1

    .line 82
    :cond_6
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->postponedMeasureRequests:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->consistencyChecker:Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;

    .line 88
    .line 89
    if-eqz p1, :cond_0

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;->assertConsistent()V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_2
    return v1
.end method

.method public final updateRootConstraints-BRTryo0(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/unit/Constraints;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-boolean v0, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->duringMeasureLayout:Z

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->rootConstraints:Landroidx/compose/ui/unit/Constraints;

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->markMeasurePending$ui_release()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->relayoutNodes:Landroidx/compose/ui/node/DepthSortedSet;

    .line 33
    .line 34
    iget-object p2, p0, Landroidx/compose/ui/node/MeasureAndLayoutDelegate;->root:Landroidx/compose/ui/node/LayoutNode;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/DepthSortedSet;->add(Landroidx/compose/ui/node/LayoutNode;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p2, "Failed requirement."

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_1
    return-void
.end method
