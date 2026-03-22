.class public final Lad-manager/d/d0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Le/k;

.field public final synthetic j:Lca/f;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Le/k;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/d0;->i:Le/k;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/d0;->j:Lca/f;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/d0;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    .locals 4

    .line 1
    new-instance v0, Lad-manager/d/d0;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/d/d0;->i:Le/k;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/d/d0;->j:Lca/f;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/d/d0;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lad-manager/d/d0;-><init>(Le/k;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lad-manager/d/d0;->h:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/d/d0;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/d/d0;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/d/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lad-manager/d/d0;->h:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lgt/g0;

    .line 12
    .line 13
    iget-object v2, v0, Lad-manager/d/d0;->i:Le/k;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v2}, Le/k;->i(Z)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    sget-object v3, Lca/k;->a:Lca/k;

    .line 29
    .line 30
    const/16 v8, 0xe

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const-string v4, "show -> showCachedAD ignore, CoroutineScope is Canceled"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-static/range {v3 .. v9}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_7

    .line 42
    .line 43
    :cond_0
    iget-object v1, v0, Lad-manager/d/d0;->j:Lca/f;

    .line 44
    .line 45
    invoke-virtual {v1}, Lca/f;->a()Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/app/Activity;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x0

    .line 59
    :goto_0
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_13

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_3
    iget-object v1, v0, Lad-manager/d/d0;->i:Le/k;

    .line 78
    .line 79
    iget-object v4, v0, Lad-manager/d/d0;->j:Lca/f;

    .line 80
    .line 81
    invoke-virtual {v1, v4}, Le/k;->e(Lca/f;)Le/v;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v5, v5, Le/v;->a:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-le v6, v2, :cond_4

    .line 92
    .line 93
    new-instance v6, Le/g;

    .line 94
    .line 95
    invoke-direct {v6}, Le/g;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_10

    .line 110
    .line 111
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    move-object v8, v7

    .line 116
    check-cast v8, Lca/d;

    .line 117
    .line 118
    invoke-virtual {v8}, Lca/d;->k()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v9

    .line 122
    sget-object v10, Lca/d;->n:Lc/e;

    .line 123
    .line 124
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lca/d;->a()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-eqz v9, :cond_e

    .line 136
    .line 137
    iget-object v9, v1, Le/k;->a:Landroid/content/Context;

    .line 138
    .line 139
    const-string v11, "context"

    .line 140
    .line 141
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const-string v12, "adInfo"

    .line 145
    .line 146
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v8}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    sget-object v14, Le/b;->a:[I

    .line 154
    .line 155
    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    aget v13, v14, v13

    .line 160
    .line 161
    const/4 v15, 0x3

    .line 162
    const/4 v10, 0x2

    .line 163
    if-eq v13, v2, :cond_8

    .line 164
    .line 165
    if-eq v13, v10, :cond_7

    .line 166
    .line 167
    if-eq v13, v15, :cond_6

    .line 168
    .line 169
    const/4 v9, 0x0

    .line 170
    goto :goto_1

    .line 171
    :cond_6
    invoke-virtual {v8}, Lca/d;->c()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v13

    .line 175
    invoke-static {v9, v13}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    goto :goto_1

    .line 180
    :cond_7
    invoke-virtual {v8}, Lca/d;->c()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-static {v9, v13}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    goto :goto_1

    .line 189
    :cond_8
    invoke-virtual {v8}, Lca/d;->c()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    invoke-static {v9, v13}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    :goto_1
    if-eqz v9, :cond_c

    .line 198
    .line 199
    iget-object v13, v1, Le/k;->a:Landroid/content/Context;

    .line 200
    .line 201
    iget-object v3, v1, Le/k;->b:Le/t;

    .line 202
    .line 203
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v11, "adLoader"

    .line 210
    .line 211
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v8}, Lca/d;->c()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    new-instance v12, Lg/a;

    .line 219
    .line 220
    invoke-direct {v12}, Lg/a;-><init>()V

    .line 221
    .line 222
    .line 223
    move-object/from16 v16, v11

    .line 224
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 226
    .line 227
    .line 228
    move-result-wide v10

    .line 229
    iput-wide v10, v12, Lg/a;->a:J

    .line 230
    .line 231
    const-wide/16 v10, 0x0

    .line 232
    .line 233
    iput-wide v10, v12, Lg/a;->b:J

    .line 234
    .line 235
    invoke-virtual {v8}, Lca/d;->i()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    invoke-virtual {v8}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 244
    .line 245
    .line 246
    move-result v11

    .line 247
    aget v11, v14, v11

    .line 248
    .line 249
    if-eq v11, v2, :cond_b

    .line 250
    .line 251
    const/4 v14, 0x2

    .line 252
    if-eq v11, v14, :cond_a

    .line 253
    .line 254
    if-eq v11, v15, :cond_9

    .line 255
    .line 256
    goto :goto_2

    .line 257
    :cond_9
    move-object/from16 v11, v16

    .line 258
    .line 259
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v14

    .line 263
    if-eqz v14, :cond_c

    .line 264
    .line 265
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 266
    .line 267
    .line 268
    move-result-object v11

    .line 269
    if-eqz v11, :cond_c

    .line 270
    .line 271
    invoke-virtual {v11}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    invoke-virtual {v3, v10, v11, v12, v13}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :cond_a
    move-object/from16 v11, v16

    .line 280
    .line 281
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    if-eqz v14, :cond_c

    .line 286
    .line 287
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 288
    .line 289
    .line 290
    move-result-object v11

    .line 291
    if-eqz v11, :cond_c

    .line 292
    .line 293
    invoke-virtual {v11}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v13

    .line 297
    invoke-virtual {v3, v10, v11, v12, v13}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 298
    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_b
    move-object/from16 v11, v16

    .line 302
    .line 303
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v14

    .line 307
    if-eqz v14, :cond_c

    .line 308
    .line 309
    invoke-static {v13, v11}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    if-eqz v11, :cond_c

    .line 314
    .line 315
    invoke-virtual {v11}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    .line 316
    .line 317
    .line 318
    move-result-object v13

    .line 319
    invoke-virtual {v3, v10, v11, v12, v13}, Le/t;->Z(Ljava/lang/String;Ljava/lang/Object;Lg/a;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 320
    .line 321
    .line 322
    :cond_c
    :goto_2
    invoke-virtual {v4}, Lca/f;->n()Lca/f$e;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    if-eqz v3, :cond_d

    .line 327
    .line 328
    invoke-interface {v3, v8}, Lca/f$e;->b(Lca/d;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    goto :goto_3

    .line 333
    :cond_d
    const/4 v3, 0x0

    .line 334
    :goto_3
    if-eqz v9, :cond_f

    .line 335
    .line 336
    if-eqz v3, :cond_f

    .line 337
    .line 338
    move v10, v2

    .line 339
    goto :goto_4

    .line 340
    :cond_e
    invoke-virtual {v4}, Lca/f;->n()Lca/f$e;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    if-eqz v3, :cond_f

    .line 345
    .line 346
    invoke-interface {v3, v8}, Lca/f$e;->b(Lca/d;)Z

    .line 347
    .line 348
    .line 349
    move-result v10

    .line 350
    goto :goto_4

    .line 351
    :cond_f
    const/4 v10, 0x0

    .line 352
    :goto_4
    if-eqz v10, :cond_5

    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_10
    const/4 v7, 0x0

    .line 356
    :goto_5
    check-cast v7, Lca/d;

    .line 357
    .line 358
    if-eqz v7, :cond_11

    .line 359
    .line 360
    sget-object v1, Lca/k;->a:Lca/k;

    .line 361
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v3, "showCachedAD succeed -> compareResult="

    .line 365
    .line 366
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    const/16 v13, 0xe

    .line 377
    .line 378
    const/4 v14, 0x0

    .line 379
    const/4 v10, 0x0

    .line 380
    const/4 v11, 0x0

    .line 381
    const/4 v12, 0x0

    .line 382
    move-object v8, v1

    .line 383
    invoke-static/range {v8 .. v14}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1, v7, v4}, Lca/k;->v(Lca/d;Lca/f;)V

    .line 387
    .line 388
    .line 389
    goto :goto_7

    .line 390
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    const-string v2, "showCachedAD failed -> cacheAdInfos.isEmpty() cacheInfoPre = "

    .line 393
    .line 394
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    sget-object v6, Lca/k;->a:Lca/k;

    .line 405
    .line 406
    const/16 v11, 0xe

    .line 407
    .line 408
    const/4 v12, 0x0

    .line 409
    const/4 v8, 0x0

    .line 410
    const/4 v9, 0x0

    .line 411
    const/4 v10, 0x0

    .line 412
    move-object v7, v1

    .line 413
    invoke-static/range {v6 .. v12}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Lca/f;->n()Lca/f$e;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    if-eqz v2, :cond_12

    .line 421
    .line 422
    const/4 v3, 0x0

    .line 423
    invoke-interface {v2, v3, v1}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    :cond_12
    invoke-virtual {v4}, Lca/f;->p()V

    .line 427
    .line 428
    .line 429
    goto :goto_7

    .line 430
    :cond_13
    :goto_6
    sget-object v5, Lca/k;->a:Lca/k;

    .line 431
    .line 432
    const/16 v10, 0xe

    .line 433
    .line 434
    const/4 v11, 0x0

    .line 435
    const-string v6, "show -> showCachedAD ignore, Activity is invalid (null/finishing/destroyed)"

    .line 436
    .line 437
    const/4 v7, 0x0

    .line 438
    const/4 v8, 0x0

    .line 439
    const/4 v9, 0x0

    .line 440
    invoke-static/range {v5 .. v11}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lad-manager/d/d0;->j:Lca/f;

    .line 444
    .line 445
    invoke-virtual {v1}, Lca/f;->n()Lca/f$e;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    if-eqz v1, :cond_14

    .line 450
    .line 451
    const-string v2, "Activity is invalid"

    .line 452
    .line 453
    const/4 v3, 0x0

    .line 454
    invoke-interface {v1, v3, v2}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_14
    iget-object v1, v0, Lad-manager/d/d0;->j:Lca/f;

    .line 458
    .line 459
    invoke-virtual {v1}, Lca/f;->p()V

    .line 460
    .line 461
    .line 462
    :goto_7
    iget-object v1, v0, Lad-manager/d/d0;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 463
    .line 464
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v1, Ljava/util/List;

    .line 467
    .line 468
    if-eqz v1, :cond_15

    .line 469
    .line 470
    iget-object v2, v0, Lad-manager/d/d0;->j:Lca/f;

    .line 471
    .line 472
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v3

    .line 476
    if-nez v3, :cond_15

    .line 477
    .line 478
    sget-object v4, Lca/k;->a:Lca/k;

    .line 479
    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v5, "show -> Failed ("

    .line 483
    .line 484
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const/16 v5, 0x29

    .line 491
    .line 492
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v5

    .line 499
    const/16 v9, 0xe

    .line 500
    .line 501
    const/4 v10, 0x0

    .line 502
    const/4 v6, 0x0

    .line 503
    const/4 v7, 0x0

    .line 504
    const/4 v8, 0x0

    .line 505
    invoke-static/range {v4 .. v10}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2}, Lca/f;->d()Lca/f$a;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    if-eqz v2, :cond_15

    .line 513
    .line 514
    invoke-interface {v2, v1}, Lca/f$a;->a(Ljava/util/List;)V

    .line 515
    .line 516
    .line 517
    :cond_15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 518
    .line 519
    return-object v1
.end method
