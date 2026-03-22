.class final Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ConfigRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
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
    c = "com.startshorts.androidplayer.repo.config.ConfigRepo$queryAppClientLogConfig$1"
    f = "ConfigRepo.kt"
    l = {
        0xc2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->g(Lcom/startshorts/androidplayer/repo/config/ConfigRepo;)Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRemoteDS;->a(Lrs/c;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-ne p1, v0, :cond_2

    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    :cond_3
    check-cast p1, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->allowReport()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p1

    .line 68
    :cond_4
    sget-object v0, Lud/b;->a:Lud/b;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getId()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;->getUserId()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lud/b;->h2(II)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance v1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;

    .line 87
    .line 88
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo$queryAppClientLogConfig$1$a;-><init>(Lcom/startshorts/androidplayer/bean/configure/ClientLogConfig;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->l(Lyd/f;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method
