.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS;->b(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.subs.SubsRemoteDS$gPayExchangePremium$2"
    f = "SubsRemoteDS.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic j:Lzc/f;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic l:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->j:Lzc/f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->j:Lzc/f;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

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
    iget v0, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->h:I

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
    goto/16 :goto_1

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSource()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getReceiveType()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 57
    .line 58
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object v6, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->j:Lzc/f;

    .line 63
    .line 64
    invoke-virtual {v6}, Lzc/f;->h()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    if-nez v6, :cond_2

    .line 69
    .line 70
    const-string v6, ""

    .line 71
    .line 72
    :cond_2
    move-object v7, v6

    .line 73
    iget-object v6, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->j:Lzc/f;

    .line 74
    .line 75
    invoke-virtual {v6}, Lzc/f;->f()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-object v8, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 80
    .line 81
    const/4 v9, 0x0

    .line 82
    if-eqz v8, :cond_3

    .line 83
    .line 84
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move-object v8, v9

    .line 94
    :goto_0
    iget-object v10, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 95
    .line 96
    if-eqz v10, :cond_4

    .line 97
    .line 98
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    :cond_4
    sget-object v10, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 107
    .line 108
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->f()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    iget-object v10, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->l:Ljava/lang/String;

    .line 113
    .line 114
    iput v1, v15, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRemoteDS$gPayExchangePremium$2;->h:I

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    const/4 v13, 0x1

    .line 118
    const/16 v16, 0x0

    .line 119
    .line 120
    move-object/from16 v12, p0

    .line 121
    .line 122
    move-object v15, v14

    .line 123
    move-object/from16 v14, v16

    .line 124
    .line 125
    invoke-static/range {v0 .. v14}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->f(Lcom/startshorts/androidplayer/manager/api/base/k$a;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-ne v0, v15, :cond_5

    .line 130
    .line 131
    return-object v15

    .line 132
    :cond_5
    :goto_1
    return-object v0
.end method
