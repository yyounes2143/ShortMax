.class final Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpPlainText.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpPlainText$Plugin;->c(Lio/ktor/client/plugins/HttpPlainText;Lio/ktor/client/HttpClient;)V
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
    c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$1"
    f = "HttpPlainText.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field final synthetic k:Lio/ktor/client/plugins/HttpPlainText;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/HttpPlainText;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/HttpPlainText;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpPlainText;

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
    .locals 2
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
    new-instance v0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpPlainText;

    .line 4
    .line 5
    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpPlainText;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, v0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->j:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    check-cast p1, Lds/c;

    .line 2
    .line 3
    check-cast p3, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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
    iget v1, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->h:I

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
    iget-object p1, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lds/c;

    .line 30
    .line 31
    iget-object v1, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->j:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v3, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpPlainText;

    .line 34
    .line 35
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lio/ktor/client/request/HttpRequestBuilder;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lio/ktor/client/plugins/HttpPlainText;->c(Lio/ktor/client/request/HttpRequestBuilder;)V

    .line 42
    .line 43
    .line 44
    instance-of v3, v1, Ljava/lang/String;

    .line 45
    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_2
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lwr/l;

    .line 56
    .line 57
    invoke-static {v3}, Lio/ktor/http/d;->d(Lwr/l;)Lio/ktor/http/a;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Lio/ktor/http/a;->e()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    sget-object v5, Lio/ktor/http/a$c;->a:Lio/ktor/http/a$c;

    .line 68
    .line 69
    invoke-virtual {v5}, Lio/ktor/http/a$c;->a()Lio/ktor/http/a;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v5}, Lio/ktor/http/a;->e()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_3

    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_3
    iget-object v4, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->k:Lio/ktor/client/plugins/HttpPlainText;

    .line 87
    .line 88
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lio/ktor/client/request/HttpRequestBuilder;

    .line 93
    .line 94
    check-cast v1, Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v4, v5, v1, v3}, Lio/ktor/client/plugins/HttpPlainText;->b(Lio/ktor/client/plugins/HttpPlainText;Lio/ktor/client/request/HttpRequestBuilder;Ljava/lang/String;Lio/ktor/http/a;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const/4 v3, 0x0

    .line 101
    iput-object v3, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->i:Ljava/lang/Object;

    .line 102
    .line 103
    iput v2, p0, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;->h:I

    .line 104
    .line 105
    invoke-virtual {p1, v1, p0}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1
.end method
