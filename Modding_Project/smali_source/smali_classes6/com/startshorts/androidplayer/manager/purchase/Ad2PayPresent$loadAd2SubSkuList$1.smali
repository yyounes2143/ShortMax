.class final Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Ad2PayPresent.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->v()V
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
    c = "com.startshorts.androidplayer.manager.purchase.Ad2PayPresent$loadAd2SubSkuList$1"
    f = "Ad2PayPresent.kt"
    l = {
        0x160
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAd2PayPresent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,392:1\n1368#2:393\n1454#2,5:394\n1611#2,9:399\n1863#2:408\n1864#2:410\n1620#2:411\n1368#2:412\n1454#2,5:413\n1611#2,9:418\n1863#2:427\n1864#2:429\n1620#2:430\n1557#2:431\n1628#2,3:432\n1#3:409\n1#3:428\n1#3:435\n*S KotlinDebug\n*F\n+ 1 Ad2PayPresent.kt\ncom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1\n*L\n361#1:393\n361#1:394,5\n362#1:399,9\n362#1:408\n362#1:410\n362#1:411\n370#1:412\n370#1:413,5\n371#1:418,9\n371#1:427\n371#1:429\n371#1:430\n372#1:431\n372#1:432,3\n362#1:409\n371#1:428\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
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
    new-instance p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent$loadAd2SubSkuList$1;->h:I

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->n(Lrs/c;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_13

    .line 50
    .line 51
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v0, :cond_12

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;->isUseful()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_3
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 66
    .line 67
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->C()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_11

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;->getPopupConfig()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    check-cast v3, Ljava/lang/Iterable;

    .line 80
    .line 81
    new-instance v4, Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_5

    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;

    .line 101
    .line 102
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;->getConfig()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    if-nez v5, :cond_4

    .line 107
    .line 108
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    :cond_4
    check-cast v5, Ljava/lang/Iterable;

    .line 113
    .line 114
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_8

    .line 132
    .line 133
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    check-cast v5, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-eqz v5, :cond_6

    .line 144
    .line 145
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_7
    move-object v3, v2

    .line 150
    :cond_8
    if-nez v3, :cond_9

    .line 151
    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :cond_9
    check-cast v3, Ljava/util/Collection;

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    if-nez v4, :cond_a

    .line 163
    .line 164
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 165
    .line 166
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h0(Ljava/util/List;)V

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;->getPopupConfig()Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    if-eqz v3, :cond_f

    .line 178
    .line 179
    check-cast v3, Ljava/lang/Iterable;

    .line 180
    .line 181
    new-instance v2, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    if-eqz v4, :cond_c

    .line 195
    .line 196
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayPopupConfig;->getConfig()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    if-nez v4, :cond_b

    .line 207
    .line 208
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    :cond_b
    check-cast v4, Ljava/lang/Iterable;

    .line 213
    .line 214
    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-eqz v4, :cond_e

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 238
    .line 239
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    if-eqz v4, :cond_d

    .line 244
    .line 245
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    .line 250
    .line 251
    const/16 v4, 0xa

    .line 252
    .line 253
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_f

    .line 269
    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 275
    .line 276
    sget-object v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 277
    .line 278
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 279
    .line 280
    .line 281
    move-result v5

    .line 282
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    const-string v6, "6"

    .line 287
    .line 288
    invoke-virtual {v4, v6, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->copy(Ljava/lang/String;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_f
    if-nez v2, :cond_10

    .line 297
    .line 298
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    :cond_10
    check-cast v2, Ljava/util/Collection;

    .line 303
    .line 304
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-nez v3, :cond_11

    .line 309
    .line 310
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 311
    .line 312
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v3, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i0(Ljava/util/List;)V

    .line 317
    .line 318
    .line 319
    :cond_11
    sget-object v2, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 320
    .line 321
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayResult;->getPopupConfig()Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->c(Ljava/util/List;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->d(Z)V

    .line 329
    .line 330
    .line 331
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 332
    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 334
    .line 335
    .line 336
    move-result-wide v2

    .line 337
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->A(J)V

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_12
    :goto_6
    invoke-static {v2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->c(Ljava/util/List;)V

    .line 342
    .line 343
    .line 344
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->d(Z)V

    .line 345
    .line 346
    .line 347
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 348
    .line 349
    return-object p1

    .line 350
    :cond_13
    :goto_7
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    if-eqz p1, :cond_14

    .line 355
    .line 356
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->d(Z)V

    .line 357
    .line 358
    .line 359
    :cond_14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 360
    .line 361
    return-object p1
.end method
