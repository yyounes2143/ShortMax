.class final Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpRequestLifecycle.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;->c(Lio/ktor/client/plugins/HttpRequestLifecycle;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lds/c<",
        "Ljava/lang/Object;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        ">;",
        "Ljava/lang/Object;",
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
    c = "io.ktor.client.plugins.HttpRequestLifecycle$Plugin$install$1"
    f = "HttpRequestLifecycle.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lio/ktor/client/HttpClient;


# direct methods
.method constructor <init>(Lio/ktor/client/HttpClient;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClient;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->j:Lio/ktor/client/HttpClient;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lds/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lds/c<",
            "Ljava/lang/Object;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            ">;",
            "Ljava/lang/Object;",
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
    new-instance p2, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->j:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    invoke-direct {p2, v0, p3}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p2, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lds/c;

    .line 2
    .line 3
    check-cast p3, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
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
    iget v1, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->h:I

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
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lgt/s;

    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

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
    iget-object p1, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lds/c;

    .line 36
    .line 37
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 42
    .line 43
    invoke-virtual {v1}, Lio/ktor/client/request/HttpRequestBuilder;->g()Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lgt/r1;->a(Lkotlinx/coroutines/r;)Lgt/s;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->j:Lio/ktor/client/HttpClient;

    .line 52
    .line 53
    invoke-virtual {v3}, Lio/ktor/client/HttpClient;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v4, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 58
    .line 59
    invoke-interface {v3, v4}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    check-cast v3, Lkotlinx/coroutines/r;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lio/ktor/client/plugins/HttpRequestLifecycleKt;->a(Lgt/s;Lkotlinx/coroutines/r;)V

    .line 69
    .line 70
    .line 71
    :try_start_1
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lio/ktor/client/request/HttpRequestBuilder;

    .line 76
    .line 77
    invoke-virtual {v3, v1}, Lio/ktor/client/request/HttpRequestBuilder;->m(Lkotlinx/coroutines/r;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->i:Ljava/lang/Object;

    .line 81
    .line 82
    iput v2, p0, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;->h:I

    .line 83
    .line 84
    invoke-virtual {p1, p0}, Lds/c;->c(Lrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    if-ne p1, v0, :cond_2

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_2
    move-object v0, v1

    .line 92
    :goto_0
    invoke-interface {v0}, Lgt/s;->complete()Z

    .line 93
    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1

    .line 98
    :catchall_1
    move-exception p1

    .line 99
    move-object v0, v1

    .line 100
    :goto_1
    :try_start_2
    invoke-interface {v0, p1}, Lgt/s;->d(Ljava/lang/Throwable;)Z

    .line 101
    .line 102
    .line 103
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    invoke-interface {v0}, Lgt/s;->complete()Z

    .line 106
    .line 107
    .line 108
    throw p1
.end method
