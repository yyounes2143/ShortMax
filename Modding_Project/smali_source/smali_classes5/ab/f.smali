.class public Lab/f;
.super Lab/a;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lab/a;",
        "Ljava/util/concurrent/Callable<",
        "Lab/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "f"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILab/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lya/c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lab/a;-><init>(Ljava/lang/String;ILab/c;Landroid/content/Context;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lya/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lab/f;->h()Lab/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lab/d;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "RequestCallableV2 disconnect HttpsURLConnection catch RuntimeException"

    .line 4
    .line 5
    const-string v3, "RequestCallableV2 disconnect HttpsURLConnection catch Throwable"

    .line 6
    .line 7
    sget-object v0, Lab/f;->i:Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "Post call execute"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v4, 0x0

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 21
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Lab/a;->c()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    invoke-virtual/range {p0 .. p0}, Lab/a;->a()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    invoke-virtual/range {p0 .. p0}, Lab/a;->e()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v11

    .line 37
    invoke-static {v9, v10, v11}, Leb/a;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    .line 38
    .line 39
    .line 40
    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 41
    if-nez v9, :cond_1

    .line 42
    .line 43
    :try_start_2
    const-string v10, "create HttpsURLConnection instance by url return null."

    .line 44
    .line 45
    invoke-static {v0, v10}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    .line 47
    .line 48
    if-eqz v9, :cond_0

    .line 49
    .line 50
    :try_start_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    sget-object v0, Lab/f;->i:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    sget-object v0, Lab/f;->i:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-object v6

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    move-object v6, v9

    .line 68
    goto/16 :goto_9

    .line 69
    .line 70
    :catch_1
    move-exception v0

    .line 71
    :goto_1
    move-wide/from16 v19, v4

    .line 72
    .line 73
    move-wide v4, v7

    .line 74
    move-wide/from16 v6, v19

    .line 75
    .line 76
    goto/16 :goto_6

    .line 77
    .line 78
    :cond_1
    :try_start_4
    const-string v10, "Content-Type"

    .line 79
    .line 80
    const-string v11, "application/json; charset=UTF-8"

    .line 81
    .line 82
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v10, "Connection"

    .line 86
    .line 87
    const-string v11, "close"

    .line 88
    .line 89
    invoke-virtual {v9, v10, v11}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v10, "POST"

    .line 93
    .line 94
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v10, 0x1

    .line 98
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9, v10}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lab/a;->b()Lab/c;

    .line 105
    .line 106
    .line 107
    move-result-object v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    const-string v11, ""

    .line 109
    .line 110
    if-eqz v10, :cond_2

    .line 111
    .line 112
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lab/a;->b()Lab/c;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-virtual {v10}, Lab/c;->c()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move-object v10, v11

    .line 122
    :goto_2
    const-string v12, "If-None-Match"

    .line 123
    .line 124
    :try_start_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 128
    if-eqz v13, :cond_3

    .line 129
    .line 130
    const-string v10, "&"

    .line 131
    .line 132
    :cond_3
    :try_start_7
    invoke-virtual {v9, v12, v10}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v9}, Ljava/net/URLConnection;->connect()V

    .line 136
    .line 137
    .line 138
    invoke-virtual/range {p0 .. p0}, Lab/a;->f()Lya/c;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    const-string v12, "services"

    .line 143
    .line 144
    invoke-virtual {v10, v12, v11}, Lya/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    invoke-static {v9, v10}, Leb/a;->b(Ljavax/net/ssl/HttpsURLConnection;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 152
    .line 153
    .line 154
    move-result v12

    .line 155
    new-instance v10, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    const-string v11, "httpsURLConnection result code:"

    .line 161
    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    invoke-static {v0, v10}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 173
    .line 174
    .line 175
    const/16 v0, 0xc8

    .line 176
    .line 177
    if-ne v12, v0, :cond_4

    .line 178
    .line 179
    :try_start_8
    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    .line 184
    .line 185
    .line 186
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 187
    :try_start_9
    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    .line 188
    .line 189
    .line 190
    move-object v6, v0

    .line 191
    goto :goto_3

    .line 192
    :catchall_2
    move-exception v0

    .line 193
    invoke-static {v6}, Lcom/huawei/hms/framework/common/IoUtils;->closeSecure(Ljava/io/InputStream;)V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :cond_4
    :goto_3
    invoke-virtual {v9}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 202
    .line 203
    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v10

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v17

    .line 212
    if-nez v6, :cond_5

    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    new-array v0, v0, [B

    .line 216
    .line 217
    move-object v14, v0

    .line 218
    goto :goto_4

    .line 219
    :cond_5
    move-object v14, v6

    .line 220
    :goto_4
    new-instance v0, Lab/d;

    .line 221
    .line 222
    sub-long v15, v10, v7

    .line 223
    .line 224
    move-object v11, v0

    .line 225
    invoke-direct/range {v11 .. v16}, Lab/d;-><init>(ILjava/util/Map;[BJ)V

    .line 226
    .line 227
    .line 228
    iput-object v0, v1, Lab/a;->a:Lab/d;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 229
    .line 230
    :try_start_a
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 231
    .line 232
    .line 233
    :goto_5
    move-wide/from16 v2, v17

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :catchall_3
    move-exception v0

    .line 237
    goto :goto_9

    .line 238
    :catch_2
    move-exception v0

    .line 239
    move-object v9, v6

    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :catch_3
    move-exception v0

    .line 243
    move-object v9, v6

    .line 244
    move-wide v6, v4

    .line 245
    :goto_6
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 250
    .line 251
    .line 252
    move-result-wide v17

    .line 253
    sget-object v8, Lab/f;->i:Ljava/lang/String;

    .line 254
    .line 255
    const-string v12, "RequestCallableV2 run task catch IOException"

    .line 256
    .line 257
    invoke-static {v8, v12, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    new-instance v8, Lab/d;

    .line 261
    .line 262
    sub-long/2addr v10, v4

    .line 263
    invoke-direct {v8, v0, v10, v11}, Lab/d;-><init>(Ljava/lang/Exception;J)V

    .line 264
    .line 265
    .line 266
    iput-object v8, v1, Lab/a;->a:Lab/d;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 267
    .line 268
    if-eqz v9, :cond_6

    .line 269
    .line 270
    :try_start_c
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 271
    .line 272
    .line 273
    goto :goto_7

    .line 274
    :catchall_4
    move-wide v4, v6

    .line 275
    :catchall_5
    sget-object v0, Lab/f;->i:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {v0, v3}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto :goto_5

    .line 281
    :catch_4
    move-wide v4, v6

    .line 282
    :catch_5
    sget-object v0, Lab/f;->i:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_6
    :goto_7
    move-wide v4, v6

    .line 289
    goto :goto_5

    .line 290
    :goto_8
    iget-object v0, v1, Lab/a;->a:Lab/d;

    .line 291
    .line 292
    invoke-virtual/range {p0 .. p0}, Lab/a;->c()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-virtual {v0, v6}, Lab/d;->i(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    iget-object v0, v1, Lab/a;->a:Lab/d;

    .line 300
    .line 301
    invoke-virtual/range {p0 .. p0}, Lab/a;->d()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v0, v6}, Lab/d;->b(I)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v1, Lab/a;->a:Lab/d;

    .line 309
    .line 310
    invoke-virtual {v0, v4, v5}, Lab/d;->h(J)V

    .line 311
    .line 312
    .line 313
    iget-object v0, v1, Lab/a;->a:Lab/d;

    .line 314
    .line 315
    invoke-virtual {v0, v2, v3}, Lab/d;->c(J)V

    .line 316
    .line 317
    .line 318
    invoke-virtual/range {p0 .. p0}, Lab/a;->b()Lab/c;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_7

    .line 323
    .line 324
    invoke-virtual/range {p0 .. p0}, Lab/a;->b()Lab/c;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v2, v1, Lab/a;->a:Lab/d;

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Lab/c;->d(Lab/d;)V

    .line 331
    .line 332
    .line 333
    :cond_7
    iget-object v0, v1, Lab/a;->a:Lab/d;

    .line 334
    .line 335
    return-object v0

    .line 336
    :goto_9
    if-eqz v6, :cond_8

    .line 337
    .line 338
    :try_start_d
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 339
    .line 340
    .line 341
    goto :goto_a

    .line 342
    :catchall_6
    sget-object v2, Lab/f;->i:Ljava/lang/String;

    .line 343
    .line 344
    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    .line 346
    .line 347
    goto :goto_a

    .line 348
    :catch_6
    sget-object v3, Lab/f;->i:Ljava/lang/String;

    .line 349
    .line 350
    invoke-static {v3, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    :cond_8
    :goto_a
    throw v0
.end method
