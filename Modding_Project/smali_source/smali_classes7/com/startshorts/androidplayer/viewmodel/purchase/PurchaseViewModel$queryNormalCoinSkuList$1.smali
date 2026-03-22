.class final Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->c0(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryNormalCoinSkuList$1"
    f = "PurchaseViewModel.kt"
    l = {
        0xfe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v8

    .line 7
    iget v0, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->h:I

    .line 8
    .line 9
    const/4 v9, 0x1

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-ne v0, v9, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p1

    .line 18
    .line 19
    check-cast v0, Lkotlin/Result;

    .line 20
    .line 21
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 38
    .line 39
    iget-object v0, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    iget-object v0, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    .line 50
    move-result-object v13

    .line 51
    iget-object v0, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string v0, "other"

    .line 60
    .line 61
    :cond_2
    move-object v12, v0

    .line 62
    const/16 v17, 0x38

    .line 63
    .line 64
    const/16 v18, 0x0

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    const/4 v15, 0x0

    .line 68
    const/16 v16, 0x0

    .line 69
    .line 70
    invoke-static/range {v10 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 74
    .line 75
    iget-object v3, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->j:Ljava/lang/String;

    .line 76
    .line 77
    iput v9, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->h:I

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    const/4 v2, 0x0

    .line 81
    const/4 v5, 0x3

    .line 82
    const/4 v6, 0x0

    .line 83
    move-object/from16 v4, p0

    .line 84
    .line 85
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->t(Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;ZZLjava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-ne v0, v8, :cond_3

    .line 90
    .line 91
    return-object v8

    .line 92
    :cond_3
    :goto_0
    iget-object v1, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 93
    .line 94
    iget-object v2, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->k:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const-string v4, "top_up_dialog"

    .line 101
    .line 102
    const-string v5, "top_up"

    .line 103
    .line 104
    if-eqz v3, :cond_12

    .line 105
    .line 106
    move-object v3, v0

    .line 107
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;

    .line 108
    .line 109
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->h0(Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 110
    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    if-eqz v3, :cond_5

    .line 114
    .line 115
    new-instance v8, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->isDisplayedTripartite()Z

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getTripartiteRewardRatio()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getTripartiteRewardUrl()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-direct {v8, v10, v11, v12}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;->enable()Z

    .line 133
    .line 134
    .line 135
    move-result v10

    .line 136
    if-eqz v10, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    move-object v8, v6

    .line 140
    :goto_1
    invoke-static {v1, v8}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/ThirdPartyPaymentSkuResult;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    const v10, -0x4376d2fe

    .line 148
    .line 149
    .line 150
    if-eq v8, v10, :cond_10

    .line 151
    .line 152
    const v10, -0x3efce64d

    .line 153
    .line 154
    .line 155
    if-eq v8, v10, :cond_7

    .line 156
    .line 157
    const v6, -0x33bd4a3b    # -5.1042068E7f

    .line 158
    .line 159
    .line 160
    if-eq v8, v6, :cond_6

    .line 161
    .line 162
    goto/16 :goto_5

    .line 163
    .line 164
    :cond_6
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-nez v2, :cond_11

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_7
    const-string v8, "coin_store"

    .line 172
    .line 173
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_8

    .line 178
    .line 179
    goto :goto_5

    .line 180
    :cond_8
    if-eqz v3, :cond_9

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getRetainSkuInfoResponses()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    goto :goto_2

    .line 187
    :cond_9
    move-object v2, v6

    .line 188
    :goto_2
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 189
    .line 190
    .line 191
    if-eqz v3, :cond_a

    .line 192
    .line 193
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->getSkuInfoResponses()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    :cond_a
    check-cast v6, Ljava/util/Collection;

    .line 198
    .line 199
    const/4 v2, 0x0

    .line 200
    if-eqz v6, :cond_c

    .line 201
    .line 202
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_b

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_b
    move v9, v2

    .line 210
    :cond_c
    :goto_3
    sget-object v6, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->c1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    check-cast v6, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_f

    .line 231
    .line 232
    if-eqz v9, :cond_d

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_d
    if-eqz v3, :cond_e

    .line 236
    .line 237
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;->isLowPayScoreUser()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    :cond_e
    :goto_4
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->g0(Z)V

    .line 242
    .line 243
    .line 244
    :cond_f
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;

    .line 249
    .line 250
    invoke-direct {v2, v9, v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$d;-><init>(ZLcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 251
    .line 252
    .line 253
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-eqz v2, :cond_12

    .line 262
    .line 263
    :cond_11
    invoke-static {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lcom/startshorts/androidplayer/bean/purchase/QueryNormalCoinSkuResult;)V

    .line 264
    .line 265
    .line 266
    :cond_12
    :goto_5
    iget-object v1, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 267
    .line 268
    iget-object v2, v7, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryNormalCoinSkuList$1;->k:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_14

    .line 275
    .line 276
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-nez v1, :cond_13

    .line 284
    .line 285
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-eqz v1, :cond_14

    .line 290
    .line 291
    :cond_13
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 292
    .line 293
    invoke-static {v0}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const-string v2, "topup"

    .line 298
    .line 299
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->m0(Lcom/startshorts/androidplayer/bean/exception/ResponseException;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    return-object v0
.end method
