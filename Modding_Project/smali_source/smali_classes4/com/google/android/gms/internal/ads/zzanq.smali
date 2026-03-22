.class final Lcom/google/android/gms/internal/ads/zzanq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzem;)Lcom/google/android/gms/internal/ads/zzano;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/16 v5, 0x1f

    .line 15
    .line 16
    if-ne v4, v5, :cond_0

    .line 17
    .line 18
    const/16 v4, 0x18

    .line 19
    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    packed-switch v4, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Unsupported sampling rate index "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    throw v0

    .line 51
    :pswitch_1
    const/16 v4, 0x2580

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :pswitch_2
    const/16 v4, 0x3200

    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_3
    const/16 v4, 0x3840

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_4
    const/16 v4, 0x42b3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_5
    const/16 v4, 0x4b00

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_6
    const/16 v4, 0x4e20

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :pswitch_7
    const/16 v4, 0x6400

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :pswitch_8
    const/16 v4, 0x7080

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_9
    const v4, 0x8566

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_a
    const v4, 0x9600

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_b
    const v4, 0x9c40

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :pswitch_c
    const v4, 0xc800

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :pswitch_d
    const v4, 0xe100

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_e
    const/16 v4, 0x1cb6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_f
    const/16 v4, 0x1f40

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_10
    const/16 v4, 0x2b11

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_11
    const/16 v4, 0x2ee0

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_12
    const/16 v4, 0x3e80

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_13
    const/16 v4, 0x5622

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :pswitch_14
    const/16 v4, 0x5dc0

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :pswitch_15
    const/16 v4, 0x7d00

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :pswitch_16
    const v4, 0xac44

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :pswitch_17
    const v4, 0xbb80

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :pswitch_18
    const v4, 0xfa00

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_19
    const v4, 0x15888

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_1a
    const v4, 0x17700

    .line 138
    .line 139
    .line 140
    :goto_0
    const/4 v5, 0x3

    .line 141
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    const-string v7, "Unsupported coreSbrFrameLengthIndex "

    .line 146
    .line 147
    const/4 v8, 0x4

    .line 148
    const/4 v9, 0x2

    .line 149
    const/4 v10, 0x1

    .line 150
    if-eqz v6, :cond_4

    .line 151
    .line 152
    if-eq v6, v10, :cond_3

    .line 153
    .line 154
    if-eq v6, v9, :cond_2

    .line 155
    .line 156
    if-eq v6, v5, :cond_2

    .line 157
    .line 158
    if-ne v6, v8, :cond_1

    .line 159
    .line 160
    const/16 v11, 0x1000

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    throw v0

    .line 183
    :cond_2
    const/16 v11, 0x800

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_3
    const/16 v11, 0x400

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    const/16 v11, 0x300

    .line 190
    .line 191
    :goto_1
    if-eqz v6, :cond_8

    .line 192
    .line 193
    if-eq v6, v10, :cond_8

    .line 194
    .line 195
    if-eq v6, v9, :cond_7

    .line 196
    .line 197
    if-eq v6, v5, :cond_6

    .line 198
    .line 199
    if-ne v6, v8, :cond_5

    .line 200
    .line 201
    move v6, v10

    .line 202
    goto :goto_2

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    throw v0

    .line 223
    :cond_6
    move v6, v5

    .line 224
    goto :goto_2

    .line 225
    :cond_7
    move v6, v9

    .line 226
    goto :goto_2

    .line 227
    :cond_8
    const/4 v6, 0x0

    .line 228
    :goto_2
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 229
    .line 230
    .line 231
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zze(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 235
    .line 236
    .line 237
    move-result v7

    .line 238
    const/4 v13, 0x0

    .line 239
    const/4 v14, 0x0

    .line 240
    :goto_3
    add-int/lit8 v15, v7, 0x1

    .line 241
    .line 242
    const/16 v12, 0x10

    .line 243
    .line 244
    if-ge v13, v15, :cond_b

    .line 245
    .line 246
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 247
    .line 248
    .line 249
    move-result v15

    .line 250
    invoke-static {v0, v2, v1, v12}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    add-int/2addr v12, v10

    .line 255
    add-int/2addr v14, v12

    .line 256
    if-eqz v15, :cond_9

    .line 257
    .line 258
    if-ne v15, v9, :cond_a

    .line 259
    .line 260
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    if-eqz v12, :cond_a

    .line 265
    .line 266
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zze(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 267
    .line 268
    .line 269
    :cond_a
    add-int/lit8 v13, v13, 0x1

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_b
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    add-int/2addr v7, v10

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 278
    .line 279
    .line 280
    const/4 v13, 0x0

    .line 281
    :goto_4
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 282
    .line 283
    if-ge v13, v7, :cond_1a

    .line 284
    .line 285
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 286
    .line 287
    .line 288
    move-result v15

    .line 289
    if-eqz v15, :cond_18

    .line 290
    .line 291
    if-eq v15, v10, :cond_f

    .line 292
    .line 293
    if-eq v15, v5, :cond_d

    .line 294
    .line 295
    :cond_c
    :goto_5
    move v12, v3

    .line 296
    goto/16 :goto_7

    .line 297
    .line 298
    :cond_d
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 299
    .line 300
    .line 301
    invoke-static {v0, v8, v1, v12}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 306
    .line 307
    .line 308
    move-result v17

    .line 309
    const/4 v10, 0x0

    .line 310
    if-eqz v17, :cond_e

    .line 311
    .line 312
    invoke-static {v0, v1, v12, v10}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 313
    .line 314
    .line 315
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 316
    .line 317
    .line 318
    if-lez v15, :cond_c

    .line 319
    .line 320
    mul-int/lit8 v15, v15, 0x8

    .line 321
    .line 322
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 323
    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_f
    const/4 v10, 0x0

    .line 327
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zzf(Lcom/google/android/gms/internal/ads/zzem;)Z

    .line 328
    .line 329
    .line 330
    move-result v15

    .line 331
    if-eqz v15, :cond_10

    .line 332
    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 334
    .line 335
    .line 336
    :cond_10
    if-lez v6, :cond_11

    .line 337
    .line 338
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zzd(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 342
    .line 343
    .line 344
    move-result v15

    .line 345
    move/from16 v16, v6

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_11
    move v15, v10

    .line 349
    move/from16 v16, v15

    .line 350
    .line 351
    :goto_6
    if-lez v15, :cond_15

    .line 352
    .line 353
    const/4 v10, 0x6

    .line 354
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 358
    .line 359
    .line 360
    move-result v12

    .line 361
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 365
    .line 366
    .line 367
    move-result v19

    .line 368
    if-eqz v19, :cond_12

    .line 369
    .line 370
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 371
    .line 372
    .line 373
    :cond_12
    if-eq v15, v9, :cond_13

    .line 374
    .line 375
    if-ne v15, v5, :cond_14

    .line 376
    .line 377
    :cond_13
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 378
    .line 379
    .line 380
    :cond_14
    if-ne v12, v9, :cond_15

    .line 381
    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 383
    .line 384
    .line 385
    :cond_15
    add-int/lit8 v10, v14, -0x1

    .line 386
    .line 387
    move v12, v3

    .line 388
    int-to-double v2, v10

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 390
    .line 391
    .line 392
    move-result-wide v2

    .line 393
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->log(D)D

    .line 394
    .line 395
    .line 396
    move-result-wide v17

    .line 397
    div-double v2, v2, v17

    .line 398
    .line 399
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    .line 400
    .line 401
    .line 402
    move-result-wide v2

    .line 403
    double-to-int v2, v2

    .line 404
    const/4 v3, 0x1

    .line 405
    add-int/2addr v2, v3

    .line 406
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    if-lez v3, :cond_16

    .line 411
    .line 412
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    if-eqz v10, :cond_16

    .line 417
    .line 418
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 419
    .line 420
    .line 421
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    if-eqz v10, :cond_17

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 428
    .line 429
    .line 430
    :cond_17
    if-nez v16, :cond_19

    .line 431
    .line 432
    if-nez v3, :cond_19

    .line 433
    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 435
    .line 436
    .line 437
    goto :goto_7

    .line 438
    :cond_18
    move v12, v3

    .line 439
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zzf(Lcom/google/android/gms/internal/ads/zzem;)Z

    .line 440
    .line 441
    .line 442
    if-lez v6, :cond_19

    .line 443
    .line 444
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanq;->zzd(Lcom/google/android/gms/internal/ads/zzem;)V

    .line 445
    .line 446
    .line 447
    :cond_19
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 448
    .line 449
    move v3, v12

    .line 450
    const/4 v2, 0x5

    .line 451
    const/4 v10, 0x1

    .line 452
    const/16 v12, 0x10

    .line 453
    .line 454
    goto/16 :goto_4

    .line 455
    .line 456
    :cond_1a
    move v12, v3

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    const/4 v3, 0x0

    .line 462
    if-eqz v2, :cond_1d

    .line 463
    .line 464
    invoke-static {v0, v9, v8, v1}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    const/4 v5, 0x1

    .line 469
    add-int/2addr v2, v5

    .line 470
    const/4 v6, 0x0

    .line 471
    :goto_8
    if-ge v6, v2, :cond_1d

    .line 472
    .line 473
    const/16 v7, 0x10

    .line 474
    .line 475
    invoke-static {v0, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 476
    .line 477
    .line 478
    move-result v9

    .line 479
    invoke-static {v0, v8, v1, v7}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    const/4 v13, 0x7

    .line 484
    if-ne v9, v13, :cond_1c

    .line 485
    .line 486
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    add-int/2addr v3, v5

    .line 491
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 492
    .line 493
    .line 494
    new-array v9, v3, [B

    .line 495
    .line 496
    const/4 v10, 0x0

    .line 497
    :goto_9
    if-ge v10, v3, :cond_1b

    .line 498
    .line 499
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 500
    .line 501
    .line 502
    move-result v13

    .line 503
    int-to-byte v13, v13

    .line 504
    aput-byte v13, v9, v10

    .line 505
    .line 506
    add-int/lit8 v10, v10, 0x1

    .line 507
    .line 508
    goto :goto_9

    .line 509
    :cond_1b
    move-object v3, v9

    .line 510
    goto :goto_a

    .line 511
    :cond_1c
    mul-int/2addr v10, v1

    .line 512
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 513
    .line 514
    .line 515
    :goto_a
    add-int/lit8 v6, v6, 0x1

    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_1d
    move-object v6, v3

    .line 519
    sparse-switch v4, :sswitch_data_0

    .line 520
    .line 521
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .line 526
    .line 527
    const-string v1, "Unsupported sampling rate "

    .line 528
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    throw v0

    .line 544
    :sswitch_0
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 545
    .line 546
    goto :goto_b

    .line 547
    :sswitch_1
    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    .line 548
    .line 549
    goto :goto_b

    .line 550
    :sswitch_2
    const-wide/high16 v17, 0x4008000000000000L    # 3.0

    .line 551
    .line 552
    :goto_b
    :sswitch_3
    int-to-double v0, v4

    .line 553
    int-to-double v2, v11

    .line 554
    new-instance v8, Lcom/google/android/gms/internal/ads/zzano;

    .line 555
    .line 556
    mul-double v2, v2, v17

    .line 557
    .line 558
    mul-double v0, v0, v17

    .line 559
    .line 560
    double-to-int v4, v0

    .line 561
    double-to-int v5, v2

    .line 562
    const/4 v7, 0x0

    .line 563
    move-object v2, v8

    .line 564
    move v3, v12

    .line 565
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzano;-><init>(III[BLcom/google/android/gms/internal/ads/zzanp;)V

    .line 566
    .line 567
    .line 568
    return-object v8

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    :sswitch_data_0
    .sparse-switch
        0x396c -> :sswitch_2
        0x3e80 -> :sswitch_2
        0x5622 -> :sswitch_3
        0x5dc0 -> :sswitch_3
        0x72d8 -> :sswitch_1
        0x7d00 -> :sswitch_1
        0xac44 -> :sswitch_0
        0xbb80 -> :sswitch_0
        0xe5b0 -> :sswitch_1
        0xfa00 -> :sswitch_1
        0x15888 -> :sswitch_0
        0x17700 -> :sswitch_0
    .end sparse-switch
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzem;Lcom/google/android/gms/internal/ads/zzann;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaz;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zzb()I

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x1

    .line 19
    if-eq v2, v5, :cond_d

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    const/16 v7, 0x20

    .line 27
    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    const/16 v8, 0x3f

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-gt v6, v8, :cond_0

    .line 36
    .line 37
    move v6, v9

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v6, v4

    .line 40
    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v10, 0x3

    .line 44
    .line 45
    const-wide/16 v12, 0xff

    .line 46
    .line 47
    invoke-static {v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzgbo;->zza(JJ)J

    .line 48
    .line 49
    .line 50
    move-result-wide v14

    .line 51
    const-wide v5, 0x100000000L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    invoke-static {v14, v15, v5, v6}, Lcom/google/android/gms/internal/ads/zzgbo;->zza(JJ)J

    .line 57
    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    const-wide/16 v14, -0x1

    .line 64
    .line 65
    if-ge v5, v2, :cond_1

    .line 66
    .line 67
    :goto_1
    move-wide v5, v14

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zze(I)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    cmp-long v16, v5, v10

    .line 74
    .line 75
    if-nez v16, :cond_5

    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-ge v5, v3, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzem;->zze(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    add-long/2addr v10, v5

    .line 89
    cmp-long v3, v5, v12

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-ge v3, v7, :cond_3

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzem;->zze(I)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    add-long/2addr v5, v10

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    move-wide v5, v10

    .line 107
    :cond_5
    :goto_2
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzann;->zzb:J

    .line 108
    .line 109
    cmp-long v3, v5, v14

    .line 110
    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    return v4

    .line 114
    :cond_6
    const-wide/16 v10, 0x10

    .line 115
    .line 116
    cmp-long v3, v5, v10

    .line 117
    .line 118
    if-gtz v3, :cond_c

    .line 119
    .line 120
    const-wide/16 v10, 0x0

    .line 121
    .line 122
    cmp-long v3, v5, v10

    .line 123
    .line 124
    if-nez v3, :cond_a

    .line 125
    .line 126
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzann;->zza:I

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    if-eq v3, v9, :cond_9

    .line 130
    .line 131
    if-eq v3, v2, :cond_8

    .line 132
    .line 133
    const/16 v2, 0x11

    .line 134
    .line 135
    if-eq v3, v2, :cond_7

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_7
    const-string v0, "AudioTruncation packet with invalid packet label 0"

    .line 139
    .line 140
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    throw v0

    .line 145
    :cond_8
    const-string v0, "Mpegh3daFrame packet with invalid packet label 0"

    .line 146
    .line 147
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    throw v0

    .line 152
    :cond_9
    const-string v0, "Mpegh3daConfig packet with invalid packet label 0"

    .line 153
    .line 154
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    throw v0

    .line 159
    :cond_a
    :goto_3
    const/16 v2, 0xb

    .line 160
    .line 161
    const/16 v3, 0x18

    .line 162
    .line 163
    invoke-static {v0, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzann;->zzc:I

    .line 168
    .line 169
    const/4 v1, -0x1

    .line 170
    if-eq v0, v1, :cond_b

    .line 171
    .line 172
    return v9

    .line 173
    :cond_b
    return v4

    .line 174
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "Contains sub-stream with an invalid packet label "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    throw v0

    .line 196
    :cond_d
    return v4
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzem;III)I
    .locals 5

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x1f

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-gt v0, v1, :cond_0

    .line 13
    .line 14
    move v0, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdd;->zzd(Z)V

    .line 18
    .line 19
    .line 20
    shl-int v0, v2, p1

    .line 21
    .line 22
    shl-int v1, v2, p2

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    add-int/2addr v0, v3

    .line 26
    add-int/2addr v1, v3

    .line 27
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgbm;->zza(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    shl-int/2addr v2, p3

    .line 32
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzgbm;->zza(II)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-ge v2, p1, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-ne p1, v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-ge v0, p2, :cond_2

    .line 53
    .line 54
    return v3

    .line 55
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    add-int/2addr p1, p2

    .line 60
    if-ne p2, v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zza()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-ge p2, p3, :cond_3

    .line 67
    .line 68
    return v3

    .line 69
    :cond_3
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    add-int/2addr p1, p0

    .line 74
    :cond_4
    return p1
.end method

.method private static zzd(Lcom/google/android/gms/internal/ads/zzem;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzem;)V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x6

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v3, 0x10

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    const/16 v5, 0x8

    .line 17
    .line 18
    invoke-static {p0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzanq;->zzc(Lcom/google/android/gms/internal/ads/zzem;III)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    const/4 v6, 0x1

    .line 23
    add-int/2addr v3, v6

    .line 24
    const/4 v7, 0x7

    .line 25
    if-ne v1, v6, :cond_1

    .line 26
    .line 27
    mul-int/2addr v3, v7

    .line 28
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    if-ne v1, v0, :cond_9

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v6, v1, :cond_2

    .line 39
    .line 40
    move v8, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v8, v6

    .line 43
    :goto_0
    if-eq v6, v1, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move v4, v7

    .line 47
    :goto_1
    if-eq v6, v1, :cond_4

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    move v2, v5

    .line 51
    :goto_2
    const/4 v1, 0x0

    .line 52
    move v5, v1

    .line 53
    :goto_3
    if-ge v5, v3, :cond_9

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    const/16 v10, 0xb4

    .line 60
    .line 61
    if-eqz v9, :cond_5

    .line 62
    .line 63
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 64
    .line 65
    .line 66
    move v9, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    const/4 v11, 0x3

    .line 73
    if-ne v9, v11, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 76
    .line 77
    .line 78
    move-result v9

    .line 79
    mul-int/2addr v9, v8

    .line 80
    if-eqz v9, :cond_6

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 83
    .line 84
    .line 85
    :cond_6
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzem;->zzd(I)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    mul-int/2addr v9, v8

    .line 90
    if-eqz v9, :cond_7

    .line 91
    .line 92
    if-eq v9, v10, :cond_7

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 95
    .line 96
    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzm()V

    .line 98
    .line 99
    .line 100
    :goto_4
    if-eqz v9, :cond_8

    .line 101
    .line 102
    if-eq v9, v10, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_8

    .line 109
    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 111
    .line 112
    :cond_8
    add-int/2addr v5, v6

    .line 113
    goto :goto_3

    .line 114
    :cond_9
    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzem;)Z
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzem;->zzp()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/16 v1, 0xd

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzem;->zzn(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method
