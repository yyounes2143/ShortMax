.class final Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpCallValidator.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpCallValidator$Companion;->c(Lio/ktor/client/plugins/HttpCallValidator;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lqr/h;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "Lrs/c<",
        "-",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$3"
    f = "HttpCallValidator.kt"
    l = {
        0x97,
        0x98
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lio/ktor/client/plugins/HttpCallValidator;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/HttpCallValidator;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->k:Lio/ktor/client/plugins/HttpCallValidator;

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
.method public final i(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lqr/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/request/HttpRequestBuilder;
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
            "Lqr/h;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->k:Lio/ktor/client/plugins/HttpCallValidator;

    .line 4
    .line 5
    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->j:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lqr/h;

    .line 2
    .line 3
    check-cast p2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i(Lqr/h;Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->h:I

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
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lio/ktor/client/call/HttpClientCall;

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lqr/h;

    .line 41
    .line 42
    iget-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->j:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lio/ktor/client/request/HttpRequestBuilder;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    iput-object v4, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i:Ljava/lang/Object;

    .line 48
    .line 49
    iput v3, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->h:I

    .line 50
    .line 51
    invoke-interface {p1, v1, p0}, Lqr/h;->a(Lio/ktor/client/request/HttpRequestBuilder;Lrs/c;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-ne p1, v0, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    :goto_0
    check-cast p1, Lio/ktor/client/call/HttpClientCall;

    .line 59
    .line 60
    iget-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->k:Lio/ktor/client/plugins/HttpCallValidator;

    .line 61
    .line 62
    invoke-virtual {p1}, Lio/ktor/client/call/HttpClientCall;->e()Ltr/c;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->i:Ljava/lang/Object;

    .line 67
    .line 68
    iput v2, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;->h:I

    .line 69
    .line 70
    invoke-static {v1, v3, p0}, Lio/ktor/client/plugins/HttpCallValidator;->d(Lio/ktor/client/plugins/HttpCallValidator;Ltr/c;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-ne v1, v0, :cond_4

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_4
    move-object v0, p1

    .line 78
    :goto_1
    return-object v0
.end method
