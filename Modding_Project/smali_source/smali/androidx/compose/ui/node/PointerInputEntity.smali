.class public final Landroidx/compose/ui/node/PointerInputEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "PointerInputEntity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/node/PointerInputEntity;",
        "Landroidx/compose/ui/input/pointer/PointerInputModifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/input/pointer/PointerInputModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerInputModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNodeWrapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onAttach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->onAttach()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->setLayoutCoordinates$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->setAttached$ui_release(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->onDetach()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 9
    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->setAttached$ui_release(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final shouldSharePointerInputWithSiblings()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputModifier;

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/PointerInputModifier;->getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->getShareWithSiblings()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getNext()Landroidx/compose/ui/node/LayoutNodeEntity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/compose/ui/node/PointerInputEntity;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/ui/node/PointerInputEntity;->shouldSharePointerInputWithSiblings()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    :cond_2
    return v1
.end method
