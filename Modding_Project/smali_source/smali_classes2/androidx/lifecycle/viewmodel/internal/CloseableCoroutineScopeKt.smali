.class public final Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScopeKt;
.super Ljava/lang/Object;
.source "CloseableCoroutineScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final VIEW_MODEL_SCOPE_KEY:Ljava/lang/String; = "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final asCloseable(Lgt/g0;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;
    .locals 1
    .param p0    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;-><init>(Lgt/g0;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final createViewModelScope()Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lgt/j1;->m()Lgt/j1;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Lkotlin/NotImplementedError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 14
    .line 15
    :goto_0
    new-instance v1, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v3, v2, v3}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v0, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method
