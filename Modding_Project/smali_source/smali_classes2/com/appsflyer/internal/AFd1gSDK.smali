.class public final Lcom/appsflyer/internal/AFd1gSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final getRevenue:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/appsflyer/internal/AFd1gSDK;->getRevenue:I

    .line 5
    .line 6
    return-void
.end method

.method private static getMediationNetwork(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    goto :goto_1

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    move-object v0, v1

    .line 11
    goto :goto_4

    .line 12
    :catch_0
    move-exception v5

    .line 13
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 18
    .line 19
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    .line 20
    .line 21
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v4, v0

    .line 33
    :goto_0
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-virtual/range {v2 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    .line 38
    .line 39
    .line 40
    :goto_1
    if-nez p0, :cond_1

    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v2, Ljava/io/InputStreamReader;

    .line 49
    .line 50
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_2
    new-instance p0, Ljava/io/BufferedReader;

    .line 58
    .line 59
    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    const/16 v1, 0xa

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    move-object v1, v2

    .line 79
    move-object v10, v0

    .line 80
    move-object v0, p0

    .line 81
    move-object p0, v10

    .line 82
    goto :goto_4

    .line 83
    :cond_2
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 92
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :catchall_2
    move-exception p0

    .line 100
    move-object v0, v1

    .line 101
    move-object v1, v2

    .line 102
    :goto_4
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 105
    .line 106
    .line 107
    :cond_4
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 110
    .line 111
    .line 112
    :cond_5
    throw p0
.end method


# virtual methods
.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFd1bSDK;)Lcom/appsflyer/internal/AFe1wSDK;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFd1bSDK;",
            ")",
            "Lcom/appsflyer/internal/AFe1wSDK<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "ms"

    .line 4
    .line 5
    const-string v3, "\n took "

    .line 6
    .line 7
    const-string v4, "] "

    .line 8
    .line 9
    const-string v5, "["

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getRevenue()[B

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v11, v1, Lcom/appsflyer/internal/AFd1bSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v11, ":"

    .line 32
    .line 33
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v11, v1, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getRevenue()[B

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getMonetizationNetwork()Z

    .line 53
    .line 54
    .line 55
    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 56
    if-eqz v11, :cond_1

    .line 57
    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork()Z

    .line 61
    .line 62
    .line 63
    move-result v11

    .line 64
    if-eqz v11, :cond_0

    .line 65
    .line 66
    const-string v10, "<encrypted>"

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    const/4 v8, 0x0

    .line 71
    move-object/from16 v10, p0

    .line 72
    .line 73
    goto/16 :goto_a

    .line 74
    .line 75
    :cond_0
    new-instance v11, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-direct {v11, v10, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 82
    .line 83
    .line 84
    move-object v10, v11

    .line 85
    :goto_0
    const-string v11, "\n payload: "

    .line 86
    .line 87
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :cond_1
    :try_start_2
    iget-object v10, v1, Lcom/appsflyer/internal/AFd1bSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 94
    .line 95
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 107
    if-eqz v11, :cond_2

    .line 108
    .line 109
    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    check-cast v11, Ljava/util/Map$Entry;

    .line 114
    .line 115
    const-string v12, "\n "

    .line 116
    .line 117
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v12, ": "

    .line 130
    .line 131
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    check-cast v11, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    sget-object v10, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 167
    .line 168
    sget-object v11, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    .line 169
    .line 170
    invoke-virtual {v10, v11, v9}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    new-instance v9, Ljava/net/URL;

    .line 174
    .line 175
    iget-object v10, v1, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork:Ljava/lang/String;

    .line 176
    .line 177
    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 181
    .line 182
    .line 183
    move-result-object v9

    .line 184
    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 185
    .line 186
    :try_start_5
    iget-object v10, v1, Lcom/appsflyer/internal/AFd1bSDK;->getMonetizationNetwork:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getCurrencyIso4217Code()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    const/4 v11, 0x0

    .line 196
    if-eqz v10, :cond_3

    .line 197
    .line 198
    invoke-virtual {v9, v11}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 199
    .line 200
    .line 201
    goto :goto_3

    .line 202
    :catchall_1
    move-exception v0

    .line 203
    move-object/from16 v10, p0

    .line 204
    .line 205
    :goto_2
    move-object v8, v9

    .line 206
    goto/16 :goto_a

    .line 207
    .line 208
    :cond_3
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->component1()Z

    .line 209
    .line 210
    .line 211
    move-result v10

    .line 212
    if-nez v10, :cond_4

    .line 213
    .line 214
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 215
    .line 216
    .line 217
    :cond_4
    move-object/from16 v10, p0

    .line 218
    .line 219
    :try_start_6
    iget v12, v10, Lcom/appsflyer/internal/AFd1gSDK;->getRevenue:I

    .line 220
    .line 221
    iget v13, v1, Lcom/appsflyer/internal/AFd1bSDK;->component4:I

    .line 222
    .line 223
    const/4 v14, -0x1

    .line 224
    if-eq v13, v14, :cond_5

    .line 225
    .line 226
    move v12, v13

    .line 227
    :cond_5
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 231
    .line 232
    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->getMediationNetwork()Z

    .line 234
    .line 235
    .line 236
    move-result v12

    .line 237
    if-eqz v12, :cond_6

    .line 238
    .line 239
    const-string v12, "application/octet-stream"

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :catchall_2
    move-exception v0

    .line 243
    goto :goto_2

    .line 244
    :cond_6
    const-string v12, "application/json"

    .line 245
    .line 246
    :goto_4
    const-string v13, "Content-Type"

    .line 247
    .line 248
    invoke-virtual {v9, v13, v12}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v12, v1, Lcom/appsflyer/internal/AFd1bSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 252
    .line 253
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v13

    .line 265
    if-eqz v13, :cond_7

    .line 266
    .line 267
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    check-cast v13, Ljava/util/Map$Entry;

    .line 272
    .line 273
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v14

    .line 277
    check-cast v14, Ljava/lang/String;

    .line 278
    .line 279
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    check-cast v13, Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v9, v14, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :cond_7
    const/4 v12, 0x1

    .line 290
    if-eqz v0, :cond_9

    .line 291
    .line 292
    invoke-virtual {v9, v12}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 293
    .line 294
    .line 295
    const-string v13, "Content-Length"

    .line 296
    .line 297
    new-instance v14, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .line 301
    .line 302
    array-length v15, v0

    .line 303
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v14

    .line 310
    invoke-virtual {v9, v13, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 311
    .line 312
    .line 313
    :try_start_7
    new-instance v13, Ljava/io/BufferedOutputStream;

    .line 314
    .line 315
    invoke-virtual {v9}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    invoke-direct {v13, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 320
    .line 321
    .line 322
    :try_start_8
    invoke-virtual {v13, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 323
    .line 324
    .line 325
    :try_start_9
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :catchall_3
    move-exception v0

    .line 330
    move-object v8, v13

    .line 331
    goto :goto_6

    .line 332
    :catchall_4
    move-exception v0

    .line 333
    const/4 v8, 0x0

    .line 334
    :goto_6
    if-eqz v8, :cond_8

    .line 335
    .line 336
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 337
    .line 338
    .line 339
    :cond_8
    throw v0

    .line 340
    :cond_9
    :goto_7
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    div-int/lit8 v0, v0, 0x64

    .line 345
    .line 346
    const/4 v13, 0x2

    .line 347
    if-ne v0, v13, :cond_a

    .line 348
    .line 349
    move/from16 v17, v12

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_a
    move/from16 v17, v11

    .line 353
    .line 354
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/appsflyer/internal/AFd1bSDK;->AFAdRevenueData()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    const-string v11, ""

    .line 359
    .line 360
    if-eqz v0, :cond_b

    .line 361
    .line 362
    invoke-static {v9}, Lcom/appsflyer/internal/AFd1gSDK;->getMediationNetwork(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    move-object v15, v0

    .line 367
    goto :goto_9

    .line 368
    :cond_b
    move-object v15, v11

    .line 369
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 370
    .line 371
    .line 372
    move-result-wide v11

    .line 373
    sub-long/2addr v11, v6

    .line 374
    new-instance v0, Lcom/appsflyer/internal/AFd1aSDK;

    .line 375
    .line 376
    invoke-direct {v0, v11, v12}, Lcom/appsflyer/internal/AFd1aSDK;-><init>(J)V

    .line 377
    .line 378
    .line 379
    new-instance v11, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v12, "response code:"

    .line 382
    .line 383
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 387
    .line 388
    .line 389
    move-result v12

    .line 390
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v12, " "

    .line 394
    .line 395
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v12

    .line 402
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v12, "\n body:"

    .line 406
    .line 407
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    iget-wide v12, v0, Lcom/appsflyer/internal/AFd1aSDK;->getMediationNetwork:J

    .line 417
    .line 418
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v11

    .line 428
    sget-object v12, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 429
    .line 430
    sget-object v13, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    .line 431
    .line 432
    new-instance v14, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 438
    .line 439
    .line 440
    move-result v8

    .line 441
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    invoke-virtual {v12, v13, v8}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    new-instance v8, Ljava/util/HashMap;

    .line 458
    .line 459
    invoke-virtual {v9}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 460
    .line 461
    .line 462
    move-result-object v11

    .line 463
    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 464
    .line 465
    .line 466
    const/4 v11, 0x0

    .line 467
    invoke-interface {v8, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    new-instance v11, Lcom/appsflyer/internal/AFe1wSDK;

    .line 471
    .line 472
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 473
    .line 474
    .line 475
    move-result v16

    .line 476
    move-object v14, v11

    .line 477
    move-object/from16 v18, v8

    .line 478
    .line 479
    move-object/from16 v19, v0

    .line 480
    .line 481
    invoke-direct/range {v14 .. v19}, Lcom/appsflyer/internal/AFe1wSDK;-><init>(Ljava/lang/Object;IZLjava/util/Map;Lcom/appsflyer/internal/AFd1aSDK;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 482
    .line 483
    .line 484
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 485
    .line 486
    .line 487
    return-object v11

    .line 488
    :catchall_5
    move-exception v0

    .line 489
    move-object/from16 v10, p0

    .line 490
    .line 491
    const/4 v11, 0x0

    .line 492
    move-object v8, v11

    .line 493
    :goto_a
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 494
    .line 495
    .line 496
    move-result-wide v11

    .line 497
    sub-long/2addr v11, v6

    .line 498
    new-instance v6, Lcom/appsflyer/internal/AFd1aSDK;

    .line 499
    .line 500
    invoke-direct {v6, v11, v12}, Lcom/appsflyer/internal/AFd1aSDK;-><init>(J)V

    .line 501
    .line 502
    .line 503
    new-instance v7, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v9, "error: "

    .line 506
    .line 507
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    iget-wide v11, v6, Lcom/appsflyer/internal/AFd1aSDK;->getMediationNetwork:J

    .line 517
    .line 518
    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    sget-object v11, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 529
    .line 530
    sget-object v12, Lcom/appsflyer/internal/AFg1cSDK;->component1:Lcom/appsflyer/internal/AFg1cSDK;

    .line 531
    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    .line 538
    .line 539
    .line 540
    move-result v1

    .line 541
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v13

    .line 554
    const/16 v16, 0x0

    .line 555
    .line 556
    const/16 v17, 0x0

    .line 557
    .line 558
    const/4 v15, 0x0

    .line 559
    move-object v14, v0

    .line 560
    invoke-virtual/range {v11 .. v17}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V

    .line 561
    .line 562
    .line 563
    new-instance v1, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;

    .line 564
    .line 565
    invoke-direct {v1, v0, v6}, Lcom/appsflyer/internal/components/network/http/exceptions/HttpException;-><init>(Ljava/lang/Throwable;Lcom/appsflyer/internal/AFd1aSDK;)V

    .line 566
    .line 567
    .line 568
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 569
    :catchall_6
    move-exception v0

    .line 570
    if-eqz v8, :cond_c

    .line 571
    .line 572
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 573
    .line 574
    .line 575
    :cond_c
    throw v0
.end method
