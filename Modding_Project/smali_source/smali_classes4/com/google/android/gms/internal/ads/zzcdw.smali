.class public final Lcom/google/android/gms/internal/ads/zzcdw;
.super Lcom/google/android/gms/internal/ads/zzcdn;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcbr;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzcbs;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzcdf;

.field private zzj:J

.field private zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzccb;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;-><init>(Lcom/google/android/gms/internal/ads/zzccb;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzccb;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzc:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/internal/ads/zzccb;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzceo;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzccb;Ljava/lang/Integer;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 23
    .line 24
    const-string p1, "ExoPlayerAdapter initialized."

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcbs;->zzL(Lcom/google/android/gms/internal/ads/zzcbr;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcdw;)V
    .locals 32

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v13

    .line 9
    const-string v17, "error"

    .line 10
    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    const-wide/16 v2, 0x3e8

    .line 28
    .line 29
    mul-long/2addr v0, v2

    .line 30
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzu:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    int-to-long v11, v2

    .line 47
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzcc:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:J

    .line 73
    .line 74
    sub-long/2addr v3, v5

    .line 75
    cmp-long v3, v3, v0

    .line 76
    .line 77
    if-gtz v3, :cond_b

    .line 78
    .line 79
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 80
    .line 81
    if-nez v0, :cond_a

    .line 82
    .line 83
    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Z

    .line 84
    .line 85
    if-eqz v0, :cond_0

    .line 86
    .line 87
    monitor-exit p0

    .line 88
    move-object v2, v15

    .line 89
    goto/16 :goto_a

    .line 90
    .line 91
    :catchall_0
    move-exception v0

    .line 92
    move-object v5, v13

    .line 93
    move-object v2, v15

    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbs;->zzV()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_9

    .line 103
    .line 104
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbs;->zzz()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    const-wide/16 v18, 0x0

    .line 111
    .line 112
    cmp-long v0, v9, v18

    .line 113
    .line 114
    if-lez v0, :cond_7

    .line 115
    .line 116
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 117
    .line 118
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbs;->zzv()J

    .line 119
    .line 120
    .line 121
    move-result-wide v6

    .line 122
    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .line 124
    cmp-long v0, v6, v0

    .line 125
    .line 126
    if-eqz v0, :cond_5

    .line 127
    .line 128
    cmp-long v0, v6, v18

    .line 129
    .line 130
    if-lez v0, :cond_1

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    :goto_0
    move v8, v0

    .line 134
    goto :goto_1

    .line 135
    :cond_1
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 137
    :goto_1
    :try_start_2
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 138
    .line 139
    const-wide/16 v3, -0x1

    .line 140
    .line 141
    if-eqz v2, :cond_2

    .line 142
    .line 143
    :try_start_3
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzA()J

    .line 146
    .line 147
    .line 148
    move-result-wide v20

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    move-wide/from16 v20, v3

    .line 151
    .line 152
    :goto_2
    if-eqz v2, :cond_3

    .line 153
    .line 154
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzx()J

    .line 157
    .line 158
    .line 159
    move-result-wide v22

    .line 160
    goto :goto_3

    .line 161
    :cond_3
    move-wide/from16 v22, v3

    .line 162
    .line 163
    :goto_3
    if-eqz v2, :cond_4

    .line 164
    .line 165
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 166
    .line 167
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzB()J

    .line 168
    .line 169
    .line 170
    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    move-wide/from16 v24, v1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_4
    move-wide/from16 v24, v3

    .line 175
    .line 176
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbs;->zzs()I

    .line 177
    .line 178
    .line 179
    move-result v16

    .line 180
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbs;->zzu()I

    .line 181
    .line 182
    .line 183
    move-result v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 184
    move-object/from16 v1, p0

    .line 185
    .line 186
    move-object v2, v0

    .line 187
    move-object v3, v13

    .line 188
    move-wide v4, v6

    .line 189
    move-wide/from16 v27, v6

    .line 190
    .line 191
    move-wide v6, v9

    .line 192
    move-wide/from16 v29, v9

    .line 193
    .line 194
    move-wide/from16 v9, v20

    .line 195
    .line 196
    move-wide/from16 v20, v11

    .line 197
    .line 198
    move-wide/from16 v11, v22

    .line 199
    .line 200
    move-object/from16 v31, v13

    .line 201
    .line 202
    move-wide/from16 v13, v24

    .line 203
    .line 204
    move/from16 v15, v16

    .line 205
    .line 206
    move/from16 v16, v26

    .line 207
    .line 208
    :try_start_5
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcdn;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 209
    .line 210
    .line 211
    move-object/from16 v2, p0

    .line 212
    .line 213
    move-wide/from16 v0, v27

    .line 214
    .line 215
    :try_start_6
    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:J

    .line 216
    .line 217
    move-wide/from16 v3, v29

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :catchall_1
    move-exception v0

    .line 221
    :goto_5
    move-object/from16 v5, v31

    .line 222
    .line 223
    goto/16 :goto_7

    .line 224
    .line 225
    :catchall_2
    move-exception v0

    .line 226
    move-object/from16 v2, p0

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catchall_3
    move-exception v0

    .line 230
    move-object/from16 v31, v13

    .line 231
    .line 232
    move-object v2, v15

    .line 233
    goto :goto_5

    .line 234
    :cond_5
    move-wide v0, v6

    .line 235
    move-wide/from16 v20, v11

    .line 236
    .line 237
    move-object/from16 v31, v13

    .line 238
    .line 239
    move-object v2, v15

    .line 240
    move-wide v3, v9

    .line 241
    :goto_6
    cmp-long v5, v0, v3

    .line 242
    .line 243
    if-ltz v5, :cond_6

    .line 244
    .line 245
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 246
    .line 247
    move-object/from16 v5, v31

    .line 248
    .line 249
    :try_start_7
    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdn;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 250
    .line 251
    .line 252
    monitor-exit p0

    .line 253
    goto/16 :goto_a

    .line 254
    .line 255
    :cond_6
    move-object/from16 v5, v31

    .line 256
    .line 257
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 258
    .line 259
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbs;->zzw()J

    .line 260
    .line 261
    .line 262
    move-result-wide v3

    .line 263
    cmp-long v3, v3, v20

    .line 264
    .line 265
    if-ltz v3, :cond_8

    .line 266
    .line 267
    cmp-long v0, v0, v18

    .line 268
    .line 269
    if-lez v0, :cond_8

    .line 270
    .line 271
    monitor-exit p0

    .line 272
    goto/16 :goto_a

    .line 273
    .line 274
    :cond_7
    move-object v5, v13

    .line 275
    move-object v2, v15

    .line 276
    :cond_8
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 277
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 278
    .line 279
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    check-cast v0, Ljava/lang/Long;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 290
    .line 291
    .line 292
    move-result-wide v0

    .line 293
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzx(J)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_9
    move-object v5, v13

    .line 298
    move-object v2, v15

    .line 299
    :try_start_8
    const-string v17, "exoPlayerReleased"

    .line 300
    .line 301
    new-instance v0, Ljava/io/IOException;

    .line 302
    .line 303
    const-string v1, "ExoPlayer was released during preloading."

    .line 304
    .line 305
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw v0

    .line 309
    :catchall_4
    move-exception v0

    .line 310
    goto :goto_7

    .line 311
    :cond_a
    move-object v5, v13

    .line 312
    move-object v2, v15

    .line 313
    const-string v17, "externalAbort"

    .line 314
    .line 315
    new-instance v0, Ljava/io/IOException;

    .line 316
    .line 317
    const-string v1, "Abort requested before buffering finished. "

    .line 318
    .line 319
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw v0

    .line 323
    :cond_b
    move-object v5, v13

    .line 324
    move-object v2, v15

    .line 325
    const-string v17, "downloadTimeout"

    .line 326
    .line 327
    new-instance v3, Ljava/io/IOException;

    .line 328
    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .line 333
    .line 334
    const-string v6, "Timeout reached. Limit: "

    .line 335
    .line 336
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v0, " ms"

    .line 343
    .line 344
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw v3

    .line 355
    :goto_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 356
    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    :goto_8
    move-object/from16 v1, v17

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :catch_1
    move-exception v0

    .line 362
    move-object v5, v13

    .line 363
    move-object v2, v15

    .line 364
    goto :goto_8

    .line 365
    :goto_9
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .line 375
    .line 376
    const-string v7, "Failed to preload url "

    .line 377
    .line 378
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    const-string v3, " Exception: "

    .line 385
    .line 386
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 397
    .line 398
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const-string v3, "VideoStreamExoPlayerCache.preload"

    .line 402
    .line 403
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdn;->release()V

    .line 411
    .line 412
    .line 413
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v2, v3, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :goto_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzA()Lcom/google/android/gms/internal/ads/zzcdg;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdg;->zzc(Lcom/google/android/gms/internal/ads/zzcdf;)V

    .line 429
    .line 430
    .line 431
    return-void
.end method

.method protected static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzk(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "cache:"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p0, "/"

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ":"

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0
.end method

.method private final zzx(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrw;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdv;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdv;-><init>(Lcom/google/android/gms/internal/ads/zzcdw;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzL(Lcom/google/android/gms/internal/ads/zzcbr;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbs;->zzH()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final zzD(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzcbs;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzL(Lcom/google/android/gms/internal/ads/zzcbr;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 16
    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 18
    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public final zzf()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdn;->release()V

    .line 9
    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 21
    .line 22
    const-string v2, "externalAbort"

    .line 23
    .line 24
    const-string v3, "Programmatic precache abort."

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v0
.end method

.method public final zzi(ZJ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzc:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzccb;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zzf:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdu;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcdu;-><init>(Lcom/google/android/gms/internal/ads/zzccb;ZJ)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Precache error"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "VideoStreamExoPlayerCache.onError"

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Precache exception"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "VideoStreamExoPlayerCache.onException"

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final zzm(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final zzp(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzJ(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzq(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzK(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzr(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzM(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzs(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzN(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 1

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzu(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final zzu(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 45

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const/16 v17, 0x1

    .line 8
    .line 9
    iput-object v13, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 10
    .line 11
    const-string v18, "error"

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    const/16 v19, 0x0

    .line 18
    .line 19
    :try_start_0
    array-length v1, v0

    .line 20
    new-array v1, v1, [Landroid/net/Uri;

    .line 21
    .line 22
    move/from16 v2, v19

    .line 23
    .line 24
    :goto_0
    array-length v3, v0

    .line 25
    if-ge v2, v3, :cond_0

    .line 26
    .line 27
    aget-object v3, v0, v2

    .line 28
    .line 29
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    move-object v4, v13

    .line 40
    move-object v5, v14

    .line 41
    move-object v3, v15

    .line 42
    goto/16 :goto_b

    .line 43
    .line 44
    :cond_0
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 45
    .line 46
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbs;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcdn;->zzc:Ljava/lang/ref/WeakReference;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/google/android/gms/internal/ads/zzccb;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-interface {v0, v14, v15}, Lcom/google/android/gms/internal/ads/zzccb;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdn;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v20

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzQ:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 73
    .line 74
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v11

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzP:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 89
    .line 90
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    const-wide/16 v3, 0x3e8

    .line 105
    .line 106
    mul-long v9, v1, v3

    .line 107
    .line 108
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzu:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 109
    .line 110
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    check-cast v1, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    int-to-long v6, v1

    .line 125
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzcc:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 126
    .line 127
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 138
    .line 139
    .line 140
    move-result v22

    .line 141
    const-wide/16 v23, -0x1

    .line 142
    .line 143
    move-wide/from16 v1, v23

    .line 144
    .line 145
    :goto_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v3

    .line 150
    sub-long v3, v3, v20

    .line 151
    .line 152
    cmp-long v3, v3, v9

    .line 153
    .line 154
    if-gtz v3, :cond_d

    .line 155
    .line 156
    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzg:Z

    .line 157
    .line 158
    if-nez v3, :cond_c

    .line 159
    .line 160
    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zzh:Z

    .line 161
    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    monitor-exit p0

    .line 165
    move-object v3, v15

    .line 166
    goto/16 :goto_8

    .line 167
    .line 168
    :catchall_0
    move-exception v0

    .line 169
    move-object v4, v13

    .line 170
    move-object v5, v14

    .line 171
    move-object v3, v15

    .line 172
    goto/16 :goto_a

    .line 173
    .line 174
    :cond_2
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbs;->zzV()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_b

    .line 181
    .line 182
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 183
    .line 184
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbs;->zzz()J

    .line 185
    .line 186
    .line 187
    move-result-wide v4

    .line 188
    const-wide/16 v25, 0x0

    .line 189
    .line 190
    cmp-long v3, v4, v25

    .line 191
    .line 192
    if-lez v3, :cond_a

    .line 193
    .line 194
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcbs;->zzv()J

    .line 197
    .line 198
    .line 199
    move-result-wide v27

    .line 200
    cmp-long v3, v27, v1

    .line 201
    .line 202
    if-eqz v3, :cond_7

    .line 203
    .line 204
    cmp-long v1, v27, v25

    .line 205
    .line 206
    if-lez v1, :cond_3

    .line 207
    .line 208
    move/from16 v8, v17

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_3
    move/from16 v8, v19

    .line 212
    .line 213
    :goto_2
    if-eqz v22, :cond_4

    .line 214
    .line 215
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzA()J

    .line 218
    .line 219
    .line 220
    move-result-wide v1

    .line 221
    move-wide/from16 v29, v1

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_4
    move-wide/from16 v29, v23

    .line 225
    .line 226
    :goto_3
    if-eqz v22, :cond_5

    .line 227
    .line 228
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 229
    .line 230
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzx()J

    .line 231
    .line 232
    .line 233
    move-result-wide v1

    .line 234
    move-wide/from16 v31, v1

    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_5
    move-wide/from16 v31, v23

    .line 238
    .line 239
    :goto_4
    if-eqz v22, :cond_6

    .line 240
    .line 241
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 242
    .line 243
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbs;->zzB()J

    .line 244
    .line 245
    .line 246
    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    move-wide/from16 v33, v1

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_6
    move-wide/from16 v33, v23

    .line 251
    .line 252
    :goto_5
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbs;->zzs()I

    .line 253
    .line 254
    .line 255
    move-result v16

    .line 256
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcbs;->zzu()I

    .line 257
    .line 258
    .line 259
    move-result v35
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    move-object/from16 v1, p0

    .line 261
    .line 262
    move-object/from16 v2, p1

    .line 263
    .line 264
    move-object v3, v14

    .line 265
    move-wide/from16 v36, v4

    .line 266
    .line 267
    move-wide/from16 v4, v27

    .line 268
    .line 269
    move-wide/from16 v38, v6

    .line 270
    .line 271
    move-wide/from16 v6, v36

    .line 272
    .line 273
    move-wide/from16 v40, v9

    .line 274
    .line 275
    move-wide/from16 v9, v29

    .line 276
    .line 277
    move-wide/from16 v42, v11

    .line 278
    .line 279
    move-wide/from16 v11, v31

    .line 280
    .line 281
    move-object/from16 v44, v14

    .line 282
    .line 283
    move-wide/from16 v13, v33

    .line 284
    .line 285
    move/from16 v15, v16

    .line 286
    .line 287
    move/from16 v16, v35

    .line 288
    .line 289
    :try_start_3
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcdn;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    .line 291
    .line 292
    move-wide/from16 v1, v27

    .line 293
    .line 294
    goto :goto_7

    .line 295
    :catchall_1
    move-exception v0

    .line 296
    :goto_6
    move-object/from16 v3, p0

    .line 297
    .line 298
    move-object/from16 v4, p1

    .line 299
    .line 300
    move-object/from16 v5, v44

    .line 301
    .line 302
    goto/16 :goto_a

    .line 303
    .line 304
    :catchall_2
    move-exception v0

    .line 305
    move-object/from16 v44, v14

    .line 306
    .line 307
    goto :goto_6

    .line 308
    :cond_7
    move-wide/from16 v36, v4

    .line 309
    .line 310
    move-wide/from16 v38, v6

    .line 311
    .line 312
    move-wide/from16 v40, v9

    .line 313
    .line 314
    move-wide/from16 v42, v11

    .line 315
    .line 316
    move-object/from16 v44, v14

    .line 317
    .line 318
    :goto_7
    cmp-long v3, v27, v36

    .line 319
    .line 320
    if-ltz v3, :cond_8

    .line 321
    .line 322
    move-object/from16 v3, p0

    .line 323
    .line 324
    move-object/from16 v4, p1

    .line 325
    .line 326
    move-wide/from16 v6, v36

    .line 327
    .line 328
    move-object/from16 v5, v44

    .line 329
    .line 330
    :try_start_4
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzcdn;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    .line 331
    .line 332
    .line 333
    monitor-exit p0

    .line 334
    goto :goto_8

    .line 335
    :cond_8
    move-object/from16 v3, p0

    .line 336
    .line 337
    move-object/from16 v4, p1

    .line 338
    .line 339
    move-object/from16 v5, v44

    .line 340
    .line 341
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 342
    .line 343
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcbs;->zzw()J

    .line 344
    .line 345
    .line 346
    move-result-wide v6

    .line 347
    cmp-long v6, v6, v38

    .line 348
    .line 349
    if-ltz v6, :cond_9

    .line 350
    .line 351
    cmp-long v6, v27, v25

    .line 352
    .line 353
    if-lez v6, :cond_9

    .line 354
    .line 355
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 356
    :goto_8
    return v17

    .line 357
    :cond_9
    move-wide/from16 v6, v42

    .line 358
    .line 359
    goto :goto_9

    .line 360
    :cond_a
    move-wide/from16 v38, v6

    .line 361
    .line 362
    move-wide/from16 v40, v9

    .line 363
    .line 364
    move-object v4, v13

    .line 365
    move-object v5, v14

    .line 366
    move-object v3, v15

    .line 367
    move-wide v6, v11

    .line 368
    :goto_9
    :try_start_5
    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 369
    .line 370
    .line 371
    :try_start_6
    monitor-exit p0

    .line 372
    move-object v15, v3

    .line 373
    move-object v13, v4

    .line 374
    move-object v14, v5

    .line 375
    move-wide v11, v6

    .line 376
    move-wide/from16 v6, v38

    .line 377
    .line 378
    move-wide/from16 v9, v40

    .line 379
    .line 380
    goto/16 :goto_1

    .line 381
    .line 382
    :catch_1
    const-string v18, "interrupted"

    .line 383
    .line 384
    new-instance v0, Ljava/io/IOException;

    .line 385
    .line 386
    const-string v1, "Wait interrupted."

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw v0

    .line 392
    :catchall_3
    move-exception v0

    .line 393
    goto :goto_a

    .line 394
    :cond_b
    move-object v4, v13

    .line 395
    move-object v5, v14

    .line 396
    move-object v3, v15

    .line 397
    const-string v18, "exoPlayerReleased"

    .line 398
    .line 399
    new-instance v0, Ljava/io/IOException;

    .line 400
    .line 401
    const-string v1, "ExoPlayer was released during preloading."

    .line 402
    .line 403
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    throw v0

    .line 407
    :cond_c
    move-object v4, v13

    .line 408
    move-object v5, v14

    .line 409
    move-object v3, v15

    .line 410
    const-string v18, "externalAbort"

    .line 411
    .line 412
    new-instance v0, Ljava/io/IOException;

    .line 413
    .line 414
    const-string v1, "Abort requested before buffering finished. "

    .line 415
    .line 416
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    throw v0

    .line 420
    :cond_d
    move-wide/from16 v40, v9

    .line 421
    .line 422
    move-object v4, v13

    .line 423
    move-object v5, v14

    .line 424
    move-object v3, v15

    .line 425
    const-string v18, "downloadTimeout"

    .line 426
    .line 427
    new-instance v0, Ljava/io/IOException;

    .line 428
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .line 433
    .line 434
    const-string v2, "Timeout reached. Limit: "

    .line 435
    .line 436
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    move-wide/from16 v6, v40

    .line 440
    .line 441
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v2, " ms"

    .line 445
    .line 446
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v0

    .line 457
    :goto_a
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 458
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 459
    :catch_2
    move-exception v0

    .line 460
    :goto_b
    move-object/from16 v1, v18

    .line 461
    .line 462
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    const-string v7, "Failed to preload url "

    .line 472
    .line 473
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v7, " Exception: "

    .line 480
    .line 481
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 492
    .line 493
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    const-string v2, "VideoStreamExoPlayerCache.preload"

    .line 497
    .line 498
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 499
    .line 500
    .line 501
    move-result-object v6

    .line 502
    invoke-virtual {v6, v0, v2}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcdn;->release()V

    .line 506
    .line 507
    .line 508
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v3, v4, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    return v19
.end method

.method public final zzv()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string v0, "Precache onRenderedFirstFrame"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final zzw(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdf;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzf:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzi:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzc(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    array-length v2, p2

    .line 12
    new-array v2, v2, [Landroid/net/Uri;

    .line 13
    .line 14
    move v3, v1

    .line 15
    :goto_0
    array-length v4, p2

    .line 16
    if-ge v3, v4, :cond_0

    .line 17
    .line 18
    aget-object v4, p2, v3

    .line 19
    .line 20
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    add-int/2addr v3, v0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zze:Lcom/google/android/gms/internal/ads/zzcbs;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzb:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzcbs;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdn;->zzc:Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/google/android/gms/internal/ads/zzccb;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzccb;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdn;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzj:J

    .line 59
    .line 60
    const-wide/16 v2, -0x1

    .line 61
    .line 62
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcdw;->zzk:J

    .line 63
    .line 64
    const-wide/16 v2, 0x0

    .line 65
    .line 66
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdw;->zzx(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    return v0

    .line 70
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "Failed to preload url "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, " Exception: "

    .line 88
    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 100
    .line 101
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "VideoStreamExoPlayerCache.preload"

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, p2, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcdn;->release()V

    .line 114
    .line 115
    .line 116
    const-string v0, "error"

    .line 117
    .line 118
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzcdw;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p3, v0, p2}, Lcom/google/android/gms/internal/ads/zzcdn;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v1
.end method
