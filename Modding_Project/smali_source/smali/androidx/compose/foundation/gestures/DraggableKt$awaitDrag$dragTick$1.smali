.class final Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/Pair;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/h;ZLandroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/h<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlinx/coroutines/channels/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlinx/coroutines/channels/h<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$channel:Lkotlinx/coroutines/channels/h;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$reverseDirection:Z

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->invoke(Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 5
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputChange;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$velocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    invoke-static {v0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 3
    invoke-static {p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$channel:Lkotlinx/coroutines/channels/h;

    .line 6
    new-instance v2, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    .line 7
    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$dragTick$1;->$reverseDirection:Z

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    const/4 p1, 0x0

    .line 9
    invoke-direct {v2, v0, v3, v4, p1}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(FJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
