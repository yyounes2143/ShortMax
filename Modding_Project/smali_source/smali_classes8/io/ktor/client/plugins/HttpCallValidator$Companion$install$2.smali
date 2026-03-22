.class final Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;
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
    c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$2"
    f = "HttpCallValidator.kt"
    l = {
        0x8e,
        0x91
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
            "Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->k:Lio/ktor/client/plugins/HttpCallValidator;

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
    .locals 2
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
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->k:Lio/ktor/client/plugins/HttpCallValidator;

    .line 4
    .line 5
    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p2, v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->j:Ljava/lang/Object;

    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    check-cast p2, Ltr/d;

    .line 4
    .line 5
    check-cast p3, Lrs/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i(Lds/c;Ltr/d;Lrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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
    iget v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->h:I

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
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Throwable;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lds/c;

    .line 34
    .line 35
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v1, p1

    .line 47
    check-cast v1, Lds/c;

    .line 48
    .line 49
    iget-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->j:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ltr/d;

    .line 52
    .line 53
    :try_start_1
    iput-object v1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 54
    .line 55
    iput v3, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->h:I

    .line 56
    .line 57
    invoke-virtual {v1, p1, p0}, Lds/c;->d(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-ne p1, v0, :cond_3

    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1

    .line 67
    :goto_1
    invoke-static {p1}, Lur/c;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v3, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->k:Lio/ktor/client/plugins/HttpCallValidator;

    .line 72
    .line 73
    invoke-virtual {v1}, Lds/c;->b()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lio/ktor/client/call/HttpClientCall;

    .line 78
    .line 79
    invoke-virtual {v1}, Lio/ktor/client/call/HttpClientCall;->d()Lsr/b;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object p1, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->i:Ljava/lang/Object;

    .line 84
    .line 85
    iput v2, p0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;->h:I

    .line 86
    .line 87
    invoke-static {v3, p1, v1, p0}, Lio/ktor/client/plugins/HttpCallValidator;->c(Lio/ktor/client/plugins/HttpCallValidator;Ljava/lang/Throwable;Lsr/b;Lrs/c;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-ne v1, v0, :cond_4

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    move-object v0, p1

    .line 95
    :goto_2
    throw v0
.end method
