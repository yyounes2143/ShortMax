.class public final Lcom/google/android/gms/internal/measurement/zzba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# direct methods
.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, ","

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const-string v7, "toString"

    .line 16
    .line 17
    const-string v8, "filter"

    .line 18
    .line 19
    const-string v9, "forEach"

    .line 20
    .line 21
    const-string v10, "lastIndexOf"

    .line 22
    .line 23
    const-string v11, "map"

    .line 24
    .line 25
    const-string v12, "pop"

    .line 26
    .line 27
    const-string v13, "join"

    .line 28
    .line 29
    const-string v14, "some"

    .line 30
    .line 31
    const-string v15, "sort"

    .line 32
    .line 33
    const-string v5, "every"

    .line 34
    .line 35
    move-object/from16 v16, v4

    .line 36
    .line 37
    const-string v4, "shift"

    .line 38
    .line 39
    const-string v3, "slice"

    .line 40
    .line 41
    const-string v1, "reverse"

    .line 42
    .line 43
    const-string v2, "indexOf"

    .line 44
    .line 45
    const/16 v17, -0x1

    .line 46
    .line 47
    move-object/from16 v18, v7

    .line 48
    .line 49
    sparse-switch v6, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    :cond_0
    move-object/from16 v6, v18

    .line 53
    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    const/4 v0, 0x4

    .line 63
    :goto_0
    move-object/from16 v6, v18

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :sswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const/16 v0, 0xc

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :sswitch_2
    const-string v6, "reduceRight"

    .line 77
    .line 78
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    const/16 v0, 0xb

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :sswitch_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    const/16 v0, 0xe

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :sswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    const/16 v0, 0xd

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :sswitch_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    move-object/from16 v6, v18

    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    goto/16 :goto_2

    .line 115
    .line 116
    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    .line 122
    const/16 v0, 0x10

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :sswitch_7
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    const/16 v0, 0xf

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :sswitch_8
    const-string v6, "push"

    .line 135
    .line 136
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    .line 142
    const/16 v0, 0x9

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :sswitch_9
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    const/4 v0, 0x5

    .line 152
    goto :goto_0

    .line 153
    :sswitch_a
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    .line 159
    const/16 v0, 0x8

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :sswitch_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    .line 168
    const/4 v0, 0x7

    .line 169
    goto :goto_0

    .line 170
    :sswitch_c
    const-string v6, "unshift"

    .line 171
    .line 172
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    .line 178
    const/16 v0, 0x13

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :sswitch_d
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    .line 187
    const/4 v0, 0x6

    .line 188
    goto :goto_0

    .line 189
    :sswitch_e
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    .line 195
    move-object/from16 v6, v18

    .line 196
    .line 197
    const/4 v0, 0x3

    .line 198
    goto :goto_2

    .line 199
    :sswitch_f
    const-string v6, "splice"

    .line 200
    .line 201
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_0

    .line 206
    .line 207
    const/16 v0, 0x11

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :sswitch_10
    const-string v6, "reduce"

    .line 212
    .line 213
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    .line 219
    const/16 v0, 0xa

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :sswitch_11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    .line 229
    move-object/from16 v6, v18

    .line 230
    .line 231
    const/4 v0, 0x2

    .line 232
    goto :goto_2

    .line 233
    :sswitch_12
    const-string v6, "concat"

    .line 234
    .line 235
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_0

    .line 240
    .line 241
    move-object/from16 v6, v18

    .line 242
    .line 243
    const/4 v0, 0x0

    .line 244
    goto :goto_2

    .line 245
    :sswitch_13
    move-object/from16 v6, v18

    .line 246
    .line 247
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    .line 253
    const/16 v0, 0x12

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_1
    :goto_1
    move/from16 v0, v17

    .line 257
    .line 258
    :goto_2
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 259
    .line 260
    const-string v7, "Callback should be a method"

    .line 261
    .line 262
    move-object/from16 v21, v1

    .line 263
    .line 264
    move-object/from16 v22, v2

    .line 265
    .line 266
    const/4 v1, 0x0

    .line 267
    packed-switch v0, :pswitch_data_0

    .line 268
    .line 269
    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    .line 272
    const-string v1, "Command not supported"

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :pswitch_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-nez v0, :cond_5

    .line 283
    .line 284
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 285
    .line 286
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 287
    .line 288
    .line 289
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-eqz v2, :cond_3

    .line 298
    .line 299
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    .line 304
    .line 305
    move-object/from16 v3, p2

    .line 306
    .line 307
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    .line 312
    .line 313
    if-nez v4, :cond_2

    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    const-string v1, "Argument evaluation failed"

    .line 326
    .line 327
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw v0

    .line 331
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 332
    .line 333
    .line 334
    move-result v1

    .line 335
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    .line 341
    .line 342
    move-result v3

    .line 343
    if-eqz v3, :cond_4

    .line 344
    .line 345
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    check-cast v3, Ljava/lang/Integer;

    .line 350
    .line 351
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    add-int/2addr v4, v1

    .line 356
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    move-object/from16 v5, p1

    .line 361
    .line 362
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_4
    move-object/from16 v5, p1

    .line 371
    .line 372
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzp()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_6

    .line 384
    .line 385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Ljava/lang/Integer;

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 404
    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_5
    move-object/from16 v5, p1

    .line 408
    .line 409
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 410
    .line 411
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    int-to-double v1, v1

    .line 416
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 421
    .line 422
    .line 423
    goto/16 :goto_1b

    .line 424
    .line 425
    :pswitch_1
    move-object/from16 v5, p1

    .line 426
    .line 427
    move-object/from16 v0, p3

    .line 428
    .line 429
    const/4 v2, 0x0

    .line 430
    invoke-static {v6, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 431
    .line 432
    .line 433
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    .line 434
    .line 435
    move-object/from16 v1, v16

    .line 436
    .line 437
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(Ljava/lang/String;)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_1b

    .line 445
    .line 446
    :pswitch_2
    move-object/from16 v5, p1

    .line 447
    .line 448
    move-object/from16 v3, p2

    .line 449
    .line 450
    move-object/from16 v0, p3

    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    if-eqz v4, :cond_7

    .line 458
    .line 459
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 460
    .line 461
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_1b

    .line 465
    .line 466
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzao;

    .line 471
    .line 472
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 477
    .line 478
    .line 479
    move-result-object v4

    .line 480
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 481
    .line 482
    .line 483
    move-result-wide v6

    .line 484
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 485
    .line 486
    .line 487
    move-result-wide v6

    .line 488
    double-to-int v4, v6

    .line 489
    if-gez v4, :cond_8

    .line 490
    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 492
    .line 493
    .line 494
    move-result v6

    .line 495
    add-int/2addr v4, v6

    .line 496
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    goto :goto_6

    .line 501
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 502
    .line 503
    .line 504
    move-result v2

    .line 505
    if-le v4, v2, :cond_9

    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 508
    .line 509
    .line 510
    move-result v4

    .line 511
    :cond_9
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzae;

    .line 516
    .line 517
    invoke-direct {v6}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 521
    .line 522
    .line 523
    move-result v7

    .line 524
    const/4 v8, 0x1

    .line 525
    if-le v7, v8, :cond_c

    .line 526
    .line 527
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 532
    .line 533
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 542
    .line 543
    .line 544
    move-result-wide v7

    .line 545
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 546
    .line 547
    .line 548
    move-result-wide v7

    .line 549
    double-to-int v1, v7

    .line 550
    const/4 v7, 0x0

    .line 551
    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    if-lez v1, :cond_a

    .line 556
    .line 557
    move v7, v4

    .line 558
    :goto_7
    add-int v8, v4, v1

    .line 559
    .line 560
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 561
    .line 562
    .line 563
    move-result v8

    .line 564
    if-ge v7, v8, :cond_a

    .line 565
    .line 566
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 567
    .line 568
    .line 569
    move-result-object v8

    .line 570
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 571
    .line 572
    .line 573
    move-result v9

    .line 574
    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    .line 578
    .line 579
    .line 580
    const/4 v8, 0x1

    .line 581
    add-int/2addr v7, v8

    .line 582
    goto :goto_7

    .line 583
    :cond_a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    const/4 v2, 0x2

    .line 588
    if-le v1, v2, :cond_d

    .line 589
    .line 590
    const/4 v7, 0x2

    .line 591
    :goto_8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    if-ge v7, v1, :cond_d

    .line 596
    .line 597
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 602
    .line 603
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzag;

    .line 608
    .line 609
    if-nez v2, :cond_b

    .line 610
    .line 611
    add-int v2, v4, v7

    .line 612
    .line 613
    add-int/lit8 v2, v2, -0x2

    .line 614
    .line 615
    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzq(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 616
    .line 617
    .line 618
    const/4 v1, 0x1

    .line 619
    add-int/2addr v7, v1

    .line 620
    goto :goto_8

    .line 621
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 622
    .line 623
    const-string v1, "Failed to parse elements to add"

    .line 624
    .line 625
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :cond_c
    :goto_9
    if-ge v4, v2, :cond_d

    .line 630
    .line 631
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 636
    .line 637
    .line 638
    move-result v3

    .line 639
    invoke-virtual {v6, v3, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v5, v4, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 643
    .line 644
    .line 645
    const/4 v7, 0x1

    .line 646
    add-int/2addr v4, v7

    .line 647
    goto :goto_9

    .line 648
    :cond_d
    move-object v0, v6

    .line 649
    goto/16 :goto_1b

    .line 650
    .line 651
    :pswitch_3
    move-object/from16 v5, p1

    .line 652
    .line 653
    move-object/from16 v3, p2

    .line 654
    .line 655
    move-object/from16 v0, p3

    .line 656
    .line 657
    const/4 v7, 0x1

    .line 658
    invoke-static {v15, v7, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 662
    .line 663
    .line 664
    move-result v2

    .line 665
    const/4 v4, 0x2

    .line 666
    if-lt v2, v4, :cond_1b

    .line 667
    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzb()Ljava/util/List;

    .line 669
    .line 670
    .line 671
    move-result-object v2

    .line 672
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 673
    .line 674
    .line 675
    move-result v4

    .line 676
    if-nez v4, :cond_f

    .line 677
    .line 678
    const/4 v4, 0x0

    .line 679
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 684
    .line 685
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzai;

    .line 690
    .line 691
    if-eqz v1, :cond_e

    .line 692
    .line 693
    move-object v1, v0

    .line 694
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzai;

    .line 695
    .line 696
    goto :goto_a

    .line 697
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 698
    .line 699
    const-string v1, "Comparator should be a method"

    .line 700
    .line 701
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    throw v0

    .line 705
    :cond_f
    :goto_a
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaz;

    .line 706
    .line 707
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/measurement/zzaz;-><init>(Lcom/google/android/gms/internal/measurement/zzai;Lcom/google/android/gms/internal/measurement/zzg;)V

    .line 708
    .line 709
    .line 710
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 711
    .line 712
    .line 713
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzp()V

    .line 714
    .line 715
    .line 716
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 717
    .line 718
    .line 719
    move-result-object v0

    .line 720
    const/4 v7, 0x0

    .line 721
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-eqz v1, :cond_1b

    .line 726
    .line 727
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 732
    .line 733
    const/4 v2, 0x1

    .line 734
    add-int/lit8 v3, v7, 0x1

    .line 735
    .line 736
    invoke-virtual {v5, v7, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 737
    .line 738
    .line 739
    move v7, v3

    .line 740
    goto :goto_b

    .line 741
    :pswitch_4
    move-object/from16 v5, p1

    .line 742
    .line 743
    move-object/from16 v3, p2

    .line 744
    .line 745
    move-object/from16 v0, p3

    .line 746
    .line 747
    const/4 v2, 0x1

    .line 748
    invoke-static {v14, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 749
    .line 750
    .line 751
    const/4 v1, 0x0

    .line 752
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 757
    .line 758
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 759
    .line 760
    .line 761
    move-result-object v0

    .line 762
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzai;

    .line 763
    .line 764
    if-eqz v1, :cond_13

    .line 765
    .line 766
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 767
    .line 768
    .line 769
    move-result v1

    .line 770
    if-nez v1, :cond_10

    .line 771
    .line 772
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    .line 773
    .line 774
    goto/16 :goto_1b

    .line 775
    .line 776
    :cond_10
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzai;

    .line 777
    .line 778
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 783
    .line 784
    .line 785
    move-result v2

    .line 786
    if-eqz v2, :cond_12

    .line 787
    .line 788
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v2

    .line 792
    check-cast v2, Ljava/lang/Integer;

    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    if-eqz v4, :cond_11

    .line 803
    .line 804
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    int-to-double v6, v2

    .line 809
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 810
    .line 811
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 812
    .line 813
    .line 814
    move-result-object v6

    .line 815
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 816
    .line 817
    .line 818
    const/4 v6, 0x3

    .line 819
    new-array v7, v6, [Lcom/google/android/gms/internal/measurement/zzao;

    .line 820
    .line 821
    const/4 v8, 0x0

    .line 822
    aput-object v4, v7, v8

    .line 823
    .line 824
    const/4 v4, 0x1

    .line 825
    aput-object v2, v7, v4

    .line 826
    .line 827
    const/4 v2, 0x2

    .line 828
    aput-object v5, v7, v2

    .line 829
    .line 830
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 831
    .line 832
    .line 833
    move-result-object v2

    .line 834
    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    if-eqz v2, :cond_11

    .line 847
    .line 848
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    .line 849
    .line 850
    goto/16 :goto_1b

    .line 851
    .line 852
    :cond_12
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    .line 853
    .line 854
    goto/16 :goto_1b

    .line 855
    .line 856
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 857
    .line 858
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    throw v0

    .line 862
    :pswitch_5
    move-object/from16 v5, p1

    .line 863
    .line 864
    move-object/from16 v0, p3

    .line 865
    .line 866
    move-object v1, v3

    .line 867
    const/4 v2, 0x2

    .line 868
    move-object/from16 v3, p2

    .line 869
    .line 870
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 871
    .line 872
    .line 873
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    if-eqz v1, :cond_14

    .line 878
    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    goto/16 :goto_1b

    .line 884
    .line 885
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    int-to-double v1, v1

    .line 890
    const/4 v4, 0x0

    .line 891
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v4

    .line 895
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzao;

    .line 896
    .line 897
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 898
    .line 899
    .line 900
    move-result-object v4

    .line 901
    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 902
    .line 903
    .line 904
    move-result-object v4

    .line 905
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 906
    .line 907
    .line 908
    move-result-wide v6

    .line 909
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 910
    .line 911
    .line 912
    move-result-wide v6

    .line 913
    const-wide/16 v8, 0x0

    .line 914
    .line 915
    cmpg-double v4, v6, v8

    .line 916
    .line 917
    if-gez v4, :cond_15

    .line 918
    .line 919
    add-double/2addr v6, v1

    .line 920
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 921
    .line 922
    .line 923
    move-result-wide v6

    .line 924
    goto :goto_c

    .line 925
    :cond_15
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 926
    .line 927
    .line 928
    move-result-wide v6

    .line 929
    :goto_c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 930
    .line 931
    .line 932
    move-result v4

    .line 933
    const/4 v8, 0x2

    .line 934
    if-ne v4, v8, :cond_17

    .line 935
    .line 936
    const/4 v4, 0x1

    .line 937
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 942
    .line 943
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 952
    .line 953
    .line 954
    move-result-wide v3

    .line 955
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 956
    .line 957
    .line 958
    move-result-wide v3

    .line 959
    const-wide/16 v8, 0x0

    .line 960
    .line 961
    cmpg-double v0, v3, v8

    .line 962
    .line 963
    if-gez v0, :cond_16

    .line 964
    .line 965
    add-double/2addr v1, v3

    .line 966
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->max(DD)D

    .line 967
    .line 968
    .line 969
    move-result-wide v1

    .line 970
    goto :goto_d

    .line 971
    :cond_16
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 972
    .line 973
    .line 974
    move-result-wide v1

    .line 975
    :cond_17
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 976
    .line 977
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 978
    .line 979
    .line 980
    double-to-int v3, v6

    .line 981
    :goto_e
    int-to-double v6, v3

    .line 982
    cmpg-double v4, v6, v1

    .line 983
    .line 984
    if-gez v4, :cond_3c

    .line 985
    .line 986
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 991
    .line 992
    .line 993
    move-result v6

    .line 994
    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 995
    .line 996
    .line 997
    const/4 v4, 0x1

    .line 998
    add-int/2addr v3, v4

    .line 999
    goto :goto_e

    .line 1000
    :pswitch_6
    move-object/from16 v5, p1

    .line 1001
    .line 1002
    move-object/from16 v0, p3

    .line 1003
    .line 1004
    const/4 v2, 0x0

    .line 1005
    invoke-static {v4, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1009
    .line 1010
    .line 1011
    move-result v0

    .line 1012
    if-nez v0, :cond_18

    .line 1013
    .line 1014
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1015
    .line 1016
    goto/16 :goto_1b

    .line 1017
    .line 1018
    :cond_18
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v0

    .line 1022
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    .line 1023
    .line 1024
    .line 1025
    goto/16 :goto_1b

    .line 1026
    .line 1027
    :pswitch_7
    move-object/from16 v5, p1

    .line 1028
    .line 1029
    move-object/from16 v0, p3

    .line 1030
    .line 1031
    move-object/from16 v3, v21

    .line 1032
    .line 1033
    const/4 v2, 0x0

    .line 1034
    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1038
    .line 1039
    .line 1040
    move-result v0

    .line 1041
    if-eqz v0, :cond_1b

    .line 1042
    .line 1043
    const/4 v2, 0x2

    .line 1044
    const/4 v7, 0x0

    .line 1045
    :goto_f
    div-int/lit8 v3, v0, 0x2

    .line 1046
    .line 1047
    if-ge v7, v3, :cond_1b

    .line 1048
    .line 1049
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 1050
    .line 1051
    .line 1052
    move-result v2

    .line 1053
    if-eqz v2, :cond_1a

    .line 1054
    .line 1055
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v2

    .line 1059
    invoke-virtual {v5, v7, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1060
    .line 1061
    .line 1062
    add-int/lit8 v3, v0, -0x1

    .line 1063
    .line 1064
    sub-int/2addr v3, v7

    .line 1065
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v4

    .line 1069
    if-eqz v4, :cond_19

    .line 1070
    .line 1071
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v4

    .line 1075
    invoke-virtual {v5, v7, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1076
    .line 1077
    .line 1078
    :cond_19
    invoke-virtual {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1079
    .line 1080
    .line 1081
    :cond_1a
    const/4 v2, 0x1

    .line 1082
    add-int/2addr v7, v2

    .line 1083
    const/4 v2, 0x2

    .line 1084
    goto :goto_f

    .line 1085
    :cond_1b
    move-object v0, v5

    .line 1086
    goto/16 :goto_1b

    .line 1087
    .line 1088
    :pswitch_8
    move-object/from16 v5, p1

    .line 1089
    .line 1090
    move-object/from16 v3, p2

    .line 1091
    .line 1092
    move-object/from16 v0, p3

    .line 1093
    .line 1094
    const/4 v1, 0x0

    .line 1095
    invoke-static {v5, v3, v0, v1}, Lcom/google/android/gms/internal/measurement/zzba;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    goto/16 :goto_1b

    .line 1100
    .line 1101
    :pswitch_9
    move-object/from16 v5, p1

    .line 1102
    .line 1103
    move-object/from16 v3, p2

    .line 1104
    .line 1105
    move-object/from16 v0, p3

    .line 1106
    .line 1107
    const/4 v2, 0x1

    .line 1108
    invoke-static {v5, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/zzba;->zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    goto/16 :goto_1b

    .line 1113
    .line 1114
    :pswitch_a
    move-object/from16 v5, p1

    .line 1115
    .line 1116
    move-object/from16 v3, p2

    .line 1117
    .line 1118
    move-object/from16 v0, p3

    .line 1119
    .line 1120
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    if-nez v1, :cond_1c

    .line 1125
    .line 1126
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1131
    .line 1132
    .line 1133
    move-result v1

    .line 1134
    if-eqz v1, :cond_1c

    .line 1135
    .line 1136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1141
    .line 1142
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v1

    .line 1146
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1147
    .line 1148
    .line 1149
    move-result v2

    .line 1150
    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1151
    .line 1152
    .line 1153
    goto :goto_10

    .line 1154
    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1155
    .line 1156
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    int-to-double v1, v1

    .line 1161
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1166
    .line 1167
    .line 1168
    goto/16 :goto_1b

    .line 1169
    .line 1170
    :pswitch_b
    move-object/from16 v5, p1

    .line 1171
    .line 1172
    move-object/from16 v0, p3

    .line 1173
    .line 1174
    const/4 v2, 0x0

    .line 1175
    invoke-static {v12, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1179
    .line 1180
    .line 1181
    move-result v0

    .line 1182
    if-nez v0, :cond_1d

    .line 1183
    .line 1184
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1185
    .line 1186
    goto/16 :goto_1b

    .line 1187
    .line 1188
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 1189
    .line 1190
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v1

    .line 1194
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzr(I)V

    .line 1195
    .line 1196
    .line 1197
    :cond_1e
    move-object v0, v1

    .line 1198
    goto/16 :goto_1b

    .line 1199
    .line 1200
    :pswitch_c
    move-object/from16 v5, p1

    .line 1201
    .line 1202
    move-object/from16 v3, p2

    .line 1203
    .line 1204
    move-object/from16 v0, p3

    .line 1205
    .line 1206
    const/4 v2, 0x0

    .line 1207
    const/4 v4, 0x1

    .line 1208
    invoke-static {v11, v4, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1216
    .line 1217
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1218
    .line 1219
    .line 1220
    move-result-object v0

    .line 1221
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1222
    .line 1223
    if-eqz v2, :cond_20

    .line 1224
    .line 1225
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1226
    .line 1227
    .line 1228
    move-result v2

    .line 1229
    if-nez v2, :cond_1f

    .line 1230
    .line 1231
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1232
    .line 1233
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_1b

    .line 1237
    .line 1238
    :cond_1f
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1239
    .line 1240
    invoke-static {v5, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v0

    .line 1244
    goto/16 :goto_1b

    .line 1245
    .line 1246
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1247
    .line 1248
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    throw v0

    .line 1252
    :pswitch_d
    move-object/from16 v5, p1

    .line 1253
    .line 1254
    move-object/from16 v3, p2

    .line 1255
    .line 1256
    move-object/from16 v0, p3

    .line 1257
    .line 1258
    const/4 v1, 0x2

    .line 1259
    invoke-static {v10, v1, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 1260
    .line 1261
    .line 1262
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1263
    .line 1264
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1265
    .line 1266
    .line 1267
    move-result v2

    .line 1268
    if-nez v2, :cond_21

    .line 1269
    .line 1270
    const/4 v2, 0x0

    .line 1271
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v1

    .line 1275
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1276
    .line 1277
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1282
    .line 1283
    .line 1284
    move-result v2

    .line 1285
    add-int/lit8 v2, v2, -0x1

    .line 1286
    .line 1287
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 1288
    .line 1289
    .line 1290
    move-result v4

    .line 1291
    const/4 v6, 0x1

    .line 1292
    if-le v4, v6, :cond_23

    .line 1293
    .line 1294
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v0

    .line 1298
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1299
    .line 1300
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v2

    .line 1308
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1309
    .line 1310
    .line 1311
    move-result-wide v2

    .line 1312
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 1313
    .line 1314
    .line 1315
    move-result v2

    .line 1316
    if-eqz v2, :cond_22

    .line 1317
    .line 1318
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1319
    .line 1320
    .line 1321
    move-result v0

    .line 1322
    add-int/lit8 v0, v0, -0x1

    .line 1323
    .line 1324
    int-to-double v2, v0

    .line 1325
    :goto_11
    const-wide/16 v6, 0x0

    .line 1326
    .line 1327
    goto :goto_12

    .line 1328
    :cond_22
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1333
    .line 1334
    .line 1335
    move-result-wide v2

    .line 1336
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 1337
    .line 1338
    .line 1339
    move-result-wide v2

    .line 1340
    goto :goto_11

    .line 1341
    :goto_12
    cmpg-double v0, v2, v6

    .line 1342
    .line 1343
    if-gez v0, :cond_24

    .line 1344
    .line 1345
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1346
    .line 1347
    .line 1348
    move-result v0

    .line 1349
    int-to-double v8, v0

    .line 1350
    add-double/2addr v2, v8

    .line 1351
    goto :goto_13

    .line 1352
    :cond_23
    const-wide/16 v6, 0x0

    .line 1353
    .line 1354
    int-to-double v2, v2

    .line 1355
    :cond_24
    :goto_13
    cmpg-double v0, v2, v6

    .line 1356
    .line 1357
    if-gez v0, :cond_25

    .line 1358
    .line 1359
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1360
    .line 1361
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v1

    .line 1365
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1366
    .line 1367
    .line 1368
    goto/16 :goto_1b

    .line 1369
    .line 1370
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1371
    .line 1372
    .line 1373
    move-result v0

    .line 1374
    int-to-double v6, v0

    .line 1375
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v2

    .line 1379
    double-to-int v0, v2

    .line 1380
    :goto_14
    if-ltz v0, :cond_27

    .line 1381
    .line 1382
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v2

    .line 1386
    if-eqz v2, :cond_26

    .line 1387
    .line 1388
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v2

    .line 1392
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zzf(Lcom/google/android/gms/internal/measurement/zzao;Lcom/google/android/gms/internal/measurement/zzao;)Z

    .line 1393
    .line 1394
    .line 1395
    move-result v2

    .line 1396
    if-eqz v2, :cond_26

    .line 1397
    .line 1398
    int-to-double v0, v0

    .line 1399
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1400
    .line 1401
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1406
    .line 1407
    .line 1408
    move-object v0, v2

    .line 1409
    goto/16 :goto_1b

    .line 1410
    .line 1411
    :cond_26
    add-int/lit8 v0, v0, -0x1

    .line 1412
    .line 1413
    goto :goto_14

    .line 1414
    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1415
    .line 1416
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v1

    .line 1420
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1421
    .line 1422
    .line 1423
    goto/16 :goto_1b

    .line 1424
    .line 1425
    :pswitch_e
    move-object/from16 v5, p1

    .line 1426
    .line 1427
    move-object/from16 v3, p2

    .line 1428
    .line 1429
    move-object/from16 v0, p3

    .line 1430
    .line 1431
    move-object/from16 v1, v16

    .line 1432
    .line 1433
    const/4 v2, 0x1

    .line 1434
    invoke-static {v13, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 1435
    .line 1436
    .line 1437
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1438
    .line 1439
    .line 1440
    move-result v2

    .line 1441
    if-nez v2, :cond_28

    .line 1442
    .line 1443
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzm:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1444
    .line 1445
    goto/16 :goto_1b

    .line 1446
    .line 1447
    :cond_28
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1448
    .line 1449
    .line 1450
    move-result v2

    .line 1451
    if-nez v2, :cond_2b

    .line 1452
    .line 1453
    const/4 v2, 0x0

    .line 1454
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1459
    .line 1460
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v0

    .line 1464
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzam;

    .line 1465
    .line 1466
    if-nez v1, :cond_2a

    .line 1467
    .line 1468
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/zzat;

    .line 1469
    .line 1470
    if-eqz v1, :cond_29

    .line 1471
    .line 1472
    goto :goto_15

    .line 1473
    :cond_29
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzc()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v4

    .line 1477
    goto :goto_16

    .line 1478
    :cond_2a
    :goto_15
    const-string v4, ""

    .line 1479
    .line 1480
    goto :goto_16

    .line 1481
    :cond_2b
    move-object v4, v1

    .line 1482
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzas;

    .line 1483
    .line 1484
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzs(Ljava/lang/String;)Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v1

    .line 1488
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzas;-><init>(Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    goto/16 :goto_1b

    .line 1492
    .line 1493
    :pswitch_f
    move-object/from16 v5, p1

    .line 1494
    .line 1495
    move-object/from16 v3, p2

    .line 1496
    .line 1497
    move-object/from16 v0, p3

    .line 1498
    .line 1499
    move-object/from16 v1, v22

    .line 1500
    .line 1501
    const/4 v2, 0x2

    .line 1502
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 1503
    .line 1504
    .line 1505
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1506
    .line 1507
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-nez v2, :cond_2c

    .line 1512
    .line 1513
    const/4 v2, 0x0

    .line 1514
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v1

    .line 1518
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1519
    .line 1520
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    :cond_2c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 1525
    .line 1526
    .line 1527
    move-result v2

    .line 1528
    const/4 v4, 0x1

    .line 1529
    if-le v2, v4, :cond_2e

    .line 1530
    .line 1531
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v0

    .line 1535
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1536
    .line 1537
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzao;->zzd()Ljava/lang/Double;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 1546
    .line 1547
    .line 1548
    move-result-wide v2

    .line 1549
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/zzh;->zzi(D)D

    .line 1550
    .line 1551
    .line 1552
    move-result-wide v2

    .line 1553
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1554
    .line 1555
    .line 1556
    move-result v0

    .line 1557
    int-to-double v6, v0

    .line 1558
    cmpl-double v0, v2, v6

    .line 1559
    .line 1560
    if-ltz v0, :cond_2d

    .line 1561
    .line 1562
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1563
    .line 1564
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v1

    .line 1568
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1569
    .line 1570
    .line 1571
    goto/16 :goto_1b

    .line 1572
    .line 1573
    :cond_2d
    const-wide/16 v6, 0x0

    .line 1574
    .line 1575
    cmpg-double v0, v2, v6

    .line 1576
    .line 1577
    if-gez v0, :cond_2f

    .line 1578
    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1580
    .line 1581
    .line 1582
    move-result v0

    .line 1583
    int-to-double v6, v0

    .line 1584
    add-double/2addr v2, v6

    .line 1585
    goto :goto_17

    .line 1586
    :cond_2e
    const-wide/16 v6, 0x0

    .line 1587
    .line 1588
    move-wide v2, v6

    .line 1589
    :cond_2f
    :goto_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v0

    .line 1593
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1594
    .line 1595
    .line 1596
    move-result v4

    .line 1597
    if-eqz v4, :cond_31

    .line 1598
    .line 1599
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1600
    .line 1601
    .line 1602
    move-result-object v4

    .line 1603
    check-cast v4, Ljava/lang/Integer;

    .line 1604
    .line 1605
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1606
    .line 1607
    .line 1608
    move-result v4

    .line 1609
    int-to-double v6, v4

    .line 1610
    cmpg-double v8, v6, v2

    .line 1611
    .line 1612
    if-ltz v8, :cond_30

    .line 1613
    .line 1614
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v4

    .line 1618
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/measurement/zzh;->zzf(Lcom/google/android/gms/internal/measurement/zzao;Lcom/google/android/gms/internal/measurement/zzao;)Z

    .line 1619
    .line 1620
    .line 1621
    move-result v4

    .line 1622
    if-eqz v4, :cond_30

    .line 1623
    .line 1624
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1625
    .line 1626
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v1

    .line 1630
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1631
    .line 1632
    .line 1633
    goto/16 :goto_1b

    .line 1634
    .line 1635
    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzah;

    .line 1636
    .line 1637
    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v1

    .line 1641
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 1642
    .line 1643
    .line 1644
    goto/16 :goto_1b

    .line 1645
    .line 1646
    :pswitch_10
    move-object/from16 v5, p1

    .line 1647
    .line 1648
    move-object/from16 v3, p2

    .line 1649
    .line 1650
    move-object/from16 v0, p3

    .line 1651
    .line 1652
    const/4 v2, 0x1

    .line 1653
    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1654
    .line 1655
    .line 1656
    const/4 v2, 0x0

    .line 1657
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v0

    .line 1661
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1662
    .line 1663
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v0

    .line 1667
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1668
    .line 1669
    if-eqz v2, :cond_33

    .line 1670
    .line 1671
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzi()I

    .line 1672
    .line 1673
    .line 1674
    move-result v2

    .line 1675
    if-nez v2, :cond_32

    .line 1676
    .line 1677
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1678
    .line 1679
    goto/16 :goto_1b

    .line 1680
    .line 1681
    :cond_32
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1682
    .line 1683
    invoke-static {v5, v3, v0, v1, v1}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    .line 1684
    .line 1685
    .line 1686
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzf:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1687
    .line 1688
    goto/16 :goto_1b

    .line 1689
    .line 1690
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1691
    .line 1692
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1693
    .line 1694
    .line 1695
    throw v0

    .line 1696
    :pswitch_11
    move-object/from16 v5, p1

    .line 1697
    .line 1698
    move-object/from16 v3, p2

    .line 1699
    .line 1700
    move-object/from16 v0, p3

    .line 1701
    .line 1702
    const/4 v2, 0x1

    .line 1703
    invoke-static {v8, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1704
    .line 1705
    .line 1706
    const/4 v2, 0x0

    .line 1707
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v0

    .line 1711
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1712
    .line 1713
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v0

    .line 1717
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1718
    .line 1719
    if-eqz v2, :cond_35

    .line 1720
    .line 1721
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzi()I

    .line 1722
    .line 1723
    .line 1724
    move-result v2

    .line 1725
    if-nez v2, :cond_34

    .line 1726
    .line 1727
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1728
    .line 1729
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 1730
    .line 1731
    .line 1732
    goto/16 :goto_1b

    .line 1733
    .line 1734
    :cond_34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v2

    .line 1738
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1739
    .line 1740
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1741
    .line 1742
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1743
    .line 1744
    invoke-static {v5, v3, v0, v1, v4}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1749
    .line 1750
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v0

    .line 1757
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1758
    .line 1759
    .line 1760
    move-result v3

    .line 1761
    if-eqz v3, :cond_1e

    .line 1762
    .line 1763
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v3

    .line 1767
    check-cast v3, Ljava/lang/Integer;

    .line 1768
    .line 1769
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1770
    .line 1771
    .line 1772
    move-result v3

    .line 1773
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1774
    .line 1775
    .line 1776
    move-result-object v3

    .line 1777
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1778
    .line 1779
    .line 1780
    move-result v4

    .line 1781
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1782
    .line 1783
    .line 1784
    goto :goto_18

    .line 1785
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1786
    .line 1787
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1788
    .line 1789
    .line 1790
    throw v0

    .line 1791
    :pswitch_12
    move-object/from16 v1, p1

    .line 1792
    .line 1793
    move-object/from16 v3, p2

    .line 1794
    .line 1795
    move-object/from16 v0, p3

    .line 1796
    .line 1797
    const/4 v2, 0x1

    .line 1798
    invoke-static {v5, v2, v0}, Lcom/google/android/gms/internal/measurement/zzh;->zza(Ljava/lang/String;ILjava/util/List;)V

    .line 1799
    .line 1800
    .line 1801
    const/4 v2, 0x0

    .line 1802
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1803
    .line 1804
    .line 1805
    move-result-object v0

    .line 1806
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1807
    .line 1808
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v0

    .line 1812
    instance-of v2, v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1813
    .line 1814
    if-eqz v2, :cond_38

    .line 1815
    .line 1816
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1817
    .line 1818
    .line 1819
    move-result v2

    .line 1820
    if-nez v2, :cond_36

    .line 1821
    .line 1822
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1823
    .line 1824
    goto/16 :goto_1b

    .line 1825
    .line 1826
    :cond_36
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzan;

    .line 1827
    .line 1828
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1829
    .line 1830
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1831
    .line 1832
    invoke-static {v1, v3, v0, v2, v4}, Lcom/google/android/gms/internal/measurement/zzba;->zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v0

    .line 1836
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1837
    .line 1838
    .line 1839
    move-result v0

    .line 1840
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1841
    .line 1842
    .line 1843
    move-result v1

    .line 1844
    if-eq v0, v1, :cond_37

    .line 1845
    .line 1846
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzl:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1847
    .line 1848
    goto :goto_1b

    .line 1849
    :cond_37
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzao;->zzk:Lcom/google/android/gms/internal/measurement/zzao;

    .line 1850
    .line 1851
    goto :goto_1b

    .line 1852
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1853
    .line 1854
    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1855
    .line 1856
    .line 1857
    throw v0

    .line 1858
    :pswitch_13
    move-object/from16 v1, p1

    .line 1859
    .line 1860
    move-object/from16 v3, p2

    .line 1861
    .line 1862
    move-object/from16 v0, p3

    .line 1863
    .line 1864
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/zzae;->zzt()Lcom/google/android/gms/internal/measurement/zzao;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v1

    .line 1868
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1869
    .line 1870
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    .line 1871
    .line 1872
    .line 1873
    move-result v2

    .line 1874
    if-nez v2, :cond_1e

    .line 1875
    .line 1876
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1877
    .line 1878
    .line 1879
    move-result-object v0

    .line 1880
    :cond_39
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1881
    .line 1882
    .line 1883
    move-result v2

    .line 1884
    if-eqz v2, :cond_1e

    .line 1885
    .line 1886
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v2

    .line 1890
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzao;

    .line 1891
    .line 1892
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v2

    .line 1896
    instance-of v4, v2, Lcom/google/android/gms/internal/measurement/zzag;

    .line 1897
    .line 1898
    if-nez v4, :cond_3b

    .line 1899
    .line 1900
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 1901
    .line 1902
    .line 1903
    move-result v4

    .line 1904
    instance-of v5, v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1905
    .line 1906
    if-eqz v5, :cond_3a

    .line 1907
    .line 1908
    check-cast v2, Lcom/google/android/gms/internal/measurement/zzae;

    .line 1909
    .line 1910
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 1911
    .line 1912
    .line 1913
    move-result-object v5

    .line 1914
    :goto_1a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1915
    .line 1916
    .line 1917
    move-result v6

    .line 1918
    if-eqz v6, :cond_39

    .line 1919
    .line 1920
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v6

    .line 1924
    check-cast v6, Ljava/lang/Integer;

    .line 1925
    .line 1926
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1927
    .line 1928
    .line 1929
    move-result v7

    .line 1930
    add-int/2addr v7, v4

    .line 1931
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1932
    .line 1933
    .line 1934
    move-result v6

    .line 1935
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 1936
    .line 1937
    .line 1938
    move-result-object v6

    .line 1939
    invoke-virtual {v1, v7, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1940
    .line 1941
    .line 1942
    goto :goto_1a

    .line 1943
    :cond_3a
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 1944
    .line 1945
    .line 1946
    goto :goto_19

    .line 1947
    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1948
    .line 1949
    const-string v1, "Failed evaluation of arguments"

    .line 1950
    .line 1951
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1952
    .line 1953
    .line 1954
    throw v0

    .line 1955
    :cond_3c
    :goto_1b
    return-object v0

    .line 1956
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_13
        -0x50c088ec -> :sswitch_12
        -0x4bf73488 -> :sswitch_11
        -0x37b90a9a -> :sswitch_10
        -0x3565b984 -> :sswitch_f
        -0x28732996 -> :sswitch_e
        -0x1bdda92d -> :sswitch_d
        -0x108c6a77 -> :sswitch_c
        0x1a55c -> :sswitch_b
        0x1b251 -> :sswitch_a
        0x31dd2a -> :sswitch_9
        0x34af1a -> :sswitch_8
        0x35f4f4 -> :sswitch_7
        0x35f59e -> :sswitch_6
        0x5c6731b -> :sswitch_5
        0x6856c82 -> :sswitch_4
        0x6873d92 -> :sswitch_3
        0x398d4c56 -> :sswitch_2
        0x418e52e2 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method

.method private static zzb(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;Z)Lcom/google/android/gms/internal/measurement/zzao;
    .locals 10

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "reduce"

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzb(Ljava/lang/String;ILjava/util/List;)V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v1, v3, p2}, Lcom/google/android/gms/internal/measurement/zzh;->zzc(Ljava/lang/String;ILjava/util/List;)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzao;

    .line 18
    .line 19
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    instance-of v5, v4, Lcom/google/android/gms/internal/measurement/zzai;

    .line 24
    .line 25
    if-eqz v5, :cond_a

    .line 26
    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-ne v5, v3, :cond_1

    .line 32
    .line 33
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Lcom/google/android/gms/internal/measurement/zzao;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/zzg;->zza(Lcom/google/android/gms/internal/measurement/zzao;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    instance-of v5, p2, Lcom/google/android/gms/internal/measurement/zzag;

    .line 44
    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string p1, "Failed to parse initial value"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_9

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    :goto_0
    check-cast v4, Lcom/google/android/gms/internal/measurement/zzai;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzh()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    move v6, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    add-int/lit8 v6, v5, -0x1

    .line 74
    .line 75
    :goto_1
    if-eqz p3, :cond_3

    .line 76
    .line 77
    add-int/2addr v5, v0

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move v5, v1

    .line 80
    :goto_2
    if-eq v2, p3, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    move v0, v2

    .line 84
    :goto_3
    if-nez p2, :cond_6

    .line 85
    .line 86
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    :cond_5
    :goto_4
    add-int/2addr v6, v0

    .line 91
    :cond_6
    sub-int p3, v5, v6

    .line 92
    .line 93
    mul-int/2addr p3, v0

    .line 94
    if-ltz p3, :cond_8

    .line 95
    .line 96
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-eqz p3, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    int-to-double v7, v6

    .line 107
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzah;

    .line 108
    .line 109
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 114
    .line 115
    .line 116
    const/4 v7, 0x4

    .line 117
    new-array v7, v7, [Lcom/google/android/gms/internal/measurement/zzao;

    .line 118
    .line 119
    aput-object p2, v7, v1

    .line 120
    .line 121
    aput-object p3, v7, v2

    .line 122
    .line 123
    aput-object v9, v7, v3

    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    aput-object p0, v7, p2

    .line 127
    .line 128
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    instance-of p3, p2, Lcom/google/android/gms/internal/measurement/zzag;

    .line 137
    .line 138
    if-nez p3, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 142
    .line 143
    const-string p1, "Reduce operation failed"

    .line 144
    .line 145
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_8
    return-object p2

    .line 150
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 151
    .line 152
    const-string p1, "Empty array with no initial value error"

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string p1, "Callback should be a method"

    .line 161
    .line 162
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzae;Lcom/google/android/gms/internal/measurement/zzg;Lcom/google/android/gms/internal/measurement/zzai;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/measurement/zzae;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzae;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzae;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzae;->zzg()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzo(I)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/zzae;->zzl(I)Lcom/google/android/gms/internal/measurement/zzao;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    int-to-double v4, v2

    .line 37
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzah;

    .line 38
    .line 39
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-direct {v6, v4}, Lcom/google/android/gms/internal/measurement/zzah;-><init>(Ljava/lang/Double;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x3

    .line 47
    new-array v4, v4, [Lcom/google/android/gms/internal/measurement/zzao;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    aput-object v3, v4, v5

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    aput-object v6, v4, v3

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    aput-object p0, v4, v3

    .line 57
    .line 58
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {p2, p1, v3}, Lcom/google/android/gms/internal/measurement/zzai;->zza(Lcom/google/android/gms/internal/measurement/zzg;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/zzao;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    if-eqz p4, :cond_2

    .line 78
    .line 79
    invoke-interface {v3}, Lcom/google/android/gms/internal/measurement/zzao;->zze()Ljava/lang/Boolean;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4, p4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/measurement/zzae;->zzn(ILcom/google/android/gms/internal/measurement/zzao;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    :goto_1
    return-object v0
.end method
