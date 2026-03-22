.class public final Landroidx/compose/ui/semantics/NodeLocationHolder;
.super Ljava/lang/Object;
.source "SemanticsSort.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;,
        Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/compose/ui/semantics/NodeLocationHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final location:Landroidx/compose/ui/geometry/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final node:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final subtreeRoot:Landroidx/compose/ui/node/LayoutNode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "subtreeRoot"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "node"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findWrapperToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-static {p1, p2, v0, v2, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :cond_0
    iput-object v1, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    .line 52
    .line 53
    return-void
.end method

.method public static final synthetic access$getComparisonStrategy$cp()Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setComparisonStrategy$cp(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V
    .locals 0

    .line 1
    sput-object p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/compose/ui/semantics/NodeLocationHolder;)I
    .locals 6
    .param p1    # Landroidx/compose/ui/semantics/NodeLocationHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    .line 4
    :cond_1
    sget-object v2, Landroidx/compose/ui/semantics/NodeLocationHolder;->comparisonStrategy:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    sget-object v4, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_3

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    return v3

    .line 6
    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v2, :cond_6

    .line 8
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    if-gez v0, :cond_5

    move v1, v3

    :cond_5
    return v1

    .line 9
    :cond_6
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_f

    .line 10
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_d

    .line 11
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_b

    .line 12
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v0

    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->location:Landroidx/compose/ui/geometry/Rect;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result v2

    sub-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_9

    .line 13
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findWrapperToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 14
    iget-object v2, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v2}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findWrapperToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    .line 15
    iget-object v4, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    new-instance v5, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child1$1;

    invoke-direct {v5, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child1$1;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    .line 16
    iget-object v4, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    new-instance v5, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child2$1;

    invoke-direct {v5, v2}, Landroidx/compose/ui/semantics/NodeLocationHolder$compareTo$child2$1;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    invoke-static {v4, v5}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 17
    new-instance v1, Landroidx/compose/ui/semantics/NodeLocationHolder;

    iget-object v3, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v1, v3, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 18
    new-instance v0, Landroidx/compose/ui/semantics/NodeLocationHolder;

    iget-object p1, p1, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v0, p1, v2}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 19
    invoke-virtual {v1, v0}, Landroidx/compose/ui/semantics/NodeLocationHolder;->compareTo(Landroidx/compose/ui/semantics/NodeLocationHolder;)I

    move-result p1

    return p1

    :cond_7
    if-eqz v0, :cond_8

    return v1

    :cond_8
    return v3

    :cond_9
    if-gez v0, :cond_a

    goto :goto_1

    :cond_a
    move v1, v3

    :goto_1
    return v1

    :cond_b
    if-gez v0, :cond_c

    goto :goto_2

    :cond_c
    move v1, v3

    :goto_2
    return v1

    :cond_d
    if-gez v0, :cond_e

    move v1, v3

    :cond_e
    return v1

    :cond_f
    if-gez v0, :cond_10

    goto :goto_3

    :cond_10
    move v1, v3

    :goto_3
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/NodeLocationHolder;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/semantics/NodeLocationHolder;->compareTo(Landroidx/compose/ui/semantics/NodeLocationHolder;)I

    move-result p1

    return p1
.end method

.method public final getNode$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->node:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubtreeRoot$ui_release()Landroidx/compose/ui/node/LayoutNode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/semantics/NodeLocationHolder;->subtreeRoot:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    return-object v0
.end method
