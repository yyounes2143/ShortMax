.class public final Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;
.super Ljava/lang/Object;
.source "LayoutNodeWrapper.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/LayoutNodeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper$HitTestSource<",
        "Landroidx/compose/ui/semantics/SemanticsEntity;",
        "Landroidx/compose/ui/semantics/SemanticsEntity;",
        "Landroidx/compose/ui/semantics/SemanticsModifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public childHitTest-YqVAtuI(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;ZZ)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/node/HitTestResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "J",
            "Landroidx/compose/ui/node/HitTestResult<",
            "Landroidx/compose/ui/semantics/SemanticsEntity;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1
    const-string v0, "layoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "hitTestResult"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->hitTestSemantics-M_7yMNQ$ui_release(JLandroidx/compose/ui/node/HitTestResult;ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public contentFrom(Landroidx/compose/ui/semantics/SemanticsEntity;)Landroidx/compose/ui/semantics/SemanticsEntity;
    .locals 1
    .param p1    # Landroidx/compose/ui/semantics/SemanticsEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic contentFrom(Landroidx/compose/ui/node/LayoutNodeEntity;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsEntity;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;->contentFrom(Landroidx/compose/ui/semantics/SemanticsEntity;)Landroidx/compose/ui/semantics/SemanticsEntity;

    move-result-object p1

    return-object p1
.end method

.method public entityType-EEbPh1w()I
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/node/EntityList;->Companion:Landroidx/compose/ui/node/EntityList$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/node/EntityList$Companion;->getSemanticsEntityType-EEbPh1w()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic interceptOutOfBoundsChildEvents(Landroidx/compose/ui/node/LayoutNodeEntity;)Z
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsEntity;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNodeWrapper$Companion$SemanticsSource$1;->interceptOutOfBoundsChildEvents(Landroidx/compose/ui/semantics/SemanticsEntity;)Z

    move-result p1

    return p1
.end method

.method public interceptOutOfBoundsChildEvents(Landroidx/compose/ui/semantics/SemanticsEntity;)Z
    .locals 1
    .param p1    # Landroidx/compose/ui/semantics/SemanticsEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "entity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2
    .param p1    # Landroidx/compose/ui/node/LayoutNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parentLayoutNode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->getOuterSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/semantics/SemanticsEntity;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsEntity;->collapsedSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, v1, :cond_0

    .line 25
    .line 26
    move v0, v1

    .line 27
    :cond_0
    xor-int/lit8 p1, v0, 0x1

    .line 28
    .line 29
    return p1
.end method
