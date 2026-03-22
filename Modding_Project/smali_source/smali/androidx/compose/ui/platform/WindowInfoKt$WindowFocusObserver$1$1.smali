.class final Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WindowInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/WindowInfoKt;->WindowFocusObserver(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
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
    c = "androidx.compose.ui.platform.WindowInfoKt$WindowFocusObserver$1$1"
    f = "WindowInfo.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $windowInfo:Landroidx/compose/ui/platform/WindowInfo;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/WindowInfo;Landroidx/compose/runtime/State;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/WindowInfo;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$callback:Landroidx/compose/runtime/State;

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
    new-instance p1, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$callback:Landroidx/compose/runtime/State;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;-><init>(Landroidx/compose/ui/platform/WindowInfo;Landroidx/compose/runtime/State;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->label:I

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
    new-instance p1, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1$1;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$windowInfo:Landroidx/compose/ui/platform/WindowInfo;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1$1;-><init>(Landroidx/compose/ui/platform/WindowInfo;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkt/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v1, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1$2;

    .line 39
    .line 40
    iget-object v3, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->$callback:Landroidx/compose/runtime/State;

    .line 41
    .line 42
    invoke-direct {v1, v3}, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1$2;-><init>(Landroidx/compose/runtime/State;)V

    .line 43
    .line 44
    .line 45
    iput v2, p0, Landroidx/compose/ui/platform/WindowInfoKt$WindowFocusObserver$1$1;->label:I

    .line 46
    .line 47
    invoke-interface {p1, v1, p0}, Lkt/b;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p1
.end method
