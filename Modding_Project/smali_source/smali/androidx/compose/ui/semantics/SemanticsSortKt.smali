.class public final Landroidx/compose/ui/semantics/SemanticsSortKt;
.super Ljava/lang/Object;
.source "SemanticsSort.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;
    .locals 3
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/compose/ui/node/LayoutNode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "predicate"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-ge v1, v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    invoke-static {v2, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findNodeByPredicateTraversal(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return-object p0
.end method

.method public static final findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getChildren$ui_release()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    move v4, v3

    .line 33
    :goto_0
    if-ge v4, v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    new-instance v6, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 48
    .line 49
    invoke-direct {v6, p0, v5}, Landroidx/compose/ui/semantics/NodeLocationHolder;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    move v2, v3

    .line 76
    :goto_1
    if-ge v2, v1, :cond_3

    .line 77
    .line 78
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Landroidx/compose/ui/semantics/NodeLocationHolder;

    .line 83
    .line 84
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/NodeLocationHolder;->getNode$ui_release()Landroidx/compose/ui/node/LayoutNode;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    :goto_2
    if-ge v3, p0, :cond_5

    .line 99
    .line 100
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    .line 105
    .line 106
    invoke-static {v1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-eqz v2, :cond_4

    .line 111
    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    invoke-static {v1, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    return-object p1
.end method

.method public static synthetic findOneLayerOfSemanticsWrappersSortedByBounds$default(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/semantics/SemanticsSortKt;->findOneLayerOfSemanticsWrappersSortedByBounds(Landroidx/compose/ui/node/LayoutNode;Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static final findOneLayerOfSemanticsWrappersSortedByBounds$sortWithStrategy(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/semantics/NodeLocationHolder;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Stripe:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 6
    .line 7
    .line 8
    move-object v0, p0

    .line 9
    check-cast v0, Ljava/util/Collection;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    sget-object v0, Landroidx/compose/ui/semantics/NodeLocationHolder;->Companion:Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;

    .line 20
    .line 21
    sget-object v1, Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;->Location:Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;->setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 24
    .line 25
    .line 26
    check-cast p0, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object v0
.end method

.method public static final findWrapperToGetBounds(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 1
    .param p0    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getInnerLayoutNodeWrapper$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_2
    return-object v0
.end method
