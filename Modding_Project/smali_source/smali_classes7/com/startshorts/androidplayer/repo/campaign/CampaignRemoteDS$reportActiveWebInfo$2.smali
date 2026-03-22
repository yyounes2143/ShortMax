.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportActiveWebInfo$2"
    f = "CampaignRemoteDS.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->k:Ljava/lang/String;

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
    new-instance v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/campaign/UploadCampaignInfoResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v12

    .line 5
    iget v0, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->h:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->i()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->i:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->j:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->k:Ljava/lang/String;

    .line 39
    .line 40
    iput v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportActiveWebInfo$2;->h:I

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v9, 0x0

    .line 47
    const/16 v10, 0xea

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    move-object v1, v2

    .line 51
    move-object v2, v4

    .line 52
    move-object v4, v6

    .line 53
    move v6, v7

    .line 54
    move v7, v8

    .line 55
    move-object v8, v9

    .line 56
    move-object v9, p0

    .line 57
    invoke-static/range {v0 .. v11}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->s(Lcom/startshorts/androidplayer/manager/api/base/k$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-ne v0, v12, :cond_2

    .line 62
    .line 63
    return-object v12

    .line 64
    :cond_2
    :goto_0
    return-object v0
.end method
