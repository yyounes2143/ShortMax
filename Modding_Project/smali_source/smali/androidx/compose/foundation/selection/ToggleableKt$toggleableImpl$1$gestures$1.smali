.class final Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Toggleable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
    c = "androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$gestures$1"
    f = "Toggleable.kt"
    l = {
        0x10e
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
.method constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            "Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p2

    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, v7, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    return-object v7
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    iget v1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->label:I

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
    goto :goto_0

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
    iget-object p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputScope;

    .line 30
    .line 31
    new-instance v1, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$1;

    .line 32
    .line 33
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 36
    .line 37
    iget-object v6, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$pressedInteraction:Landroidx/compose/runtime/MutableState;

    .line 38
    .line 39
    iget-object v7, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$delayPressInteraction:Landroidx/compose/runtime/State;

    .line 40
    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v3, v1

    .line 43
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$1;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lrs/c;)V

    .line 44
    .line 45
    .line 46
    new-instance v3, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$2;

    .line 47
    .line 48
    iget-boolean v4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$enabled:Z

    .line 49
    .line 50
    iget-object v5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->$onClickState:Landroidx/compose/runtime/State;

    .line 51
    .line 52
    invoke-direct {v3, v4, v5}, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1$2;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 53
    .line 54
    .line 55
    iput v2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleableImpl$1$gestures$1;->label:I

    .line 56
    .line 57
    invoke-static {p1, v1, v3, p0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->detectTapAndPress(Landroidx/compose/ui/input/pointer/PointerInputScope;Lat/n;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v0, :cond_2

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1
.end method
