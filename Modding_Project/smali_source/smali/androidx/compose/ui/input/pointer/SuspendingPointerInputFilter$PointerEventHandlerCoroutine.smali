.class final Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;
.super Ljava/lang/Object;
.source "SuspendingPointerInputFilter.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
.implements Landroidx/compose/ui/unit/Density;
.implements Lrs/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PointerEventHandlerCoroutine"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Landroidx/compose/ui/unit/Density;",
        "Lrs/c<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

.field private awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final completion:Lrs/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrs/c<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pointerAwaiter:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;Lrs/c;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->completion:Lrs/c;

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 18
    .line 19
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    .line 22
    .line 23
    return-void
.end method

.method public static final synthetic access$getPointerAwaiter$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;)Lgt/i;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setAwaitPass$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setPointerAwaiter$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lgt/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->access$setAwaitPass$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Landroidx/compose/ui/input/pointer/PointerEventPass;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->access$setPointerAwaiter$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lgt/i;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-object p1
.end method

.method public final cancel(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lgt/i;->cancel(Ljava/lang/Throwable;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 10
    .line 11
    return-void
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->context:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->access$getCurrentEvent$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getDensity()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getExtendedTouchPadding-NH-jbRc()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getExtendedTouchPadding-NH-jbRc()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFontScale()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getFontScale()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getSize-YbymL2g()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->access$getBoundsSize$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final offerPointerEvent(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->awaitPass:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 12
    .line 13
    if-ne p2, v0, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 16
    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->access$getPointerHandlers$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->access$getPointerHandlers$p(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;)Landroidx/compose/runtime/collection/MutableVector;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->completion:Lrs/c;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    monitor-exit v0

    .line 28
    throw p1
.end method

.method public roundToPx--R2X_6o(J)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->roundToPx--R2X_6o(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public roundToPx-0680j_4(F)I
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->roundToPx-0680j_4(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toDp-GaN1DYA(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toDp-GaN1DYA(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toDp-u2uoSUM(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toDp-u2uoSUM(F)F

    move-result p1

    return p1
.end method

.method public toDp-u2uoSUM(I)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toDp-u2uoSUM(I)F

    move-result p1

    return p1
.end method

.method public toDpSize-k-rfVVM(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toDpSize-k-rfVVM(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public toPx--R2X_6o(J)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toPx--R2X_6o(J)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toPx-0680j_4(F)F
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toPx-0680j_4(F)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .param p1    # Landroidx/compose/ui/unit/DpRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public toSize-XkaWNTQ(J)J
    .locals 1
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toSize-XkaWNTQ(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public toSp-0xMU5do(F)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toSp-0xMU5do(F)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public toSp-kPz2Gy4(F)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toSp-kPz2Gy4(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public toSp-kPz2Gy4(I)J
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->$$delegate_0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->toSp-kPz2Gy4(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public withTimeout(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lrs/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lkotlinx/coroutines/r;

    .line 42
    .line 43
    :try_start_0
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p2

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v5, 0x0

    .line 61
    .line 62
    cmp-long p4, p1, v5

    .line 63
    .line 64
    if-gtz p4, :cond_3

    .line 65
    .line 66
    iget-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->pointerAwaiter:Lgt/i;

    .line 67
    .line 68
    if-eqz p4, :cond_3

    .line 69
    .line 70
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 71
    .line 72
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;

    .line 73
    .line 74
    invoke-direct {v2, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException;-><init>(J)V

    .line 75
    .line 76
    .line 77
    invoke-static {v2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {p4, v2}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object p4, p0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->this$0:Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;

    .line 89
    .line 90
    invoke-virtual {p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter;->getCoroutineScope()Lgt/g0;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    new-instance v8, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1;

    .line 95
    .line 96
    invoke-direct {v8, p1, p2, p0, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1;-><init>(JLandroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lrs/c;)V

    .line 97
    .line 98
    .line 99
    const/4 v9, 0x3

    .line 100
    const/4 v10, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :try_start_1
    iput-object p1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    iput v3, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;->label:I

    .line 110
    .line 111
    invoke-interface {p3, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    if-ne p4, v1, :cond_4

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_4
    :goto_1
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object p4

    .line 122
    :goto_2
    invoke-static {p1, v4, v3, v4}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    throw p2
.end method

.method public withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lrs/c<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;-><init>(Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iput v3, v0, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;->label:I

    .line 54
    .line 55
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilter$PointerEventHandlerCoroutine;->withTimeout(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p4
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    if-ne p4, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :catch_0
    const/4 p4, 0x0

    .line 63
    :cond_3
    :goto_1
    return-object p4
.end method
