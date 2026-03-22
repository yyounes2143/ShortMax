.class public final Lcom/inmobi/media/p1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/inmobi/media/o1;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/inmobi/media/t1;)V
    .locals 1

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "assetStore"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/p1;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    new-instance p1, Lcom/inmobi/media/o1;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/inmobi/media/o1;-><init>(Lcom/inmobi/media/p1;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/inmobi/media/p1;->b:Lcom/inmobi/media/o1;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 7
    .line 8
    const-string v0, "t1"

    .line 9
    .line 10
    const-string v1, "access$getTAG$p(...)"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    const-string v0, "access$getTAG$p(...)"

    .line 2
    .line 3
    const-string v1, "t1"

    .line 4
    .line 5
    const-string v2, "msg"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v2, Lcom/inmobi/media/t1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/inmobi/media/p1;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/inmobi/media/t1;

    .line 26
    .line 27
    iget v3, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v7, 0x0

    .line 33
    if-eq v3, v6, :cond_e

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v8, 0x3

    .line 37
    if-eq v3, v5, :cond_5

    .line 38
    .line 39
    if-eq v3, v8, :cond_4

    .line 40
    .line 41
    if-eq v3, v6, :cond_1

    .line 42
    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_1
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    instance-of v2, p1, Lcom/inmobi/media/j;

    .line 50
    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    move-object v7, p1

    .line 54
    check-cast v7, Lcom/inmobi/media/j;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v2, "asset"

    .line 70
    .line 71
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget v2, v7, Lcom/inmobi/media/j;->a:I

    .line 75
    .line 76
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    filled-new-array {v2}, [Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "id = ?"

    .line 85
    .line 86
    invoke-virtual {p1, v3, v2}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/p1;->a()V

    .line 90
    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/p1;->a()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :cond_5
    if-eqz v2, :cond_15

    .line 100
    .line 101
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    instance-of v3, p1, Ljava/lang/String;

    .line 104
    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    move-object v7, p1

    .line 108
    check-cast v7, Ljava/lang/String;

    .line 109
    .line 110
    :cond_6
    if-nez v7, :cond_7

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p1, v7}, Lcom/inmobi/media/m1;->b(Ljava/lang/String;)Lcom/inmobi/media/j;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    if-nez p1, :cond_8

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/inmobi/media/p1;->a()V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/media/j;->a()Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-nez v3, :cond_d

    .line 132
    .line 133
    sget-object v3, Lcom/inmobi/media/t1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getMaxRetries()I

    .line 138
    .line 139
    .line 140
    :cond_9
    iget v3, p1, Lcom/inmobi/media/j;->d:I

    .line 141
    .line 142
    if-gtz v3, :cond_a

    .line 143
    .line 144
    const/4 v3, 0x6

    .line 145
    iput-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 146
    .line 147
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/t1;->a(Lcom/inmobi/media/j;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .line 149
    .line 150
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    iput v6, v2, Landroid/os/Message;->what:I

    .line 155
    .line 156
    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catch_1
    :try_start_2
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 163
    .line 164
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_1
    return-void

    .line 168
    :cond_a
    invoke-static {v4}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    if-eqz v3, :cond_b

    .line 173
    .line 174
    iget-byte v3, p1, Lcom/inmobi/media/j;->l:B

    .line 175
    .line 176
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/t1;->a(Lcom/inmobi/media/j;B)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/inmobi/media/t1;->d()V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_b
    iget-object v2, p0, Lcom/inmobi/media/p1;->b:Lcom/inmobi/media/o1;

    .line 184
    .line 185
    invoke-static {p1, v2}, Lcom/inmobi/media/t1;->a(Lcom/inmobi/media/j;Lcom/inmobi/media/n1;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_c

    .line 190
    .line 191
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_4

    .line 198
    .line 199
    :cond_c
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/inmobi/media/p1;->a()V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_4

    .line 206
    .line 207
    :cond_d
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    .line 209
    .line 210
    :try_start_3
    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :catch_2
    :try_start_4
    sget-object v3, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 215
    .line 216
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :goto_2
    const/4 v3, -0x1

    .line 220
    invoke-virtual {v2, p1, v3}, Lcom/inmobi/media/t1;->a(Lcom/inmobi/media/j;B)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_4

    .line 224
    .line 225
    :cond_e
    if-eqz v2, :cond_15

    .line 226
    .line 227
    sget-object p1, Lcom/inmobi/media/t1;->c:Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 228
    .line 229
    if-nez p1, :cond_f

    .line 230
    .line 231
    sget-object p1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 232
    .line 233
    const-string p1, "ads"

    .line 234
    .line 235
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-static {p1, v2, v7}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 244
    .line 245
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 249
    .line 250
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getAssetCacheConfig()Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    :cond_f
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2}, Lcom/inmobi/media/m1;->b()Ljava/util/ArrayList;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_10

    .line 267
    .line 268
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lcom/inmobi/media/t1;->d()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_4

    .line 275
    .line 276
    :cond_10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    check-cast v3, Lcom/inmobi/media/j;

    .line 284
    .line 285
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    if-eqz v4, :cond_12

    .line 294
    .line 295
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    check-cast v4, Lcom/inmobi/media/j;

    .line 300
    .line 301
    sget-object v7, Lcom/inmobi/media/t1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 302
    .line 303
    iget-object v8, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    if-nez v7, :cond_11

    .line 310
    .line 311
    move-object v3, v4

    .line 312
    :cond_12
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    iput v6, v2, Landroid/os/Message;->what:I

    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v6

    .line 322
    iget-wide v8, v3, Lcom/inmobi/media/j;->e:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 323
    .line 324
    sub-long/2addr v6, v8

    .line 325
    :try_start_5
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    mul-int/lit16 v4, v4, 0x3e8

    .line 330
    .line 331
    int-to-long v8, v4

    .line 332
    cmp-long v4, v6, v8

    .line 333
    .line 334
    if-gez v4, :cond_13

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    mul-int/lit16 p1, p1, 0x3e8

    .line 341
    .line 342
    int-to-long v3, p1

    .line 343
    sub-long/2addr v3, v6

    .line 344
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_13
    sget-object v4, Lcom/inmobi/media/t1;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 349
    .line 350
    iget-object v6, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-eqz v4, :cond_14

    .line 357
    .line 358
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig$AssetCacheConfig;->getRetryInterval()I

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    mul-int/lit16 p1, p1, 0x3e8

    .line 363
    .line 364
    int-to-long v3, p1

    .line 365
    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    iput v5, p1, Landroid/os/Message;->what:I

    .line 377
    .line 378
    iget-object v2, v3, Lcom/inmobi/media/j;->b:Ljava/lang/String;

    .line 379
    .line 380
    iput-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    .line 382
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 383
    .line 384
    .line 385
    goto :goto_4

    .line 386
    :catch_3
    :try_start_6
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 387
    .line 388
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 389
    .line 390
    .line 391
    goto :goto_4

    .line 392
    :goto_3
    sget-object v2, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 393
    .line 394
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 398
    .line 399
    const-string v0, "event"

    .line 400
    .line 401
    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 406
    .line 407
    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 408
    .line 409
    .line 410
    :cond_15
    :goto_4
    return-void
.end method
