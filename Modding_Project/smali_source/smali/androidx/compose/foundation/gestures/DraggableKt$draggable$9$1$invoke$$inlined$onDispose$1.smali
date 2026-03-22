.class public final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $draggedInteraction$inlined:Landroidx/compose/runtime/MutableState;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;->$draggedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;->$draggedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    .line 16
    .line 17
    invoke-direct {v2, v0}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v2}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$1$invoke$$inlined$onDispose$1;->$draggedInteraction$inlined:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
