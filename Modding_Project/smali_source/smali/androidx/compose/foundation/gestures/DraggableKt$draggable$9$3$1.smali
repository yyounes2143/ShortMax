.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1"
    f = "Draggable.kt"
    l = {
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

.field final synthetic $canDragState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $channel:Ljt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $reverseDirection:Z

.field final synthetic $startImmediatelyState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Ljt/d<",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$channel:Ljt/d;

    .line 10
    .line 11
    iput-boolean p6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$reverseDirection:Z

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$channel:Ljt/d;

    .line 12
    .line 13
    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$reverseDirection:Z

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lgt/g0;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lgt/g0;

    .line 36
    .line 37
    :try_start_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$$this$pointerInput:Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 38
    .line 39
    new-instance v11, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;

    .line 40
    .line 41
    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 42
    .line 43
    iget-object v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 44
    .line 45
    iget-object v7, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 46
    .line 47
    iget-object v8, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$channel:Ljt/d;

    .line 48
    .line 49
    iget-boolean v9, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->$reverseDirection:Z

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    move-object v3, v11

    .line 53
    move-object v4, p1

    .line 54
    invoke-direct/range {v3 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;-><init>(Lgt/g0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->label:I

    .line 60
    .line 61
    invoke-interface {v1, v11, p0}, Landroidx/compose/ui/input/pointer/PointerInputScope;->awaitPointerEventScope(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    if-ne p1, v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :catch_1
    move-exception v0

    .line 69
    move-object v12, v0

    .line 70
    move-object v0, p1

    .line 71
    move-object p1, v12

    .line 72
    :goto_0
    invoke-static {v0}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 79
    .line 80
    return-object p1

    .line 81
    :cond_3
    throw p1
.end method
