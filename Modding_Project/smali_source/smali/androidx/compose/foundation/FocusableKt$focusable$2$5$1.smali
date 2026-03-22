.class final Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;
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
    c = "androidx.compose.foundation.FocusableKt$focusable$2$5$1"
    f = "Focusable.kt"
    l = {
        0x90
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $pinnableParent$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/foundation/lazy/layout/PinnableParent;",
            ">;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

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
    new-instance p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/runtime/MutableState;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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
    iget v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->label:I

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
    iget-object v0, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

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
    const/4 p1, 0x0

    .line 34
    :try_start_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$pinnableParent$delegate:Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    invoke-static {v1}, Landroidx/compose/foundation/FocusableKt$focusable$2;->access$invoke$lambda-2(Landroidx/compose/runtime/MutableState;)Landroidx/compose/foundation/lazy/layout/PinnableParent;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/PinnableParent;->pinItems()Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;

    .line 43
    .line 44
    .line 45
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    move-object v4, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    move-object v1, p1

    .line 53
    :goto_0
    :try_start_2
    iget-object v3, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 54
    .line 55
    iput-object v1, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    iput v2, p0, Landroidx/compose/foundation/FocusableKt$focusable$2$5$1;->label:I

    .line 58
    .line 59
    invoke-static {v3, p1, p0, v2, p1}, Landroidx/compose/foundation/relocation/BringIntoViewRequester;->bringIntoView$default(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/geometry/Rect;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    if-ne p1, v0, :cond_3

    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_3
    move-object v0, v1

    .line 67
    :goto_1
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->unpin()V

    .line 70
    .line 71
    .line 72
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    return-object p1

    .line 75
    :catchall_2
    move-exception p1

    .line 76
    move-object v0, v1

    .line 77
    :goto_2
    if-eqz v0, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/PinnableParent$PinnedItemsHandle;->unpin()V

    .line 80
    .line 81
    .line 82
    :cond_5
    throw p1
.end method
