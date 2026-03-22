.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->o(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportUdlAjInfo$2"
    f = "CampaignRemoteDS.kt"
    l = {
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Z

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->i:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->m:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->i:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->m:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v15

    .line 7
    iget v0, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->h:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->i()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-boolean v2, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->i:Z

    .line 38
    .line 39
    iget-object v3, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->j:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->k:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->l:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v8, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->m:Ljava/lang/String;

    .line 46
    .line 47
    iput v1, v14, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportUdlAjInfo$2;->h:I

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/4 v10, 0x0

    .line 53
    const/4 v11, 0x0

    .line 54
    const/16 v12, 0x34c

    .line 55
    .line 56
    const/4 v13, 0x0

    .line 57
    move v1, v2

    .line 58
    move-object v2, v3

    .line 59
    move v3, v4

    .line 60
    move-object v4, v7

    .line 61
    move v7, v9

    .line 62
    move-object v9, v10

    .line 63
    move-object v10, v11

    .line 64
    move-object/from16 v11, p0

    .line 65
    .line 66
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->C(Lcom/startshorts/androidplayer/manager/api/base/k$a;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-ne v0, v15, :cond_2

    .line 71
    .line 72
    return-object v15

    .line 73
    :cond_2
    :goto_0
    return-object v0
.end method
