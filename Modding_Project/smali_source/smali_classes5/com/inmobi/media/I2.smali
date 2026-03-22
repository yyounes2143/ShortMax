.class public final Lcom/inmobi/media/I2;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/LinkedHashMap;

.field public c:Ljava/util/Map;

.field public d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    const-string v0, "looper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/I2;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/inmobi/media/I2;->c:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "message"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v2, Lcom/inmobi/media/O2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget v2, v1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/16 v3, 0x3e8

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    const-string v5, "key"

    .line 25
    .line 26
    const-string v6, "user_age_restricted"

    .line 27
    .line 28
    const-string v7, "user_info_store"

    .line 29
    .line 30
    const-string v8, "null cannot be cast to non-null type com.inmobi.commons.core.configs.RootConfig"

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    const/4 v10, 0x0

    .line 34
    const-string v11, "root"

    .line 35
    .line 36
    const/4 v12, 0x1

    .line 37
    const-string v13, "access$getTAG$cp(...)"

    .line 38
    .line 39
    packed-switch v2, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_f

    .line 50
    .line 51
    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigNetworkResponse.IPAddress"

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v1, Lcom/inmobi/media/Z2;

    .line 59
    .line 60
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    instance-of v2, v1, Lcom/inmobi/media/Y2;

    .line 71
    .line 72
    if-eqz v2, :cond_6

    .line 73
    .line 74
    sget-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    .line 89
    sget-object v3, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    invoke-static {v2, v7}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 99
    .line 100
    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    sput-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 109
    .line 110
    :cond_2
    sget-object v2, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    :cond_3
    :goto_0
    if-nez v9, :cond_5

    .line 119
    .line 120
    sget-object v2, Lcom/inmobi/media/I5;->a:Lms/i;

    .line 121
    .line 122
    check-cast v1, Lcom/inmobi/media/Y2;

    .line 123
    .line 124
    iget-object v4, v1, Lcom/inmobi/media/Y2;->a:Ljava/lang/String;

    .line 125
    .line 126
    const-string v1, "ipAddress"

    .line 127
    .line 128
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v4, Lcom/inmobi/media/I5;->b:Ljava/lang/String;

    .line 132
    .line 133
    sget-object v1, Lcom/inmobi/media/I5;->a:Lms/i;

    .line 134
    .line 135
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    move-object v2, v1

    .line 140
    check-cast v2, Lcom/inmobi/media/C6;

    .line 141
    .line 142
    if-eqz v2, :cond_4

    .line 143
    .line 144
    const/4 v6, 0x4

    .line 145
    const/4 v7, 0x0

    .line 146
    const-string v3, "cip"

    .line 147
    .line 148
    const/4 v5, 0x0

    .line 149
    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    :cond_4
    sget-object v1, Lcom/inmobi/media/I5;->c:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_f

    .line 160
    .line 161
    :cond_5
    invoke-static {}, Lcom/inmobi/media/I5;->a()V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_f

    .line 165
    .line 166
    :cond_6
    instance-of v1, v1, Lcom/inmobi/media/X2;

    .line 167
    .line 168
    if-eqz v1, :cond_2b

    .line 169
    .line 170
    invoke-static {}, Lcom/inmobi/media/I5;->a()V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_f

    .line 174
    .line 175
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    .line 177
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigNetworkResponse.ConfigResponse"

    .line 178
    .line 179
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    check-cast v1, Lcom/inmobi/media/W2;

    .line 183
    .line 184
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v2, v1, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;

    .line 192
    .line 193
    if-eqz v2, :cond_7

    .line 194
    .line 195
    move v9, v12

    .line 196
    :cond_7
    if-nez v9, :cond_c

    .line 197
    .line 198
    iget v2, v1, Lcom/inmobi/media/W2;->b:I

    .line 199
    .line 200
    const/16 v3, 0x130

    .line 201
    .line 202
    const-string v4, "TAG"

    .line 203
    .line 204
    const-string v5, "Q2"

    .line 205
    .line 206
    const-string v6, "account_id=? AND config_type=?"

    .line 207
    .line 208
    if-ne v2, v3, :cond_9

    .line 209
    .line 210
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 218
    .line 219
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    iget-object v1, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-eqz v2, :cond_8

    .line 229
    .line 230
    invoke-static {}, Lcom/inmobi/media/O2;->c()Lms/i;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Lcom/inmobi/media/Q2;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    .line 253
    .line 254
    move-result-wide v7

    .line 255
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    .line 257
    .line 258
    const-string v9, "type"

    .line 259
    .line 260
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    const-string v10, "accountId"

    .line 264
    .line 265
    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v2, v6, v4}, Lcom/inmobi/media/T1;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Lcom/inmobi/commons/core/configs/Config;

    .line 283
    .line 284
    if-eqz v4, :cond_8

    .line 285
    .line 286
    invoke-virtual {v4, v7, v8}, Lcom/inmobi/commons/core/configs/Config;->setLastUpdateTimeStamp(J)V

    .line 287
    .line 288
    .line 289
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v2, v4, v6, v1}, Lcom/inmobi/media/T1;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    :cond_8
    return-void

    .line 297
    :cond_9
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_a

    .line 308
    .line 309
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 310
    .line 311
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    check-cast v2, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 315
    .line 316
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_a

    .line 325
    .line 326
    invoke-static {}, Lcom/inmobi/media/I5;->a()V

    .line 327
    .line 328
    .line 329
    :cond_a
    invoke-static {}, Lcom/inmobi/media/O2;->c()Lms/i;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Lcom/inmobi/media/Q2;

    .line 338
    .line 339
    iget-object v3, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 342
    .line 343
    .line 344
    const-string v7, "config"

    .line 345
    .line 346
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :try_start_0
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    if-nez v7, :cond_b

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_b
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v5

    .line 373
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v2, v3, v6, v4}, Lcom/inmobi/media/T1;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .line 379
    .line 380
    :catch_0
    :goto_1
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 388
    .line 389
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 400
    .line 401
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->toJson()Lorg/json/JSONObject;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    iget-object v2, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 421
    .line 422
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    sget-object v3, Lcom/inmobi/media/O2;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 436
    .line 437
    const-string v4, "<this>"

    .line 438
    .line 439
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    sget-object v4, Lcom/inmobi/media/D3;->a:Ljava/util/HashMap;

    .line 443
    .line 444
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v4, v5}, Lcom/inmobi/media/D3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    iget-object v1, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 460
    .line 461
    invoke-static {v1}, Lcom/inmobi/media/M2;->b(Lcom/inmobi/commons/core/configs/Config;)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_f

    .line 465
    .line 466
    :cond_c
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v1, v1, Lcom/inmobi/media/W2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    goto/16 :goto_f

    .line 479
    .line 480
    :pswitch_2
    iget-object v1, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 481
    .line 482
    if-eqz v1, :cond_d

    .line 483
    .line 484
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    if-ne v1, v12, :cond_d

    .line 489
    .line 490
    iput-object v10, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 491
    .line 492
    move-object v1, v10

    .line 493
    goto :goto_2

    .line 494
    :cond_d
    iget-object v1, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 495
    .line 496
    :goto_2
    if-eqz v1, :cond_2b

    .line 497
    .line 498
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-nez v2, :cond_2b

    .line 503
    .line 504
    iput-object v10, v0, Lcom/inmobi/media/I2;->c:Ljava/util/Map;

    .line 505
    .line 506
    iget-object v2, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 507
    .line 508
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 515
    .line 516
    .line 517
    goto/16 :goto_f

    .line 518
    .line 519
    :pswitch_3
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 527
    .line 528
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 529
    .line 530
    .line 531
    move-result v1

    .line 532
    const/4 v2, 0x5

    .line 533
    if-nez v1, :cond_15

    .line 534
    .line 535
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget-object v1, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 543
    .line 544
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 549
    .line 550
    .line 551
    move-result-object v1

    .line 552
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    check-cast v1, Ljava/util/Map$Entry;

    .line 557
    .line 558
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    check-cast v3, Ljava/util/Map;

    .line 563
    .line 564
    iput-object v3, v0, Lcom/inmobi/media/I2;->c:Ljava/util/Map;

    .line 565
    .line 566
    iget-object v3, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 567
    .line 568
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v3

    .line 579
    check-cast v3, Lcom/inmobi/media/J2;

    .line 580
    .line 581
    iget-object v4, v0, Lcom/inmobi/media/I2;->c:Ljava/util/Map;

    .line 582
    .line 583
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    check-cast v1, Lcom/inmobi/media/J2;

    .line 591
    .line 592
    iget-object v1, v1, Lcom/inmobi/media/J2;->b:Ljava/lang/String;

    .line 593
    .line 594
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v14

    .line 598
    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    invoke-static {v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 605
    .line 606
    .line 607
    move-result-object v14

    .line 608
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    move-object v8, v14

    .line 612
    check-cast v8, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 613
    .line 614
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getRetryInterval()I

    .line 615
    .line 616
    .line 617
    move-result v23

    .line 618
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getMaxRetries()I

    .line 619
    .line 620
    .line 621
    move-result v24

    .line 622
    new-instance v15, Lcom/inmobi/media/ue;

    .line 623
    .line 624
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/W5;

    .line 625
    .line 626
    .line 627
    move-result-object v14

    .line 628
    invoke-direct {v15, v14}, Lcom/inmobi/media/ue;-><init>(Lcom/inmobi/media/W5;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    .line 632
    .line 633
    .line 634
    move-result-object v14

    .line 635
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    .line 636
    .line 637
    .line 638
    move-result v14

    .line 639
    if-nez v14, :cond_11

    .line 640
    .line 641
    sget-object v14, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 642
    .line 643
    if-eqz v14, :cond_e

    .line 644
    .line 645
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    goto :goto_3

    .line 650
    :cond_e
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 651
    .line 652
    .line 653
    move-result-object v14

    .line 654
    if-eqz v14, :cond_f

    .line 655
    .line 656
    sget-object v16, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 657
    .line 658
    invoke-static {v14, v7}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    iget-object v5, v7, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 666
    .line 667
    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 672
    .line 673
    .line 674
    move-result-object v5

    .line 675
    sput-object v5, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 676
    .line 677
    :cond_f
    sget-object v5, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 678
    .line 679
    if-eqz v5, :cond_10

    .line 680
    .line 681
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 682
    .line 683
    .line 684
    move-result v5

    .line 685
    goto :goto_3

    .line 686
    :cond_10
    move v5, v9

    .line 687
    :goto_3
    if-nez v5, :cond_11

    .line 688
    .line 689
    move v5, v12

    .line 690
    goto :goto_4

    .line 691
    :cond_11
    move v5, v9

    .line 692
    :goto_4
    sget-object v6, Lcom/inmobi/media/G4;->a:Lcom/inmobi/media/G4;

    .line 693
    .line 694
    invoke-static {v6, v9, v12, v10}, Lcom/inmobi/media/G4;->a(Lcom/inmobi/media/G4;ZILjava/lang/Object;)Z

    .line 695
    .line 696
    .line 697
    move-result v6

    .line 698
    if-nez v6, :cond_12

    .line 699
    .line 700
    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v7

    .line 704
    if-eqz v7, :cond_12

    .line 705
    .line 706
    new-instance v6, Ljava/util/HashMap;

    .line 707
    .line 708
    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 709
    .line 710
    .line 711
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v7

    .line 715
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v6, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move v7, v12

    .line 722
    goto :goto_5

    .line 723
    :cond_12
    move v7, v6

    .line 724
    move-object v6, v4

    .line 725
    :goto_5
    new-instance v9, Lcom/inmobi/media/U2;

    .line 726
    .line 727
    iget-object v3, v3, Lcom/inmobi/media/J2;->a:Ljava/lang/String;

    .line 728
    .line 729
    move-object v14, v9

    .line 730
    move-object/from16 v25, v15

    .line 731
    .line 732
    move-object v15, v6

    .line 733
    move-object/from16 v16, v25

    .line 734
    .line 735
    move-object/from16 v17, v3

    .line 736
    .line 737
    move/from16 v18, v24

    .line 738
    .line 739
    move/from16 v19, v23

    .line 740
    .line 741
    move/from16 v20, v7

    .line 742
    .line 743
    move-object/from16 v21, v1

    .line 744
    .line 745
    move/from16 v22, v5

    .line 746
    .line 747
    invoke-direct/range {v14 .. v22}, Lcom/inmobi/media/U2;-><init>(Ljava/util/Map;Lcom/inmobi/media/ue;Ljava/lang/String;IIZLjava/lang/String;Z)V

    .line 748
    .line 749
    .line 750
    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    if-eqz v3, :cond_13

    .line 755
    .line 756
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/RootConfig;->getFallbackUrlForRootType()Ljava/lang/String;

    .line 757
    .line 758
    .line 759
    move-result-object v17

    .line 760
    new-instance v3, Lcom/inmobi/media/U2;

    .line 761
    .line 762
    new-instance v15, Ljava/util/HashMap;

    .line 763
    .line 764
    invoke-direct {v15, v12}, Ljava/util/HashMap;-><init>(I)V

    .line 765
    .line 766
    .line 767
    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v4

    .line 771
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 772
    .line 773
    .line 774
    invoke-virtual {v15, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-object v14, v3

    .line 778
    move-object/from16 v16, v25

    .line 779
    .line 780
    move/from16 v18, v24

    .line 781
    .line 782
    move/from16 v19, v23

    .line 783
    .line 784
    move/from16 v20, v7

    .line 785
    .line 786
    move-object/from16 v21, v1

    .line 787
    .line 788
    move/from16 v22, v5

    .line 789
    .line 790
    invoke-direct/range {v14 .. v22}, Lcom/inmobi/media/U2;-><init>(Ljava/util/Map;Lcom/inmobi/media/ue;Ljava/lang/String;IIZLjava/lang/String;Z)V

    .line 791
    .line 792
    .line 793
    goto :goto_6

    .line 794
    :cond_13
    move-object v3, v10

    .line 795
    :goto_6
    new-instance v1, Lcom/inmobi/media/T2;

    .line 796
    .line 797
    invoke-direct {v1, v0, v9, v3}, Lcom/inmobi/media/T2;-><init>(Lcom/inmobi/media/I2;Lcom/inmobi/media/U2;Lcom/inmobi/media/U2;)V

    .line 798
    .line 799
    .line 800
    :try_start_1
    iget-object v3, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 801
    .line 802
    if-eqz v3, :cond_14

    .line 803
    .line 804
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 805
    .line 806
    .line 807
    move-result v3

    .line 808
    if-ne v3, v12, :cond_14

    .line 809
    .line 810
    iput-object v10, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 811
    .line 812
    goto :goto_7

    .line 813
    :cond_14
    iget-object v10, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 814
    .line 815
    :goto_7
    if-eqz v10, :cond_2b

    .line 816
    .line 817
    invoke-virtual {v10, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    .line 819
    .line 820
    goto/16 :goto_f

    .line 821
    .line 822
    :catch_1
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    iget-object v1, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 826
    .line 827
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    if-eqz v1, :cond_2b

    .line 832
    .line 833
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v1

    .line 837
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    .line 842
    .line 843
    goto/16 :goto_f

    .line 844
    .line 845
    :cond_15
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 853
    .line 854
    .line 855
    goto/16 :goto_f

    .line 856
    .line 857
    :pswitch_4
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    iget-object v1, v0, Lcom/inmobi/media/I2;->a:Ljava/util/ArrayList;

    .line 865
    .line 866
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    :cond_16
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-eqz v2, :cond_18

    .line 875
    .line 876
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    check-cast v2, Lcom/inmobi/commons/core/configs/Config;

    .line 881
    .line 882
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    if-eqz v3, :cond_16

    .line 887
    .line 888
    sget-object v4, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 889
    .line 890
    invoke-static {v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    check-cast v4, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 898
    .line 899
    new-instance v5, Lcom/inmobi/media/J2;

    .line 900
    .line 901
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v6

    .line 905
    invoke-virtual {v4, v6}, Lcom/inmobi/commons/core/configs/RootConfig;->getUrlForType(Ljava/lang/String;)Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    invoke-direct {v5, v4, v3}, Lcom/inmobi/media/J2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    .line 911
    .line 912
    iget-object v3, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 913
    .line 914
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    check-cast v3, Ljava/util/Map;

    .line 919
    .line 920
    if-nez v3, :cond_17

    .line 921
    .line 922
    new-instance v3, Ljava/util/HashMap;

    .line 923
    .line 924
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 925
    .line 926
    .line 927
    iget-object v4, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 928
    .line 929
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    :cond_17
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    goto :goto_8

    .line 940
    :cond_18
    iget-object v1, v0, Lcom/inmobi/media/I2;->a:Ljava/util/ArrayList;

    .line 941
    .line 942
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 943
    .line 944
    .line 945
    iget-object v1, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 946
    .line 947
    if-eqz v1, :cond_19

    .line 948
    .line 949
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 950
    .line 951
    .line 952
    move-result v1

    .line 953
    if-ne v1, v12, :cond_19

    .line 954
    .line 955
    iput-object v10, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 956
    .line 957
    goto :goto_9

    .line 958
    :cond_19
    iget-object v10, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 959
    .line 960
    :goto_9
    if-nez v10, :cond_2b

    .line 961
    .line 962
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 970
    .line 971
    sget v2, Lcom/inmobi/media/z4;->a:I

    .line 972
    .line 973
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 974
    .line 975
    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    .line 976
    .line 977
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 978
    .line 979
    .line 980
    new-instance v9, Lcom/inmobi/media/K5;

    .line 981
    .line 982
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v2

    .line 986
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    invoke-direct {v9, v2}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    .line 990
    .line 991
    .line 992
    const/4 v4, 0x1

    .line 993
    const-wide/16 v5, 0x5

    .line 994
    .line 995
    const/4 v3, 0x1

    .line 996
    move-object v2, v1

    .line 997
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v1, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 1001
    .line 1002
    .line 1003
    iput-object v1, v0, Lcom/inmobi/media/I2;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 1004
    .line 1005
    const/4 v1, 0x4

    .line 1006
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1007
    .line 1008
    .line 1009
    goto/16 :goto_f

    .line 1010
    .line 1011
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1012
    .line 1013
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    .line 1014
    .line 1015
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    .line 1017
    .line 1018
    check-cast v1, Ljava/lang/String;

    .line 1019
    .line 1020
    invoke-static {v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v1

    .line 1024
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    check-cast v1, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1028
    .line 1029
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/RootConfig;->getWaitTime()I

    .line 1037
    .line 1038
    .line 1039
    move-result v1

    .line 1040
    mul-int/2addr v1, v3

    .line 1041
    int-to-long v1, v1

    .line 1042
    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_f

    .line 1046
    .line 1047
    :pswitch_6
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v2

    .line 1051
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1055
    .line 1056
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.Config"

    .line 1057
    .line 1058
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    check-cast v1, Lcom/inmobi/commons/core/configs/Config;

    .line 1062
    .line 1063
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v2

    .line 1067
    if-eqz v2, :cond_1e

    .line 1068
    .line 1069
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v4

    .line 1077
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-static {v2}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v4

    .line 1084
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    check-cast v4, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1088
    .line 1089
    new-instance v5, Lcom/inmobi/media/J2;

    .line 1090
    .line 1091
    invoke-virtual {v4, v3}, Lcom/inmobi/commons/core/configs/RootConfig;->getUrlForType(Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v4

    .line 1095
    invoke-direct {v5, v4, v2}, Lcom/inmobi/media/J2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v4, v0, Lcom/inmobi/media/I2;->b:Ljava/util/LinkedHashMap;

    .line 1099
    .line 1100
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v4

    .line 1104
    check-cast v4, Ljava/util/Map;

    .line 1105
    .line 1106
    if-eqz v4, :cond_1a

    .line 1107
    .line 1108
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v4

    .line 1112
    if-ne v4, v12, :cond_1a

    .line 1113
    .line 1114
    move v9, v12

    .line 1115
    :cond_1a
    iget-object v4, v0, Lcom/inmobi/media/I2;->c:Ljava/util/Map;

    .line 1116
    .line 1117
    if-eqz v4, :cond_1b

    .line 1118
    .line 1119
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v3

    .line 1123
    if-ne v3, v12, :cond_1b

    .line 1124
    .line 1125
    goto :goto_a

    .line 1126
    :cond_1b
    move v12, v9

    .line 1127
    :goto_a
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v3

    .line 1131
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    if-nez v12, :cond_1c

    .line 1138
    .line 1139
    iget-object v3, v0, Lcom/inmobi/media/I2;->a:Ljava/util/ArrayList;

    .line 1140
    .line 1141
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    const/4 v3, 0x2

    .line 1145
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1146
    .line 1147
    .line 1148
    move-result v4

    .line 1149
    if-nez v4, :cond_1d

    .line 1150
    .line 1151
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1152
    .line 1153
    .line 1154
    move-result-object v4

    .line 1155
    iput v3, v4, Landroid/os/Message;->what:I

    .line 1156
    .line 1157
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1158
    .line 1159
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1160
    .line 1161
    .line 1162
    goto :goto_b

    .line 1163
    :cond_1c
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v2

    .line 1167
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1171
    .line 1172
    .line 1173
    :cond_1d
    :goto_b
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1174
    .line 1175
    :cond_1e
    if-nez v10, :cond_2b

    .line 1176
    .line 1177
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v2

    .line 1181
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1185
    .line 1186
    .line 1187
    return-void

    .line 1188
    :pswitch_7
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v2

    .line 1192
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1193
    .line 1194
    .line 1195
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1196
    .line 1197
    const-string v2, "null cannot be cast to non-null type com.inmobi.commons.core.configs.ConfigFetchInputs"

    .line 1198
    .line 1199
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1200
    .line 1201
    .line 1202
    check-cast v1, Lcom/inmobi/media/S2;

    .line 1203
    .line 1204
    iget-object v2, v1, Lcom/inmobi/media/S2;->a:Lcom/inmobi/commons/core/configs/Config;

    .line 1205
    .line 1206
    iget-object v1, v1, Lcom/inmobi/media/S2;->b:Lcom/inmobi/media/N2;

    .line 1207
    .line 1208
    if-eqz v1, :cond_20

    .line 1209
    .line 1210
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1211
    .line 1212
    .line 1213
    move-result-object v4

    .line 1214
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1218
    .line 1219
    .line 1220
    invoke-static {}, Lcom/inmobi/media/O2;->e()Ljava/util/Map;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v4

    .line 1224
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v4

    .line 1228
    check-cast v4, Ljava/util/ArrayList;

    .line 1229
    .line 1230
    if-nez v4, :cond_1f

    .line 1231
    .line 1232
    new-instance v4, Ljava/util/ArrayList;

    .line 1233
    .line 1234
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .line 1236
    .line 1237
    :cond_1f
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 1238
    .line 1239
    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1240
    .line 1241
    .line 1242
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    .line 1244
    .line 1245
    invoke-static {}, Lcom/inmobi/media/O2;->e()Ljava/util/Map;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v1

    .line 1249
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    .line 1251
    .line 1252
    :cond_20
    sget-object v1, Lcom/inmobi/media/O2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1253
    .line 1254
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    if-nez v1, :cond_21

    .line 1259
    .line 1260
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    return-void

    .line 1271
    :cond_21
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getAccountId$media_release()Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    if-eqz v1, :cond_2a

    .line 1276
    .line 1277
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v5

    .line 1285
    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    invoke-static {v1, v4}, Lcom/inmobi/media/D3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v5

    .line 1292
    invoke-static {}, Lcom/inmobi/media/O2;->c()Lms/i;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v6

    .line 1296
    invoke-interface {v6}, Lms/i;->getValue()Ljava/lang/Object;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v6

    .line 1300
    check-cast v6, Lcom/inmobi/media/Q2;

    .line 1301
    .line 1302
    invoke-virtual {v6, v11, v1}, Lcom/inmobi/media/Q2;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1303
    .line 1304
    .line 1305
    move-result v6

    .line 1306
    if-eqz v6, :cond_22

    .line 1307
    .line 1308
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    invoke-static {v1, v11}, Lcom/inmobi/media/D3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v1

    .line 1319
    invoke-static {v1}, Lcom/inmobi/media/M2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1320
    .line 1321
    .line 1322
    goto/16 :goto_e

    .line 1323
    .line 1324
    :cond_22
    invoke-static {v1}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v6

    .line 1328
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1329
    .line 1330
    .line 1331
    check-cast v6, Lcom/inmobi/commons/core/configs/RootConfig;

    .line 1332
    .line 1333
    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v7

    .line 1337
    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/RootConfig;->getType()Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v10

    .line 1341
    invoke-virtual {v6, v10}, Lcom/inmobi/commons/core/configs/RootConfig;->getExpiryForType(Ljava/lang/String;)J

    .line 1342
    .line 1343
    .line 1344
    move-result-wide v14

    .line 1345
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v10

    .line 1349
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1353
    .line 1354
    .line 1355
    move-result-wide v16

    .line 1356
    sub-long v16, v16, v7

    .line 1357
    .line 1358
    int-to-long v7, v3

    .line 1359
    mul-long/2addr v14, v7

    .line 1360
    cmp-long v3, v16, v14

    .line 1361
    .line 1362
    if-lez v3, :cond_23

    .line 1363
    .line 1364
    move v3, v12

    .line 1365
    goto :goto_c

    .line 1366
    :cond_23
    move v3, v9

    .line 1367
    :goto_c
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1368
    .line 1369
    .line 1370
    move-result-object v10

    .line 1371
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    if-eqz v3, :cond_24

    .line 1375
    .line 1376
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1377
    .line 1378
    .line 1379
    move-result-object v3

    .line 1380
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
    .line 1382
    .line 1383
    invoke-static {v1, v11}, Lcom/inmobi/media/D3;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v3

    .line 1387
    invoke-static {v3}, Lcom/inmobi/media/M2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1388
    .line 1389
    .line 1390
    :cond_24
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1391
    .line 1392
    .line 1393
    move-result v3

    .line 1394
    if-eqz v3, :cond_25

    .line 1395
    .line 1396
    goto :goto_e

    .line 1397
    :cond_25
    invoke-static {}, Lcom/inmobi/media/O2;->c()Lms/i;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    invoke-interface {v3}, Lms/i;->getValue()Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v3

    .line 1405
    check-cast v3, Lcom/inmobi/media/Q2;

    .line 1406
    .line 1407
    invoke-virtual {v3, v4, v1}, Lcom/inmobi/media/Q2;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v3

    .line 1411
    if-eqz v3, :cond_26

    .line 1412
    .line 1413
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1418
    .line 1419
    .line 1420
    invoke-static {v5}, Lcom/inmobi/media/M2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1421
    .line 1422
    .line 1423
    goto :goto_e

    .line 1424
    :cond_26
    invoke-static {v1, v4}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/commons/core/configs/Config;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v1

    .line 1428
    if-eqz v1, :cond_27

    .line 1429
    .line 1430
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/Config;->getLastUpdateTimeStamp()J

    .line 1431
    .line 1432
    .line 1433
    move-result-wide v10

    .line 1434
    goto :goto_d

    .line 1435
    :cond_27
    const-wide/16 v10, 0x0

    .line 1436
    .line 1437
    :goto_d
    invoke-virtual {v6, v4}, Lcom/inmobi/commons/core/configs/RootConfig;->getExpiryForType(Ljava/lang/String;)J

    .line 1438
    .line 1439
    .line 1440
    move-result-wide v3

    .line 1441
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1442
    .line 1443
    .line 1444
    move-result-object v1

    .line 1445
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1449
    .line 1450
    .line 1451
    move-result-wide v14

    .line 1452
    sub-long/2addr v14, v10

    .line 1453
    mul-long/2addr v3, v7

    .line 1454
    cmp-long v1, v14, v3

    .line 1455
    .line 1456
    if-lez v1, :cond_28

    .line 1457
    .line 1458
    move v9, v12

    .line 1459
    :cond_28
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v1

    .line 1463
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    if-eqz v9, :cond_29

    .line 1467
    .line 1468
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v1

    .line 1472
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1473
    .line 1474
    .line 1475
    invoke-static {v5}, Lcom/inmobi/media/M2;->a(Lcom/inmobi/commons/core/configs/Config;)V

    .line 1476
    .line 1477
    .line 1478
    :cond_29
    :goto_e
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 1479
    .line 1480
    :cond_2a
    if-nez v10, :cond_2b

    .line 1481
    .line 1482
    invoke-static {}, Lcom/inmobi/media/O2;->f()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v1

    .line 1486
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/Config;->getType()Ljava/lang/String;

    .line 1490
    .line 1491
    .line 1492
    :cond_2b
    :goto_f
    return-void

    .line 1493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
