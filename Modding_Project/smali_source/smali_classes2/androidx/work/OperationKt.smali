.class public final Landroidx/work/OperationKt;
.super Ljava/lang/Object;
.source "Operation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final await(Landroidx/work/Operation;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p0    # Landroidx/work/Operation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lrs/c<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/work/OperationKt$await$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/work/OperationKt$await$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/work/OperationKt$await$1;->label:I

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
    iput v1, v0, Landroidx/work/OperationKt$await$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/work/OperationKt$await$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroidx/work/OperationKt$await$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/work/OperationKt$await$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/work/OperationKt$await$1;->label:I

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
    iget-object p0, v0, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/google/common/util/concurrent/e;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/e;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "result"

    .line 62
    .line 63
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_3

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    move-object p0, p1

    .line 86
    :goto_1
    throw p0

    .line 87
    :cond_4
    iput-object p0, v0, Landroidx/work/OperationKt$await$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput v3, v0, Landroidx/work/OperationKt$await$1;->label:I

    .line 90
    .line 91
    new-instance p1, Lkotlinx/coroutines/e;

    .line 92
    .line 93
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {p1, v2, v3}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->H()V

    .line 101
    .line 102
    .line 103
    new-instance v2, Landroidx/work/ListenableFutureKt$await$2$1;

    .line 104
    .line 105
    invoke-direct {v2, p1, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lgt/i;Lcom/google/common/util/concurrent/e;)V

    .line 106
    .line 107
    .line 108
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 109
    .line 110
    invoke-interface {p0, v2, v3}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 111
    .line 112
    .line 113
    new-instance v2, Landroidx/work/ListenableFutureKt$await$2$2;

    .line 114
    .line 115
    invoke-direct {v2, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {p1, v2}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    if-ne p1, p0, :cond_5

    .line 130
    .line 131
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 132
    .line 133
    .line 134
    :cond_5
    if-ne p1, v1, :cond_6

    .line 135
    .line 136
    return-object v1

    .line 137
    :cond_6
    :goto_2
    move-object p0, p1

    .line 138
    :goto_3
    const-string p1, "result.await()"

    .line 139
    .line 140
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object p0
.end method

.method private static final await$$forInline(Landroidx/work/Operation;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/Operation;",
            "Lrs/c<",
            "-",
            "Landroidx/work/Operation$State$SUCCESS;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/work/Operation;->getResult()Lcom/google/common/util/concurrent/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "result"

    .line 6
    .line 7
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    move-object p0, p1

    .line 29
    :cond_0
    throw p0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lkotlinx/coroutines/e;

    .line 35
    .line 36
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$1;

    .line 48
    .line 49
    invoke-direct {v1, v0, p0}, Landroidx/work/ListenableFutureKt$await$2$1;-><init>(Lgt/i;Lcom/google/common/util/concurrent/e;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, Landroidx/work/DirectExecutor;->INSTANCE:Landroidx/work/DirectExecutor;

    .line 53
    .line 54
    invoke-interface {p0, v1, v3}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroidx/work/ListenableFutureKt$await$2$2;

    .line 58
    .line 59
    invoke-direct {v1, p0}, Landroidx/work/ListenableFutureKt$await$2$2;-><init>(Lcom/google/common/util/concurrent/e;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lgt/i;->u(Lkotlin/jvm/functions/Function1;)V

    .line 63
    .line 64
    .line 65
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-ne p0, v0, :cond_2

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    const-string p1, "result.await()"

    .line 84
    .line 85
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object p0
.end method
