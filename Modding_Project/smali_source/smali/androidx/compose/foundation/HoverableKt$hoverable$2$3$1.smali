.class final Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Hoverable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableKt$hoverable$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.HoverableKt$hoverable$2$3$1"
    f = "Hoverable.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentContext:Lkotlin/coroutines/CoroutineContext;

.field final synthetic $hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $scope:Lgt/g0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Lgt/g0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lgt/g0;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/HoverInteraction$Enter;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lgt/g0;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

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
    new-instance v6, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/CoroutineContext;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lgt/g0;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lgt/g0;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 35
    .line 36
    move-object v1, p1

    .line 37
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$currentContext:Lkotlin/coroutines/CoroutineContext;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/t;->p(Lkotlin/coroutines/CoroutineContext;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_5

    .line 44
    .line 45
    iput-object v1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    iput v2, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->label:I

    .line 48
    .line 49
    invoke-static {v1, v3, p0, v2, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-static {p1, v5}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    iget-object v6, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lgt/g0;

    .line 75
    .line 76
    new-instance v9, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$1;

    .line 77
    .line 78
    iget-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 79
    .line 80
    iget-object v4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    .line 82
    invoke-direct {v9, p1, v4, v3}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 83
    .line 84
    .line 85
    const/4 v10, 0x3

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {p1, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object v4, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$scope:Lgt/g0;

    .line 104
    .line 105
    new-instance v7, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$2;

    .line 106
    .line 107
    iget-object p1, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$hoverInteraction$delegate:Landroidx/compose/runtime/MutableState;

    .line 108
    .line 109
    iget-object v5, p0, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 110
    .line 111
    invoke-direct {v7, p1, v5, v3}, Landroidx/compose/foundation/HoverableKt$hoverable$2$3$1$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lrs/c;)V

    .line 112
    .line 113
    .line 114
    const/4 v8, 0x3

    .line 115
    const/4 v9, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-static/range {v4 .. v9}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    return-object p1
.end method
