.class Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;
.super Ljava/lang/Thread;
.source "DexLoadErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->reportDexLoadingIssue(Landroid/content/Context;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "data"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "0"

    .line 8
    .line 9
    const-string v4, "attempt"

    .line 10
    .line 11
    const-string v5, "UTF-8"

    .line 12
    .line 13
    const-string v6, "Can\'t close connection."

    .line 14
    .line 15
    const-string v7, "FBAudienceNetwork"

    .line 16
    .line 17
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v9, Ljava/net/URL;

    .line 21
    .line 22
    const-string v10, "https://www.facebook.com/adnw_logging/"

    .line 23
    .line 24
    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 32
    .line 33
    :try_start_1
    const-string v10, "POST"

    .line 34
    .line 35
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v10, "Content-Type"

    .line 39
    .line 40
    const-string v11, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 41
    .line 42
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v10, "Accept"

    .line 46
    .line 47
    const-string v11, "application/json"

    .line 48
    .line 49
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v10, "Accept-Charset"

    .line 53
    .line 54
    invoke-virtual {v9, v10, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v10, "user-agent"

    .line 58
    .line 59
    const-string v11, "[FBAN/AudienceNetworkForAndroid;FBSN/Android]"

    .line 60
    .line 61
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x1

    .line 65
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v10

    .line 82
    new-instance v11, Lorg/json/JSONObject;

    .line 83
    .line 84
    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v11, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    iget-object v12, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;->a:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v12, v11, v10}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v12, Lorg/json/JSONObject;

    .line 96
    .line 97
    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v13, "subtype"

    .line 101
    .line 102
    const-string v14, "generic"

    .line 103
    .line 104
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v13, "subtype_code"

    .line 108
    .line 109
    const-string v14, "1320"

    .line 110
    .line 111
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    const-string v13, "caught_exception"

    .line 115
    .line 116
    const-string v14, "1"

    .line 117
    .line 118
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    const-string v13, "stacktrace"

    .line 122
    .line 123
    iget-object v14, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;->b:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    new-instance v13, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v14, "id"

    .line 134
    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 136
    .line 137
    .line 138
    move-result-object v15

    .line 139
    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    .line 145
    .line 146
    const-string v14, "type"

    .line 147
    .line 148
    const-string v15, "debug"

    .line 149
    .line 150
    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    const-string v14, "session_time"

    .line 154
    .line 155
    new-instance v15, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 167
    const-wide/16 v18, 0x3e8

    .line 168
    .line 169
    move-object/from16 v21, v9

    .line 170
    .line 171
    :try_start_2
    div-long v8, v16, v18

    .line 172
    .line 173
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    invoke-virtual {v13, v14, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    const-string v8, "time"

    .line 184
    .line 185
    new-instance v9, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    .line 195
    .line 196
    move-result-wide v14

    .line 197
    div-long v14, v14, v18

    .line 198
    .line 199
    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v13, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    const-string v2, "session_id"

    .line 210
    .line 211
    invoke-virtual {v13, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v13, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v13, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    iget-object v2, v1, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter$a;->a:Landroid/content/Context;

    .line 221
    .line 222
    invoke-static {v2, v12, v10}, Lcom/facebook/ads/internal/dynamicloading/DexLoadErrorReporter;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    new-instance v2, Lorg/json/JSONArray;

    .line 226
    .line 227
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 231
    .line 232
    .line 233
    new-instance v3, Lorg/json/JSONObject;

    .line 234
    .line 235
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    const-string v0, "events"

    .line 242
    .line 243
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v2, Ljava/io/DataOutputStream;

    .line 251
    .line 252
    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 257
    .line 258
    .line 259
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v4, "payload="

    .line 265
    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 284
    .line 285
    .line 286
    const/16 v0, 0x4000

    .line 287
    .line 288
    new-array v0, v0, [B

    .line 289
    .line 290
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 291
    .line 292
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual/range {v21 .. v21}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 296
    .line 297
    .line 298
    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 299
    :goto_0
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const/4 v5, -0x1

    .line 304
    if-eq v4, v5, :cond_0

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    invoke-virtual {v3, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 308
    .line 309
    .line 310
    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    .line 312
    move-object/from16 v20, v8

    .line 313
    .line 314
    move-object v8, v2

    .line 315
    goto :goto_5

    .line 316
    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 317
    .line 318
    .line 319
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 320
    .line 321
    .line 322
    goto :goto_1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    move-object v2, v0

    .line 325
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .line 327
    .line 328
    :goto_1
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 329
    .line 330
    .line 331
    goto :goto_2

    .line 332
    :catch_1
    move-exception v0

    .line 333
    move-object v2, v0

    .line 334
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    .line 336
    .line 337
    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 338
    .line 339
    .line 340
    goto :goto_8

    .line 341
    :catchall_1
    move-exception v0

    .line 342
    move-object v8, v2

    .line 343
    :goto_3
    const/16 v20, 0x0

    .line 344
    .line 345
    goto :goto_5

    .line 346
    :catchall_2
    move-exception v0

    .line 347
    :goto_4
    const/4 v8, 0x0

    .line 348
    goto :goto_3

    .line 349
    :catchall_3
    move-exception v0

    .line 350
    move-object/from16 v21, v9

    .line 351
    .line 352
    goto :goto_4

    .line 353
    :catchall_4
    move-exception v0

    .line 354
    const/4 v8, 0x0

    .line 355
    const/16 v20, 0x0

    .line 356
    .line 357
    const/16 v21, 0x0

    .line 358
    .line 359
    :goto_5
    :try_start_7
    const-string v2, "Can\'t send error."

    .line 360
    .line 361
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 362
    .line 363
    .line 364
    if-eqz v8, :cond_1

    .line 365
    .line 366
    :try_start_8
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 367
    .line 368
    .line 369
    goto :goto_6

    .line 370
    :catch_2
    move-exception v0

    .line 371
    move-object v2, v0

    .line 372
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .line 374
    .line 375
    :cond_1
    :goto_6
    if-eqz v20, :cond_2

    .line 376
    .line 377
    :try_start_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 378
    .line 379
    .line 380
    goto :goto_7

    .line 381
    :catch_3
    move-exception v0

    .line 382
    move-object v2, v0

    .line 383
    invoke-static {v7, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 384
    .line 385
    .line 386
    :cond_2
    :goto_7
    if-eqz v21, :cond_3

    .line 387
    .line 388
    goto :goto_2

    .line 389
    :cond_3
    :goto_8
    return-void

    .line 390
    :catchall_5
    move-exception v0

    .line 391
    move-object v2, v0

    .line 392
    if-eqz v8, :cond_4

    .line 393
    .line 394
    :try_start_a
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 395
    .line 396
    .line 397
    goto :goto_9

    .line 398
    :catch_4
    move-exception v0

    .line 399
    move-object v3, v0

    .line 400
    invoke-static {v7, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    :cond_4
    :goto_9
    if-eqz v20, :cond_5

    .line 404
    .line 405
    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 406
    .line 407
    .line 408
    goto :goto_a

    .line 409
    :catch_5
    move-exception v0

    .line 410
    move-object v3, v0

    .line 411
    invoke-static {v7, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .line 413
    .line 414
    :cond_5
    :goto_a
    if-eqz v21, :cond_6

    .line 415
    .line 416
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 417
    .line 418
    .line 419
    :cond_6
    throw v2
.end method
