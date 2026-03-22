.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectVerticalDragGestures$5$1"
    f = "DragGestureDetector.kt"
    l = {
        0x1b0,
        0x1b2,
        0x1ba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onDragCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStart:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onVerticalDrag:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onVerticalDrag:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onVerticalDrag:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
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
    iget v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 34
    .line 35
    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 57
    .line 58
    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    iput v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->label:I

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    invoke-static {p1, v1, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-ne v1, v0, :cond_4

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_4
    move-object v11, v1

    .line 71
    move-object v1, p1

    .line 72
    move-object p1, v11

    .line 73
    :goto_0
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 74
    .line 75
    new-instance v10, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 76
    .line 77
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    new-instance v8, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1;

    .line 89
    .line 90
    invoke-direct {v8, v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1;-><init>(Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v10, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$1:Ljava/lang/Object;

    .line 96
    .line 97
    iput v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->label:I

    .line 98
    .line 99
    move-object v4, v1

    .line 100
    move-object v9, p0

    .line 101
    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->awaitVerticalPointerSlopOrCancellation-gDDlDlE(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v0, :cond_5

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_5
    move-object v3, v1

    .line 109
    move-object v1, v10

    .line 110
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 111
    .line 112
    if-eqz p1, :cond_8

    .line 113
    .line 114
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragStart:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 117
    .line 118
    .line 119
    move-result-wide v5

    .line 120
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onVerticalDrag:Lkotlin/jvm/functions/Function2;

    .line 128
    .line 129
    iget v1, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 130
    .line 131
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-interface {v4, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 139
    .line 140
    .line 141
    move-result-wide v4

    .line 142
    new-instance p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1$1;

    .line 143
    .line 144
    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onVerticalDrag:Lkotlin/jvm/functions/Function2;

    .line 145
    .line 146
    invoke-direct {p1, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$0:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->L$1:Ljava/lang/Object;

    .line 153
    .line 154
    iput v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->label:I

    .line 155
    .line 156
    invoke-static {v3, v4, v5, p1, p0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->verticalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v0, :cond_6

    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_7

    .line 170
    .line 171
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    .line 172
    .line 173
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_7
    iget-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectVerticalDragGestures$5$1;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    .line 178
    .line 179
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1
.end method
