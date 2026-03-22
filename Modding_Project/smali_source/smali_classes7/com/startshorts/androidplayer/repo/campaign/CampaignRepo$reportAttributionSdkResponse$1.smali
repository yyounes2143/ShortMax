.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->K(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V
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
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRepo$reportAttributionSdkResponse$1"
    f = "CampaignRepo.kt"
    l = {
        0xa7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;


# direct methods
.method constructor <init>(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->i:Z

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;-><init>(ZLcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->h:I

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
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->i:Z

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->h(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lkg/b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lkg/b;->i(Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->i(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getSource()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getCampaignInfo()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->h:I

    .line 67
    .line 68
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->i(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v0, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 76
    .line 77
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->h(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Lkg/b;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lkg/b;->g(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->j(Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo$reportAttributionSdkResponse$1;->j:Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/campaign/AttributionSdkResponse;->getId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1
.end method
