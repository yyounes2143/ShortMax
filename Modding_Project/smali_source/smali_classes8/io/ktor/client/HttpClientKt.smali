.class public final Lio/ktor/client/HttpClientKt;
.super Ljava/lang/Object;
.source "HttpClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lor/e;Lkotlin/jvm/functions/Function1;)Lio/ktor/client/HttpClient;
    .locals 2
    .param p0    # Lor/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lor/d;",
            ">(",
            "Lor/e<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/HttpClientConfig<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/HttpClient;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "engineFactory"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/ktor/client/HttpClientConfig;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/ktor/client/HttpClientConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/ktor/client/HttpClientConfig;->c()Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Lor/e;->a(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/engine/HttpClientEngine;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Lio/ktor/client/HttpClient;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {p1, p0, v0, v1}, Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lio/ktor/client/HttpClient;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Lkotlinx/coroutines/r;->G8:Lkotlinx/coroutines/r$b;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$b;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Lkotlinx/coroutines/r;

    .line 47
    .line 48
    new-instance v1, Lio/ktor/client/HttpClientKt$HttpClient$2;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lio/ktor/client/HttpClientKt$HttpClient$2;-><init>(Lio/ktor/client/engine/HttpClientEngine;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v1}, Lkotlinx/coroutines/r;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lgt/s0;

    .line 54
    .line 55
    .line 56
    return-object p1
.end method
