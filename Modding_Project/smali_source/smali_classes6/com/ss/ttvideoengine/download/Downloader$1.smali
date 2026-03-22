.class Lcom/ss/ttvideoengine/download/Downloader$1;
.super Landroid/os/Handler;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/download/Downloader;->initHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/download/Downloader;

.field final synthetic val$downloader:Lcom/ss/ttvideoengine/download/Downloader;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/download/Downloader;Landroid/os/Looper;Lcom/ss/ttvideoengine/download/Downloader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 6
    .line 7
    .line 8
    iget v2, v0, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const/4 v3, 0x5

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-ne v2, v4, :cond_1

    .line 14
    .line 15
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    instance-of v2, v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz v2, :cond_16

    .line 20
    .line 21
    check-cast v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    iget-object v6, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 30
    .line 31
    invoke-static {v6, v2}, Lcom/ss/ttvideoengine/download/Downloader;->access$100(Lcom/ss/ttvideoengine/download/Downloader;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_16

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->_shouldRetry(Lcom/ss/ttvideoengine/utils/Error;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_0

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto/16 :goto_8

    .line 55
    .line 56
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v2, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-eqz v0, :cond_16

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_16

    .line 68
    .line 69
    :goto_1
    iget-object v0, v2, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ge v5, v0, :cond_16

    .line 76
    .line 77
    iget-object v0, v2, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    .line 92
    add-int/lit8 v5, v5, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    const/4 v6, 0x2

    .line 96
    const/4 v7, 0x3

    .line 97
    const-string v8, "TTVideoEngine.Downloader"

    .line 98
    .line 99
    if-ne v2, v6, :cond_3

    .line 100
    .line 101
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v0, Ljava/lang/String;

    .line 104
    .line 105
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 106
    .line 107
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/download/Downloader;->access$100(Lcom/ss/ttvideoengine/download/Downloader;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_16

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eq v2, v3, :cond_2

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eq v2, v7, :cond_2

    .line 124
    .line 125
    invoke-virtual {v0, v7}, Lcom/ss/ttvideoengine/download/DownloadTask;->setState(I)V

    .line 126
    .line 127
    .line 128
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "[downloader] task did suspended "

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/download/Downloader;->tryNextWaitingTask(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    .line 157
    goto/16 :goto_9

    .line 158
    .line 159
    :cond_3
    const-string v9, "kTTVideoErrorDomainDownload"

    .line 160
    .line 161
    const/4 v10, 0x4

    .line 162
    if-nez v2, :cond_12

    .line 163
    .line 164
    :try_start_2
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Ljava/lang/String;

    .line 167
    .line 168
    const-string v2, ","

    .line 169
    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    array-length v2, v0

    .line 175
    if-ge v2, v10, :cond_4

    .line 176
    .line 177
    return-void

    .line 178
    :cond_4
    aget-object v2, v0, v5

    .line 179
    .line 180
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 181
    .line 182
    .line 183
    move-result-wide v10

    .line 184
    aget-object v2, v0, v4

    .line 185
    .line 186
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v12

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    const-string v14, "[downloader] download progress, bytesReceived = "

    .line 196
    .line 197
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v14, " expectedToReceive = "

    .line 204
    .line 205
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-wide/16 v14, 0x0

    .line 219
    .line 220
    cmp-long v2, v12, v14

    .line 221
    .line 222
    if-gtz v2, :cond_5

    .line 223
    .line 224
    return-void

    .line 225
    :cond_5
    aget-object v2, v0, v6

    .line 226
    .line 227
    aget-object v0, v0, v7

    .line 228
    .line 229
    iget-object v6, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 230
    .line 231
    invoke-static {v6, v2}, Lcom/ss/ttvideoengine/download/Downloader;->access$100(Lcom/ss/ttvideoengine/download/Downloader;Ljava/lang/String;)Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    if-nez v6, :cond_6

    .line 236
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v3, "[downloader] exect fail. key = "

    .line 243
    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v3, ", task is null"

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    goto/16 :goto_6

    .line 272
    .line 273
    :cond_6
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-eq v5, v7, :cond_11

    .line 278
    .line 279
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-ne v5, v3, :cond_7

    .line 284
    .line 285
    goto/16 :goto_5

    .line 286
    .line 287
    :cond_7
    iget-object v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 288
    .line 289
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    iget-object v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 297
    .line 298
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    iget-object v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 306
    .line 307
    if-eqz v3, :cond_9

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    if-lez v3, :cond_9

    .line 314
    .line 315
    iget-object v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    move v5, v4

    .line 322
    move-wide v10, v14

    .line 323
    move-wide v12, v10

    .line 324
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 325
    .line 326
    .line 327
    move-result v16

    .line 328
    if-eqz v16, :cond_a

    .line 329
    .line 330
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v16

    .line 334
    move-object/from16 v7, v16

    .line 335
    .line 336
    check-cast v7, Ljava/lang/String;

    .line 337
    .line 338
    iget-object v14, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 339
    .line 340
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v14

    .line 344
    if-nez v14, :cond_8

    .line 345
    .line 346
    const/4 v5, 0x0

    .line 347
    goto :goto_3

    .line 348
    :cond_8
    iget-object v14, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceivedMap:Ljava/util/HashMap;

    .line 349
    .line 350
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v14

    .line 354
    check-cast v14, Ljava/lang/Long;

    .line 355
    .line 356
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    .line 357
    .line 358
    .line 359
    move-result-wide v14

    .line 360
    add-long/2addr v10, v14

    .line 361
    iget-object v14, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceiveMap:Ljava/util/HashMap;

    .line 362
    .line 363
    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    check-cast v7, Ljava/lang/Long;

    .line 368
    .line 369
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 370
    .line 371
    .line 372
    move-result-wide v14

    .line 373
    add-long/2addr v12, v14

    .line 374
    :goto_3
    const/4 v7, 0x3

    .line 375
    const-wide/16 v14, 0x0

    .line 376
    .line 377
    goto :goto_2

    .line 378
    :cond_9
    const/4 v5, 0x0

    .line 379
    const-wide/16 v10, 0x0

    .line 380
    .line 381
    const-wide/16 v12, 0x0

    .line 382
    .line 383
    :cond_a
    iput-wide v10, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 384
    .line 385
    iput-wide v12, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 386
    .line 387
    iget-boolean v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mFirstResumeCallback:Z

    .line 388
    .line 389
    if-nez v3, :cond_b

    .line 390
    .line 391
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 392
    .line 393
    if-eqz v3, :cond_b

    .line 394
    .line 395
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    if-eqz v3, :cond_b

    .line 400
    .line 401
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 402
    .line 403
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 404
    .line 405
    .line 406
    move-result-object v16

    .line 407
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 408
    .line 409
    iget-wide v10, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 410
    .line 411
    iget-wide v12, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 412
    .line 413
    move-object/from16 v17, v3

    .line 414
    .line 415
    move-object/from16 v18, v6

    .line 416
    .line 417
    move-wide/from16 v19, v10

    .line 418
    .line 419
    move-wide/from16 v21, v12

    .line 420
    .line 421
    invoke-interface/range {v16 .. v22}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidResume(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V

    .line 422
    .line 423
    .line 424
    iput-boolean v4, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mFirstResumeCallback:Z

    .line 425
    .line 426
    :cond_b
    if-eqz v5, :cond_c

    .line 427
    .line 428
    iget-wide v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 429
    .line 430
    const-wide/16 v10, 0x0

    .line 431
    .line 432
    cmp-long v5, v3, v10

    .line 433
    .line 434
    if-lez v5, :cond_c

    .line 435
    .line 436
    iget-wide v10, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 437
    .line 438
    cmp-long v3, v3, v10

    .line 439
    .line 440
    if-nez v3, :cond_c

    .line 441
    .line 442
    iput-object v0, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->availableLocalFilePath:Ljava/lang/String;

    .line 443
    .line 444
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->downloadEnd()V

    .line 445
    .line 446
    .line 447
    return-void

    .line 448
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 449
    .line 450
    .line 451
    move-result-wide v3

    .line 452
    iget-wide v10, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 453
    .line 454
    sub-long v21, v3, v10

    .line 455
    .line 456
    const-wide/16 v10, 0x3e8

    .line 457
    .line 458
    cmp-long v0, v21, v10

    .line 459
    .line 460
    if-lez v0, :cond_e

    .line 461
    .line 462
    iget-object v5, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 463
    .line 464
    invoke-static {v5}, Lcom/ss/ttvideoengine/download/Downloader;->access$300(Lcom/ss/ttvideoengine/download/Downloader;)Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-static {v5}, Lcom/ss/ttvideoengine/utils/TTHelper;->getFreeSize(Landroid/content/Context;)J

    .line 469
    .line 470
    .line 471
    move-result-wide v10

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .line 476
    .line 477
    const-string v7, "[downloader] get free size, size = "

    .line 478
    .line 479
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v5

    .line 489
    invoke-static {v8, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v5, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 493
    .line 494
    invoke-virtual {v5}, Lcom/ss/ttvideoengine/download/Downloader;->getLimitFreeDiskSize()J

    .line 495
    .line 496
    .line 497
    move-result-wide v12

    .line 498
    cmp-long v5, v10, v12

    .line 499
    .line 500
    if-gtz v5, :cond_e

    .line 501
    .line 502
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 503
    .line 504
    new-instance v2, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    const-string v3, "available size is less than "

    .line 510
    .line 511
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 515
    .line 516
    invoke-virtual {v3}, Lcom/ss/ttvideoengine/download/Downloader;->getLimitFreeDiskSize()J

    .line 517
    .line 518
    .line 519
    move-result-wide v3

    .line 520
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v3, " Byte"

    .line 524
    .line 525
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    const/16 v3, -0x26db

    .line 533
    .line 534
    const/4 v4, 0x0

    .line 535
    invoke-direct {v0, v9, v3, v4, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v0}, Lcom/ss/ttvideoengine/download/DownloadTask;->receiveError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 539
    .line 540
    .line 541
    iget-object v0, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 542
    .line 543
    if-eqz v0, :cond_d

    .line 544
    .line 545
    const/4 v5, 0x0

    .line 546
    :goto_4
    iget-object v0, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-ge v5, v0, :cond_d

    .line 553
    .line 554
    iget-object v0, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->mediaKeys:Ljava/util/ArrayList;

    .line 555
    .line 556
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Ljava/lang/String;

    .line 561
    .line 562
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v2, v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    add-int/lit8 v5, v5, 0x1

    .line 570
    .line 571
    goto :goto_4

    .line 572
    :cond_d
    return-void

    .line 573
    :cond_e
    iget-wide v9, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 574
    .line 575
    const-wide/16 v11, 0x1

    .line 576
    .line 577
    cmp-long v5, v9, v11

    .line 578
    .line 579
    if-ltz v5, :cond_f

    .line 580
    .line 581
    if-ltz v0, :cond_16

    .line 582
    .line 583
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    const-string v5, "[downloader] notify listener. key = "

    .line 589
    .line 590
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .line 602
    .line 603
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 604
    .line 605
    if-eqz v0, :cond_10

    .line 606
    .line 607
    invoke-static {v0}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    if-eqz v0, :cond_10

    .line 612
    .line 613
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    const/4 v2, 0x3

    .line 618
    if-eq v0, v2, :cond_10

    .line 619
    .line 620
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 621
    .line 622
    invoke-static {v0}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 623
    .line 624
    .line 625
    move-result-object v16

    .line 626
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 627
    .line 628
    iget-wide v7, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 629
    .line 630
    iget-wide v9, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->updateBytesReceived:J

    .line 631
    .line 632
    sub-long v19, v7, v9

    .line 633
    .line 634
    move-object/from16 v17, v0

    .line 635
    .line 636
    move-object/from16 v18, v6

    .line 637
    .line 638
    invoke-interface/range {v16 .. v22}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderWriteData(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V

    .line 639
    .line 640
    .line 641
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 642
    .line 643
    invoke-static {v0}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 644
    .line 645
    .line 646
    move-result-object v16

    .line 647
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 648
    .line 649
    iget-wide v7, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 650
    .line 651
    iget-wide v9, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesExpectedToReceive:J

    .line 652
    .line 653
    move-object/from16 v17, v0

    .line 654
    .line 655
    move-object/from16 v18, v6

    .line 656
    .line 657
    move-wide/from16 v19, v7

    .line 658
    .line 659
    move-wide/from16 v21, v9

    .line 660
    .line 661
    invoke-interface/range {v16 .. v22}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderProgress(Lcom/ss/ttvideoengine/download/Downloader;Lcom/ss/ttvideoengine/download/DownloadTask;JJ)V

    .line 662
    .line 663
    .line 664
    :cond_10
    iput-wide v3, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->updateTs:J

    .line 665
    .line 666
    iget-wide v2, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->bytesReceived:J

    .line 667
    .line 668
    iput-wide v2, v6, Lcom/ss/ttvideoengine/download/DownloadTask;->updateBytesReceived:J

    .line 669
    .line 670
    goto/16 :goto_9

    .line 671
    .line 672
    :cond_11
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 673
    .line 674
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    .line 676
    .line 677
    const-string v3, "[downloader] task should suspend. key = "

    .line 678
    .line 679
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v3, ", state = "

    .line 686
    .line 687
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v6}, Lcom/ss/ttvideoengine/download/DownloadTask;->getState()I

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-static {v8, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->suspendedDownload(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    iget-object v0, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->this$0:Lcom/ss/ttvideoengine/download/Downloader;

    .line 712
    .line 713
    invoke-virtual {v0, v6}, Lcom/ss/ttvideoengine/download/Downloader;->tryNextWaitingTask(Lcom/ss/ttvideoengine/download/DownloadTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 714
    .line 715
    .line 716
    return-void

    .line 717
    :goto_6
    :try_start_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_9

    .line 721
    .line 722
    :cond_12
    const/4 v0, 0x0

    .line 723
    if-ne v2, v3, :cond_13

    .line 724
    .line 725
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 726
    .line 727
    const/4 v3, 0x0

    .line 728
    invoke-static {v2, v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$402(Lcom/ss/ttvideoengine/download/Downloader;Z)Z

    .line 729
    .line 730
    .line 731
    const-string v2, "[downloader] create KV db fail"

    .line 732
    .line 733
    invoke-static {v8, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 737
    .line 738
    invoke-static {v2}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 739
    .line 740
    .line 741
    move-result-object v2

    .line 742
    if-eqz v2, :cond_16

    .line 743
    .line 744
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 745
    .line 746
    invoke-static {v2}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 751
    .line 752
    new-instance v4, Lcom/ss/ttvideoengine/utils/Error;

    .line 753
    .line 754
    const-string v5, "create kv db fail"

    .line 755
    .line 756
    const/16 v6, -0x26d7

    .line 757
    .line 758
    const/4 v7, 0x0

    .line 759
    invoke-direct {v4, v9, v6, v7, v5}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 760
    .line 761
    .line 762
    invoke-interface {v2, v3, v0, v4}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 763
    .line 764
    .line 765
    goto/16 :goto_9

    .line 766
    .line 767
    :cond_13
    if-ne v2, v10, :cond_16

    .line 768
    .line 769
    iget-object v2, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 770
    .line 771
    invoke-static {v2}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    if-eqz v2, :cond_16

    .line 776
    .line 777
    new-instance v2, Ljava/util/ArrayList;

    .line 778
    .line 779
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 780
    .line 781
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$500(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    if-lez v3, :cond_14

    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    sub-int/2addr v3, v4

    .line 799
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    check-cast v3, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 804
    .line 805
    iget-object v5, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 806
    .line 807
    iget-wide v6, v3, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 808
    .line 809
    invoke-static {v5, v6, v7}, Lcom/ss/ttvideoengine/download/Downloader;->access$602(Lcom/ss/ttvideoengine/download/Downloader;J)J

    .line 810
    .line 811
    .line 812
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 813
    .line 814
    .line 815
    move-result-object v3

    .line 816
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 817
    .line 818
    .line 819
    move-result v5

    .line 820
    if-eqz v5, :cond_15

    .line 821
    .line 822
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    check-cast v5, Lcom/ss/ttvideoengine/download/DownloadTask;

    .line 827
    .line 828
    iget-object v6, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 829
    .line 830
    invoke-static {v6}, Lcom/ss/ttvideoengine/download/Downloader;->access$700(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    iget-wide v9, v5, Lcom/ss/ttvideoengine/download/DownloadTask;->taskIdentifier:J

    .line 835
    .line 836
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 837
    .line 838
    .line 839
    move-result-object v5

    .line 840
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    goto :goto_7

    .line 844
    :cond_15
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 845
    .line 846
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$800(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;

    .line 847
    .line 848
    .line 849
    move-result-object v3

    .line 850
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 851
    .line 852
    .line 853
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 854
    .line 855
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$800(Lcom/ss/ttvideoengine/download/Downloader;)Ljava/util/ArrayList;

    .line 856
    .line 857
    .line 858
    move-result-object v3

    .line 859
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 860
    .line 861
    .line 862
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 863
    .line 864
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/download/Downloader;->access$902(Lcom/ss/ttvideoengine/download/Downloader;Z)Z

    .line 865
    .line 866
    .line 867
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 868
    .line 869
    const/4 v4, 0x0

    .line 870
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/download/Downloader;->access$402(Lcom/ss/ttvideoengine/download/Downloader;Z)Z

    .line 871
    .line 872
    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    .line 874
    .line 875
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .line 877
    .line 878
    const-string v4, "[downloader] did load alltask. size = "

    .line 879
    .line 880
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 884
    .line 885
    .line 886
    move-result v4

    .line 887
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    invoke-static {v8, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    iget-object v3, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 898
    .line 899
    invoke-static {v3}, Lcom/ss/ttvideoengine/download/Downloader;->access$200(Lcom/ss/ttvideoengine/download/Downloader;)Lcom/ss/ttvideoengine/download/IDownloaderListener;

    .line 900
    .line 901
    .line 902
    move-result-object v3

    .line 903
    iget-object v4, v1, Lcom/ss/ttvideoengine/download/Downloader$1;->val$downloader:Lcom/ss/ttvideoengine/download/Downloader;

    .line 904
    .line 905
    invoke-interface {v3, v4, v2, v0}, Lcom/ss/ttvideoengine/download/IDownloaderListener;->downloaderDidLoadAllTask(Lcom/ss/ttvideoengine/download/Downloader;Ljava/util/List;Lcom/ss/ttvideoengine/utils/Error;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 906
    .line 907
    .line 908
    goto :goto_9

    .line 909
    :goto_8
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 910
    .line 911
    .line 912
    :cond_16
    :goto_9
    return-void
.end method
