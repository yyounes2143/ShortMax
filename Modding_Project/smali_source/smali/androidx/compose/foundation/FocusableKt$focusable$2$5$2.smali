.class final Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Focusable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/FocusableKt$focusable$2$5;->invoke(Landroidx/compose/ui/focus/FocusState;)V
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
    c = "androidx.compose.foundation.FocusableKt$focusable$2$5$2"
    f = "Focusable.kt"
    l = {
        0x98,
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $focusedInteraction:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/interaction/FocusInteraction$Focus;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

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
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    invoke-interface {p1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 53
    .line 54
    iget-object v4, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 55
    .line 56
    new-instance v5, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    .line 57
    .line 58
    invoke-direct {v5, p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;-><init>(Landroidx/compose/foundation/interaction/FocusInteraction$Focus;)V

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    iput-object v4, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v3, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->label:I

    .line 66
    .line 67
    invoke-interface {v1, v5, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    move-object v1, v4

    .line 75
    :goto_0
    move-object v4, v1

    .line 76
    :cond_4
    const/4 p1, 0x0

    .line 77
    invoke-interface {v4, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_5
    new-instance p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 81
    .line 82
    invoke-direct {p1}, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 86
    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->label:I

    .line 92
    .line 93
    invoke-interface {v1, p1, p0}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->emit(Landroidx/compose/foundation/interaction/Interaction;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-ne v1, v0, :cond_6

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_6
    move-object v0, p1

    .line 101
    :goto_1
    move-object p1, v0

    .line 102
    :cond_7
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$2;->$focusedInteraction:Landroidx/compose/runtime/MutableState;

    .line 103
    .line 104
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    return-object p1
.end method
