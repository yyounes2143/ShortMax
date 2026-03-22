.class public final Lcom/google/android/gms/internal/ads/zzacy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzen;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzz;
    .locals 19
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzem;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzem;-><init>()V

    .line 6
    .line 7
    .line 8
    move-object/from16 v2, p0

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzj(Lcom/google/android/gms/internal/ads/zzen;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x3

    .line 18
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    if-gt v4, v5, :cond_37

    .line 24
    .line 25
    const/4 v6, 0x7

    .line 26
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-eq v5, v8, :cond_0

    .line 35
    .line 36
    const v8, 0xac44

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const v8, 0xbb80

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v9, 0x4

    .line 44
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 45
    .line 46
    .line 47
    const/16 v10, 0x9

    .line 48
    .line 49
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    const/16 v11, 0x10

    .line 54
    .line 55
    if-le v7, v5, :cond_2

    .line 56
    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    if-eqz v12, :cond_2

    .line 64
    .line 65
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    if-eqz v12, :cond_2

    .line 73
    .line 74
    const/16 v12, 0x80

    .line 75
    .line 76
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const-string v0, "Invalid AC-4 DSI version: 0"

    .line 81
    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    throw v0

    .line 87
    :cond_2
    :goto_1
    if-ne v4, v5, :cond_4

    .line 88
    .line 89
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacy;->zzg(Lcom/google/android/gms/internal/ads/zzem;)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-eqz v12, :cond_3

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzf()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    .line 100
    .line 101
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    throw v0

    .line 106
    :cond_4
    :goto_2
    new-instance v12, Lcom/google/android/gms/internal/ads/zzacv;

    .line 107
    .line 108
    const/4 v13, 0x0

    .line 109
    invoke-direct {v12, v13}, Lcom/google/android/gms/internal/ads/zzacv;-><init>(Lcom/google/android/gms/internal/ads/zzacx;)V

    .line 110
    .line 111
    .line 112
    const/4 v14, 0x0

    .line 113
    :goto_3
    const/4 v13, 0x5

    .line 114
    const/4 v6, 0x2

    .line 115
    if-ge v14, v10, :cond_2e

    .line 116
    .line 117
    if-nez v4, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 120
    .line 121
    .line 122
    move-result v10

    .line 123
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 124
    .line 125
    .line 126
    move-result v16

    .line 127
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 128
    .line 129
    .line 130
    move-result v17

    .line 131
    move/from16 v15, v16

    .line 132
    .line 133
    move/from16 v0, v17

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    const/4 v9, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    goto :goto_5

    .line 139
    :cond_5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 140
    .line 141
    .line 142
    move-result v9

    .line 143
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v15, 0xff

    .line 148
    .line 149
    if-ne v3, v15, :cond_6

    .line 150
    .line 151
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    add-int/2addr v3, v15

    .line 156
    :cond_6
    if-le v9, v6, :cond_7

    .line 157
    .line 158
    mul-int/2addr v3, v0

    .line 159
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 160
    .line 161
    .line 162
    add-int/2addr v14, v5

    .line 163
    const/4 v3, 0x3

    .line 164
    const/4 v6, 0x7

    .line 165
    const/4 v9, 0x4

    .line 166
    goto :goto_3

    .line 167
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 168
    .line 169
    .line 170
    move-result v10

    .line 171
    sub-int v10, v2, v10

    .line 172
    .line 173
    div-int/2addr v10, v0

    .line 174
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    const/16 v11, 0x1f

    .line 179
    .line 180
    if-ne v15, v11, :cond_8

    .line 181
    .line 182
    move v11, v5

    .line 183
    goto :goto_4

    .line 184
    :cond_8
    const/4 v11, 0x0

    .line 185
    :goto_4
    move v0, v9

    .line 186
    move v9, v10

    .line 187
    const/4 v10, 0x0

    .line 188
    :goto_5
    iput v0, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzf:I

    .line 189
    .line 190
    if-nez v10, :cond_9

    .line 191
    .line 192
    if-nez v11, :cond_9

    .line 193
    .line 194
    const/4 v5, 0x6

    .line 195
    if-eq v15, v5, :cond_a

    .line 196
    .line 197
    :cond_9
    const/4 v5, 0x3

    .line 198
    goto :goto_7

    .line 199
    :cond_a
    :goto_6
    const/4 v5, 0x7

    .line 200
    goto/16 :goto_16

    .line 201
    .line 202
    :goto_7
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    iput v6, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzg:I

    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_b

    .line 213
    .line 214
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 215
    .line 216
    .line 217
    :cond_b
    const/4 v5, 0x2

    .line 218
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 219
    .line 220
    .line 221
    const/4 v6, 0x1

    .line 222
    if-ne v4, v6, :cond_d

    .line 223
    .line 224
    if-eq v0, v6, :cond_c

    .line 225
    .line 226
    if-ne v0, v5, :cond_d

    .line 227
    .line 228
    move v0, v5

    .line 229
    :cond_c
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 230
    .line 231
    .line 232
    :cond_d
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 233
    .line 234
    .line 235
    const/16 v5, 0xa

    .line 236
    .line 237
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 238
    .line 239
    .line 240
    const/4 v5, 0x1

    .line 241
    if-ne v4, v5, :cond_17

    .line 242
    .line 243
    if-lez v0, :cond_e

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    iput-boolean v6, v12, Lcom/google/android/gms/internal/ads/zzacv;->zza:Z

    .line 250
    .line 251
    :cond_e
    iget-boolean v6, v12, Lcom/google/android/gms/internal/ads/zzacv;->zza:Z

    .line 252
    .line 253
    if-eqz v6, :cond_13

    .line 254
    .line 255
    if-eq v0, v5, :cond_10

    .line 256
    .line 257
    const/4 v5, 0x2

    .line 258
    if-ne v0, v5, :cond_f

    .line 259
    .line 260
    const/4 v5, 0x2

    .line 261
    goto :goto_8

    .line 262
    :cond_f
    move v6, v5

    .line 263
    const/16 v13, 0x18

    .line 264
    .line 265
    move v5, v0

    .line 266
    goto :goto_a

    .line 267
    :cond_10
    const/4 v5, 0x1

    .line 268
    :goto_8
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-ltz v6, :cond_11

    .line 273
    .line 274
    const/16 v13, 0xf

    .line 275
    .line 276
    if-gt v6, v13, :cond_11

    .line 277
    .line 278
    iput v6, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    .line 279
    .line 280
    :cond_11
    const/16 v13, 0xb

    .line 281
    .line 282
    if-lt v6, v13, :cond_12

    .line 283
    .line 284
    const/16 v13, 0xe

    .line 285
    .line 286
    if-gt v6, v13, :cond_12

    .line 287
    .line 288
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 289
    .line 290
    .line 291
    move-result v6

    .line 292
    iput-boolean v6, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzd:Z

    .line 293
    .line 294
    const/4 v6, 0x2

    .line 295
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    iput v13, v12, Lcom/google/android/gms/internal/ads/zzacv;->zze:I

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_12
    const/4 v6, 0x2

    .line 303
    :goto_9
    const/16 v13, 0x18

    .line 304
    .line 305
    :goto_a
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 306
    .line 307
    .line 308
    const/4 v13, 0x1

    .line 309
    goto :goto_b

    .line 310
    :cond_13
    const/4 v6, 0x2

    .line 311
    move v13, v5

    .line 312
    move v5, v0

    .line 313
    :goto_b
    if-eq v0, v13, :cond_14

    .line 314
    .line 315
    if-ne v0, v6, :cond_16

    .line 316
    .line 317
    :cond_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_15

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_15

    .line 328
    .line 329
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 330
    .line 331
    .line 332
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_16

    .line 337
    .line 338
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 339
    .line 340
    .line 341
    const/16 v0, 0x8

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    const/4 v13, 0x0

    .line 348
    :goto_c
    if-ge v13, v6, :cond_16

    .line 349
    .line 350
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 351
    .line 352
    .line 353
    const/4 v0, 0x1

    .line 354
    add-int/2addr v13, v0

    .line 355
    const/16 v0, 0x8

    .line 356
    .line 357
    goto :goto_c

    .line 358
    :cond_16
    move v0, v5

    .line 359
    :cond_17
    if-nez v10, :cond_18

    .line 360
    .line 361
    if-eqz v11, :cond_19

    .line 362
    .line 363
    :cond_18
    const/4 v6, 0x2

    .line 364
    goto/16 :goto_14

    .line 365
    .line 366
    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 367
    .line 368
    .line 369
    const/4 v5, 0x1

    .line 370
    if-eqz v15, :cond_20

    .line 371
    .line 372
    if-eq v15, v5, :cond_20

    .line 373
    .line 374
    const/4 v6, 0x2

    .line 375
    if-eq v15, v6, :cond_20

    .line 376
    .line 377
    const/4 v6, 0x3

    .line 378
    if-eq v15, v6, :cond_1e

    .line 379
    .line 380
    const/4 v6, 0x4

    .line 381
    if-eq v15, v6, :cond_1e

    .line 382
    .line 383
    const/4 v6, 0x5

    .line 384
    if-eq v15, v6, :cond_1a

    .line 385
    .line 386
    const/4 v6, 0x7

    .line 387
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 388
    .line 389
    .line 390
    move-result v10

    .line 391
    const/4 v6, 0x0

    .line 392
    :goto_d
    if-ge v6, v10, :cond_1c

    .line 393
    .line 394
    const/16 v11, 0x8

    .line 395
    .line 396
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 397
    .line 398
    .line 399
    add-int/2addr v6, v5

    .line 400
    goto :goto_d

    .line 401
    :cond_1a
    if-nez v0, :cond_1d

    .line 402
    .line 403
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zzd(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 404
    .line 405
    .line 406
    :cond_1b
    const/4 v0, 0x0

    .line 407
    :cond_1c
    const/4 v6, 0x2

    .line 408
    goto :goto_15

    .line 409
    :cond_1d
    const/4 v6, 0x3

    .line 410
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 411
    .line 412
    .line 413
    move-result v10

    .line 414
    const/4 v6, 0x2

    .line 415
    const/4 v11, 0x0

    .line 416
    :goto_e
    add-int/lit8 v13, v10, 0x2

    .line 417
    .line 418
    if-ge v11, v13, :cond_1c

    .line 419
    .line 420
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zze(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 421
    .line 422
    .line 423
    add-int/2addr v11, v5

    .line 424
    const/4 v6, 0x2

    .line 425
    goto :goto_e

    .line 426
    :cond_1e
    if-nez v0, :cond_1f

    .line 427
    .line 428
    const/4 v0, 0x0

    .line 429
    const/4 v6, 0x3

    .line 430
    :goto_f
    if-ge v0, v6, :cond_1b

    .line 431
    .line 432
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zzd(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 433
    .line 434
    .line 435
    add-int/2addr v0, v5

    .line 436
    goto :goto_f

    .line 437
    :cond_1f
    const/4 v6, 0x3

    .line 438
    const/4 v10, 0x0

    .line 439
    :goto_10
    if-ge v10, v6, :cond_1c

    .line 440
    .line 441
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zze(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 442
    .line 443
    .line 444
    add-int/2addr v10, v5

    .line 445
    const/4 v6, 0x3

    .line 446
    goto :goto_10

    .line 447
    :cond_20
    if-nez v0, :cond_22

    .line 448
    .line 449
    const/4 v0, 0x0

    .line 450
    const/4 v6, 0x2

    .line 451
    :goto_11
    if-ge v0, v6, :cond_21

    .line 452
    .line 453
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zzd(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 454
    .line 455
    .line 456
    add-int/2addr v0, v5

    .line 457
    goto :goto_11

    .line 458
    :cond_21
    :goto_12
    const/4 v0, 0x0

    .line 459
    goto :goto_15

    .line 460
    :cond_22
    const/4 v6, 0x2

    .line 461
    const/4 v10, 0x0

    .line 462
    :goto_13
    if-ge v10, v6, :cond_24

    .line 463
    .line 464
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zze(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 465
    .line 466
    .line 467
    add-int/2addr v10, v5

    .line 468
    goto :goto_13

    .line 469
    :goto_14
    if-nez v0, :cond_23

    .line 470
    .line 471
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zzd(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 472
    .line 473
    .line 474
    goto :goto_12

    .line 475
    :cond_23
    invoke-static {v1, v12}, Lcom/google/android/gms/internal/ads/zzacy;->zze(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V

    .line 476
    .line 477
    .line 478
    :cond_24
    :goto_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 482
    .line 483
    .line 484
    move-result v5

    .line 485
    if-eqz v5, :cond_25

    .line 486
    .line 487
    goto/16 :goto_6

    .line 488
    .line 489
    :goto_16
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 490
    .line 491
    .line 492
    move-result v10

    .line 493
    const/4 v11, 0x0

    .line 494
    :goto_17
    if-ge v11, v10, :cond_26

    .line 495
    .line 496
    const/16 v13, 0xf

    .line 497
    .line 498
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 499
    .line 500
    .line 501
    const/4 v15, 0x1

    .line 502
    add-int/2addr v11, v15

    .line 503
    goto :goto_17

    .line 504
    :cond_25
    const/4 v5, 0x7

    .line 505
    :cond_26
    if-lez v0, :cond_29

    .line 506
    .line 507
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_28

    .line 512
    .line 513
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzacy;->zzg(Lcom/google/android/gms/internal/ads/zzem;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_27

    .line 518
    .line 519
    goto :goto_18

    .line 520
    :cond_27
    const-string v0, "Can\'t parse bitrate DSI."

    .line 521
    .line 522
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    throw v0

    .line 527
    :cond_28
    :goto_18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_29

    .line 532
    .line 533
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzf()V

    .line 534
    .line 535
    .line 536
    const/16 v0, 0x10

    .line 537
    .line 538
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 543
    .line 544
    .line 545
    const/4 v0, 0x5

    .line 546
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 547
    .line 548
    .line 549
    move-result v10

    .line 550
    const/4 v13, 0x0

    .line 551
    :goto_19
    if-ge v13, v10, :cond_29

    .line 552
    .line 553
    const/4 v11, 0x3

    .line 554
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 555
    .line 556
    .line 557
    const/16 v15, 0x8

    .line 558
    .line 559
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 560
    .line 561
    .line 562
    const/4 v0, 0x1

    .line 563
    add-int/2addr v13, v0

    .line 564
    const/4 v0, 0x5

    .line 565
    goto :goto_19

    .line 566
    :cond_29
    const/4 v0, 0x1

    .line 567
    const/4 v11, 0x3

    .line 568
    const/16 v15, 0x8

    .line 569
    .line 570
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zzf()V

    .line 571
    .line 572
    .line 573
    if-ne v4, v0, :cond_2b

    .line 574
    .line 575
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    sub-int/2addr v2, v0

    .line 580
    div-int/2addr v2, v15

    .line 581
    sub-int/2addr v2, v9

    .line 582
    if-lt v3, v2, :cond_2a

    .line 583
    .line 584
    sub-int/2addr v3, v2

    .line 585
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzo(I)V

    .line 586
    .line 587
    .line 588
    goto :goto_1a

    .line 589
    :cond_2a
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    .line 590
    .line 591
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    throw v0

    .line 596
    :cond_2b
    :goto_1a
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzacv;->zza:Z

    .line 597
    .line 598
    if-eqz v0, :cond_2d

    .line 599
    .line 600
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    .line 601
    .line 602
    const/4 v1, -0x1

    .line 603
    if-eq v0, v1, :cond_2c

    .line 604
    .line 605
    goto :goto_1b

    .line 606
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    const-string v1, "Can\'t determine channel mode of presentation "

    .line 612
    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    throw v0

    .line 628
    :cond_2d
    const/4 v1, -0x1

    .line 629
    goto :goto_1b

    .line 630
    :cond_2e
    move v15, v0

    .line 631
    move v11, v3

    .line 632
    const/4 v1, -0x1

    .line 633
    const/4 v5, 0x7

    .line 634
    :goto_1b
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzacv;->zza:Z

    .line 635
    .line 636
    if-eqz v0, :cond_34

    .line 637
    .line 638
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    .line 639
    .line 640
    iget-boolean v2, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzd:Z

    .line 641
    .line 642
    iget v3, v12, Lcom/google/android/gms/internal/ads/zzacv;->zze:I

    .line 643
    .line 644
    const/16 v4, 0xc

    .line 645
    .line 646
    const/16 v9, 0xd

    .line 647
    .line 648
    packed-switch v0, :pswitch_data_0

    .line 649
    .line 650
    .line 651
    move/from16 v18, v1

    .line 652
    .line 653
    :goto_1c
    const/16 v1, 0xb

    .line 654
    .line 655
    goto :goto_1d

    .line 656
    :pswitch_0
    const/16 v1, 0xb

    .line 657
    .line 658
    const/16 v18, 0x18

    .line 659
    .line 660
    goto :goto_1d

    .line 661
    :pswitch_1
    const/16 v1, 0xb

    .line 662
    .line 663
    const/16 v18, 0xe

    .line 664
    .line 665
    goto :goto_1d

    .line 666
    :pswitch_2
    move/from16 v18, v9

    .line 667
    .line 668
    goto :goto_1c

    .line 669
    :pswitch_3
    move/from16 v18, v4

    .line 670
    .line 671
    goto :goto_1c

    .line 672
    :pswitch_4
    const/16 v1, 0xb

    .line 673
    .line 674
    const/16 v18, 0xb

    .line 675
    .line 676
    goto :goto_1d

    .line 677
    :pswitch_5
    move/from16 v18, v15

    .line 678
    .line 679
    goto :goto_1c

    .line 680
    :pswitch_6
    move/from16 v18, v5

    .line 681
    .line 682
    goto :goto_1c

    .line 683
    :pswitch_7
    const/16 v1, 0xb

    .line 684
    .line 685
    const/16 v18, 0x6

    .line 686
    .line 687
    goto :goto_1d

    .line 688
    :pswitch_8
    const/16 v1, 0xb

    .line 689
    .line 690
    const/16 v18, 0x5

    .line 691
    .line 692
    goto :goto_1d

    .line 693
    :pswitch_9
    move/from16 v18, v11

    .line 694
    .line 695
    goto :goto_1c

    .line 696
    :pswitch_a
    move/from16 v18, v6

    .line 697
    .line 698
    goto :goto_1c

    .line 699
    :pswitch_b
    const/16 v1, 0xb

    .line 700
    .line 701
    const/16 v18, 0x1

    .line 702
    .line 703
    :goto_1d
    if-eq v0, v1, :cond_30

    .line 704
    .line 705
    if-eq v0, v4, :cond_30

    .line 706
    .line 707
    if-eq v0, v9, :cond_30

    .line 708
    .line 709
    const/16 v1, 0xe

    .line 710
    .line 711
    if-ne v0, v1, :cond_2f

    .line 712
    .line 713
    goto :goto_1f

    .line 714
    :cond_2f
    :goto_1e
    move/from16 v0, v18

    .line 715
    .line 716
    goto :goto_20

    .line 717
    :cond_30
    :goto_1f
    if-nez v2, :cond_31

    .line 718
    .line 719
    add-int/lit8 v18, v18, -0x2

    .line 720
    .line 721
    :cond_31
    if-eqz v3, :cond_33

    .line 722
    .line 723
    const/4 v0, 0x1

    .line 724
    if-eq v3, v0, :cond_32

    .line 725
    .line 726
    goto :goto_1e

    .line 727
    :cond_32
    add-int/lit8 v18, v18, -0x2

    .line 728
    .line 729
    goto :goto_1e

    .line 730
    :cond_33
    add-int/lit8 v18, v18, -0x4

    .line 731
    .line 732
    goto :goto_1e

    .line 733
    :cond_34
    const/4 v0, 0x1

    .line 734
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzc:I

    .line 735
    .line 736
    add-int/2addr v0, v1

    .line 737
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzg:I

    .line 738
    .line 739
    const/4 v2, 0x4

    .line 740
    if-ne v1, v2, :cond_35

    .line 741
    .line 742
    const/16 v1, 0x11

    .line 743
    .line 744
    if-ne v0, v1, :cond_35

    .line 745
    .line 746
    const/16 v18, 0x15

    .line 747
    .line 748
    goto :goto_1e

    .line 749
    :cond_35
    :goto_20
    if-lez v0, :cond_36

    .line 750
    .line 751
    iget v1, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzf:I

    .line 752
    .line 753
    iget v2, v12, Lcom/google/android/gms/internal/ads/zzacv;->zzg:I

    .line 754
    .line 755
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 756
    .line 757
    .line 758
    move-result-object v3

    .line 759
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    sget-object v2, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 772
    .line 773
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 774
    .line 775
    const-string v3, "ac-4.%02d.%02d.%02d"

    .line 776
    .line 777
    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    new-instance v2, Lcom/google/android/gms/internal/ads/zzx;

    .line 782
    .line 783
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    .line 784
    .line 785
    .line 786
    move-object/from16 v3, p1

    .line 787
    .line 788
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzS(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 789
    .line 790
    .line 791
    const-string v3, "audio/ac4"

    .line 792
    .line 793
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzx;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 794
    .line 795
    .line 796
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzD(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 797
    .line 798
    .line 799
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzx;->zzai(I)Lcom/google/android/gms/internal/ads/zzx;

    .line 800
    .line 801
    .line 802
    move-object/from16 v0, p3

    .line 803
    .line 804
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzL(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzx;

    .line 805
    .line 806
    .line 807
    move-object/from16 v0, p2

    .line 808
    .line 809
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzx;->zzW(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 810
    .line 811
    .line 812
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzx;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzx;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzx;->zzan()Lcom/google/android/gms/internal/ads/zzz;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    return-object v0

    .line 820
    :cond_36
    const-string v0, "Can\'t determine channel count of presentation."

    .line 821
    .line 822
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 823
    .line 824
    .line 825
    move-result-object v0

    .line 826
    throw v0

    .line 827
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .line 831
    .line 832
    const-string v1, "Unsupported AC-4 DSI version: "

    .line 833
    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 838
    .line 839
    .line 840
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    throw v0

    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzacw;
    .locals 12

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v2, 0xffff

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x18

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v2, 0x7

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v3

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    const v2, 0xac41

    .line 28
    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x2

    .line 33
    .line 34
    :cond_1
    move v8, v0

    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v4, 0x3

    .line 42
    if-ne v1, v4, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    add-int/2addr v1, v5

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    add-int/2addr v1, v4

    .line 57
    :cond_2
    move v5, v1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    shl-int/2addr v1, v0

    .line 62
    goto :goto_1

    .line 63
    :goto_2
    const/16 v1, 0xa

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-lez v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const v7, 0xbb80

    .line 89
    .line 90
    .line 91
    const v9, 0xac44

    .line 92
    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    if-eq v10, v6, :cond_5

    .line 96
    .line 97
    move v11, v9

    .line 98
    goto :goto_3

    .line 99
    :cond_5
    move v11, v7

    .line 100
    :goto_3
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    if-ne v11, v9, :cond_6

    .line 105
    .line 106
    const/16 v6, 0xd

    .line 107
    .line 108
    if-ne p0, v6, :cond_6

    .line 109
    .line 110
    sget-object p0, Lcom/google/android/gms/internal/ads/zzacy;->zzb:[I

    .line 111
    .line 112
    aget p0, p0, v6

    .line 113
    .line 114
    move v9, p0

    .line 115
    goto :goto_6

    .line 116
    :cond_6
    if-ne v11, v7, :cond_9

    .line 117
    .line 118
    const/16 v6, 0xe

    .line 119
    .line 120
    if-ge p0, v6, :cond_9

    .line 121
    .line 122
    sget-object v2, Lcom/google/android/gms/internal/ads/zzacy;->zzb:[I

    .line 123
    .line 124
    aget v2, v2, p0

    .line 125
    .line 126
    rem-int/lit8 v1, v1, 0x5

    .line 127
    .line 128
    const/16 v6, 0x8

    .line 129
    .line 130
    if-eq v1, v10, :cond_b

    .line 131
    .line 132
    const/16 v7, 0xb

    .line 133
    .line 134
    if-eq v1, v0, :cond_a

    .line 135
    .line 136
    if-eq v1, v4, :cond_b

    .line 137
    .line 138
    if-eq v1, v3, :cond_7

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    if-eq p0, v4, :cond_8

    .line 142
    .line 143
    if-eq p0, v6, :cond_8

    .line 144
    .line 145
    if-ne p0, v7, :cond_9

    .line 146
    .line 147
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    :cond_9
    :goto_5
    move v9, v2

    .line 150
    goto :goto_6

    .line 151
    :cond_a
    if-eq p0, v6, :cond_8

    .line 152
    .line 153
    if-ne p0, v7, :cond_9

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_b
    if-eq p0, v4, :cond_8

    .line 157
    .line 158
    if-ne p0, v6, :cond_9

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :goto_6
    new-instance p0, Lcom/google/android/gms/internal/ads/zzacw;

    .line 162
    .line 163
    const/4 v6, 0x2

    .line 164
    const/4 v10, 0x0

    .line 165
    move-object v4, p0

    .line 166
    move v7, v11

    .line 167
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzacw;-><init>(IIIIILcom/google/android/gms/internal/ads/zzacx;)V

    .line 168
    .line 169
    .line 170
    return-object p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzen;)V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzI(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzN()[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, -0x54

    .line 11
    .line 12
    aput-byte v1, p1, v0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/16 v1, 0x40

    .line 16
    .line 17
    aput-byte v1, p1, v0

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    const/4 v1, -0x1

    .line 21
    aput-byte v1, p1, v0

    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    aput-byte v1, p1, v0

    .line 25
    .line 26
    shr-int/lit8 v0, p0, 0x10

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    int-to-byte v0, v0

    .line 31
    const/4 v1, 0x4

    .line 32
    aput-byte v0, p1, v1

    .line 33
    .line 34
    shr-int/lit8 v0, p0, 0x8

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    int-to-byte v0, v0

    .line 39
    const/4 v1, 0x5

    .line 40
    aput-byte v0, p1, v1

    .line 41
    .line 42
    and-int/lit16 p0, p0, 0xff

    .line 43
    .line 44
    int-to-byte p0, p0

    .line 45
    const/4 v0, 0x6

    .line 46
    aput-byte p0, p1, v0

    .line 47
    .line 48
    return-void
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x7

    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0xa

    .line 23
    .line 24
    if-gt v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    .line 41
    .line 42
    const/4 v3, -0x1

    .line 43
    if-ne v2, v3, :cond_3

    .line 44
    .line 45
    if-ltz v1, :cond_3

    .line 46
    .line 47
    const/16 v2, 0xf

    .line 48
    .line 49
    if-gt v1, v2, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    if-ne v0, v2, :cond_3

    .line 55
    .line 56
    :cond_2
    iput v1, p1, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    .line 57
    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacy;->zzf(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzacv;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v2, :cond_4

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x5

    .line 28
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/16 v4, 0x18

    .line 34
    .line 35
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    const/4 v5, 0x4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v4, 0x6

    .line 56
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/lit8 v4, v4, 0x1

    .line 61
    .line 62
    iput v4, p1, Lcom/google/android/gms/internal/ads/zzacv;->zzc:I

    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacy;->zzf(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 87
    .line 88
    .line 89
    :cond_5
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x2a

    .line 10
    .line 11
    if-gt v0, v1, :cond_0

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x8

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string v0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    .line 28
    .line 29
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x42

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0
.end method
