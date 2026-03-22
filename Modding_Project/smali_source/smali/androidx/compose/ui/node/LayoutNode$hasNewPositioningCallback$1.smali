.class final Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->hasNewPositioningCallback()Z
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/collection/MutableVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/node/LayoutNodeWrapper;",
            "Landroidx/compose/ui/layout/OnGloballyPositionedModifier;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->$onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

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
.method public final invoke(Landroidx/compose/ui/Modifier$Element;Z)Ljava/lang/Boolean;
    .locals 6
    .param p1    # Landroidx/compose/ui/Modifier$Element;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "mod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_4

    .line 2
    instance-of p2, p1, Landroidx/compose/ui/layout/OnGloballyPositionedModifier;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 3
    iget-object p2, p0, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->$onPositionedCallbacks:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object p2

    move v3, v0

    .line 6
    :cond_0
    aget-object v4, p2, v3

    .line 7
    move-object v5, v4

    check-cast v5, Lkotlin/Pair;

    .line 8
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v1, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    .line 9
    :cond_2
    :goto_0
    check-cast v1, Lkotlin/Pair;

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    .line 10
    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/Modifier$Element;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode$hasNewPositioningCallback$1;->invoke(Landroidx/compose/ui/Modifier$Element;Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
