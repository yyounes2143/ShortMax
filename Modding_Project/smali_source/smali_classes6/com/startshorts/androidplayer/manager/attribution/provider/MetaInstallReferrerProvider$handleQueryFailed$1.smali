.class final Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MetaInstallReferrerProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;->v(Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.manager.attribution.provider.MetaInstallReferrerProvider$handleQueryFailed$1"
    f = "MetaInstallReferrerProvider.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "handleQueryFailed -> "

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->i:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v3, "CampaignNewTag"

    .line 49
    .line 50
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 54
    .line 55
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->i:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->g(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->j:Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider;

    .line 66
    .line 67
    const-string v4, ""

    .line 68
    .line 69
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v1, Lud/b;->a:Lud/b;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lud/b;->U2(Z)V

    .line 75
    .line 76
    .line 77
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->u()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    const-string v1, "MetaInstallReferrerProvider handleQueryFailed isAllAttributionHandleNotCampaign"

    .line 92
    .line 93
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 99
    .line 100
    .line 101
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 102
    .line 103
    iput v2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/MetaInstallReferrerProvider$handleQueryFailed$1;->h:I

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->l(Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-ne p1, v0, :cond_3

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1
.end method
