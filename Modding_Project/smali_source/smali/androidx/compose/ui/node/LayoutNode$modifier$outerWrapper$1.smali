.class final Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/Modifier$Element;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        "Landroidx/compose/ui/node/LayoutNodeWrapper;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;
    .locals 2
    .param p1    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWrap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Landroidx/compose/ui/layout/RemeasurementModifier;

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/RemeasurementModifier;

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/RemeasurementModifier;->onRemeasurementAvailable(Landroidx/compose/ui/layout/Remeasurement;)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/EntityList;->addBeforeLayoutModifier-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 5
    instance-of v0, p1, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getOrCreateOnPositionedCallbacks$ui_release()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v0

    invoke-static {p2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/layout/LayoutModifier;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/layout/LayoutModifier;

    invoke-static {v0, p2, v1}, Landroidx/compose/ui/node/LayoutNode;->access$reuseLayoutNodeWrapper(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)Landroidx/compose/ui/node/ModifiedLayoutNode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    new-instance v0, Landroidx/compose/ui/node/ModifiedLayoutNode;

    invoke-direct {v0, p2, v1}, Landroidx/compose/ui/node/ModifiedLayoutNode;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/layout/LayoutModifier;)V

    :cond_2
    move-object p2, v0

    invoke-virtual {p2}, Landroidx/compose/ui/node/ModifiedLayoutNode;->onInitialize()V

    .line 11
    :cond_3
    invoke-virtual {p2}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getEntities-CHwCgZE()[Landroidx/compose/ui/node/LayoutNodeEntity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Landroidx/compose/ui/node/EntityList;->addAfterLayoutModifier-impl([Landroidx/compose/ui/node/LayoutNodeEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    check-cast p2, Landroidx/compose/ui/node/LayoutNodeWrapper;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$modifier$outerWrapper$1;->invoke(Landroidx/compose/ui/Modifier$Element;Landroidx/compose/ui/node/LayoutNodeWrapper;)Landroidx/compose/ui/node/LayoutNodeWrapper;

    move-result-object p1

    return-object p1
.end method
