.class final Lio/ktor/client/plugins/UserAgent$Plugin$install$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UserAgent.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/UserAgent$Plugin;->c(Lio/ktor/client/plugins/UserAgent;Lio/ktor/client/HttpClient;)V
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
    c = "io.ktor.client.plugins.UserAgent$Plugin$install$1"
    f = "UserAgent.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lio/ktor/client/plugins/UserAgent;


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/UserAgent;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/UserAgent;",
            "Lrs/c<",
            "-",
            "Lio/ktor/client/plugins/UserAgent$Plugin$install$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->j:Lio/ktor/client/plugins/UserAgent;

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
    new-instance p2, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;

    .line 2
    .line 3
    iget-object v0, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->j:Lio/ktor/client/plugins/UserAgent;

    .line 4
    .line 5
    invoke-direct {p2, v0, p3}, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;-><init>(Lio/ktor/client/plugins/UserAgent;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p2, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->i(Lds/c;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    iget v0, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lds/c;

    .line 14
    .line 15
    invoke-static {}, Lio/ktor/client/plugins/e;->a()Ldu/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Adding User-Agent header: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->j:Lio/ktor/client/plugins/UserAgent;

    .line 30
    .line 31
    invoke-virtual {v2}, Lio/ktor/client/plugins/UserAgent;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " for "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lio/ktor/client/request/HttpRequestBuilder;

    .line 48
    .line 49
    invoke-virtual {v2}, Lio/ktor/client/request/HttpRequestBuilder;->i()Lio/ktor/http/h;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lds/c;->b()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lwr/l;

    .line 68
    .line 69
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 70
    .line 71
    invoke-virtual {v0}, Lwr/i;->w()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lio/ktor/client/plugins/UserAgent$Plugin$install$1;->j:Lio/ktor/client/plugins/UserAgent;

    .line 76
    .line 77
    invoke-virtual {v1}, Lio/ktor/client/plugins/UserAgent;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {p1, v0, v1}, Lsr/h;->a(Lwr/l;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method
