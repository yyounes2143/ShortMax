.class final Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS;->c(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.repo.billing.purchase.PurchaseRemoteDS$gPayExchangeCoins$2"
    f = "PurchaseRemoteDS.kt"
    l = {
        0x33
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

.field final synthetic j:Lzc/f;

.field final synthetic k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

.field final synthetic l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Lzc/f;",
            "Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->j:Lzc/f;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    new-instance v6, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->j:Lzc/f;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p1

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;-><init>(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->h:I

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v2, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    iget-object v3, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

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
    iget-object v6, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 62
    .line 63
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivitySkuConfigId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-nez v6, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    move-object v5, v6

    .line 71
    :goto_0
    iget-object v6, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->isExpansion()Z

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    iget-object v7, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->i:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPrizeId()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    iget-object v8, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->j:Lzc/f;

    .line 84
    .line 85
    invoke-virtual {v8}, Lzc/f;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    iget-object v9, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->j:Lzc/f;

    .line 90
    .line 91
    invoke-virtual {v9}, Lzc/f;->g()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    iget-object v10, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 96
    .line 97
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    iget-object v11, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->k:Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 102
    .line 103
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    iget-object v12, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 108
    .line 109
    if-eqz v12, :cond_4

    .line 110
    .line 111
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v12, 0x0

    .line 121
    :goto_1
    iget-object v13, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->l:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 122
    .line 123
    if-eqz v13, :cond_5

    .line 124
    .line 125
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const/4 v13, 0x0

    .line 135
    :goto_2
    sget-object v16, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 136
    .line 137
    invoke-virtual/range {v16 .. v16}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->e()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v16

    .line 141
    iput v1, v15, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRemoteDS$gPayExchangeCoins$2;->h:I

    .line 142
    .line 143
    move v1, v2

    .line 144
    move-object v2, v3

    .line 145
    move-object v3, v4

    .line 146
    move-object v4, v5

    .line 147
    move v5, v6

    .line 148
    move v6, v7

    .line 149
    move-object v7, v8

    .line 150
    move-object v8, v9

    .line 151
    move-object v9, v10

    .line 152
    move-object v10, v11

    .line 153
    move-object v11, v12

    .line 154
    move-object v12, v13

    .line 155
    move-object/from16 v13, v16

    .line 156
    .line 157
    move-object v15, v14

    .line 158
    move-object/from16 v14, p0

    .line 159
    .line 160
    invoke-interface/range {v0 .. v14}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->f1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-ne v0, v15, :cond_6

    .line 165
    .line 166
    return-object v15

    .line 167
    :cond_6
    :goto_3
    return-object v0
.end method
