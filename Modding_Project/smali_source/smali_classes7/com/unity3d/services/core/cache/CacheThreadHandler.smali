.class Lcom/unity3d/services/core/cache/CacheThreadHandler;
.super Landroid/os/Handler;
.source "CacheThreadHandler.java"


# instance fields
.field private _active:Z

.field private _canceled:Z

.field private _currentRequest:Lcom/unity3d/services/core/request/WebRequest;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 11
    .line 12
    return-void
.end method

.method private downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v1, p7

    .line 8
    .line 9
    move-object/from16 v13, p8

    .line 10
    .line 11
    const-string v12, "Error closing stream"

    .line 12
    .line 13
    iget-boolean v2, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 14
    .line 15
    if-nez v2, :cond_5

    .line 16
    .line 17
    if-eqz v15, :cond_5

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_17

    .line 22
    .line 23
    :cond_0
    new-instance v5, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, " to "

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v4, "Unity Ads cache: resuming download "

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, " at "

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " bytes"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "Unity Ads cache: start downloading "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    invoke-static {}, Lcom/unity3d/services/core/device/Device;->isActiveNetworkConnected()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_2

    .line 107
    .line 108
    const-string v0, "Unity Ads cache: download cancelled, no internet connection available"

    .line 109
    .line 110
    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 114
    .line 115
    sget-object v1, Lcom/unity3d/services/core/cache/CacheError;->NO_INTERNET:Lcom/unity3d/services/core/cache/CacheError;

    .line 116
    .line 117
    filled-new-array {v1, v15}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v13, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_2
    const/4 v0, 0x1

    .line 126
    iput-boolean v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 127
    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    const/4 v11, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    .line 136
    :try_start_1
    invoke-direct {v8, v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 137
    .line 138
    .line 139
    move/from16 v0, p3

    .line 140
    .line 141
    move/from16 v1, p4

    .line 142
    .line 143
    move-object/from16 v4, p6

    .line 144
    .line 145
    :try_start_2
    invoke-direct {v14, v15, v0, v1, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 150
    .line 151
    new-instance v1, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;

    .line 152
    .line 153
    move/from16 v4, p5

    .line 154
    .line 155
    invoke-direct {v1, v14, v13, v5, v4}, Lcom/unity3d/services/core/cache/CacheThreadHandler$1;-><init>(Lcom/unity3d/services/core/cache/CacheThreadHandler;Lcom/unity3d/services/core/cache/CacheEventSender;Ljava/io/File;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/request/WebRequest;->setProgressListener(Lcom/unity3d/services/core/request/IWebRequestProgressListener;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 162
    .line 163
    invoke-virtual {v0, v8}, Lcom/unity3d/services/core/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v6

    .line 167
    iput-boolean v11, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 168
    .line 169
    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->getContentLength()J

    .line 172
    .line 173
    .line 174
    move-result-wide v16

    .line 175
    iget-object v0, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 176
    .line 177
    invoke-virtual {v0}, Lcom/unity3d/services/core/request/WebRequest;->isCanceled()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    iget-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 182
    .line 183
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseCode()I

    .line 184
    .line 185
    .line 186
    move-result v18

    .line 187
    iget-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 188
    .line 189
    invoke-virtual {v1}, Lcom/unity3d/services/core/request/WebRequest;->getResponseHeaders()Ljava/util/Map;

    .line 190
    .line 191
    .line 192
    move-result-object v19
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    move-object/from16 v1, p0

    .line 194
    .line 195
    move-object/from16 v4, p1

    .line 196
    .line 197
    move-object/from16 v20, v8

    .line 198
    .line 199
    move-wide/from16 v8, v16

    .line 200
    .line 201
    move-object v15, v10

    .line 202
    move v10, v0

    .line 203
    move/from16 v11, v18

    .line 204
    .line 205
    move-object/from16 v21, v12

    .line 206
    .line 207
    move-object/from16 v12, v19

    .line 208
    .line 209
    move-object/from16 v13, p8

    .line 210
    .line 211
    :try_start_3
    invoke-direct/range {v1 .. v13}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/unity3d/services/core/request/NetworkIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    .line 213
    .line 214
    iput-object v15, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 215
    .line 216
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 217
    .line 218
    .line 219
    goto/16 :goto_14

    .line 220
    .line 221
    :catch_0
    move-exception v0

    .line 222
    move-object v1, v0

    .line 223
    move-object/from16 v2, v21

    .line 224
    .line 225
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 226
    .line 227
    .line 228
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 229
    .line 230
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    move-object/from16 v3, p1

    .line 237
    .line 238
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    move-object/from16 v4, p8

    .line 243
    .line 244
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    goto/16 :goto_14

    .line 248
    .line 249
    :catchall_0
    move-exception v0

    .line 250
    move-object/from16 v3, p1

    .line 251
    .line 252
    move-object/from16 v4, p8

    .line 253
    .line 254
    move-object v1, v15

    .line 255
    move-object/from16 v2, v21

    .line 256
    .line 257
    :goto_1
    move-object v5, v0

    .line 258
    move-object/from16 v10, v20

    .line 259
    .line 260
    goto/16 :goto_15

    .line 261
    .line 262
    :catch_1
    move-exception v0

    .line 263
    move-object/from16 v3, p1

    .line 264
    .line 265
    move-object/from16 v4, p8

    .line 266
    .line 267
    move-object v1, v15

    .line 268
    move-object/from16 v2, v21

    .line 269
    .line 270
    :goto_2
    move-object/from16 v10, v20

    .line 271
    .line 272
    goto/16 :goto_e

    .line 273
    .line 274
    :catch_2
    move-exception v0

    .line 275
    move-object/from16 v3, p1

    .line 276
    .line 277
    move-object/from16 v4, p8

    .line 278
    .line 279
    move-object v1, v15

    .line 280
    move-object/from16 v2, v21

    .line 281
    .line 282
    :goto_3
    move-object/from16 v10, v20

    .line 283
    .line 284
    :goto_4
    const/4 v5, 0x0

    .line 285
    goto/16 :goto_f

    .line 286
    .line 287
    :catch_3
    move-exception v0

    .line 288
    move-object/from16 v3, p1

    .line 289
    .line 290
    move-object/from16 v4, p8

    .line 291
    .line 292
    move-object v1, v15

    .line 293
    move-object/from16 v2, v21

    .line 294
    .line 295
    :goto_5
    move-object/from16 v10, v20

    .line 296
    .line 297
    :goto_6
    const/4 v5, 0x0

    .line 298
    goto/16 :goto_10

    .line 299
    .line 300
    :catch_4
    move-exception v0

    .line 301
    move-object/from16 v3, p1

    .line 302
    .line 303
    move-object/from16 v4, p8

    .line 304
    .line 305
    move-object v1, v15

    .line 306
    move-object/from16 v2, v21

    .line 307
    .line 308
    :goto_7
    move-object/from16 v10, v20

    .line 309
    .line 310
    :goto_8
    const/4 v5, 0x0

    .line 311
    goto/16 :goto_11

    .line 312
    .line 313
    :catch_5
    move-exception v0

    .line 314
    move-object/from16 v3, p1

    .line 315
    .line 316
    move-object/from16 v4, p8

    .line 317
    .line 318
    move-object v1, v15

    .line 319
    move-object/from16 v2, v21

    .line 320
    .line 321
    :goto_9
    move-object/from16 v10, v20

    .line 322
    .line 323
    :goto_a
    const/4 v5, 0x0

    .line 324
    goto/16 :goto_12

    .line 325
    .line 326
    :catch_6
    move-exception v0

    .line 327
    move-object/from16 v3, p1

    .line 328
    .line 329
    move-object/from16 v4, p8

    .line 330
    .line 331
    move-object v1, v15

    .line 332
    move-object/from16 v2, v21

    .line 333
    .line 334
    :goto_b
    move-object/from16 v10, v20

    .line 335
    .line 336
    :goto_c
    const/4 v5, 0x0

    .line 337
    goto/16 :goto_13

    .line 338
    .line 339
    :catchall_1
    move-exception v0

    .line 340
    move-object/from16 v20, v8

    .line 341
    .line 342
    move-object v1, v10

    .line 343
    move-object v2, v12

    .line 344
    move-object v4, v13

    .line 345
    move-object v3, v15

    .line 346
    goto :goto_1

    .line 347
    :catch_7
    move-exception v0

    .line 348
    move-object/from16 v20, v8

    .line 349
    .line 350
    move-object v1, v10

    .line 351
    move-object v2, v12

    .line 352
    move-object v4, v13

    .line 353
    move-object v3, v15

    .line 354
    goto :goto_2

    .line 355
    :catch_8
    move-exception v0

    .line 356
    move-object/from16 v20, v8

    .line 357
    .line 358
    move-object v1, v10

    .line 359
    move-object v2, v12

    .line 360
    move-object v4, v13

    .line 361
    move-object v3, v15

    .line 362
    goto :goto_3

    .line 363
    :catch_9
    move-exception v0

    .line 364
    move-object/from16 v20, v8

    .line 365
    .line 366
    move-object v1, v10

    .line 367
    move-object v2, v12

    .line 368
    move-object v4, v13

    .line 369
    move-object v3, v15

    .line 370
    goto :goto_5

    .line 371
    :catch_a
    move-exception v0

    .line 372
    move-object/from16 v20, v8

    .line 373
    .line 374
    move-object v1, v10

    .line 375
    move-object v2, v12

    .line 376
    move-object v4, v13

    .line 377
    move-object v3, v15

    .line 378
    goto :goto_7

    .line 379
    :catch_b
    move-exception v0

    .line 380
    move-object/from16 v20, v8

    .line 381
    .line 382
    move-object v1, v10

    .line 383
    move-object v2, v12

    .line 384
    move-object v4, v13

    .line 385
    move-object v3, v15

    .line 386
    goto :goto_9

    .line 387
    :catch_c
    move-exception v0

    .line 388
    move-object/from16 v20, v8

    .line 389
    .line 390
    move-object v1, v10

    .line 391
    move-object v2, v12

    .line 392
    move-object v4, v13

    .line 393
    move-object v3, v15

    .line 394
    goto :goto_b

    .line 395
    :catchall_2
    move-exception v0

    .line 396
    move-object v1, v10

    .line 397
    move-object v2, v12

    .line 398
    move-object v4, v13

    .line 399
    move-object v3, v15

    .line 400
    :goto_d
    move-object v5, v0

    .line 401
    goto/16 :goto_15

    .line 402
    .line 403
    :catch_d
    move-exception v0

    .line 404
    move-object v1, v10

    .line 405
    move-object v2, v12

    .line 406
    move-object v4, v13

    .line 407
    move-object v3, v15

    .line 408
    goto :goto_e

    .line 409
    :catch_e
    move-exception v0

    .line 410
    move-object v1, v10

    .line 411
    move-object v2, v12

    .line 412
    move-object v4, v13

    .line 413
    move-object v3, v15

    .line 414
    goto/16 :goto_4

    .line 415
    .line 416
    :catch_f
    move-exception v0

    .line 417
    move-object v1, v10

    .line 418
    move-object v2, v12

    .line 419
    move-object v4, v13

    .line 420
    move-object v3, v15

    .line 421
    goto :goto_6

    .line 422
    :catch_10
    move-exception v0

    .line 423
    move-object v1, v10

    .line 424
    move-object v2, v12

    .line 425
    move-object v4, v13

    .line 426
    move-object v3, v15

    .line 427
    goto :goto_8

    .line 428
    :catch_11
    move-exception v0

    .line 429
    move-object v1, v10

    .line 430
    move-object v2, v12

    .line 431
    move-object v4, v13

    .line 432
    move-object v3, v15

    .line 433
    goto :goto_a

    .line 434
    :catch_12
    move-exception v0

    .line 435
    move-object v1, v10

    .line 436
    move-object v2, v12

    .line 437
    move-object v4, v13

    .line 438
    move-object v3, v15

    .line 439
    goto :goto_c

    .line 440
    :goto_e
    :try_start_5
    const-string v5, "Unknown error"

    .line 441
    .line 442
    invoke-static {v5, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 443
    .line 444
    .line 445
    const/4 v5, 0x0

    .line 446
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 447
    .line 448
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 449
    .line 450
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->UNKNOWN_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 461
    .line 462
    .line 463
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 464
    .line 465
    if-eqz v10, :cond_3

    .line 466
    .line 467
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_13

    .line 468
    .line 469
    .line 470
    goto/16 :goto_14

    .line 471
    .line 472
    :catch_13
    move-exception v0

    .line 473
    move-object v1, v0

    .line 474
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 475
    .line 476
    .line 477
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 478
    .line 479
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 480
    .line 481
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    goto/16 :goto_14

    .line 493
    .line 494
    :catchall_3
    move-exception v0

    .line 495
    goto :goto_d

    .line 496
    :catch_14
    move-exception v0

    .line 497
    move-object v1, v10

    .line 498
    move v5, v11

    .line 499
    move-object v2, v12

    .line 500
    move-object v4, v13

    .line 501
    move-object v3, v15

    .line 502
    :goto_f
    :try_start_7
    const-string v6, "Network error"

    .line 503
    .line 504
    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 505
    .line 506
    .line 507
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 508
    .line 509
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 510
    .line 511
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->NETWORK_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 522
    .line 523
    .line 524
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 525
    .line 526
    if-eqz v10, :cond_3

    .line 527
    .line 528
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_15

    .line 529
    .line 530
    .line 531
    goto/16 :goto_14

    .line 532
    .line 533
    :catch_15
    move-exception v0

    .line 534
    move-object v1, v0

    .line 535
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 536
    .line 537
    .line 538
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 539
    .line 540
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 541
    .line 542
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    goto/16 :goto_14

    .line 554
    .line 555
    :catch_16
    move-exception v0

    .line 556
    move-object v1, v10

    .line 557
    move v5, v11

    .line 558
    move-object v2, v12

    .line 559
    move-object v4, v13

    .line 560
    move-object v3, v15

    .line 561
    :goto_10
    :try_start_9
    const-string v6, "Illegal state"

    .line 562
    .line 563
    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 564
    .line 565
    .line 566
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 567
    .line 568
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 569
    .line 570
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->ILLEGAL_STATE:Lcom/unity3d/services/core/cache/CacheError;

    .line 571
    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 581
    .line 582
    .line 583
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 584
    .line 585
    if-eqz v10, :cond_3

    .line 586
    .line 587
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_17

    .line 588
    .line 589
    .line 590
    goto/16 :goto_14

    .line 591
    .line 592
    :catch_17
    move-exception v0

    .line 593
    move-object v1, v0

    .line 594
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 595
    .line 596
    .line 597
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 598
    .line 599
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    goto/16 :goto_14

    .line 613
    .line 614
    :catch_18
    move-exception v0

    .line 615
    move-object v1, v10

    .line 616
    move v5, v11

    .line 617
    move-object v2, v12

    .line 618
    move-object v4, v13

    .line 619
    move-object v3, v15

    .line 620
    :goto_11
    :try_start_b
    const-string v6, "Couldn\'t request stream"

    .line 621
    .line 622
    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 623
    .line 624
    .line 625
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 626
    .line 627
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 628
    .line 629
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 630
    .line 631
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 640
    .line 641
    .line 642
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 643
    .line 644
    if-eqz v10, :cond_3

    .line 645
    .line 646
    :try_start_c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_19

    .line 647
    .line 648
    .line 649
    goto/16 :goto_14

    .line 650
    .line 651
    :catch_19
    move-exception v0

    .line 652
    move-object v1, v0

    .line 653
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 654
    .line 655
    .line 656
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 657
    .line 658
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 659
    .line 660
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v1

    .line 664
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    goto/16 :goto_14

    .line 672
    .line 673
    :catch_1a
    move-exception v0

    .line 674
    move-object v1, v10

    .line 675
    move v5, v11

    .line 676
    move-object v2, v12

    .line 677
    move-object v4, v13

    .line 678
    move-object v3, v15

    .line 679
    :goto_12
    :try_start_d
    const-string v6, "Malformed URL"

    .line 680
    .line 681
    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 682
    .line 683
    .line 684
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 685
    .line 686
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 687
    .line 688
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->MALFORMED_URL:Lcom/unity3d/services/core/cache/CacheError;

    .line 689
    .line 690
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 699
    .line 700
    .line 701
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 702
    .line 703
    if-eqz v10, :cond_3

    .line 704
    .line 705
    :try_start_e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1b

    .line 706
    .line 707
    .line 708
    goto :goto_14

    .line 709
    :catch_1b
    move-exception v0

    .line 710
    move-object v1, v0

    .line 711
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 712
    .line 713
    .line 714
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 715
    .line 716
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 717
    .line 718
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 719
    .line 720
    .line 721
    move-result-object v1

    .line 722
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    goto :goto_14

    .line 730
    :catch_1c
    move-exception v0

    .line 731
    move-object v1, v10

    .line 732
    move v5, v11

    .line 733
    move-object v2, v12

    .line 734
    move-object v4, v13

    .line 735
    move-object v3, v15

    .line 736
    :goto_13
    :try_start_f
    const-string v6, "Couldn\'t create target file"

    .line 737
    .line 738
    invoke-static {v6, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 739
    .line 740
    .line 741
    iput-boolean v5, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 742
    .line 743
    sget-object v5, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 744
    .line 745
    sget-object v6, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v0

    .line 751
    filled-new-array {v6, v3, v0}, [Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    invoke-virtual {v4, v5, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 756
    .line 757
    .line 758
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 759
    .line 760
    if-eqz v10, :cond_3

    .line 761
    .line 762
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1d

    .line 763
    .line 764
    .line 765
    goto :goto_14

    .line 766
    :catch_1d
    move-exception v0

    .line 767
    move-object v1, v0

    .line 768
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 769
    .line 770
    .line 771
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 772
    .line 773
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 774
    .line 775
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v1

    .line 783
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    :cond_3
    :goto_14
    return-void

    .line 787
    :goto_15
    iput-object v1, v14, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 788
    .line 789
    if-eqz v10, :cond_4

    .line 790
    .line 791
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1e

    .line 792
    .line 793
    .line 794
    goto :goto_16

    .line 795
    :catch_1e
    move-exception v0

    .line 796
    move-object v1, v0

    .line 797
    invoke-static {v2, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 798
    .line 799
    .line 800
    sget-object v0, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 801
    .line 802
    sget-object v2, Lcom/unity3d/services/core/cache/CacheError;->FILE_IO_ERROR:Lcom/unity3d/services/core/cache/CacheError;

    .line 803
    .line 804
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v1

    .line 812
    invoke-virtual {v4, v0, v1}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    :cond_4
    :goto_16
    throw v5

    .line 816
    :cond_5
    :goto_17
    return-void
.end method

.method private getWebRequest(Ljava/lang/String;IILjava/util/HashMap;)Lcom/unity3d/services/core/request/WebRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/unity3d/services/core/request/WebRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance p4, Lcom/unity3d/services/core/request/WebRequest;

    .line 12
    .line 13
    const-string v2, "GET"

    .line 14
    .line 15
    move-object v0, p4

    .line 16
    move-object v1, p1

    .line 17
    move v4, p2

    .line 18
    move v5, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/services/core/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    .line 20
    .line 21
    .line 22
    return-object p4
.end method

.method private postProcessDownload(JLjava/lang/String;Ljava/io/File;JJZILjava/util/Map;Lcom/unity3d/services/core/cache/CacheEventSender;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "JJZI",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/unity3d/services/core/cache/CacheEventSender;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-virtual {p4, p1, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "Unity Ads cache: could not set file readable!"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    if-nez p9, :cond_1

    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p2, "Unity Ads cache: File "

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " of "

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p2, " bytes downloaded in "

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p2, "ms"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_END:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 67
    .line 68
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p5

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object p6

    .line 80
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p7

    .line 84
    invoke-static {p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object p8

    .line 88
    move-object p2, p3

    .line 89
    move-object p3, p4

    .line 90
    move-object p4, p5

    .line 91
    move-object p5, p6

    .line 92
    move-object p6, p7

    .line 93
    move-object p7, p8

    .line 94
    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p12, p1, p2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string p2, "Unity Ads cache: downloading of "

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string p2, " stopped"

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_STOPPED:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 128
    .line 129
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    .line 131
    .line 132
    move-result-object p4

    .line 133
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object p5

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object p6

    .line 141
    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object p7

    .line 145
    invoke-static {p11}, Lcom/unity3d/services/core/api/Request;->getResponseHeadersMap(Ljava/util/Map;)Lorg/json/JSONArray;

    .line 146
    .line 147
    .line 148
    move-result-object p8

    .line 149
    move-object p2, p3

    .line 150
    move-object p3, p4

    .line 151
    move-object p4, p5

    .line 152
    move-object p5, p6

    .line 153
    move-object p6, p7

    .line 154
    move-object p7, p8

    .line 155
    filled-new-array/range {p2 .. p7}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p12, p1, p2}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "source"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "target"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "connectTimeout"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "readTimeout"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v1, "progressInterval"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v1, "append"

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string v1, "cacheEventSender"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    move-object v10, v8

    .line 67
    check-cast v10, Lcom/unity3d/services/core/cache/CacheEventSender;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/os/BaseBundle;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-lez v1, :cond_1

    .line 77
    .line 78
    const-string v1, "There are headers left in data, reading them"

    .line 79
    .line 80
    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v1, Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v11

    .line 100
    if-eqz v11, :cond_0

    .line 101
    .line 102
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v11

    .line 106
    check-cast v11, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {v0, v11}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    invoke-virtual {v1, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    move-object v8, v1

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    const/4 v0, 0x0

    .line 123
    move-object v8, v0

    .line 124
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    if-eqz v9, :cond_2

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    :cond_2
    if-nez v9, :cond_4

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_4

    .line 144
    .line 145
    :cond_3
    iput-boolean v2, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 146
    .line 147
    sget-object p1, Lcom/unity3d/services/core/cache/CacheEvent;->DOWNLOAD_ERROR:Lcom/unity3d/services/core/cache/CacheEvent;

    .line 148
    .line 149
    sget-object v1, Lcom/unity3d/services/core/cache/CacheError;->FILE_STATE_WRONG:Lcom/unity3d/services/core/cache/CacheError;

    .line 150
    .line 151
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    filled-new-array {v1, v3, v4, v2, v0}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v10, p1, v0}, Lcom/unity3d/services/core/cache/CacheEventSender;->sendEvent(Lcom/unity3d/services/core/cache/CacheEvent;[Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 172
    .line 173
    const/4 v0, 0x1

    .line 174
    if-eq p1, v0, :cond_5

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    move-object v2, p0

    .line 178
    invoke-direct/range {v2 .. v10}, Lcom/unity3d/services/core/cache/CacheThreadHandler;->downloadFile(Ljava/lang/String;Ljava/lang/String;IIILjava/util/HashMap;ZLcom/unity3d/services/core/cache/CacheEventSender;)V

    .line 179
    .line 180
    .line 181
    :goto_2
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 2
    .line 3
    return v0
.end method

.method public setCancelStatus(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_canceled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_currentRequest:Lcom/unity3d/services/core/request/WebRequest;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheThreadHandler;->_active:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/unity3d/services/core/request/WebRequest;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
