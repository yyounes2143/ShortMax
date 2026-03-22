.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->C(Lkotlin/jvm/functions/Function1;)V
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
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$queryPopularShorts$1"
    f = "CampaignRepo.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->i:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->i(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->h:I

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->d(Lrs/c;)Ljava/lang/Object;

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
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    sget-object v1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->h(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lkg/b;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lkg/b;->n(Lcom/startshorts/androidplayer/bean/shorts/PopularShorts;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_4
    :goto_1
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 83
    .line 84
    const/4 v8, 0x6

    .line 85
    const/4 v9, 0x0

    .line 86
    const-string v4, "popular_shorts_not_find"

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lud/b;->a:Lud/b;

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Lud/b;->j3(Z)V

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 100
    invoke-static {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->l(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$queryPopularShorts$1;->i:Lkotlin/jvm/functions/Function1;

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1
.end method
