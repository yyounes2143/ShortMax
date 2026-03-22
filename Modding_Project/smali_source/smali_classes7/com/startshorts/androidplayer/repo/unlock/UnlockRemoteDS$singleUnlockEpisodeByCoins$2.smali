.class final Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->g(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$singleUnlockEpisodeByCoins$2"
    f = "UnlockRemoteDS.kt"
    l = {
        0x73,
        0x75
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->j:Z

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->j:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeByCoinsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->h:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->j:Z

    .line 69
    .line 70
    iput v3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->h:I

    .line 71
    .line 72
    invoke-interface {p1, v1, v2, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->M1(IZLrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    :goto_0
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    iget-boolean v3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->j:Z

    .line 95
    .line 96
    iput v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$singleUnlockEpisodeByCoins$2;->h:I

    .line 97
    .line 98
    invoke-interface {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->z0(IZLrs/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_5

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_5
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/api/ServerResult;

    .line 106
    .line 107
    :goto_2
    return-object p1
.end method
