.class public Lcom/google/android/gms/internal/ads/zzaqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzapw;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzaqu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaqr;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqu;

    .line 2
    .line 3
    const/16 v1, 0x1000

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqu;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zza:Lcom/google/android/gms/internal/ads/zzaqu;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzaqd;)Lcom/google/android/gms/internal/ads/zzapz;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqm;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "Error occurred when closing InputStream"

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzd()Lcom/google/android/gms/internal/ads/zzapm;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    goto/16 :goto_f

    .line 28
    .line 29
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzb:Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v8, :cond_1

    .line 37
    .line 38
    const-string v9, "If-None-Match"

    .line 39
    .line 40
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzd:J

    .line 44
    .line 45
    const-wide/16 v10, 0x0

    .line 46
    .line 47
    cmp-long v0, v8, v10

    .line 48
    .line 49
    if-lez v0, :cond_2

    .line 50
    .line 51
    const-string v0, "If-Modified-Since"

    .line 52
    .line 53
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzara;->zzc(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_2
    move-object v0, v7

    .line 61
    :goto_1
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:Lcom/google/android/gms/internal/ads/zzaqr;

    .line 62
    .line 63
    invoke-virtual {v7, v2, v0}, Lcom/google/android/gms/internal/ads/zzaqr;->zza(Lcom/google/android/gms/internal/ads/zzaqd;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzarb;

    .line 64
    .line 65
    .line 66
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :try_start_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zzb()I

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zzd()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/16 v8, 0x130

    .line 76
    .line 77
    if-ne v9, v8, :cond_9

    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    sub-long v14, v8, v4

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzd()Lcom/google/android/gms/internal/ads/zzapm;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-nez v8, :cond_3

    .line 90
    .line 91
    new-instance v8, Lcom/google/android/gms/internal/ads/zzapz;

    .line 92
    .line 93
    const/4 v12, 0x0

    .line 94
    const/4 v13, 0x1

    .line 95
    const/16 v11, 0x130

    .line 96
    .line 97
    move-object v10, v8

    .line 98
    move-object/from16 v16, v0

    .line 99
    .line 100
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(I[BZJLjava/util/List;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_5

    .line 104
    .line 105
    :catch_1
    move-exception v0

    .line 106
    goto/16 :goto_e

    .line 107
    .line 108
    :cond_3
    new-instance v9, Ljava/util/TreeSet;

    .line 109
    .line 110
    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 111
    .line 112
    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-nez v10, :cond_4

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_4

    .line 130
    .line 131
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    check-cast v11, Lcom/google/android/gms/internal/ads/zzapv;

    .line 136
    .line 137
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzapv;->zza()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzapm;->zzh:Ljava/util/List;

    .line 151
    .line 152
    if-eqz v0, :cond_6

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_8

    .line 159
    .line 160
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzapm;->zzh:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_8

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    check-cast v10, Lcom/google/android/gms/internal/ads/zzapv;

    .line 177
    .line 178
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzapv;->zza()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-nez v11, :cond_5

    .line 187
    .line 188
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzapm;->zzg:Ljava/util/Map;

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_8

    .line 199
    .line 200
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzapm;->zzg:Ljava/util/Map;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_8

    .line 215
    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    check-cast v10, Ljava/util/Map$Entry;

    .line 221
    .line 222
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v11

    .line 230
    if-nez v11, :cond_7

    .line 231
    .line 232
    new-instance v11, Lcom/google/android/gms/internal/ads/zzapv;

    .line 233
    .line 234
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    check-cast v12, Ljava/lang/String;

    .line 239
    .line 240
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v10

    .line 244
    check-cast v10, Ljava/lang/String;

    .line 245
    .line 246
    invoke-direct {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzapv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapz;

    .line 254
    .line 255
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzapm;->zza:[B

    .line 256
    .line 257
    const/4 v8, 0x1

    .line 258
    const/16 v11, 0x130

    .line 259
    .line 260
    move-object v10, v0

    .line 261
    move-object v9, v13

    .line 262
    move v13, v8

    .line 263
    move-object/from16 v16, v9

    .line 264
    .line 265
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(I[BZJLjava/util/List;)V

    .line 266
    .line 267
    .line 268
    move-object v8, v0

    .line 269
    :goto_5
    return-object v8

    .line 270
    :cond_9
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zzc()Ljava/io/InputStream;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    const/4 v10, 0x0

    .line 275
    if-eqz v8, :cond_b

    .line 276
    .line 277
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zza()I

    .line 278
    .line 279
    .line 280
    move-result v11

    .line 281
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzaqs;->zza:Lcom/google/android/gms/internal/ads/zzaqu;

    .line 282
    .line 283
    new-instance v13, Lcom/google/android/gms/internal/ads/zzarh;

    .line 284
    .line 285
    invoke-direct {v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Lcom/google/android/gms/internal/ads/zzaqu;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    .line 287
    .line 288
    const/16 v11, 0x400

    .line 289
    .line 290
    :try_start_2
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqu;->zzb(I)[B

    .line 291
    .line 292
    .line 293
    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 294
    :goto_6
    :try_start_3
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    .line 295
    .line 296
    .line 297
    move-result v14

    .line 298
    const/4 v15, -0x1

    .line 299
    if-eq v14, v15, :cond_a

    .line 300
    .line 301
    invoke-virtual {v13, v11, v10, v14}, Lcom/google/android/gms/internal/ads/zzarh;->write([BII)V

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :catchall_0
    move-exception v0

    .line 306
    goto :goto_9

    .line 307
    :cond_a
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 308
    .line 309
    .line 310
    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 311
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catch_2
    :try_start_5
    new-array v8, v10, [Ljava/lang/Object;

    .line 316
    .line 317
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzaqp;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :goto_7
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqu;->zza([B)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzarh;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 324
    .line 325
    .line 326
    :goto_8
    move-object v15, v14

    .line 327
    goto :goto_b

    .line 328
    :catchall_1
    move-exception v0

    .line 329
    move-object v11, v6

    .line 330
    :goto_9
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 331
    .line 332
    .line 333
    goto :goto_a

    .line 334
    :catch_3
    :try_start_7
    new-array v8, v10, [Ljava/lang/Object;

    .line 335
    .line 336
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzaqp;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :goto_a
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzaqu;->zza([B)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzarh;->close()V

    .line 343
    .line 344
    .line 345
    throw v0

    .line 346
    :cond_b
    new-array v14, v10, [B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 347
    .line 348
    goto :goto_8

    .line 349
    :goto_b
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 350
    .line 351
    .line 352
    move-result-wide v10

    .line 353
    sub-long/2addr v10, v4

    .line 354
    sget-boolean v8, Lcom/google/android/gms/internal/ads/zzaqp;->zzb:Z

    .line 355
    .line 356
    if-nez v8, :cond_c

    .line 357
    .line 358
    const-wide/16 v12, 0xbb8

    .line 359
    .line 360
    cmp-long v8, v10, v12

    .line 361
    .line 362
    if-lez v8, :cond_e

    .line 363
    .line 364
    :cond_c
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    .line 365
    .line 366
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 367
    .line 368
    .line 369
    move-result-object v10

    .line 370
    if-eqz v15, :cond_d

    .line 371
    .line 372
    array-length v11, v15

    .line 373
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 374
    .line 375
    .line 376
    move-result-object v11

    .line 377
    goto :goto_c

    .line 378
    :catch_4
    move-exception v0

    .line 379
    goto :goto_d

    .line 380
    :cond_d
    const-string v11, "null"

    .line 381
    .line 382
    :goto_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzy()Lcom/google/android/gms/internal/ads/zzapr;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzapr;->zza()I

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    filled-new-array {v2, v10, v11, v12, v13}, [Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    :cond_e
    const/16 v8, 0xc8

    .line 406
    .line 407
    if-lt v9, v8, :cond_f

    .line 408
    .line 409
    const/16 v8, 0x12b

    .line 410
    .line 411
    if-gt v9, v8, :cond_f

    .line 412
    .line 413
    new-instance v16, Lcom/google/android/gms/internal/ads/zzapz;

    .line 414
    .line 415
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 416
    .line 417
    .line 418
    move-result-wide v10

    .line 419
    sub-long v12, v10, v4

    .line 420
    .line 421
    const/4 v11, 0x0

    .line 422
    move-object/from16 v8, v16

    .line 423
    .line 424
    move-object v10, v15

    .line 425
    move-object v14, v0

    .line 426
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(I[BZJLjava/util/List;)V

    .line 427
    .line 428
    .line 429
    return-object v16

    .line 430
    :cond_f
    new-instance v0, Ljava/io/IOException;

    .line 431
    .line 432
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 433
    .line 434
    .line 435
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 436
    :goto_d
    move-object v10, v15

    .line 437
    goto :goto_10

    .line 438
    :goto_e
    move-object v10, v6

    .line 439
    goto :goto_10

    .line 440
    :goto_f
    move-object v7, v6

    .line 441
    move-object v10, v7

    .line 442
    :goto_10
    instance-of v8, v0, Ljava/net/SocketTimeoutException;

    .line 443
    .line 444
    if-eqz v8, :cond_10

    .line 445
    .line 446
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    .line 447
    .line 448
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaql;

    .line 449
    .line 450
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzaql;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v8, "socket"

    .line 454
    .line 455
    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzarf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqm;Lcom/google/android/gms/internal/ads/zzarg;)V

    .line 456
    .line 457
    .line 458
    :goto_11
    move-object v6, v0

    .line 459
    goto :goto_13

    .line 460
    :cond_10
    instance-of v8, v0, Ljava/net/MalformedURLException;

    .line 461
    .line 462
    if-nez v8, :cond_16

    .line 463
    .line 464
    if-eqz v7, :cond_15

    .line 465
    .line 466
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zzb()I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v8

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzk()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    const-string v9, "Unexpected response code %d for %s"

    .line 483
    .line 484
    invoke-static {v9, v8}, Lcom/google/android/gms/internal/ads/zzaqp;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    .line 486
    .line 487
    if-eqz v10, :cond_14

    .line 488
    .line 489
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzarb;->zzd()Ljava/util/List;

    .line 490
    .line 491
    .line 492
    move-result-object v14

    .line 493
    new-instance v7, Lcom/google/android/gms/internal/ads/zzapz;

    .line 494
    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 496
    .line 497
    .line 498
    move-result-wide v8

    .line 499
    sub-long v12, v8, v4

    .line 500
    .line 501
    const/4 v11, 0x0

    .line 502
    move-object v8, v7

    .line 503
    move v9, v0

    .line 504
    invoke-direct/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(I[BZJLjava/util/List;)V

    .line 505
    .line 506
    .line 507
    const/16 v8, 0x191

    .line 508
    .line 509
    if-eq v0, v8, :cond_13

    .line 510
    .line 511
    const/16 v8, 0x193

    .line 512
    .line 513
    if-ne v0, v8, :cond_11

    .line 514
    .line 515
    goto :goto_12

    .line 516
    :cond_11
    const/16 v2, 0x190

    .line 517
    .line 518
    if-lt v0, v2, :cond_12

    .line 519
    .line 520
    const/16 v2, 0x1f3

    .line 521
    .line 522
    if-gt v0, v2, :cond_12

    .line 523
    .line 524
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    .line 525
    .line 526
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lcom/google/android/gms/internal/ads/zzapz;)V

    .line 527
    .line 528
    .line 529
    throw v0

    .line 530
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqk;

    .line 531
    .line 532
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Lcom/google/android/gms/internal/ads/zzapz;)V

    .line 533
    .line 534
    .line 535
    throw v0

    .line 536
    :cond_13
    :goto_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    .line 537
    .line 538
    new-instance v8, Lcom/google/android/gms/internal/ads/zzapl;

    .line 539
    .line 540
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzapl;-><init>(Lcom/google/android/gms/internal/ads/zzapz;)V

    .line 541
    .line 542
    .line 543
    const-string v7, "auth"

    .line 544
    .line 545
    invoke-direct {v0, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzarf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqm;Lcom/google/android/gms/internal/ads/zzarg;)V

    .line 546
    .line 547
    .line 548
    goto :goto_11

    .line 549
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarf;

    .line 550
    .line 551
    new-instance v7, Lcom/google/android/gms/internal/ads/zzapy;

    .line 552
    .line 553
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzapy;-><init>()V

    .line 554
    .line 555
    .line 556
    const-string v8, "network"

    .line 557
    .line 558
    invoke-direct {v0, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzarf;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaqm;Lcom/google/android/gms/internal/ads/zzarg;)V

    .line 559
    .line 560
    .line 561
    goto :goto_11

    .line 562
    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzy()Lcom/google/android/gms/internal/ads/zzapr;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzb()I

    .line 567
    .line 568
    .line 569
    move-result v7

    .line 570
    :try_start_9
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzarf;->zza(Lcom/google/android/gms/internal/ads/zzarf;)Lcom/google/android/gms/internal/ads/zzaqm;

    .line 571
    .line 572
    .line 573
    move-result-object v8

    .line 574
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzapr;->zzc(Lcom/google/android/gms/internal/ads/zzaqm;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzaqm; {:try_start_9 .. :try_end_9} :catch_5

    .line 575
    .line 576
    .line 577
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzarf;->zzb(Lcom/google/android/gms/internal/ads/zzarf;)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    filled-new-array {v0, v6}, [Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const-string v6, "%s-retry [timeout=%s]"

    .line 590
    .line 591
    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    goto/16 :goto_0

    .line 599
    .line 600
    :catch_5
    move-exception v0

    .line 601
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzarf;->zzb(Lcom/google/android/gms/internal/ads/zzarf;)Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v3

    .line 613
    const-string v4, "%s-timeout-giveup [timeout=%s]"

    .line 614
    .line 615
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaqd;->zzm(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :cond_15
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqa;

    .line 624
    .line 625
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Ljava/lang/Throwable;)V

    .line 626
    .line 627
    .line 628
    throw v2

    .line 629
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    .line 630
    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqd;->zzk()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v2

    .line 635
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v2

    .line 639
    const-string v4, "Bad URL "

    .line 640
    .line 641
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 646
    .line 647
    .line 648
    throw v3
.end method
