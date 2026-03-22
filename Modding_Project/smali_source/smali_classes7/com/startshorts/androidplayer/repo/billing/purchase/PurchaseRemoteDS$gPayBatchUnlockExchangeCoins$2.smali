.class final Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2"
    f = "PurchaseRemoteDS.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

.field final synthetic j:Lzc/f;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->j:Lzc/f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

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
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->j:Lzc/f;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;-><init>(Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/purchase/GPayExchangeCoinsResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

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
    iget v0, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->h:I

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
    iget-object v2, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuModelConfigId()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const-string v5, ""

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    move-object v4, v5

    .line 61
    :cond_2
    iget-object v6, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPrizeId()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iget-object v7, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->j:Lzc/f;

    .line 68
    .line 69
    invoke-virtual {v7}, Lzc/f;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    iget-object v8, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->j:Lzc/f;

    .line 74
    .line 75
    invoke-virtual {v8}, Lzc/f;->g()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iget-object v9, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 80
    .line 81
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    iget-object v10, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 86
    .line 87
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    iget-object v11, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 92
    .line 93
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getShortsId()I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    iget-object v12, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 98
    .line 99
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getDramaId()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    iget-object v13, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 104
    .line 105
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getUnlockingEpisodes()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    iget-object v1, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;->getExtra()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-nez v1, :cond_3

    .line 116
    .line 117
    move-object/from16 v16, v5

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    move-object/from16 v16, v1

    .line 121
    .line 122
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->e()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v17

    .line 128
    const/4 v1, 0x1

    .line 129
    iput v1, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayBatchUnlockExchangeCoins$2;->h:I

    .line 130
    .line 131
    move v1, v2

    .line 132
    move-object v2, v3

    .line 133
    move-object v3, v4

    .line 134
    move v4, v6

    .line 135
    move-object v5, v7

    .line 136
    move-object v6, v8

    .line 137
    move-object v7, v9

    .line 138
    move-object v8, v10

    .line 139
    move v9, v11

    .line 140
    move v10, v12

    .line 141
    move v11, v13

    .line 142
    move-object/from16 v12, v16

    .line 143
    .line 144
    move-object/from16 v13, v17

    .line 145
    .line 146
    move-object v15, v14

    .line 147
    move-object/from16 v14, p0

    .line 148
    .line 149
    invoke-interface/range {v0 .. v14}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->j(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-ne v0, v15, :cond_4

    .line 154
    .line 155
    return-object v15

    .line 156
    :cond_4
    :goto_1
    return-object v0
.end method
