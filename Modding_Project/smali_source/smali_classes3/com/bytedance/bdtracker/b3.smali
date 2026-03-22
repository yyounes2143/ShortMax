.class public Lcom/bytedance/bdtracker/b3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/network/INetworkClient;


# instance fields
.field public final a:Lcom/bytedance/bdtracker/p3;


# direct methods
.method public constructor <init>(Lcom/bytedance/bdtracker/p3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/b3;->a:Lcom/bytedance/bdtracker/p3;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public execute(BLjava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;BZI)[B
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;BZI)[B"
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p7

    .line 4
    .line 5
    const-string v10, "Set-Cookie"

    .line 6
    .line 7
    const-string v11, "gzip"

    .line 8
    .line 9
    move-object/from16 v12, p0

    .line 10
    .line 11
    iget-object v13, v12, Lcom/bytedance/bdtracker/b3;->a:Lcom/bytedance/bdtracker/p3;

    .line 12
    .line 13
    iget-object v2, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 16
    .line 17
    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "Start request http url: {}"

    .line 22
    .line 23
    const/16 v14, 0xb

    .line 24
    .line 25
    invoke-interface {v2, v14, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/d;->b()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v15, 0x0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    :try_start_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/CharSequence;

    .line 64
    .line 65
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/CharSequence;

    .line 76
    .line 77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_0

    .line 82
    .line 83
    iget-object v4, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "http headers key:"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    check-cast v6, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v6, " value:"

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    new-array v5, v15, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {v4, v14, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 131
    .line 132
    .line 133
    move-result-wide v18

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v22

    .line 146
    new-array v7, v15, [B

    .line 147
    .line 148
    const/16 v23, 0x0

    .line 149
    .line 150
    :try_start_1
    new-instance v6, Ljava/net/URL;

    .line 151
    .line 152
    move-object/from16 v5, p2

    .line 153
    .line 154
    invoke-direct {v6, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    move-object v4, v2

    .line 162
    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    .line 163
    .line 164
    if-lez v1, :cond_2

    .line 165
    .line 166
    :try_start_2
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catchall_1
    move-exception v0

    .line 174
    :goto_1
    move-object/from16 v24, v7

    .line 175
    .line 176
    goto/16 :goto_14

    .line 177
    .line 178
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 179
    .line 180
    invoke-virtual {v4, v15}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 181
    .line 182
    .line 183
    const-string v1, "GET"

    .line 184
    .line 185
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_3
    const/4 v1, 0x1

    .line 190
    if-ne v0, v1, :cond_10

    .line 191
    .line 192
    :try_start_3
    invoke-virtual {v4, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 193
    .line 194
    .line 195
    const-string v1, "POST"

    .line 196
    .line 197
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    .line 198
    .line 199
    .line 200
    :goto_3
    if-eqz p4, :cond_5

    .line 201
    .line 202
    :try_start_4
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_5

    .line 207
    .line 208
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_5

    .line 221
    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .line 228
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/CharSequence;

    .line 233
    .line 234
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    if-nez v3, :cond_4

    .line 239
    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Ljava/lang/CharSequence;

    .line 245
    .line 246
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_4

    .line 251
    .line 252
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Ljava/lang/String;

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v4, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_4
    iget-object v2, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 269
    .line 270
    iget-object v2, v2, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    .line 272
    const-string v3, "Header key is empty"

    .line 273
    .line 274
    :try_start_5
    new-array v0, v15, [Ljava/lang/Object;

    .line 275
    .line 276
    invoke-interface {v2, v14, v3, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 277
    .line 278
    .line 279
    move/from16 v0, p1

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_5
    :try_start_6
    const-string v0, "Accept-Encoding"

    .line 283
    .line 284
    invoke-virtual {v4, v0, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_d

    .line 285
    .line 286
    .line 287
    const-string v0, "do_request_begin"

    .line 288
    .line 289
    :try_start_7
    new-instance v3, Lcom/bytedance/bdtracker/q3;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 290
    .line 291
    move-object v1, v3

    .line 292
    move-object v2, v13

    .line 293
    move-object v15, v3

    .line 294
    move-object v3, v4

    .line 295
    move-object/from16 p4, v4

    .line 296
    .line 297
    move-object/from16 v4, v22

    .line 298
    .line 299
    move-object/from16 v5, p2

    .line 300
    .line 301
    move-object/from16 v17, v6

    .line 302
    .line 303
    move-object/from16 v6, p3

    .line 304
    .line 305
    move-object/from16 v24, v7

    .line 306
    .line 307
    move/from16 v7, p1

    .line 308
    .line 309
    :try_start_8
    invoke-direct/range {v1 .. v9}, Lcom/bytedance/bdtracker/q3;-><init>(Lcom/bytedance/bdtracker/p3;Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;BJ)V

    .line 310
    .line 311
    .line 312
    invoke-static {v0, v15}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 313
    .line 314
    .line 315
    const-string v0, "UTF-8"

    .line 316
    .line 317
    if-eqz p3, :cond_7

    .line 318
    .line 319
    :try_start_9
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    if-eqz p6, :cond_6

    .line 324
    .line 325
    iget-object v2, v13, Lcom/bytedance/bdtracker/p3;->c:Lcom/bytedance/bdtracker/p4;

    .line 326
    .line 327
    invoke-virtual {v2, v1}, Lcom/bytedance/bdtracker/p4;->b(Ljava/lang/String;)[B

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    goto :goto_5

    .line 332
    :catchall_2
    move-exception v0

    .line 333
    move-object/from16 v4, p4

    .line 334
    .line 335
    goto/16 :goto_14

    .line 336
    .line 337
    :cond_6
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    goto :goto_5

    .line 342
    :cond_7
    move-object/from16 v1, v23

    .line 343
    .line 344
    :goto_5
    if-eqz v1, :cond_8

    .line 345
    .line 346
    array-length v2, v1

    .line 347
    if-lez v2, :cond_8

    .line 348
    .line 349
    new-instance v2, Ljava/io/DataOutputStream;

    .line 350
    .line 351
    invoke-virtual/range {p4 .. p4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 356
    .line 357
    .line 358
    :try_start_a
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 362
    .line 363
    .line 364
    move-object v8, v2

    .line 365
    goto :goto_6

    .line 366
    :catchall_3
    move-exception v0

    .line 367
    move-object/from16 v15, p4

    .line 368
    .line 369
    goto/16 :goto_11

    .line 370
    .line 371
    :cond_8
    move-object/from16 v8, v23

    .line 372
    .line 373
    :goto_6
    :try_start_b
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 374
    .line 375
    .line 376
    move-result v9

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 378
    .line 379
    .line 380
    move-result-wide v5

    .line 381
    iget-object v1, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 382
    .line 383
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 384
    .line 385
    const-string v2, "http response:{} message:{}"

    .line 386
    .line 387
    :try_start_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    invoke-interface {v1, v14, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 400
    .line 401
    .line 402
    iget-object v1, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 403
    .line 404
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    .line 405
    .line 406
    .line 407
    move-result-object v16

    .line 408
    invoke-virtual/range {p4 .. p4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v21

    .line 412
    move/from16 v20, v9

    .line 413
    .line 414
    invoke-static/range {v16 .. v21}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/net/URL;JILjava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const/16 v1, 0xc8

    .line 418
    .line 419
    if-ne v9, v1, :cond_f

    .line 420
    .line 421
    if-nez p5, :cond_c

    .line 422
    .line 423
    invoke-virtual/range {p4 .. p4}, Ljava/net/URLConnection;->getContentLength()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    const/16 v2, 0x2800

    .line 428
    .line 429
    if-ge v1, v2, :cond_b

    .line 430
    .line 431
    invoke-virtual/range {p4 .. p4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual/range {p4 .. p4}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 440
    .line 441
    .line 442
    move-result v2

    .line 443
    if-eqz v2, :cond_9

    .line 444
    .line 445
    new-instance v2, Ljava/io/BufferedReader;

    .line 446
    .line 447
    new-instance v3, Ljava/io/InputStreamReader;

    .line 448
    .line 449
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 450
    .line 451
    invoke-direct {v4, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 452
    .line 453
    .line 454
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 455
    .line 456
    .line 457
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :catchall_4
    move-exception v0

    .line 462
    move-object/from16 v15, p4

    .line 463
    .line 464
    :goto_7
    move-object v2, v8

    .line 465
    goto/16 :goto_11

    .line 466
    .line 467
    :cond_9
    new-instance v2, Ljava/io/BufferedReader;

    .line 468
    .line 469
    new-instance v3, Ljava/io/InputStreamReader;

    .line 470
    .line 471
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 472
    .line 473
    .line 474
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 475
    .line 476
    .line 477
    :goto_8
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 484
    .line 485
    .line 486
    :goto_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    if-eqz v1, :cond_a

    .line 491
    .line 492
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    const-string v1, "\n"

    .line 496
    .line 497
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    goto :goto_9

    .line 501
    :catchall_5
    move-exception v0

    .line 502
    move-object/from16 v15, p4

    .line 503
    .line 504
    goto :goto_a

    .line 505
    :cond_a
    iget-object v1, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 506
    .line 507
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 508
    .line 509
    const-string v4, "http responseBody: {}"

    .line 510
    .line 511
    :try_start_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v7

    .line 515
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v7

    .line 519
    invoke-interface {v1, v14, v4, v7}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 520
    .line 521
    .line 522
    new-instance v1, Lorg/json/JSONObject;

    .line 523
    .line 524
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 529
    .line 530
    .line 531
    move-object/from16 v15, p4

    .line 532
    .line 533
    :try_start_f
    invoke-virtual {v15, v10}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v3

    .line 537
    invoke-virtual {v1, v10, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 545
    .line 546
    .line 547
    move-result-object v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 548
    goto :goto_c

    .line 549
    :catchall_6
    move-exception v0

    .line 550
    :goto_a
    move-object/from16 v16, v2

    .line 551
    .line 552
    move-object v9, v8

    .line 553
    move-object v7, v15

    .line 554
    move-object/from16 v11, v23

    .line 555
    .line 556
    :goto_b
    move-object v8, v0

    .line 557
    goto/16 :goto_15

    .line 558
    .line 559
    :cond_b
    move-object/from16 v15, p4

    .line 560
    .line 561
    :try_start_10
    iget-object v0, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 562
    .line 563
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 564
    .line 565
    const-string v1, "contentLength large than max"

    .line 566
    .line 567
    const/4 v2, 0x0

    .line 568
    :try_start_11
    new-array v3, v2, [Ljava/lang/Object;

    .line 569
    .line 570
    invoke-interface {v0, v14, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    move-object/from16 v2, v23

    .line 574
    .line 575
    move-object/from16 v7, v24

    .line 576
    .line 577
    :goto_c
    move-object/from16 v16, v2

    .line 578
    .line 579
    move-object v10, v7

    .line 580
    move-object/from16 v11, v23

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :catchall_7
    move-exception v0

    .line 584
    goto :goto_7

    .line 585
    :cond_c
    move-object/from16 v15, p4

    .line 586
    .line 587
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    invoke-virtual {v15}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    if-eqz v1, :cond_d

    .line 600
    .line 601
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    .line 602
    .line 603
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 604
    .line 605
    .line 606
    goto :goto_d

    .line 607
    :cond_d
    move-object v1, v0

    .line 608
    :goto_d
    :try_start_12
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 609
    .line 610
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 611
    .line 612
    .line 613
    const/16 v0, 0x400

    .line 614
    .line 615
    :try_start_13
    new-array v0, v0, [B

    .line 616
    .line 617
    :goto_e
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    .line 618
    .line 619
    .line 620
    move-result v3

    .line 621
    const/4 v4, -0x1

    .line 622
    if-eq v3, v4, :cond_e

    .line 623
    .line 624
    const/4 v4, 0x0

    .line 625
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 626
    .line 627
    .line 628
    goto :goto_e

    .line 629
    :catchall_8
    move-exception v0

    .line 630
    move-object/from16 v7, v24

    .line 631
    .line 632
    goto :goto_10

    .line 633
    :cond_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 634
    .line 635
    .line 636
    move-result-object v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 637
    :try_start_14
    iget-object v0, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 638
    .line 639
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 640
    .line 641
    const-string v3, "http responseBody byte length: {}"

    .line 642
    .line 643
    :try_start_15
    array-length v4, v7

    .line 644
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-interface {v0, v14, v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 653
    .line 654
    .line 655
    move-object v11, v1

    .line 656
    move-object v10, v7

    .line 657
    move-object/from16 v16, v23

    .line 658
    .line 659
    move-object/from16 v23, v2

    .line 660
    .line 661
    :goto_f
    const/4 v4, 0x0

    .line 662
    move-object v0, v13

    .line 663
    move-object/from16 v1, v22

    .line 664
    .line 665
    move v2, v9

    .line 666
    move-object v3, v10

    .line 667
    move-object v7, v15

    .line 668
    :try_start_16
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 669
    .line 670
    .line 671
    invoke-static {v8}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 672
    .line 673
    .line 674
    invoke-static/range {v16 .. v16}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 675
    .line 676
    .line 677
    invoke-static {v11}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 678
    .line 679
    .line 680
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 681
    .line 682
    .line 683
    move-object/from16 v23, v10

    .line 684
    .line 685
    goto/16 :goto_16

    .line 686
    .line 687
    :catchall_9
    move-exception v0

    .line 688
    move-object v9, v8

    .line 689
    move-object/from16 v24, v10

    .line 690
    .line 691
    move-object v7, v15

    .line 692
    goto/16 :goto_b

    .line 693
    .line 694
    :catchall_a
    move-exception v0

    .line 695
    :goto_10
    move-object v11, v1

    .line 696
    move-object/from16 v24, v7

    .line 697
    .line 698
    move-object v9, v8

    .line 699
    move-object v7, v15

    .line 700
    move-object/from16 v16, v23

    .line 701
    .line 702
    move-object v8, v0

    .line 703
    move-object/from16 v23, v2

    .line 704
    .line 705
    goto/16 :goto_15

    .line 706
    .line 707
    :catchall_b
    move-exception v0

    .line 708
    move-object v11, v1

    .line 709
    move-object v9, v8

    .line 710
    move-object v7, v15

    .line 711
    move-object/from16 v16, v23

    .line 712
    .line 713
    goto/16 :goto_b

    .line 714
    .line 715
    :cond_f
    move-object/from16 v15, p4

    .line 716
    .line 717
    :try_start_17
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v4

    .line 721
    const/4 v3, 0x0

    .line 722
    move-object v0, v13

    .line 723
    move-object/from16 v1, v22

    .line 724
    .line 725
    move v2, v9

    .line 726
    move-object v7, v15

    .line 727
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V

    .line 728
    .line 729
    .line 730
    new-instance v0, Lcom/bytedance/applog/network/RangersHttpException;

    .line 731
    .line 732
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v1

    .line 736
    invoke-direct {v0, v9, v1}, Lcom/bytedance/applog/network/RangersHttpException;-><init>(ILjava/lang/String;)V

    .line 737
    .line 738
    .line 739
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 740
    :goto_11
    move-object v8, v0

    .line 741
    move-object v9, v2

    .line 742
    move-object v7, v15

    .line 743
    move-object/from16 v11, v23

    .line 744
    .line 745
    :goto_12
    move-object/from16 v16, v11

    .line 746
    .line 747
    goto :goto_15

    .line 748
    :catchall_c
    move-exception v0

    .line 749
    move-object/from16 v15, p4

    .line 750
    .line 751
    :goto_13
    move-object v4, v15

    .line 752
    goto :goto_14

    .line 753
    :catchall_d
    move-exception v0

    .line 754
    move-object v15, v4

    .line 755
    goto/16 :goto_1

    .line 756
    .line 757
    :cond_10
    move-object v15, v4

    .line 758
    move-object/from16 v24, v7

    .line 759
    .line 760
    :try_start_18
    iget-object v0, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 761
    .line 762
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 763
    .line 764
    const-string v1, "Unknown method"

    .line 765
    .line 766
    const/4 v2, 0x0

    .line 767
    :try_start_19
    new-array v3, v2, [Ljava/lang/Object;

    .line 768
    .line 769
    invoke-interface {v0, v14, v1, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    .line 770
    .line 771
    .line 772
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 773
    .line 774
    .line 775
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 776
    .line 777
    .line 778
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 779
    .line 780
    .line 781
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 782
    .line 783
    .line 784
    goto :goto_16

    .line 785
    :catchall_e
    move-exception v0

    .line 786
    goto :goto_13

    .line 787
    :catchall_f
    move-exception v0

    .line 788
    move-object/from16 v24, v7

    .line 789
    .line 790
    move-object/from16 v4, v23

    .line 791
    .line 792
    :goto_14
    move-object v8, v0

    .line 793
    move-object v7, v4

    .line 794
    move-object/from16 v9, v23

    .line 795
    .line 796
    move-object v11, v9

    .line 797
    goto :goto_12

    .line 798
    :goto_15
    :try_start_1a
    iget-object v0, v13, Lcom/bytedance/bdtracker/p3;->b:Lcom/bytedance/bdtracker/d;

    .line 799
    .line 800
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    .line 801
    .line 802
    const-string v1, "Send request failed"

    .line 803
    .line 804
    const/4 v2, 0x0

    .line 805
    :try_start_1b
    new-array v2, v2, [Ljava/lang/Object;

    .line 806
    .line 807
    invoke-interface {v0, v14, v1, v8, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 808
    .line 809
    .line 810
    instance-of v0, v8, Lcom/bytedance/applog/network/RangersHttpException;

    .line 811
    .line 812
    if-nez v0, :cond_12

    .line 813
    .line 814
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v4

    .line 818
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 819
    .line 820
    .line 821
    move-result-wide v5

    .line 822
    const/4 v2, -0x1

    .line 823
    const/4 v3, 0x0

    .line 824
    move-object v0, v13

    .line 825
    move-object/from16 v1, v22

    .line 826
    .line 827
    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/bdtracker/p3;->a(Ljava/lang/String;I[BLjava/lang/String;JLjava/net/HttpURLConnection;)V

    .line 828
    .line 829
    .line 830
    instance-of v0, v8, Ljava/net/SocketTimeoutException;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    .line 831
    .line 832
    if-nez v0, :cond_11

    .line 833
    .line 834
    invoke-static {v9}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 835
    .line 836
    .line 837
    invoke-static/range {v16 .. v16}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 838
    .line 839
    .line 840
    invoke-static {v11}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 841
    .line 842
    .line 843
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 844
    .line 845
    .line 846
    move-object/from16 v23, v24

    .line 847
    .line 848
    :goto_16
    return-object v23

    .line 849
    :cond_11
    :try_start_1c
    new-instance v0, Lcom/bytedance/bdtracker/d3;

    .line 850
    .line 851
    const-string v1, "Request timeout"

    .line 852
    .line 853
    invoke-direct {v0, v1}, Lcom/bytedance/bdtracker/d3;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    throw v0

    .line 857
    :catchall_10
    move-exception v0

    .line 858
    goto :goto_17

    .line 859
    :cond_12
    check-cast v8, Lcom/bytedance/applog/network/RangersHttpException;

    .line 860
    .line 861
    throw v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    .line 862
    :goto_17
    invoke-static {v9}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 863
    .line 864
    .line 865
    invoke-static/range {v16 .. v16}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 866
    .line 867
    .line 868
    invoke-static {v11}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 869
    .line 870
    .line 871
    invoke-static/range {v23 .. v23}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/io/Closeable;)V

    .line 872
    .line 873
    .line 874
    throw v0
.end method
