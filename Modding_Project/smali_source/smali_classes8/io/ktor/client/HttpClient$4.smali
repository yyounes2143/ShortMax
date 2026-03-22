.class final Lio/ktor/client/HttpClient$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpClient.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/HttpClient;-><init>(Lio/ktor/client/engine/HttpClientEngine;Lio/ktor/client/HttpClientConfig;)V
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
        "Ltr/d;",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;",
        "Ltr/d;",
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
    c = "io.ktor.client.HttpClient$4"
    f = "HttpClient.kt"
    l = {
        0xb1
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
            "Lio/ktor/client/HttpClient$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/HttpClient$4;->j:Lio/ktor/client/HttpClient;

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
.method public final i(Lds/c;Ltr/d;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lds/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltr/d;
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
            "Ltr/d;",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;",
            "Ltr/d;",
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
    new-instance p2, Lio/ktor/client/HttpClient$4;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/HttpClient$4;->j:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    invoke-direct {p2, v0, p3}, Lio/ktor/client/HttpClient$4;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p2, Lio/ktor/client/HttpClient$4;->i:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lio/ktor/client/HttpClient$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    check-cast p2, Ltr/d;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/HttpClient$4;->i(Lds/c;Ltr/d;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
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
    iget v1, p0, Lio/ktor/client/HttpClient$4;->h:I

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
    iget-object v0, p0, Lio/ktor/client/HttpClient$4;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lds/c;

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
    iget-object p1, p0, Lio/ktor/client/HttpClient$4;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lds/c;

    .line 36
    .line 37
    :try_start_1
    iput-object p1, p0, Lio/ktor/client/HttpClient$4;->i:Ljava/lang/Object;

    .line 38
    .line 39
    iput v2, p0, Lio/ktor/client/HttpClient$4;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lds/c;->c(Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object v4, v0

    .line 53
    move-object v0, p1

    .line 54
    move-object p1, v4

    .line 55
    :goto_1
    iget-object v1, p0, Lio/ktor/client/HttpClient$4;->j:Lio/ktor/client/HttpClient;

    .line 56
    .line 57
    invoke-virtual {v1}, Lio/ktor/client/HttpClient;->l()Lvr/b;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {}, Lur/a;->d()Lvr/a;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Lur/e;

    .line 66
    .line 67
    invoke-virtual {v0}, Lds/c;->b()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lio/ktor/client/call/HttpClientCall;

    .line 72
    .line 73
    invoke-virtual {v0}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v3, v0, p1}, Lur/e;-><init>(Ltr/c;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lvr/b;->a(Lvr/a;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    throw p1
.end method
