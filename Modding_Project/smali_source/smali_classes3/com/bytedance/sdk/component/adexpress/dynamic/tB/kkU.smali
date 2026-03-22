.class public Lcom/bytedance/sdk/component/adexpress/dynamic/tB/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static oJ(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)Lcom/bytedance/sdk/component/adexpress/dynamic/tB/cFZ;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v4, 0x0

    .line 3
    if-eqz p0, :cond_1d

    .line 4
    .line 5
    if-eqz p1, :cond_1d

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Rl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->jr()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    const/4 v7, -0x1

    .line 23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    sparse-switch v8, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :sswitch_0
    const-string v8, "29"

    .line 33
    .line 34
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    if-nez v8, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    const/16 v7, 0x15

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :sswitch_1
    const-string v8, "25"

    .line 47
    .line 48
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_2

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_2
    const/16 v7, 0x14

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_2
    const-string v8, "24"

    .line 61
    .line 62
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_3
    const/16 v7, 0x13

    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :sswitch_3
    const-string v8, "23"

    .line 75
    .line 76
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    if-nez v8, :cond_4

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    const/16 v7, 0x12

    .line 85
    .line 86
    goto/16 :goto_0

    .line 87
    .line 88
    :sswitch_4
    const-string v8, "22"

    .line 89
    .line 90
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-nez v8, :cond_5

    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_5
    const/16 v7, 0x11

    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :sswitch_5
    const-string v8, "20"

    .line 103
    .line 104
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_6

    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_6
    const/16 v7, 0x10

    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :sswitch_6
    const-string v8, "18"

    .line 117
    .line 118
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-nez v8, :cond_7

    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_7
    const/16 v7, 0xf

    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :sswitch_7
    const-string v8, "17"

    .line 131
    .line 132
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-nez v8, :cond_8

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_8
    const/16 v7, 0xe

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :sswitch_8
    const-string v8, "16"

    .line 145
    .line 146
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-nez v8, :cond_9

    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_9
    const/16 v7, 0xd

    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :sswitch_9
    const-string v8, "14"

    .line 159
    .line 160
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    if-nez v8, :cond_a

    .line 165
    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_a
    const/16 v7, 0xc

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :sswitch_a
    const-string v8, "13"

    .line 173
    .line 174
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_b

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_b
    const/16 v7, 0xb

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :sswitch_b
    const-string v8, "12"

    .line 187
    .line 188
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-nez v8, :cond_c

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_c
    const/16 v7, 0xa

    .line 197
    .line 198
    goto/16 :goto_0

    .line 199
    .line 200
    :sswitch_c
    const-string v8, "11"

    .line 201
    .line 202
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_d

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_d
    const/16 v7, 0x9

    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :sswitch_d
    const-string v8, "10"

    .line 215
    .line 216
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v8

    .line 220
    if-nez v8, :cond_e

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_e
    const/16 v7, 0x8

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :sswitch_e
    const-string v8, "9"

    .line 229
    .line 230
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-nez v8, :cond_f

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_f
    const/4 v7, 0x7

    .line 238
    goto :goto_0

    .line 239
    :sswitch_f
    const-string v8, "8"

    .line 240
    .line 241
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v8

    .line 245
    if-nez v8, :cond_10

    .line 246
    .line 247
    goto :goto_0

    .line 248
    :cond_10
    const/4 v7, 0x6

    .line 249
    goto :goto_0

    .line 250
    :sswitch_10
    const-string v8, "7"

    .line 251
    .line 252
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    if-nez v8, :cond_11

    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_11
    const/4 v7, 0x5

    .line 260
    goto :goto_0

    .line 261
    :sswitch_11
    const-string v8, "6"

    .line 262
    .line 263
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v8

    .line 267
    if-nez v8, :cond_12

    .line 268
    .line 269
    goto :goto_0

    .line 270
    :cond_12
    const/4 v7, 0x4

    .line 271
    goto :goto_0

    .line 272
    :sswitch_12
    const-string v8, "5"

    .line 273
    .line 274
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-nez v8, :cond_13

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_13
    const/4 v7, 0x3

    .line 282
    goto :goto_0

    .line 283
    :sswitch_13
    const-string v8, "2"

    .line 284
    .line 285
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v8

    .line 289
    if-nez v8, :cond_14

    .line 290
    .line 291
    goto :goto_0

    .line 292
    :cond_14
    const/4 v7, 0x2

    .line 293
    goto :goto_0

    .line 294
    :sswitch_14
    const-string v8, "1"

    .line 295
    .line 296
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v8

    .line 300
    if-nez v8, :cond_15

    .line 301
    .line 302
    goto :goto_0

    .line 303
    :cond_15
    move v7, v0

    .line 304
    goto :goto_0

    .line 305
    :sswitch_15
    const-string v8, "0"

    .line 306
    .line 307
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    if-nez v8, :cond_16

    .line 312
    .line 313
    goto :goto_0

    .line 314
    :cond_16
    const/4 v7, 0x0

    .line 315
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 316
    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :pswitch_0
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ba;

    .line 321
    .line 322
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->oJ()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->ZYk()I

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->ex()I

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->cFZ()Lorg/json/JSONObject;

    .line 335
    .line 336
    .line 337
    move-result-object v7

    .line 338
    move-object v0, v8

    .line 339
    move-object v1, p0

    .line 340
    move-object v2, p1

    .line 341
    move-object v3, p2

    .line 342
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;IIILorg/json/JSONObject;)V

    .line 343
    .line 344
    .line 345
    move-object v4, v8

    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :pswitch_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-eqz v0, :cond_1d

    .line 353
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 355
    .line 356
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v4, "static/lotties/gesture-slide.json"

    .line 363
    .line 364
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 372
    .line 373
    const-string v5, "25"

    .line 374
    .line 375
    move-object v0, v6

    .line 376
    move-object v1, p0

    .line 377
    move-object v2, p1

    .line 378
    move-object v3, p2

    .line 379
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    :goto_1
    move-object v4, v6

    .line 383
    goto/16 :goto_2

    .line 384
    .line 385
    :pswitch_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-eqz v0, :cond_17

    .line 390
    .line 391
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ;

    .line 392
    .line 393
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_2

    .line 397
    .line 398
    :cond_17
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-nez v0, :cond_18

    .line 403
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    .line 405
    .line 406
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v4, "swiper_up_star.json"

    .line 413
    .line 414
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    move-object v4, v0

    .line 422
    :cond_18
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 423
    .line 424
    const-string v5, "24"

    .line 425
    .line 426
    move-object v0, v6

    .line 427
    move-object v1, p0

    .line 428
    move-object v2, p1

    .line 429
    move-object v3, p2

    .line 430
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    goto :goto_1

    .line 434
    :pswitch_3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    if-eqz v0, :cond_1d

    .line 439
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v4, "static/lotties/202327swiper-up-star/click.json"

    .line 449
    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 458
    .line 459
    const-string v5, "23"

    .line 460
    .line 461
    move-object v0, v6

    .line 462
    move-object v1, p0

    .line 463
    move-object v2, p1

    .line 464
    move-object v3, p2

    .line 465
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    goto :goto_1

    .line 469
    :pswitch_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-eqz v0, :cond_19

    .line 474
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    const-string v4, "static/lotties/202327swiper-up-star/index.json"

    .line 484
    .line 485
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v4

    .line 492
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 493
    .line 494
    const-string v5, "22"

    .line 495
    .line 496
    move-object v0, v6

    .line 497
    move-object v1, p0

    .line 498
    move-object v2, p1

    .line 499
    move-object v3, p2

    .line 500
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_1

    .line 504
    :cond_19
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Ry;

    .line 505
    .line 506
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Ry;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :pswitch_5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_1a

    .line 516
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 518
    .line 519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string v4, "static/lotties/glass-swipe/glass-swipe.json"

    .line 526
    .line 527
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v4

    .line 534
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 535
    .line 536
    const-string v5, "20"

    .line 537
    .line 538
    move-object v0, v6

    .line 539
    move-object v1, p0

    .line 540
    move-object v2, p1

    .line 541
    move-object v3, p2

    .line 542
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_1

    .line 546
    .line 547
    :cond_1a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    if-nez v0, :cond_1b

    .line 552
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    const-string v4, "brush_mask.json"

    .line 562
    .line 563
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    move-object v4, v0

    .line 571
    :cond_1b
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;

    .line 572
    .line 573
    const-string v5, "20"

    .line 574
    .line 575
    move-object v0, v6

    .line 576
    move-object v1, p0

    .line 577
    move-object v2, p1

    .line 578
    move-object v3, p2

    .line 579
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/dLZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_1

    .line 583
    .line 584
    :pswitch_6
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;

    .line 585
    .line 586
    move-object v0, v6

    .line 587
    move-object v1, p0

    .line 588
    move-object v2, p1

    .line 589
    move-object v3, p2

    .line 590
    move-object v4, v5

    .line 591
    move-object v5, p3

    .line 592
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/RZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_1

    .line 596
    .line 597
    :pswitch_7
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;

    .line 598
    .line 599
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_2

    .line 603
    .line 604
    :pswitch_8
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/eZI;

    .line 605
    .line 606
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/eZI;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_2

    .line 610
    .line 611
    :pswitch_9
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ex;

    .line 612
    .line 613
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_2

    .line 617
    .line 618
    :pswitch_a
    new-instance v9, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/awB;

    .line 619
    .line 620
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->oJ()I

    .line 621
    .line 622
    .line 623
    move-result v6

    .line 624
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->ZYk()I

    .line 625
    .line 626
    .line 627
    move-result v7

    .line 628
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->ex()I

    .line 629
    .line 630
    .line 631
    move-result v8

    .line 632
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/kkU;->cFZ()Lorg/json/JSONObject;

    .line 633
    .line 634
    .line 635
    move-result-object v10

    .line 636
    move-object v0, v9

    .line 637
    move-object v1, p0

    .line 638
    move-object v2, p1

    .line 639
    move-object v3, p2

    .line 640
    move-object v4, v5

    .line 641
    move v5, v6

    .line 642
    move v6, v7

    .line 643
    move v7, v8

    .line 644
    move-object v8, v10

    .line 645
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/awB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;Ljava/lang/String;IIILorg/json/JSONObject;)V

    .line 646
    .line 647
    .line 648
    move-object v4, v9

    .line 649
    goto :goto_2

    .line 650
    :pswitch_b
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/PiB;

    .line 651
    .line 652
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/PiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 653
    .line 654
    .line 655
    goto :goto_2

    .line 656
    :pswitch_c
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/BTZ;

    .line 657
    .line 658
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/BTZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 659
    .line 660
    .line 661
    goto :goto_2

    .line 662
    :pswitch_d
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/WcQ;

    .line 663
    .line 664
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/WcQ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 665
    .line 666
    .line 667
    goto :goto_2

    .line 668
    :pswitch_e
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Qu()I

    .line 669
    .line 670
    .line 671
    move-result v4

    .line 672
    if-ne v4, v0, :cond_1c

    .line 673
    .line 674
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;

    .line 675
    .line 676
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->Dex()I

    .line 677
    .line 678
    .line 679
    move-result v0

    .line 680
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/si;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;I)V

    .line 681
    .line 682
    .line 683
    goto :goto_2

    .line 684
    :cond_1c
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/eZI;

    .line 685
    .line 686
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/eZI;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 687
    .line 688
    .line 689
    goto :goto_2

    .line 690
    :pswitch_f
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ZYk;

    .line 691
    .line 692
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 693
    .line 694
    .line 695
    goto :goto_2

    .line 696
    :pswitch_10
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;

    .line 697
    .line 698
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/tB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 699
    .line 700
    .line 701
    goto :goto_2

    .line 702
    :pswitch_11
    new-instance v4, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Pfn;

    .line 703
    .line 704
    invoke-direct {v4, p0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/tB/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;)V

    .line 705
    .line 706
    .line 707
    :cond_1d
    :goto_2
    return-object v4

    .line 708
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_15
        0x31 -> :sswitch_14
        0x32 -> :sswitch_13
        0x35 -> :sswitch_12
        0x36 -> :sswitch_11
        0x37 -> :sswitch_10
        0x38 -> :sswitch_f
        0x39 -> :sswitch_e
        0x61f -> :sswitch_d
        0x620 -> :sswitch_c
        0x621 -> :sswitch_b
        0x622 -> :sswitch_a
        0x623 -> :sswitch_9
        0x625 -> :sswitch_8
        0x626 -> :sswitch_7
        0x627 -> :sswitch_6
        0x63e -> :sswitch_5
        0x640 -> :sswitch_4
        0x641 -> :sswitch_3
        0x642 -> :sswitch_2
        0x643 -> :sswitch_1
        0x647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
