.class final Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.ScrollableKt$mouseWheelScroll$1$1"
    f = "Scrollable.kt"
    l = {
        0x111
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

.field final synthetic $scrollingLogicState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollConfig;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollConfig;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollConfig;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->label:I

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
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    :cond_2
    :goto_0
    iput-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->L$0:Ljava/lang/Object;

    .line 37
    .line 38
    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->label:I

    .line 39
    .line 40
    invoke-static {v1, p0}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$awaitScrollEvent(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_3
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, 0x0

    .line 58
    move v6, v5

    .line 59
    :goto_2
    if-ge v6, v4, :cond_5

    .line 60
    .line 61
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 66
    .line 67
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$mouseWheelScrollConfig:Landroidx/compose/foundation/gestures/ScrollConfig;

    .line 78
    .line 79
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableKt$mouseWheelScroll$1$1;->$scrollingLogicState:Landroidx/compose/runtime/State;

    .line 80
    .line 81
    invoke-interface {v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    .line 82
    .line 83
    .line 84
    move-result-wide v6

    .line 85
    invoke-interface {v3, v1, p1, v6, v7}, Landroidx/compose/foundation/gestures/ScrollConfig;->calculateMouseWheelScroll-8xgXZGE(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/input/pointer/PointerEvent;J)J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 94
    .line 95
    invoke-virtual {v3, v6, v7}, Landroidx/compose/foundation/gestures/ScrollingLogic;->toFloat-k-4lQ0M(J)F

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->reverseIfNeeded(F)F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getScrollableState()Landroidx/compose/foundation/gestures/ScrollableState;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-interface {v3, v4}, Landroidx/compose/foundation/gestures/ScrollableState;->dispatchRawDelta(F)F

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    const/4 v4, 0x0

    .line 112
    cmpg-float v3, v3, v4

    .line 113
    .line 114
    if-nez v3, :cond_6

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    :goto_3
    if-ge v5, v3, :cond_2

    .line 126
    .line 127
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    goto :goto_3
.end method
