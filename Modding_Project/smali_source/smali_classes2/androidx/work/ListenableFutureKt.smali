.class public final Landroidx/work/ListenableFutureKt;
.super Ljava/lang/Object;
.source "ListenableFuture.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final await(Lcom/google/common/util/concurrent/e;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/google/common/util/concurrent/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/e<",
            "TR;>;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p0, p1

    .line 21
    :goto_0
    throw p0

    .line 22
    :cond_1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    .line 36
    .line 37
    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lgt/i;Lcom/google/common/util/concurrent/e;)V

    .line 38
    .line 39
    .line 40
    sget-object v2, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 41
    .line 42
    invoke-interface {p0, v1, v2}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-ne p0, v0, :cond_2

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-object p0
.end method

.method private static final await$$forInline(Lcom/google/common/util/concurrent/e;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/e<",
            "TR;>;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object p0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    move-object p0, p1

    .line 20
    :cond_0
    throw p0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lkotlinx/coroutines/e;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    .line 39
    .line 40
    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lgt/i;Lcom/google/common/util/concurrent/e;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 44
    .line 45
    invoke-interface {p0, v1, v3}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-ne p0, v0, :cond_2

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 72
    .line 73
    .line 74
    return-object p0
.end method
