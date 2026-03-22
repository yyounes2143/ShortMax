.class final Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS;->e(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchTabPage$2"
    f = "DiscoverRemoteDS.kt"
    l = {
        0x22,
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->i:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->i:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;-><init>(ILjava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->h:I

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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->i1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->i:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->j:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->k:Ljava/lang/String;

    .line 67
    .line 68
    iput v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->h:I

    .line 69
    .line 70
    invoke-interface {p1, v1, v2, v4, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->B1(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v0, :cond_3

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iget v1, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->i:I

    .line 87
    .line 88
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->j:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->k:Ljava/lang/String;

    .line 91
    .line 92
    iput v2, p0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRemoteDS$fetchTabPage$2;->h:I

    .line 93
    .line 94
    invoke-interface {p1, v1, v3, v4, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->V0(ILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v0, :cond_5

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_5
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 102
    .line 103
    :goto_2
    return-object p1
.end method
