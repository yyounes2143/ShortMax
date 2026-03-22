.class final Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/ClickableKt$combinedClickable$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
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
    c = "androidx.compose.foundation.ClickableKt$combinedClickable$4$gesture$1"
    f = "Clickable.kt"
    l = {
        0x13e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $delayPressInteraction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $hasDoubleClick:Z

.field final synthetic $hasLongClick:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onDoubleClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $onLongClickState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $pressedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasDoubleClick:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasLongClick:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onLongClickState:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 12
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
    new-instance v11, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasDoubleClick:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasLongClick:Z

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onLongClickState:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 14
    .line 15
    iget-object v7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    iget-object v8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 18
    .line 19
    iget-object v9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 20
    .line 21
    move-object v0, v11

    .line 22
    move-object v10, p2

    .line 23
    invoke-direct/range {v0 .. v10}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;-><init>(ZZZLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v11, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->L$0:Ljava/lang/Object;

    .line 27
    .line 28
    return-object v11
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputScope;
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
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->label:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 31
    .line 32
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasDoubleClick:Z

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;

    .line 42
    .line 43
    iget-object v4, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onDoubleClickState:Landroidx/compose/runtime/State;

    .line 44
    .line 45
    invoke-direct {p1, v4}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$1;-><init>(Landroidx/compose/runtime/State;)V

    .line 46
    .line 47
    .line 48
    move-object v4, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v4, v1

    .line 51
    :goto_0
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$hasLongClick:Z

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-boolean p1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$2;

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onLongClickState:Landroidx/compose/runtime/State;

    .line 62
    .line 63
    invoke-direct {p1, v1}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$2;-><init>(Landroidx/compose/runtime/State;)V

    .line 64
    .line 65
    .line 66
    move-object v5, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move-object v5, v1

    .line 69
    :goto_1
    new-instance p1, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$3;

    .line 70
    .line 71
    iget-boolean v7, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 72
    .line 73
    iget-object v8, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 74
    .line 75
    iget-object v9, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 76
    .line 77
    iget-object v10, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 78
    .line 79
    const/4 v11, 0x0

    .line 80
    move-object v6, p1

    .line 81
    invoke-direct/range {v6 .. v11}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$3;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 82
    .line 83
    .line 84
    new-instance v7, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$4;

    .line 85
    .line 86
    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$enabled:Z

    .line 87
    .line 88
    iget-object v6, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 89
    .line 90
    invoke-direct {v7, v1, v6}, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1$4;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 91
    .line 92
    .line 93
    iput v2, p0, Landroidx/compose/foundation/ClickableKt$combinedClickable$4$gesture$1;->label:I

    .line 94
    .line 95
    move-object v6, p1

    .line 96
    move-object v8, p0

    .line 97
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lat/n;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_4

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    return-object p1
.end method
