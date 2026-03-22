.class final Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CampaignRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.campaign.CampaignRemoteDS$reportLPInfo$2"
    f = "CampaignRemoteDS.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->m:Ljava/lang/String;

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
    new-instance v7, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->m:Ljava/lang/String;

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v6, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v14

    .line 7
    iget v0, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->h:I

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
    goto/16 :goto_3

    .line 20
    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->i()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->i:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->j:Ljava/lang/String;

    .line 41
    .line 42
    const-string v4, ""

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object v6, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object v6, v3

    .line 49
    :goto_0
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->k:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v3, :cond_3

    .line 52
    .line 53
    move-object v7, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v7, v3

    .line 56
    :goto_1
    iget-object v8, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->l:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->m:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v3, :cond_4

    .line 61
    .line 62
    move-object v10, v4

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    move-object v10, v3

    .line 65
    :goto_2
    iput v1, v15, Lcom/startshorts/androidplayer/repo/campaign/CampaignRemoteDS$reportLPInfo$2;->h:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v9, 0x0

    .line 71
    const/4 v11, 0x0

    .line 72
    const/4 v12, 0x0

    .line 73
    const/4 v13, 0x0

    .line 74
    const/16 v16, 0xd1e

    .line 75
    .line 76
    const/16 v17, 0x0

    .line 77
    .line 78
    move-object v1, v2

    .line 79
    move v2, v3

    .line 80
    move v3, v4

    .line 81
    move-object v4, v5

    .line 82
    move-object v5, v9

    .line 83
    move v9, v11

    .line 84
    move-object v11, v12

    .line 85
    move-object v12, v13

    .line 86
    move-object/from16 v13, p0

    .line 87
    .line 88
    move-object/from16 v18, v14

    .line 89
    .line 90
    move/from16 v14, v16

    .line 91
    .line 92
    move-object/from16 v15, v17

    .line 93
    .line 94
    invoke-static/range {v0 .. v15}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->A(Lcom/startshorts/androidplayer/manager/api/base/k$a;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    move-object/from16 v1, v18

    .line 99
    .line 100
    if-ne v0, v1, :cond_5

    .line 101
    .line 102
    return-object v1

    .line 103
    :cond_5
    :goto_3
    return-object v0
.end method
