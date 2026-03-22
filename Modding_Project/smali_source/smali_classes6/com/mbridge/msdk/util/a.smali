.class public Lcom/mbridge/msdk/util/a;
.super Ljava/lang/Object;
.source "AllTypeErrorMsgToCodeUtils.java"


# direct methods
.method public static a(ILjava/lang/String;)I
    .locals 17

    .line 1
    move/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    const-string v2, "errorCode: "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/16 v3, 0xf

    .line 19
    .line 20
    const/16 v4, 0x10

    .line 21
    .line 22
    const/16 v5, 0xb

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-le v2, v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    goto/16 :goto_10

    .line 43
    .line 44
    :cond_1
    const-string v2, "do not have sorceList"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v6, 0x1

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    add-int/lit16 v0, v1, 0x258

    .line 54
    .line 55
    :goto_0
    move v3, v6

    .line 56
    goto/16 :goto_f

    .line 57
    .line 58
    :cond_2
    const-string v2, "Network error,UnknownHostException"

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v7, 0x2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    add-int/lit16 v0, v1, 0x258

    .line 68
    .line 69
    :goto_1
    move v3, v7

    .line 70
    goto/16 :goto_f

    .line 71
    .line 72
    :cond_3
    const-string/jumbo v2, "v3 is timeout"

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v8, 0x3

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    add-int/lit16 v0, v1, 0x258

    .line 83
    .line 84
    :goto_2
    move v3, v8

    .line 85
    goto/16 :goto_f

    .line 86
    .line 87
    :cond_4
    const-string v2, "Current unit is loading!"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    const/4 v9, 0x4

    .line 94
    if-nez v2, :cond_2a

    .line 95
    .line 96
    const-string v2, "current unit is loading"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 103
    .line 104
    goto/16 :goto_e

    .line 105
    .line 106
    :cond_5
    const-string v2, "Network error,I/O exception response null"

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    const/4 v10, 0x5

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    add-int/lit16 v0, v1, 0x258

    .line 116
    .line 117
    :goto_3
    move v3, v10

    .line 118
    goto/16 :goto_f

    .line 119
    .line 120
    :cond_6
    const-string v2, "Network error,ConnectException"

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/4 v11, 0x6

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    add-int/lit16 v0, v1, 0x258

    .line 130
    .line 131
    :goto_4
    move v3, v11

    .line 132
    goto/16 :goto_f

    .line 133
    .line 134
    :cond_7
    const-string v2, "Network error,socket timeout exception"

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    const/4 v12, 0x7

    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    add-int/lit16 v0, v1, 0x258

    .line 144
    .line 145
    :goto_5
    move v3, v12

    .line 146
    goto/16 :goto_f

    .line 147
    .line 148
    :cond_8
    const-string v2, "Network error,disconnected network exception"

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    const/16 v13, 0x8

    .line 155
    .line 156
    if-eqz v2, :cond_9

    .line 157
    .line 158
    add-int/lit16 v0, v1, 0x258

    .line 159
    .line 160
    :goto_6
    move v3, v13

    .line 161
    goto/16 :goto_f

    .line 162
    .line 163
    :cond_9
    const-string v2, "Network error,timeout exception"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    const/16 v14, 0x9

    .line 170
    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    add-int/lit16 v0, v1, 0x258

    .line 174
    .line 175
    :goto_7
    move v3, v14

    .line 176
    goto/16 :goto_f

    .line 177
    .line 178
    :cond_a
    const-string v2, "Network error,please check state code"

    .line 179
    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    const/16 v15, 0xa

    .line 185
    .line 186
    if-eqz v2, :cond_b

    .line 187
    .line 188
    add-int/lit16 v0, v1, 0x258

    .line 189
    .line 190
    :goto_8
    move v3, v15

    .line 191
    goto/16 :goto_f

    .line 192
    .line 193
    :cond_b
    const-string v2, "Network error,I/O exception contents null"

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_c

    .line 200
    .line 201
    add-int/lit16 v0, v1, 0x258

    .line 202
    .line 203
    :goto_9
    move v3, v5

    .line 204
    goto/16 :goto_f

    .line 205
    .line 206
    :cond_c
    const-string v2, "Network unknown error"

    .line 207
    .line 208
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    const/16 v16, 0xc

    .line 213
    .line 214
    if-eqz v2, :cond_d

    .line 215
    .line 216
    add-int/lit16 v0, v1, 0x258

    .line 217
    .line 218
    :goto_a
    move/from16 v3, v16

    .line 219
    .line 220
    goto/16 :goto_f

    .line 221
    .line 222
    :cond_d
    const-string v2, "Network error,I/O exception"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_e

    .line 229
    .line 230
    add-int/lit16 v0, v1, 0x258

    .line 231
    .line 232
    const/16 v3, 0xd

    .line 233
    .line 234
    goto/16 :goto_f

    .line 235
    .line 236
    :cond_e
    const-string/jumbo v2, "web env is not support"

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    if-eqz v2, :cond_f

    .line 244
    .line 245
    add-int/lit16 v0, v1, 0x258

    .line 246
    .line 247
    const/16 v3, 0xe

    .line 248
    .line 249
    goto/16 :goto_f

    .line 250
    .line 251
    :cond_f
    const-string v2, "Network error,unknown"

    .line 252
    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_10

    .line 258
    .line 259
    add-int/lit16 v0, v1, 0x258

    .line 260
    .line 261
    goto/16 :goto_f

    .line 262
    .line 263
    :cond_10
    const-string v2, "Network error\uff0csslp exception"

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-eqz v2, :cond_11

    .line 270
    .line 271
    add-int/lit16 v0, v1, 0x258

    .line 272
    .line 273
    move v3, v4

    .line 274
    goto/16 :goto_f

    .line 275
    .line 276
    :cond_11
    const-string v2, "Cast exception, return data"

    .line 277
    .line 278
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_12

    .line 283
    .line 284
    add-int/lit16 v0, v1, 0x258

    .line 285
    .line 286
    const/16 v3, 0x11

    .line 287
    .line 288
    goto/16 :goto_f

    .line 289
    .line 290
    :cond_12
    const-string v2, "REQUEST_TIMEOUT"

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_13

    .line 297
    .line 298
    add-int/lit16 v0, v1, 0x2bc

    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_13
    const-string v2, "The server returns an exception"

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_14

    .line 309
    .line 310
    add-int/lit16 v0, v1, 0x2bc

    .line 311
    .line 312
    goto/16 :goto_1

    .line 313
    .line 314
    :cond_14
    const-string v2, "APP ALREADY INSTALLED"

    .line 315
    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-nez v2, :cond_29

    .line 321
    .line 322
    const-string v2, "Need show campaign list is NULL!"

    .line 323
    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    if-eqz v2, :cond_15

    .line 329
    .line 330
    goto/16 :goto_d

    .line 331
    .line 332
    :cond_15
    const-string v2, "load no ad"

    .line 333
    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    if-eqz v2, :cond_16

    .line 339
    .line 340
    add-int/lit16 v0, v1, 0x2bc

    .line 341
    .line 342
    :goto_b
    move v3, v9

    .line 343
    goto/16 :goto_f

    .line 344
    .line 345
    :cond_16
    const-string v2, "EXCEPTION_UNIT_NOT_FOUND_IN_APP"

    .line 346
    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    if-eqz v2, :cond_17

    .line 352
    .line 353
    add-int/lit16 v0, v1, 0x2bc

    .line 354
    .line 355
    goto/16 :goto_3

    .line 356
    .line 357
    :cond_17
    const-string v2, "EXCEPTION_UNIT_BIDDING_TYPE_ERROR"

    .line 358
    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_18

    .line 364
    .line 365
    add-int/lit16 v0, v1, 0x2bc

    .line 366
    .line 367
    goto/16 :goto_4

    .line 368
    .line 369
    :cond_18
    const-string v2, "No video campaign"

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_19

    .line 376
    .line 377
    add-int/lit16 v0, v1, 0x2bc

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_19
    const-string v2, "EXCEPTION_RETURN_EMPTY"

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    if-eqz v2, :cond_1a

    .line 388
    .line 389
    add-int/lit16 v0, v1, 0x2bc

    .line 390
    .line 391
    goto/16 :goto_6

    .line 392
    .line 393
    :cond_1a
    const-string v2, "EXCEPTION_APP_PLATFORM_ERROR"

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    move-result v2

    .line 399
    if-eqz v2, :cond_1b

    .line 400
    .line 401
    add-int/lit16 v0, v1, 0x2bc

    .line 402
    .line 403
    goto/16 :goto_7

    .line 404
    .line 405
    :cond_1b
    const-string v2, "EXCEPTION_SERVICE_REQUEST_OS_VERSION_REQUIRED"

    .line 406
    .line 407
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_1c

    .line 412
    .line 413
    add-int/lit16 v0, v1, 0x2bc

    .line 414
    .line 415
    goto/16 :goto_8

    .line 416
    .line 417
    :cond_1c
    const-string v2, "banner res load failed"

    .line 418
    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    if-eqz v2, :cond_1d

    .line 424
    .line 425
    add-int/lit16 v0, v1, 0x320

    .line 426
    .line 427
    goto/16 :goto_0

    .line 428
    .line 429
    :cond_1d
    const-string v2, "resource load timeout is tpl: false"

    .line 430
    .line 431
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_1e

    .line 436
    .line 437
    add-int/lit16 v0, v1, 0x320

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :cond_1e
    const-string v2, "resource download failed"

    .line 442
    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_1f

    .line 448
    .line 449
    add-int/lit16 v0, v1, 0x320

    .line 450
    .line 451
    goto/16 :goto_2

    .line 452
    .line 453
    :cond_1f
    const-string/jumbo v2, "temp preload success but isReady false"

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-eqz v2, :cond_20

    .line 461
    .line 462
    add-int/lit16 v0, v1, 0x320

    .line 463
    .line 464
    goto :goto_b

    .line 465
    :cond_20
    const-string/jumbo v2, "temp resource download failed"

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    if-eqz v2, :cond_21

    .line 473
    .line 474
    add-int/lit16 v0, v1, 0x320

    .line 475
    .line 476
    goto/16 :goto_3

    .line 477
    .line 478
    :cond_21
    const-string/jumbo v2, "tpl temp resource download failed"

    .line 479
    .line 480
    .line 481
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    if-eqz v2, :cond_22

    .line 486
    .line 487
    add-int/lit16 v0, v1, 0x320

    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :cond_22
    const-string v2, "resource load timeout is tpl: true"

    .line 492
    .line 493
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v2

    .line 497
    if-eqz v2, :cond_23

    .line 498
    .line 499
    add-int/lit16 v0, v1, 0x320

    .line 500
    .line 501
    goto/16 :goto_5

    .line 502
    .line 503
    :cond_23
    const-string v2, "https://"

    .line 504
    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    if-nez v2, :cond_28

    .line 510
    .line 511
    const-string v2, "http://"

    .line 512
    .line 513
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 514
    .line 515
    .line 516
    move-result v2

    .line 517
    if-eqz v2, :cond_24

    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_24
    const-string v2, "mraid resource write fail"

    .line 521
    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v2

    .line 526
    if-eqz v2, :cond_25

    .line 527
    .line 528
    add-int/lit16 v0, v1, 0x320

    .line 529
    .line 530
    goto/16 :goto_7

    .line 531
    .line 532
    :cond_25
    const-string v2, "data save failed:"

    .line 533
    .line 534
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-eqz v2, :cond_26

    .line 539
    .line 540
    add-int/lit16 v0, v1, 0x320

    .line 541
    .line 542
    goto/16 :goto_8

    .line 543
    .line 544
    :cond_26
    const-string v2, "resource load timeout"

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    if-eqz v2, :cond_27

    .line 551
    .line 552
    add-int/lit16 v0, v1, 0x320

    .line 553
    .line 554
    goto/16 :goto_9

    .line 555
    .line 556
    :cond_27
    const-string/jumbo v2, "tpl temp preload failed"

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 560
    .line 561
    .line 562
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    if-eqz v0, :cond_2b

    .line 564
    .line 565
    add-int/lit16 v0, v1, 0x320

    .line 566
    .line 567
    goto/16 :goto_a

    .line 568
    .line 569
    :cond_28
    :goto_c
    add-int/lit16 v0, v1, 0x320

    .line 570
    .line 571
    goto/16 :goto_6

    .line 572
    .line 573
    :cond_29
    :goto_d
    add-int/lit16 v0, v1, 0x2bc

    .line 574
    .line 575
    goto/16 :goto_2

    .line 576
    .line 577
    :cond_2a
    :goto_e
    add-int/lit16 v0, v1, 0x258

    .line 578
    .line 579
    goto/16 :goto_b

    .line 580
    .line 581
    :goto_f
    add-int/2addr v0, v3

    .line 582
    goto :goto_11

    .line 583
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 584
    .line 585
    .line 586
    :cond_2b
    move v0, v1

    .line 587
    :goto_11
    return v0
.end method

.method public static b(ILjava/lang/String;)I
    .locals 0

    .line 1
    add-int/lit16 p0, p0, 0x384

    .line 2
    .line 3
    return p0
.end method
