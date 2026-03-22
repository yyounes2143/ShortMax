.class final Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TapGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$detectTapGestures$2$1$1"
    f = "TapGestureDetector.kt"
    l = {
        0x5e,
        0x6a,
        0x75,
        0x7f,
        0x8c,
        0x9e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lgt/g0;

.field final synthetic $onDoubleTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onLongPress:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPress:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lat/n;Lgt/g0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/PressGestureScopeImpl;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/gestures/PressGestureScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lgt/g0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

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
    new-instance v8, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    move-object v0, v8

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lat/n;Lgt/g0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, v8, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

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
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw v1

    .line 21
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_7

    .line 25
    .line 26
    :pswitch_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 29
    .line 30
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    iget-object v5, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 37
    .line 38
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 39
    .line 40
    .line 41
    goto/16 :goto_8

    .line 42
    .line 43
    :pswitch_2
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 44
    .line 45
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 48
    .line 49
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 52
    .line 53
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    move-object v12, v2

    .line 57
    move-object v13, v6

    .line 58
    move-object/from16 v2, p1

    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :pswitch_3
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 63
    .line 64
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 71
    .line 72
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :pswitch_4
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 78
    .line 79
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 82
    .line 83
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 86
    .line 87
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 90
    .line 91
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 94
    .line 95
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .line 97
    .line 98
    move-object v9, v8

    .line 99
    move-object v8, v7

    .line 100
    move-object v7, v6

    .line 101
    move-object/from16 v6, p1

    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :catch_0
    move-object v2, v6

    .line 106
    :catch_1
    move-object v6, v8

    .line 107
    goto/16 :goto_3

    .line 108
    .line 109
    :pswitch_5
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 112
    .line 113
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v4, p1

    .line 117
    .line 118
    :cond_0
    move-object v8, v2

    .line 119
    goto :goto_0

    .line 120
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 126
    .line 127
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 128
    .line 129
    const/4 v4, 0x1

    .line 130
    iput v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 131
    .line 132
    const/4 v5, 0x0

    .line 133
    invoke-static {v2, v5, v0, v4, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    if-ne v4, v1, :cond_0

    .line 138
    .line 139
    return-object v1

    .line 140
    :goto_0
    move-object v7, v4

    .line 141
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 142
    .line 143
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 144
    .line 145
    .line 146
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->reset()V

    .line 149
    .line 150
    .line 151
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 152
    .line 153
    invoke-static {}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$getNoPressGesture$p()Lat/n;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    if-eq v2, v4, :cond_1

    .line 158
    .line 159
    iget-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 160
    .line 161
    new-instance v12, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$1;

    .line 162
    .line 163
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 164
    .line 165
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 166
    .line 167
    invoke-direct {v12, v2, v4, v7, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$1;-><init>(Lat/n;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)V

    .line 168
    .line 169
    .line 170
    const/4 v13, 0x3

    .line 171
    const/4 v14, 0x0

    .line 172
    const/4 v10, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    invoke-static/range {v9 .. v14}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 175
    .line 176
    .line 177
    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    .line 178
    .line 179
    if-eqz v2, :cond_2

    .line 180
    .line 181
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getLongPressTimeoutMillis()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    goto :goto_1

    .line 190
    :cond_2
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :goto_1
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 196
    .line 197
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 198
    .line 199
    .line 200
    :try_start_2
    new-instance v6, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$2;

    .line 201
    .line 202
    invoke-direct {v6, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$2;-><init>(Lrs/c;)V

    .line 203
    .line 204
    .line 205
    iput-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 210
    .line 211
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 212
    .line 213
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 214
    .line 215
    const/4 v9, 0x2

    .line 216
    iput v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 217
    .line 218
    invoke-interface {v8, v4, v5, v6, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6
    :try_end_2
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 222
    if-ne v6, v1, :cond_3

    .line 223
    .line 224
    return-object v1

    .line 225
    :cond_3
    move-object v9, v8

    .line 226
    move-object v8, v7

    .line 227
    move-object v7, v2

    .line 228
    :goto_2
    :try_start_3
    iput-object v6, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 229
    .line 230
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 231
    .line 232
    if-nez v2, :cond_4

    .line 233
    .line 234
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 235
    .line 236
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->cancel()V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :catch_2
    move-object v2, v7

    .line 241
    move-object v7, v8

    .line 242
    move-object v6, v9

    .line 243
    goto :goto_3

    .line 244
    :cond_4
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 245
    .line 246
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 247
    .line 248
    .line 249
    iget-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 250
    .line 251
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->release()V
    :try_end_3
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_3 .. :try_end_3} :catch_2

    .line 252
    .line 253
    .line 254
    goto :goto_5

    .line 255
    :goto_3
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    .line 256
    .line 257
    if-eqz v8, :cond_5

    .line 258
    .line 259
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 260
    .line 261
    .line 262
    move-result-wide v9

    .line 263
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    invoke-interface {v8, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    :cond_5
    iput-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 271
    .line 272
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 273
    .line 274
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 275
    .line 276
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 277
    .line 278
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 279
    .line 280
    const/4 v7, 0x3

    .line 281
    iput v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 282
    .line 283
    invoke-static {v6, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    if-ne v7, v1, :cond_6

    .line 288
    .line 289
    return-object v1

    .line 290
    :cond_6
    :goto_4
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 291
    .line 292
    invoke-virtual {v7}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->release()V

    .line 293
    .line 294
    .line 295
    move-object v7, v2

    .line 296
    move-object v9, v6

    .line 297
    :goto_5
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 298
    .line 299
    if-eqz v2, :cond_e

    .line 300
    .line 301
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    .line 302
    .line 303
    if-nez v6, :cond_7

    .line 304
    .line 305
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

    .line 306
    .line 307
    if-eqz v1, :cond_e

    .line 308
    .line 309
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 310
    .line 311
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 312
    .line 313
    .line 314
    move-result-wide v2

    .line 315
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    goto/16 :goto_8

    .line 323
    .line 324
    :cond_7
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 325
    .line 326
    iput-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 327
    .line 328
    iput-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 329
    .line 330
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 331
    .line 332
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$3:Ljava/lang/Object;

    .line 333
    .line 334
    iput-wide v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->J$0:J

    .line 335
    .line 336
    const/4 v6, 0x4

    .line 337
    iput v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 338
    .line 339
    invoke-static {v9, v2, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$awaitSecondDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    if-ne v2, v1, :cond_8

    .line 344
    .line 345
    return-object v1

    .line 346
    :cond_8
    move-object v12, v7

    .line 347
    move-object v13, v9

    .line 348
    :goto_6
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 349
    .line 350
    if-nez v2, :cond_9

    .line 351
    .line 352
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

    .line 353
    .line 354
    if-eqz v1, :cond_e

    .line 355
    .line 356
    iget-object v2, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 359
    .line 360
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 361
    .line 362
    .line 363
    move-result-wide v2

    .line 364
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    goto/16 :goto_8

    .line 372
    .line 373
    :cond_9
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 374
    .line 375
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->reset()V

    .line 376
    .line 377
    .line 378
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 379
    .line 380
    invoke-static {}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$getNoPressGesture$p()Lat/n;

    .line 381
    .line 382
    .line 383
    move-result-object v7

    .line 384
    if-eq v6, v7, :cond_a

    .line 385
    .line 386
    iget-object v14, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$$this$coroutineScope:Lgt/g0;

    .line 387
    .line 388
    new-instance v6, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$3;

    .line 389
    .line 390
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onPress:Lat/n;

    .line 391
    .line 392
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 393
    .line 394
    invoke-direct {v6, v7, v8, v2, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$3;-><init>(Lat/n;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrs/c;)V

    .line 395
    .line 396
    .line 397
    const/16 v18, 0x3

    .line 398
    .line 399
    const/16 v19, 0x0

    .line 400
    .line 401
    const/4 v15, 0x0

    .line 402
    const/16 v16, 0x0

    .line 403
    .line 404
    move-object/from16 v17, v6

    .line 405
    .line 406
    invoke-static/range {v14 .. v19}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 407
    .line 408
    .line 409
    :cond_a
    :try_start_4
    new-instance v14, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$4;

    .line 410
    .line 411
    iget-object v7, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 412
    .line 413
    iget-object v8, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onDoubleTap:Lkotlin/jvm/functions/Function1;

    .line 414
    .line 415
    iget-object v9, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

    .line 416
    .line 417
    const/4 v11, 0x0

    .line 418
    move-object v6, v14

    .line 419
    move-object v10, v12

    .line 420
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1$4;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 421
    .line 422
    .line 423
    iput-object v13, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 424
    .line 425
    iput-object v12, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 426
    .line 427
    iput-object v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 428
    .line 429
    const/4 v6, 0x5

    .line 430
    iput v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 431
    .line 432
    invoke-interface {v13, v4, v5, v14, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v2
    :try_end_4
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_4 .. :try_end_4} :catch_3

    .line 436
    if-ne v2, v1, :cond_e

    .line 437
    .line 438
    return-object v1

    .line 439
    :catch_3
    move-object v4, v12

    .line 440
    move-object v5, v13

    .line 441
    :catch_4
    iget-object v6, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onTap:Lkotlin/jvm/functions/Function1;

    .line 442
    .line 443
    if-eqz v6, :cond_b

    .line 444
    .line 445
    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 448
    .line 449
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 450
    .line 451
    .line 452
    move-result-wide v7

    .line 453
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-interface {v6, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    :cond_b
    iget-object v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$onLongPress:Lkotlin/jvm/functions/Function1;

    .line 461
    .line 462
    if-eqz v4, :cond_c

    .line 463
    .line 464
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 465
    .line 466
    .line 467
    move-result-wide v6

    .line 468
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 469
    .line 470
    .line 471
    move-result-object v2

    .line 472
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    :cond_c
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$0:Ljava/lang/Object;

    .line 476
    .line 477
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$1:Ljava/lang/Object;

    .line 478
    .line 479
    iput-object v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->L$2:Ljava/lang/Object;

    .line 480
    .line 481
    const/4 v2, 0x6

    .line 482
    iput v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->label:I

    .line 483
    .line 484
    invoke-static {v5, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->access$consumeUntilUp(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    if-ne v2, v1, :cond_d

    .line 489
    .line 490
    return-object v1

    .line 491
    :cond_d
    :goto_7
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2$1$1;->$pressScope:Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 492
    .line 493
    invoke-virtual {v1}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->release()V

    .line 494
    .line 495
    .line 496
    :cond_e
    :goto_8
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 497
    .line 498
    return-object v1

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
