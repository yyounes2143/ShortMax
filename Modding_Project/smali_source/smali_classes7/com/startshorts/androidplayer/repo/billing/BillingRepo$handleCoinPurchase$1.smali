.class final Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->D(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleCoinPurchase$1"
    f = "BillingRepo.kt"
    l = {
        0x11e,
        0x133,
        0x14c,
        0x152
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lzc/f;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lzc/f;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzc/f;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->j:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;-><init>(Lzc/f;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v9

    .line 7
    iget v0, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->h:I

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    const/4 v2, 0x3

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    const/4 v5, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    if-eq v0, v4, :cond_3

    .line 17
    .line 18
    if-eq v0, v3, :cond_2

    .line 19
    .line 20
    if-eq v0, v2, :cond_1

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 52
    .line 53
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    iput-object v6, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v6, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 63
    .line 64
    invoke-virtual {v6}, Lzc/f;->d()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const/4 v7, 0x0

    .line 69
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    sget-object v7, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 76
    .line 77
    invoke-static {v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)Lgg/c;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    invoke-virtual {v10, v6}, Lgg/c;->e(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 86
    .line 87
    const-string v12, "BillingRepo"

    .line 88
    .line 89
    const-string v13, "purchasedSkuId"

    .line 90
    .line 91
    const-string v14, "gpSkuId"

    .line 92
    .line 93
    if-nez v11, :cond_6

    .line 94
    .line 95
    sget-object v11, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 96
    .line 97
    const-string v15, "handleCoinPurchase failed -> mLaunchBillingFlowCoinSku is null"

    .line 98
    .line 99
    invoke-virtual {v11, v12, v15}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object v11, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 103
    .line 104
    const/16 v21, 0x6

    .line 105
    .line 106
    const/16 v22, 0x0

    .line 107
    .line 108
    const-string v17, "purchased_sku_null"

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const-wide/16 v19, 0x0

    .line 113
    .line 114
    move-object/from16 v16, v11

    .line 115
    .line 116
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget-object v15, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 120
    .line 121
    invoke-static {v15}, Ljk/q;->a(Lzc/f;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    iput-object v15, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz v15, :cond_6

    .line 128
    .line 129
    new-instance v15, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v15, v14, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 140
    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    move-object v1, v5

    .line 149
    :goto_1
    invoke-virtual {v15, v13, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    const/16 v21, 0x4

    .line 155
    .line 156
    const/16 v22, 0x0

    .line 157
    .line 158
    const-string v17, "purchased_sku_null_solved"

    .line 159
    .line 160
    const-wide/16 v19, 0x0

    .line 161
    .line 162
    move-object/from16 v16, v11

    .line 163
    .line 164
    move-object/from16 v18, v15

    .line 165
    .line 166
    invoke-static/range {v16 .. v22}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 170
    .line 171
    if-nez v1, :cond_8

    .line 172
    .line 173
    iget-object v0, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 174
    .line 175
    invoke-virtual {v0}, Lzc/f;->b()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v7, v6, v10, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->q(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1$2;

    .line 187
    .line 188
    invoke-direct {v1, v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1$2;-><init>(Lrs/c;)V

    .line 189
    .line 190
    .line 191
    iput v4, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->h:I

    .line 192
    .line 193
    invoke-static {v0, v1, v8}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-ne v0, v9, :cond_7

    .line 198
    .line 199
    return-object v9

    .line 200
    :cond_7
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 201
    .line 202
    invoke-static {v0, v5, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->m(Lcom/startshorts/androidplayer/log/Logger;Lyd/f;ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_8
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-nez v1, :cond_c

    .line 213
    .line 214
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-nez v1, :cond_c

    .line 227
    .line 228
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 229
    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    const-string v15, "handleCoinPurchase failed -> skuFromGp("

    .line 236
    .line 237
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v15, ") skuFromPurchasedSku("

    .line 244
    .line 245
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    iget-object v15, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v15, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 251
    .line 252
    invoke-virtual {v15}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const/16 v15, 0x29

    .line 260
    .line 261
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v1, v12, v11}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v1, v5, v4, v5}, Lcom/startshorts/androidplayer/log/Logger;->m(Lcom/startshorts/androidplayer/log/Logger;Lyd/f;ILjava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 275
    .line 276
    new-instance v4, Landroid/os/Bundle;

    .line 277
    .line 278
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v14, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v11, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v11, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 287
    .line 288
    if-eqz v11, :cond_9

    .line 289
    .line 290
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    goto :goto_3

    .line 295
    :cond_9
    move-object v11, v5

    .line 296
    :goto_3
    invoke-virtual {v4, v13, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    const/16 v20, 0x4

    .line 302
    .line 303
    const/16 v21, 0x0

    .line 304
    .line 305
    const-string v16, "purchased_sku_invalid"

    .line 306
    .line 307
    const-wide/16 v18, 0x0

    .line 308
    .line 309
    move-object v15, v1

    .line 310
    move-object/from16 v17, v4

    .line 311
    .line 312
    invoke-static/range {v15 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    iget-object v4, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 316
    .line 317
    invoke-static {v4}, Ljk/q;->a(Lzc/f;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 322
    .line 323
    if-nez v4, :cond_b

    .line 324
    .line 325
    iget-object v0, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 326
    .line 327
    invoke-virtual {v0}, Lzc/f;->b()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-static {v7, v6, v10, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->q(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1$4;

    .line 339
    .line 340
    invoke-direct {v1, v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1$4;-><init>(Lrs/c;)V

    .line 341
    .line 342
    .line 343
    iput v3, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->h:I

    .line 344
    .line 345
    invoke-static {v0, v1, v8}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    if-ne v0, v9, :cond_a

    .line 350
    .line 351
    return-object v9

    .line 352
    :cond_a
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 353
    .line 354
    return-object v0

    .line 355
    :cond_b
    new-instance v3, Landroid/os/Bundle;

    .line 356
    .line 357
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v14, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 366
    .line 367
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v3, v13, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    const/16 v20, 0x4

    .line 375
    .line 376
    const/16 v21, 0x0

    .line 377
    .line 378
    const-string v16, "purchased_sku_invalid_solved"

    .line 379
    .line 380
    const-wide/16 v18, 0x0

    .line 381
    .line 382
    move-object v15, v1

    .line 383
    move-object/from16 v17, v3

    .line 384
    .line 385
    invoke-static/range {v15 .. v21}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 386
    .line 387
    .line 388
    :cond_c
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-nez v1, :cond_d

    .line 393
    .line 394
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 397
    .line 398
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    const/4 v3, 0x0

    .line 403
    cmpl-float v1, v1, v3

    .line 404
    .line 405
    if-lez v1, :cond_d

    .line 406
    .line 407
    const-string v1, "USD"

    .line 408
    .line 409
    invoke-virtual {v10, v1}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpCurrencyCode(Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 415
    .line 416
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-virtual {v10, v1}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpPrice(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 430
    .line 431
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 432
    .line 433
    .line 434
    move-result v1

    .line 435
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-virtual {v10, v1}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setServerPrice(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_d
    iget-object v1, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 443
    .line 444
    invoke-virtual {v1}, Lzc/f;->b()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-static {v7, v6, v10, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->q(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    sget-object v1, Laa/a;->a:Laa/a;

    .line 452
    .line 453
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    if-eqz v1, :cond_e

    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_e
    move-object v1, v5

    .line 467
    :goto_5
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g()Ljava/util/concurrent/ConcurrentHashMap;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    move-object v6, v3

    .line 476
    check-cast v6, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 477
    .line 478
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 479
    .line 480
    instance-of v3, v0, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 481
    .line 482
    if-eqz v3, :cond_f

    .line 483
    .line 484
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 485
    .line 486
    iget-object v4, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->j:Ljava/lang/String;

    .line 487
    .line 488
    move-object v5, v0

    .line 489
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;

    .line 490
    .line 491
    iget-object v7, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 492
    .line 493
    iput v2, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->h:I

    .line 494
    .line 495
    move-object v0, v3

    .line 496
    move-object v2, v4

    .line 497
    move-object v3, v5

    .line 498
    move-object v4, v7

    .line 499
    move-object v5, v10

    .line 500
    move-object/from16 v7, p0

    .line 501
    .line 502
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->h(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/BatchUnlockEpisodeSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    if-ne v0, v9, :cond_10

    .line 507
    .line 508
    return-object v9

    .line 509
    :cond_f
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 510
    .line 511
    iget-object v3, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->j:Ljava/lang/String;

    .line 512
    .line 513
    move-object v4, v0

    .line 514
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 515
    .line 516
    iget-object v5, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->i:Lzc/f;

    .line 517
    .line 518
    const/4 v0, 0x4

    .line 519
    iput v0, v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;->h:I

    .line 520
    .line 521
    move-object v0, v2

    .line 522
    move-object v2, v3

    .line 523
    move-object v3, v4

    .line 524
    move-object v4, v5

    .line 525
    move-object v5, v10

    .line 526
    move-object/from16 v7, p0

    .line 527
    .line 528
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->j(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lrs/c;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    if-ne v0, v9, :cond_10

    .line 533
    .line 534
    return-object v9

    .line 535
    :cond_10
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 536
    .line 537
    return-object v0
.end method
