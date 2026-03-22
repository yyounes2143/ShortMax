.class final Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PurchaseViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->Z()Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.purchase.PurchaseViewModel$queryBlackFridayCoinSkuList$1"
    f = "PurchaseViewModel.kt"
    l = {
        0x138
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPurchaseViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,671:1\n1863#2,2:672\n1019#2,2:674\n1863#2,2:676\n*S KotlinDebug\n*F\n+ 1 PurchaseViewModel.kt\ncom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1\n*L\n337#1:672,2\n346#1:674,2\n356#1:676,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->C(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, "other"

    .line 56
    .line 57
    :cond_2
    move-object v5, p1

    .line 58
    const/16 v10, 0x38

    .line 59
    .line 60
    const/4 v11, 0x0

    .line 61
    const/4 v7, 0x0

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    invoke-static/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->W0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 68
    .line 69
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->h:I

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->r(Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_18

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;

    .line 88
    .line 89
    new-instance v3, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;->getNotUsedList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object v5, v4

    .line 103
    :goto_1
    check-cast v5, Ljava/util/Collection;

    .line 104
    .line 105
    const-string v6, ""

    .line 106
    .line 107
    if-eqz v5, :cond_6

    .line 108
    .line 109
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    if-eqz v7, :cond_5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    new-instance v7, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 117
    .line 118
    invoke-direct {v7}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object v8, Lfk/u;->a:Lfk/u;

    .line 128
    .line 129
    sget v9, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_unused:I

    .line 130
    .line 131
    invoke-virtual {v8, v9}, Lfk/u;->d(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    invoke-virtual {v7, v8}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSubscript(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;->getUsedList()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move-object v5, v4

    .line 152
    :goto_3
    if-eqz v1, :cond_8

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;->getExpireList()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    :cond_8
    move-object v7, v5

    .line 159
    check-cast v7, Ljava/util/Collection;

    .line 160
    .line 161
    if-eqz v7, :cond_9

    .line 162
    .line 163
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-eqz v8, :cond_a

    .line 168
    .line 169
    :cond_9
    move-object v8, v4

    .line 170
    check-cast v8, Ljava/util/Collection;

    .line 171
    .line 172
    if-eqz v8, :cond_11

    .line 173
    .line 174
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-eqz v8, :cond_a

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_a
    new-instance v8, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 182
    .line 183
    invoke-direct {v8}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v8, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSkuProductId(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setGpSkuId(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v6, Lfk/u;->a:Lfk/u;

    .line 193
    .line 194
    sget v9, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_used:I

    .line 195
    .line 196
    invoke-virtual {v6, v9}, Lfk/u;->d(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v8, v6}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setSubscript(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    new-instance v6, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .line 210
    .line 211
    if-eqz v7, :cond_d

    .line 212
    .line 213
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v8

    .line 217
    if-eqz v8, :cond_b

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_b
    check-cast v5, Ljava/lang/Iterable;

    .line 221
    .line 222
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v5

    .line 226
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-eqz v8, :cond_c

    .line 231
    .line 232
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 237
    .line 238
    invoke-virtual {v8, v2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->setConsume(Z)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_c
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    .line 244
    .line 245
    :cond_d
    :goto_5
    check-cast v4, Ljava/util/Collection;

    .line 246
    .line 247
    if-eqz v4, :cond_f

    .line 248
    .line 249
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_e

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_e
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    .line 258
    .line 259
    :cond_f
    :goto_6
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-nez v4, :cond_11

    .line 264
    .line 265
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-le v4, v2, :cond_10

    .line 270
    .line 271
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1$a;

    .line 272
    .line 273
    invoke-direct {v2}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1$a;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-static {v6, v2}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    .line 278
    .line 279
    :cond_10
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 280
    .line 281
    .line 282
    :cond_11
    :goto_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    :cond_12
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    if-eqz v4, :cond_16

    .line 291
    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 297
    .line 298
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPriceText()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    const/16 v6, 0x24

    .line 303
    .line 304
    if-eqz v5, :cond_13

    .line 305
    .line 306
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-nez v5, :cond_14

    .line 311
    .line 312
    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getActivityPrice()F

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setPriceText(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    :cond_14
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginPriceText()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    if-eqz v5, :cond_15

    .line 339
    .line 340
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 341
    .line 342
    .line 343
    move-result v5

    .line 344
    if-nez v5, :cond_12

    .line 345
    .line 346
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getOriginalPrice()F

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->setOriginPriceText(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    goto :goto_8

    .line 369
    :cond_16
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    if-nez v2, :cond_17

    .line 374
    .line 375
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;Ljava/util/List;)V

    .line 376
    .line 377
    .line 378
    :cond_17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->R()Landroidx/lifecycle/MutableLiveData;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/purchase/b$a;

    .line 383
    .line 384
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/viewmodel/purchase/b$a;-><init>(ZLcom/startshorts/androidplayer/bean/purchase/QueryBlackFridayCoinSkuResult;)V

    .line 389
    .line 390
    .line 391
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 392
    .line 393
    .line 394
    :cond_18
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel$queryBlackFridayCoinSkuList$1;->i:Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 395
    .line 396
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    if-eqz p1, :cond_19

    .line 401
    .line 402
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 403
    .line 404
    .line 405
    :cond_19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 406
    .line 407
    return-object p1
.end method
