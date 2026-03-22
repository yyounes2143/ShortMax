.class final Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingRepo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->J(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.repo.billing.BillingRepo$handleSubsPurchase$1"
    f = "BillingRepo.kt"
    l = {
        0x184,
        0x196,
        0x1a5
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
            "Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->j:Ljava/lang/String;

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
    new-instance p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;-><init>(Lzc/f;Ljava/lang/String;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v12

    .line 7
    iget v0, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->h:I

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_1
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
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    iget-object v0, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 41
    .line 42
    invoke-virtual {v0}, Lzc/f;->d()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/String;

    .line 52
    .line 53
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 54
    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v7, "handleSubsPurchase -> mLaunchBillingFlowSubsMode("

    .line 61
    .line 62
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v7, ") gpSkuId("

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v8, ") clickedSkuId("

    .line 81
    .line 82
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const/4 v8, 0x0

    .line 86
    if-eqz v5, :cond_3

    .line 87
    .line 88
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    move-object v9, v8

    .line 94
    :goto_0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v9, ") oldSkuId("

    .line 98
    .line 99
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->k()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    if-eqz v9, :cond_4

    .line 107
    .line 108
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v9

    .line 112
    goto :goto_1

    .line 113
    :cond_4
    move-object v9, v8

    .line 114
    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const/16 v9, 0x29

    .line 118
    .line 119
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    const-string v10, "BillingRepo"

    .line 127
    .line 128
    invoke-virtual {v4, v10, v6}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-nez v5, :cond_5

    .line 132
    .line 133
    const-string v0, "handleSubsPurchase failed -> mLaunchBillingFlowSubsSku is null"

    .line 134
    .line 135
    invoke-virtual {v4, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 139
    .line 140
    const/16 v17, 0x6

    .line 141
    .line 142
    const/16 v18, 0x0

    .line 143
    .line 144
    const-string v13, "purchased_sku_null"

    .line 145
    .line 146
    const/4 v14, 0x0

    .line 147
    const-wide/16 v15, 0x0

    .line 148
    .line 149
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object v0

    .line 155
    :cond_5
    sget-object v6, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 156
    .line 157
    invoke-static {v6}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)Lgg/c;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    invoke-virtual {v13, v0, v14}, Lgg/c;->f(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v13}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    if-nez v14, :cond_7

    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 176
    .line 177
    .line 178
    move-result v14

    .line 179
    const-string v15, "USD"

    .line 180
    .line 181
    const/16 v16, 0x0

    .line 182
    .line 183
    if-eqz v14, :cond_6

    .line 184
    .line 185
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 186
    .line 187
    .line 188
    move-result v14

    .line 189
    cmpl-float v14, v14, v16

    .line 190
    .line 191
    if-lez v14, :cond_7

    .line 192
    .line 193
    invoke-virtual {v13, v15}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpCurrencyCode(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v14

    .line 204
    invoke-virtual {v13, v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpPrice(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 208
    .line 209
    .line 210
    move-result v14

    .line 211
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v14

    .line 215
    invoke-virtual {v13, v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setServerPrice(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_2

    .line 219
    :cond_6
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 220
    .line 221
    .line 222
    move-result v14

    .line 223
    cmpl-float v14, v14, v16

    .line 224
    .line 225
    if-lez v14, :cond_7

    .line 226
    .line 227
    invoke-virtual {v13, v15}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpCurrencyCode(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 231
    .line 232
    .line 233
    move-result v14

    .line 234
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    invoke-virtual {v13, v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setGpPrice(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v14

    .line 249
    invoke-virtual {v13, v14}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->setServerPrice(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_7
    :goto_2
    sget-object v14, Laa/a;->a:Laa/a;

    .line 253
    .line 254
    invoke-virtual {v14}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 255
    .line 256
    .line 257
    move-result-object v14

    .line 258
    if-eqz v14, :cond_8

    .line 259
    .line 260
    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Lcom/hades/aar/activity/IDActivity;

    .line 265
    .line 266
    :cond_8
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g()Ljava/util/concurrent/ConcurrentHashMap;

    .line 267
    .line 268
    .line 269
    move-result-object v14

    .line 270
    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v14

    .line 274
    check-cast v14, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 275
    .line 276
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j()I

    .line 277
    .line 278
    .line 279
    move-result v15

    .line 280
    if-eqz v15, :cond_a

    .line 281
    .line 282
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j()I

    .line 283
    .line 284
    .line 285
    move-result v15

    .line 286
    if-ne v15, v3, :cond_9

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_9
    iget-object v2, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 290
    .line 291
    invoke-virtual {v2}, Lzc/f;->b()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-static {v6, v0, v13, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->r(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 299
    .line 300
    iget-object v2, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->j:Ljava/lang/String;

    .line 301
    .line 302
    iget-object v4, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 303
    .line 304
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    iput v1, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->h:I

    .line 309
    .line 310
    move-object v1, v8

    .line 311
    move-object v3, v5

    .line 312
    move-object v5, v13

    .line 313
    move-object v6, v14

    .line 314
    move-object/from16 v8, p0

    .line 315
    .line 316
    invoke-virtual/range {v0 .. v8}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->d(Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-ne v0, v12, :cond_10

    .line 321
    .line 322
    return-object v12

    .line 323
    :cond_a
    :goto_3
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j()I

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-ne v1, v3, :cond_c

    .line 328
    .line 329
    iget-object v1, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 330
    .line 331
    invoke-virtual {v1}, Lzc/f;->b()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-static {v6, v0, v13, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->r(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 339
    .line 340
    iget-object v2, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->j:Ljava/lang/String;

    .line 341
    .line 342
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    if-nez v1, :cond_b

    .line 347
    .line 348
    const-string v1, ""

    .line 349
    .line 350
    :cond_b
    move-object v4, v1

    .line 351
    iget-object v6, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 352
    .line 353
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v9

    .line 357
    iput v3, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->h:I

    .line 358
    .line 359
    move-object v1, v8

    .line 360
    move-object v3, v4

    .line 361
    move-object v4, v5

    .line 362
    move-object v5, v6

    .line 363
    move-object v6, v13

    .line 364
    move-object v7, v14

    .line 365
    move-object v8, v9

    .line 366
    move-object/from16 v9, p0

    .line 367
    .line 368
    invoke-virtual/range {v0 .. v9}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-ne v0, v12, :cond_10

    .line 373
    .line 374
    return-object v12

    .line 375
    :cond_c
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_11

    .line 384
    .line 385
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->k()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    if-nez v7, :cond_d

    .line 394
    .line 395
    const-string v0, "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) oldSku(null)"

    .line 396
    .line 397
    invoke-virtual {v4, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_d
    if-eqz v3, :cond_f

    .line 402
    .line 403
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-nez v0, :cond_e

    .line 408
    .line 409
    goto :goto_4

    .line 410
    :cond_e
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    iget-object v1, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 415
    .line 416
    invoke-virtual {v1}, Lzc/f;->b()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-static {v6, v0, v13, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->r(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 424
    .line 425
    iget-object v4, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->j:Ljava/lang/String;

    .line 426
    .line 427
    iget-object v6, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->i:Lzc/f;

    .line 428
    .line 429
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v9

    .line 433
    iput v2, v11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;->h:I

    .line 434
    .line 435
    move-object v1, v8

    .line 436
    move-object v2, v4

    .line 437
    move-object v4, v7

    .line 438
    move-object v7, v13

    .line 439
    move-object v8, v14

    .line 440
    move-object/from16 v10, p0

    .line 441
    .line 442
    invoke-virtual/range {v0 .. v10}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    if-ne v0, v12, :cond_10

    .line 447
    .line 448
    return-object v12

    .line 449
    :cond_f
    :goto_4
    const-string v0, "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) oldToken(null)"

    .line 450
    .line 451
    invoke-virtual {v4, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_10
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 455
    .line 456
    return-object v0

    .line 457
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v2, "handleSubsPurchase failed -> mode(UPDATE_MODE_DEFERRED) clickedSkuId("

    .line 463
    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v4, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 491
    .line 492
    return-object v0
.end method
