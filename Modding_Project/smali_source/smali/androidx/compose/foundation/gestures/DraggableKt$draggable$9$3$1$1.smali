.class final Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Draggable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    c = "androidx.compose.foundation.gestures.DraggableKt$draggable$9$3$1$1"
    f = "Draggable.kt"
    l = {
        0x10c,
        0x114
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lgt/g0;

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

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Lgt/g0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
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
            "Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Ljt/d;

    .line 10
    .line 11
    iput-boolean p6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

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
    new-instance v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Ljt/d;

    .line 12
    .line 13
    iget-boolean v6, p0, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;-><init>(Lgt/g0;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/Orientation;Ljt/d;ZLrs/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    return-object v8
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
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
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I

    .line 8
    .line 9
    const/4 v10, -0x1

    .line 10
    const/4 v11, 0x2

    .line 11
    const/4 v12, 0x0

    .line 12
    const/4 v13, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-eq v0, v13, :cond_1

    .line 16
    .line 17
    if-ne v0, v11, :cond_0

    .line 18
    .line 19
    iget v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->I$0:I

    .line 20
    .line 21
    iget-boolean v2, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->Z$0:Z

    .line 22
    .line 23
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v3, v0

    .line 26
    check-cast v3, Lgt/g0;

    .line 27
    .line 28
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v4, v0

    .line 31
    check-cast v4, Landroidx/compose/foundation/gestures/Orientation;

    .line 32
    .line 33
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 34
    .line 35
    move-object v5, v0

    .line 36
    check-cast v5, Ljt/d;

    .line 37
    .line 38
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 39
    .line 40
    move-object v6, v0

    .line 41
    check-cast v6, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 42
    .line 43
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    move-object v7, v0

    .line 46
    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 47
    .line 48
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    move-object/from16 v0, p1

    .line 52
    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move v12, v1

    .line 57
    goto/16 :goto_9

    .line 58
    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_8

    .line 61
    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_1
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 73
    .line 74
    iget-object v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 77
    .line 78
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object v15, v0

    .line 82
    move-object v14, v1

    .line 83
    move-object/from16 v1, p1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 92
    .line 93
    :goto_0
    iget-object v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 94
    .line 95
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_b

    .line 100
    .line 101
    new-instance v7, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    .line 102
    .line 103
    invoke-direct {v7}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v2, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$canDragState:Landroidx/compose/runtime/State;

    .line 107
    .line 108
    iget-object v3, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$startImmediatelyState:Landroidx/compose/runtime/State;

    .line 109
    .line 110
    iget-object v5, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 111
    .line 112
    iput-object v0, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v7, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    iput-object v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 118
    .line 119
    iput-object v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v1, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 122
    .line 123
    iput v13, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I

    .line 124
    .line 125
    move-object v1, v0

    .line 126
    move-object v4, v7

    .line 127
    move-object/from16 v6, p0

    .line 128
    .line 129
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-ne v1, v9, :cond_3

    .line 134
    .line 135
    return-object v9

    .line 136
    :cond_3
    move-object v14, v0

    .line 137
    move-object v15, v7

    .line 138
    :goto_1
    move-object v2, v1

    .line 139
    check-cast v2, Lkotlin/Pair;

    .line 140
    .line 141
    if-eqz v2, :cond_a

    .line 142
    .line 143
    iget-object v7, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$channel:Ljt/d;

    .line 144
    .line 145
    iget-boolean v6, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$reverseDirection:Z

    .line 146
    .line 147
    iget-object v5, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 148
    .line 149
    iget-object v4, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 150
    .line 151
    :try_start_1
    iput-object v14, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$0:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v15, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$1:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object v7, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$2:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object v5, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$3:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v4, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->L$4:Ljava/lang/Object;

    .line 160
    .line 161
    iput-boolean v6, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->Z$0:Z

    .line 162
    .line 163
    iput v12, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->I$0:I

    .line 164
    .line 165
    iput v11, v8, Landroidx/compose/foundation/gestures/DraggableKt$draggable$9$3$1$1;->label:I
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 166
    .line 167
    move-object v1, v14

    .line 168
    move-object v3, v15

    .line 169
    move-object/from16 v16, v4

    .line 170
    .line 171
    move-object v4, v7

    .line 172
    move-object/from16 v17, v5

    .line 173
    .line 174
    move v5, v6

    .line 175
    move/from16 v18, v6

    .line 176
    .line 177
    move-object/from16 v6, v17

    .line 178
    .line 179
    move-object/from16 v19, v7

    .line 180
    .line 181
    move-object/from16 v7, p0

    .line 182
    .line 183
    :try_start_2
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/gestures/DraggableKt;->access$awaitDrag(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/Pair;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/h;ZLandroidx/compose/foundation/gestures/Orientation;Lrs/c;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    if-ne v0, v9, :cond_4

    .line 188
    .line 189
    return-object v9

    .line 190
    :cond_4
    move v1, v12

    .line 191
    move-object v7, v14

    .line 192
    move-object v6, v15

    .line 193
    move-object/from16 v3, v16

    .line 194
    .line 195
    move-object/from16 v4, v17

    .line 196
    .line 197
    move/from16 v2, v18

    .line 198
    .line 199
    move-object/from16 v5, v19

    .line 200
    .line 201
    :goto_2
    :try_start_3
    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    .line 210
    .line 211
    .line 212
    move-result-wide v0

    .line 213
    invoke-static {v0, v1, v4}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    new-instance v1, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 218
    .line 219
    if-eqz v2, :cond_5

    .line 220
    .line 221
    move v2, v10

    .line 222
    goto :goto_3

    .line 223
    :cond_5
    move v2, v13

    .line 224
    :goto_3
    int-to-float v2, v2

    .line 225
    mul-float/2addr v0, v2

    .line 226
    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(F)V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_6
    sget-object v1, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 231
    .line 232
    :goto_4
    invoke-interface {v5, v1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    :goto_5
    move-object v0, v7

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :catchall_1
    move-exception v0

    .line 239
    :goto_6
    move-object v6, v15

    .line 240
    move-object/from16 v4, v17

    .line 241
    .line 242
    move/from16 v2, v18

    .line 243
    .line 244
    move-object/from16 v5, v19

    .line 245
    .line 246
    goto :goto_9

    .line 247
    :catch_1
    move-exception v0

    .line 248
    :goto_7
    move-object v7, v14

    .line 249
    move-object v6, v15

    .line 250
    move-object/from16 v3, v16

    .line 251
    .line 252
    move-object/from16 v4, v17

    .line 253
    .line 254
    move/from16 v2, v18

    .line 255
    .line 256
    move-object/from16 v5, v19

    .line 257
    .line 258
    goto :goto_8

    .line 259
    :catchall_2
    move-exception v0

    .line 260
    move-object/from16 v17, v5

    .line 261
    .line 262
    move/from16 v18, v6

    .line 263
    .line 264
    move-object/from16 v19, v7

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :catch_2
    move-exception v0

    .line 268
    move-object/from16 v16, v4

    .line 269
    .line 270
    move-object/from16 v17, v5

    .line 271
    .line 272
    move/from16 v18, v6

    .line 273
    .line 274
    move-object/from16 v19, v7

    .line 275
    .line 276
    goto :goto_7

    .line 277
    :goto_8
    :try_start_4
    invoke-static {v3}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 278
    .line 279
    .line 280
    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 281
    if-eqz v1, :cond_7

    .line 282
    .line 283
    sget-object v0, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 284
    .line 285
    invoke-interface {v5, v0}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_7
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 290
    :catchall_3
    move-exception v0

    .line 291
    :goto_9
    if-eqz v12, :cond_9

    .line 292
    .line 293
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->calculateVelocity-9UxMQ8M()J

    .line 294
    .line 295
    .line 296
    move-result-wide v6

    .line 297
    invoke-static {v6, v7, v4}, Landroidx/compose/foundation/gestures/DraggableKt;->access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    new-instance v3, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;

    .line 302
    .line 303
    if-eqz v2, :cond_8

    .line 304
    .line 305
    goto :goto_a

    .line 306
    :cond_8
    move v10, v13

    .line 307
    :goto_a
    int-to-float v2, v10

    .line 308
    mul-float/2addr v1, v2

    .line 309
    invoke-direct {v3, v1}, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;-><init>(F)V

    .line 310
    .line 311
    .line 312
    goto :goto_b

    .line 313
    :cond_9
    sget-object v3, Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;->INSTANCE:Landroidx/compose/foundation/gestures/DragEvent$DragCancelled;

    .line 314
    .line 315
    :goto_b
    invoke-interface {v5, v3}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    throw v0

    .line 319
    :cond_a
    move-object v0, v14

    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 323
    .line 324
    return-object v0
.end method
