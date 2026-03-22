.class public final Lcom/google/android/gms/internal/ads/zzeaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfge;


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzead;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzb(Lcom/google/android/gms/internal/ads/zzead;)Lcom/google/android/gms/internal/ads/zzeae;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzead;)Lcom/google/android/gms/internal/ads/zzeae;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdwm;
        }
    .end annotation

    .line 1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzead;->zza:Ljava/lang/String;

    .line 2
    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzead;->zzb:I

    .line 4
    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzead;->zzc:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzead;->zzd:[B

    .line 8
    .line 9
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzead;->zze:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    move-object v0, p0

    .line 20
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzeaf;->zzc(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzeae;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method protected final zzc(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;J)Lcom/google/android/gms/internal/ads/zzeae;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdwm;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "Received error HTTP response code: "

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeae;

    .line 11
    .line 12
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzeae;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeaf;->zzb:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v7, "SDK version: "

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 35
    .line 36
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v7, "AdRequestServiceImpl: Sending request: "

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Ljava/net/URL;

    .line 60
    .line 61
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v14, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    :goto_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfra;->zzb:I

    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    move-object v12, v0

    .line 78
    check-cast v12, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .line 80
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeaf;->zza:Landroid/content/Context;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    move-object v8, v13

    .line 89
    move-object v10, v12

    .line 90
    move-object v15, v12

    .line 91
    move/from16 v12, p2

    .line 92
    .line 93
    :try_start_2
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzg(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;ZI)V

    .line 94
    .line 95
    .line 96
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eqz v6, :cond_0

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    check-cast v6, Ljava/util/Map$Entry;

    .line 115
    .line 116
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    check-cast v7, Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v15, v7, v6}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    goto/16 :goto_f

    .line 134
    .line 135
    :catch_0
    move-exception v0

    .line 136
    goto/16 :goto_d

    .line 137
    .line 138
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_1

    .line 143
    .line 144
    const-string v0, "Content-Type"

    .line 145
    .line 146
    move-object/from16 v6, p5

    .line 147
    .line 148
    invoke-virtual {v15, v0, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_1
    move-object/from16 v6, p5

    .line 153
    .line 154
    :goto_2
    new-instance v7, Lcom/google/android/gms/ads/internal/util/client/zzl;

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-direct {v7, v8}, Lcom/google/android/gms/ads/internal/util/client/zzl;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    :try_start_3
    invoke-virtual {v7, v15, v2}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzc(Ljava/net/HttpURLConnection;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    move-object v9, v0

    .line 166
    :try_start_4
    const-string v0, "Network request logging failed."

    .line 167
    .line 168
    invoke-static {v0, v9}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v10, "HttpRequestFunction.logAdRequest"

    .line 176
    .line 177
    invoke-virtual {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :goto_3
    array-length v0, v2

    .line 181
    if-lez v0, :cond_2

    .line 182
    .line 183
    invoke-virtual {v15, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v15, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 187
    .line 188
    .line 189
    :try_start_5
    new-instance v9, Ljava/io/BufferedOutputStream;

    .line 190
    .line 191
    invoke-virtual {v15}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-direct {v9, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 196
    .line 197
    .line 198
    :try_start_6
    invoke-virtual {v9, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    .line 200
    .line 201
    :try_start_7
    invoke-static {v9}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 202
    .line 203
    .line 204
    goto :goto_5

    .line 205
    :catchall_2
    move-exception v0

    .line 206
    move-object v8, v9

    .line 207
    goto :goto_4

    .line 208
    :catchall_3
    move-exception v0

    .line 209
    :goto_4
    invoke-static {v8}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_2
    :goto_5
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {v15}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 222
    .line 223
    .line 224
    move-result-object v9

    .line 225
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    if-eqz v10, :cond_4

    .line 234
    .line 235
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v10

    .line 239
    check-cast v10, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    check-cast v11, Ljava/lang/String;

    .line 246
    .line 247
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    check-cast v10, Ljava/util/List;

    .line 252
    .line 253
    invoke-interface {v14, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v12

    .line 257
    if-eqz v12, :cond_3

    .line 258
    .line 259
    invoke-interface {v14, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v11

    .line 263
    check-cast v11, Ljava/util/List;

    .line 264
    .line 265
    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    .line 273
    .line 274
    invoke-interface {v14, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_4
    invoke-virtual {v7, v15, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zze(Ljava/net/HttpURLConnection;I)V

    .line 279
    .line 280
    .line 281
    iput v0, v5, Lcom/google/android/gms/internal/ads/zzeae;->zza:I

    .line 282
    .line 283
    iput-object v14, v5, Lcom/google/android/gms/internal/ads/zzeae;->zzb:Ljava/util/Map;

    .line 284
    .line 285
    const-string v9, ""

    .line 286
    .line 287
    iput-object v9, v5, Lcom/google/android/gms/internal/ads/zzeae;->zzc:Ljava/lang/String;
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 288
    .line 289
    const/16 v9, 0xc8

    .line 290
    .line 291
    const/16 v10, 0x12c

    .line 292
    .line 293
    if-lt v0, v9, :cond_8

    .line 294
    .line 295
    if-ge v0, v10, :cond_8

    .line 296
    .line 297
    :try_start_8
    new-instance v2, Ljava/io/InputStreamReader;

    .line 298
    .line 299
    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 304
    .line 305
    .line 306
    :try_start_9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 307
    .line 308
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const/16 v3, 0x2000

    .line 312
    .line 313
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .line 315
    .line 316
    const/16 v3, 0x800

    .line 317
    .line 318
    new-array v3, v3, [C

    .line 319
    .line 320
    :goto_7
    invoke-virtual {v2, v3}, Ljava/io/Reader;->read([C)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    const/4 v8, -0x1

    .line 325
    if-eq v6, v8, :cond_5

    .line 326
    .line 327
    const/4 v8, 0x0

    .line 328
    invoke-virtual {v0, v3, v8, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    goto :goto_7

    .line 332
    :catchall_4
    move-exception v0

    .line 333
    goto :goto_a

    .line 334
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 338
    :try_start_a
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzg(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzeae;->zzc:Ljava/lang/String;

    .line 345
    .line 346
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-eqz v0, :cond_7

    .line 351
    .line 352
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzfP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 353
    .line 354
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    check-cast v0, Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    if-eqz v0, :cond_6

    .line 369
    .line 370
    goto :goto_8

    .line 371
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 372
    .line 373
    const/4 v2, 0x3

    .line 374
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(I)V

    .line 375
    .line 376
    .line 377
    throw v0

    .line 378
    :cond_7
    :goto_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 383
    .line 384
    .line 385
    move-result-wide v2

    .line 386
    sub-long v2, v2, p6

    .line 387
    .line 388
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzeae;->zzd:J
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 389
    .line 390
    :goto_9
    :try_start_b
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 391
    .line 392
    .line 393
    goto/16 :goto_e

    .line 394
    .line 395
    :catch_1
    move-exception v0

    .line 396
    goto/16 :goto_10

    .line 397
    .line 398
    :goto_a
    move-object v8, v2

    .line 399
    goto :goto_b

    .line 400
    :catchall_5
    move-exception v0

    .line 401
    :goto_b
    :try_start_c
    invoke-static {v8}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 402
    .line 403
    .line 404
    throw v0

    .line 405
    :cond_8
    const/4 v8, 0x0

    .line 406
    if-lt v0, v10, :cond_c

    .line 407
    .line 408
    const/16 v7, 0x190

    .line 409
    .line 410
    if-ge v0, v7, :cond_c

    .line 411
    .line 412
    const-string v0, "Location"

    .line 413
    .line 414
    invoke-virtual {v15, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 419
    .line 420
    .line 421
    move-result v7

    .line 422
    if-nez v7, :cond_b

    .line 423
    .line 424
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbde;->zzig:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 425
    .line 426
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 427
    .line 428
    .line 429
    move-result-object v9

    .line 430
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    check-cast v7, Ljava/lang/Boolean;

    .line 435
    .line 436
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 437
    .line 438
    .line 439
    move-result v7
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 440
    if-eqz v7, :cond_9

    .line 441
    .line 442
    :try_start_d
    new-instance v7, Ljava/net/URI;

    .line 443
    .line 444
    invoke-direct {v7, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_d
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 451
    goto :goto_c

    .line 452
    :catch_2
    move-exception v0

    .line 453
    :try_start_e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 454
    .line 455
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    invoke-direct {v2, v4, v3, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    .line 461
    .line 462
    throw v2

    .line 463
    :cond_9
    new-instance v7, Ljava/net/URL;

    .line 464
    .line 465
    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    move-object v0, v7

    .line 469
    :goto_c
    add-int/lit8 v7, v16, 0x1

    .line 470
    .line 471
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbde;->zzfy:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 472
    .line 473
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 474
    .line 475
    .line 476
    move-result-object v10

    .line 477
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v9

    .line 481
    check-cast v9, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v9
    :try_end_e
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 487
    if-gt v7, v9, :cond_a

    .line 488
    .line 489
    :try_start_f
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1

    .line 490
    .line 491
    .line 492
    move-object v6, v0

    .line 493
    move/from16 v16, v7

    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :cond_a
    :try_start_10
    const-string v0, "Too many redirects."

    .line 498
    .line 499
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 503
    .line 504
    const-string v2, "Too many redirects"

    .line 505
    .line 506
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(ILjava/lang/String;)V

    .line 507
    .line 508
    .line 509
    throw v0

    .line 510
    :cond_b
    const-string v0, "No location header to follow redirect."

    .line 511
    .line 512
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 516
    .line 517
    const-string v2, "No location header to follow redirect"

    .line 518
    .line 519
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(ILjava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v0

    .line 523
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 542
    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-direct {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(ILjava/lang/String;)V

    .line 559
    .line 560
    .line 561
    throw v2
    :try_end_10
    .catch Lcom/google/android/gms/internal/ads/zzdwm; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 562
    :catchall_6
    move-exception v0

    .line 563
    move-object v15, v12

    .line 564
    goto :goto_f

    .line 565
    :catch_3
    move-exception v0

    .line 566
    move-object v15, v12

    .line 567
    :goto_d
    :try_start_11
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zziI:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 568
    .line 569
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    check-cast v2, Ljava/lang/Boolean;

    .line 578
    .line 579
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    if-eqz v2, :cond_d

    .line 584
    .line 585
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    .line 590
    .line 591
    .line 592
    move-result-wide v2

    .line 593
    sub-long v2, v2, p6

    .line 594
    .line 595
    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzeae;->zzd:J

    .line 596
    .line 597
    goto/16 :goto_9

    .line 598
    .line 599
    :goto_e
    return-object v5

    .line 600
    :cond_d
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 601
    :goto_f
    :try_start_12
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 602
    .line 603
    .line 604
    throw v0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    .line 605
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v2

    .line 613
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 614
    .line 615
    const-string v3, "Error while connecting to ad server: "

    .line 616
    .line 617
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdwm;

    .line 625
    .line 626
    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzdwm;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    .line 628
    .line 629
    throw v3
.end method
