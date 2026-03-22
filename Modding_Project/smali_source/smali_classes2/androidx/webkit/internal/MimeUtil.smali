.class Landroidx/webkit/internal/MimeUtil;
.super Ljava/lang/Object;
.source "MimeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getMimeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-static {p0}, Landroidx/webkit/internal/MimeUtil;->guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method private static guessHardcodedMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x2e

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    return-object v4

    .line 13
    :cond_0
    add-int/2addr v2, v0

    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sparse-switch v2, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    :goto_0
    move v0, v3

    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string/jumbo v0, "xhtml"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-nez p0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/16 v0, 0x31

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v0, "shtml"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/16 v0, 0x30

    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_2
    const-string v0, "pjpeg"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/16 v0, 0x2f

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :sswitch_3
    const-string v0, "mhtml"

    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    move v0, v1

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :sswitch_4
    const-string v0, "ehtml"

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-nez p0, :cond_5

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_5
    const/16 v0, 0x2d

    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :sswitch_5
    const-string/jumbo v0, "xhtm"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    const/16 v0, 0x2c

    .line 111
    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_6
    const-string/jumbo v0, "woff"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-nez p0, :cond_7

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    const/16 v0, 0x2b

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :sswitch_7
    const-string/jumbo v0, "webp"

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    if-nez p0, :cond_8

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_8
    const/16 v0, 0x2a

    .line 139
    .line 140
    goto/16 :goto_1

    .line 141
    .line 142
    :sswitch_8
    const-string/jumbo v0, "webm"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    const/16 v0, 0x29

    .line 153
    .line 154
    goto/16 :goto_1

    .line 155
    .line 156
    :sswitch_9
    const-string/jumbo v0, "wasm"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_a

    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_a
    const/16 v0, 0x28

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :sswitch_a
    const-string/jumbo v0, "tiff"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_b

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_b
    const/16 v0, 0x27

    .line 183
    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :sswitch_b
    const-string v0, "svgz"

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p0

    .line 192
    if-nez p0, :cond_c

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :cond_c
    const/16 v0, 0x26

    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :sswitch_c
    const-string v0, "shtm"

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-nez p0, :cond_d

    .line 207
    .line 208
    goto/16 :goto_0

    .line 209
    .line 210
    :cond_d
    const/16 v0, 0x25

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :sswitch_d
    const-string v0, "opus"

    .line 215
    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    if-nez p0, :cond_e

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_e
    const/16 v0, 0x24

    .line 225
    .line 226
    goto/16 :goto_1

    .line 227
    .line 228
    :sswitch_e
    const-string v0, "mpeg"

    .line 229
    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-nez p0, :cond_f

    .line 235
    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_f
    const/16 v0, 0x23

    .line 239
    .line 240
    goto/16 :goto_1

    .line 241
    .line 242
    :sswitch_f
    const-string v0, "json"

    .line 243
    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    if-nez p0, :cond_10

    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_10
    const/16 v0, 0x22

    .line 253
    .line 254
    goto/16 :goto_1

    .line 255
    .line 256
    :sswitch_10
    const-string v0, "jpeg"

    .line 257
    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result p0

    .line 262
    if-nez p0, :cond_11

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_11
    const/16 v0, 0x21

    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :sswitch_11
    const-string v0, "jfif"

    .line 271
    .line 272
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result p0

    .line 276
    if-nez p0, :cond_12

    .line 277
    .line 278
    goto/16 :goto_0

    .line 279
    .line 280
    :cond_12
    const/16 v0, 0x20

    .line 281
    .line 282
    goto/16 :goto_1

    .line 283
    .line 284
    :sswitch_12
    const-string v0, "html"

    .line 285
    .line 286
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-nez p0, :cond_13

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_13
    const/16 v0, 0x1f

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :sswitch_13
    const-string v0, "flac"

    .line 299
    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p0

    .line 304
    if-nez p0, :cond_14

    .line 305
    .line 306
    goto/16 :goto_0

    .line 307
    .line 308
    :cond_14
    const/16 v0, 0x1e

    .line 309
    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :sswitch_14
    const-string v0, "apng"

    .line 313
    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p0

    .line 318
    if-nez p0, :cond_15

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_15
    const/16 v0, 0x1d

    .line 323
    .line 324
    goto/16 :goto_1

    .line 325
    .line 326
    :sswitch_15
    const-string/jumbo v0, "zip"

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    if-nez p0, :cond_16

    .line 334
    .line 335
    goto/16 :goto_0

    .line 336
    .line 337
    :cond_16
    const/16 v0, 0x1c

    .line 338
    .line 339
    goto/16 :goto_1

    .line 340
    .line 341
    :sswitch_16
    const-string/jumbo v0, "xml"

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result p0

    .line 348
    if-nez p0, :cond_17

    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :cond_17
    const/16 v0, 0x1b

    .line 353
    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :sswitch_17
    const-string/jumbo v0, "xht"

    .line 357
    .line 358
    .line 359
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    if-nez p0, :cond_18

    .line 364
    .line 365
    goto/16 :goto_0

    .line 366
    .line 367
    :cond_18
    const/16 v0, 0x1a

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_18
    const-string/jumbo v0, "wav"

    .line 372
    .line 373
    .line 374
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result p0

    .line 378
    if-nez p0, :cond_19

    .line 379
    .line 380
    goto/16 :goto_0

    .line 381
    .line 382
    :cond_19
    const/16 v0, 0x19

    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :sswitch_19
    const-string/jumbo v0, "tif"

    .line 387
    .line 388
    .line 389
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result p0

    .line 393
    if-nez p0, :cond_1a

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_1a
    const/16 v0, 0x18

    .line 398
    .line 399
    goto/16 :goto_1

    .line 400
    .line 401
    :sswitch_1a
    const-string v0, "tgz"

    .line 402
    .line 403
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    if-nez p0, :cond_1b

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_1b
    const/16 v0, 0x17

    .line 412
    .line 413
    goto/16 :goto_1

    .line 414
    .line 415
    :sswitch_1b
    const-string v0, "svg"

    .line 416
    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    if-nez p0, :cond_1c

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_1c
    const/16 v0, 0x16

    .line 426
    .line 427
    goto/16 :goto_1

    .line 428
    .line 429
    :sswitch_1c
    const-string v0, "png"

    .line 430
    .line 431
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result p0

    .line 435
    if-nez p0, :cond_1d

    .line 436
    .line 437
    goto/16 :goto_0

    .line 438
    .line 439
    :cond_1d
    const/16 v0, 0x15

    .line 440
    .line 441
    goto/16 :goto_1

    .line 442
    .line 443
    :sswitch_1d
    const-string v0, "pjp"

    .line 444
    .line 445
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result p0

    .line 449
    if-nez p0, :cond_1e

    .line 450
    .line 451
    goto/16 :goto_0

    .line 452
    .line 453
    :cond_1e
    const/16 v0, 0x14

    .line 454
    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :sswitch_1e
    const-string v0, "pdf"

    .line 458
    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p0

    .line 463
    if-nez p0, :cond_1f

    .line 464
    .line 465
    goto/16 :goto_0

    .line 466
    .line 467
    :cond_1f
    const/16 v0, 0x13

    .line 468
    .line 469
    goto/16 :goto_1

    .line 470
    .line 471
    :sswitch_1f
    const-string v0, "ogv"

    .line 472
    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p0

    .line 477
    if-nez p0, :cond_20

    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :cond_20
    const/16 v0, 0x12

    .line 482
    .line 483
    goto/16 :goto_1

    .line 484
    .line 485
    :sswitch_20
    const-string v0, "ogm"

    .line 486
    .line 487
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result p0

    .line 491
    if-nez p0, :cond_21

    .line 492
    .line 493
    goto/16 :goto_0

    .line 494
    .line 495
    :cond_21
    const/16 v0, 0x11

    .line 496
    .line 497
    goto/16 :goto_1

    .line 498
    .line 499
    :sswitch_21
    const-string v0, "ogg"

    .line 500
    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result p0

    .line 505
    if-nez p0, :cond_22

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :cond_22
    const/16 v0, 0x10

    .line 510
    .line 511
    goto/16 :goto_1

    .line 512
    .line 513
    :sswitch_22
    const-string v0, "oga"

    .line 514
    .line 515
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    .line 517
    .line 518
    move-result p0

    .line 519
    if-nez p0, :cond_23

    .line 520
    .line 521
    goto/16 :goto_0

    .line 522
    .line 523
    :cond_23
    const/16 v0, 0xf

    .line 524
    .line 525
    goto/16 :goto_1

    .line 526
    .line 527
    :sswitch_23
    const-string v0, "mpg"

    .line 528
    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 530
    .line 531
    .line 532
    move-result p0

    .line 533
    if-nez p0, :cond_24

    .line 534
    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_24
    const/16 v0, 0xe

    .line 538
    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :sswitch_24
    const-string v0, "mp4"

    .line 542
    .line 543
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result p0

    .line 547
    if-nez p0, :cond_25

    .line 548
    .line 549
    goto/16 :goto_0

    .line 550
    .line 551
    :cond_25
    const/16 v0, 0xd

    .line 552
    .line 553
    goto/16 :goto_1

    .line 554
    .line 555
    :sswitch_25
    const-string v0, "mp3"

    .line 556
    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result p0

    .line 561
    if-nez p0, :cond_26

    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :cond_26
    const/16 v0, 0xc

    .line 566
    .line 567
    goto/16 :goto_1

    .line 568
    .line 569
    :sswitch_26
    const-string v0, "mjs"

    .line 570
    .line 571
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result p0

    .line 575
    if-nez p0, :cond_27

    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :cond_27
    const/16 v0, 0xb

    .line 580
    .line 581
    goto/16 :goto_1

    .line 582
    .line 583
    :sswitch_27
    const-string v0, "mht"

    .line 584
    .line 585
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result p0

    .line 589
    if-nez p0, :cond_28

    .line 590
    .line 591
    goto/16 :goto_0

    .line 592
    .line 593
    :cond_28
    const/16 v0, 0xa

    .line 594
    .line 595
    goto/16 :goto_1

    .line 596
    .line 597
    :sswitch_28
    const-string v0, "m4v"

    .line 598
    .line 599
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    if-nez p0, :cond_29

    .line 604
    .line 605
    goto/16 :goto_0

    .line 606
    .line 607
    :cond_29
    const/16 v0, 0x9

    .line 608
    .line 609
    goto/16 :goto_1

    .line 610
    .line 611
    :sswitch_29
    const-string v0, "m4a"

    .line 612
    .line 613
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p0

    .line 617
    if-nez p0, :cond_2a

    .line 618
    .line 619
    goto/16 :goto_0

    .line 620
    .line 621
    :cond_2a
    const/16 v0, 0x8

    .line 622
    .line 623
    goto :goto_1

    .line 624
    :sswitch_2a
    const-string v0, "jpg"

    .line 625
    .line 626
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result p0

    .line 630
    if-nez p0, :cond_2b

    .line 631
    .line 632
    goto/16 :goto_0

    .line 633
    .line 634
    :cond_2b
    const/4 v0, 0x7

    .line 635
    goto :goto_1

    .line 636
    :sswitch_2b
    const-string v0, "ico"

    .line 637
    .line 638
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result p0

    .line 642
    if-nez p0, :cond_2c

    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :cond_2c
    const/4 v0, 0x6

    .line 647
    goto :goto_1

    .line 648
    :sswitch_2c
    const-string v0, "htm"

    .line 649
    .line 650
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result p0

    .line 654
    if-nez p0, :cond_2d

    .line 655
    .line 656
    goto/16 :goto_0

    .line 657
    .line 658
    :cond_2d
    const/4 v0, 0x5

    .line 659
    goto :goto_1

    .line 660
    :sswitch_2d
    const-string v0, "gif"

    .line 661
    .line 662
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 663
    .line 664
    .line 665
    move-result p0

    .line 666
    if-nez p0, :cond_2e

    .line 667
    .line 668
    goto/16 :goto_0

    .line 669
    .line 670
    :cond_2e
    const/4 v0, 0x4

    .line 671
    goto :goto_1

    .line 672
    :sswitch_2e
    const-string v0, "css"

    .line 673
    .line 674
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p0

    .line 678
    if-nez p0, :cond_2f

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :cond_2f
    const/4 v0, 0x3

    .line 683
    goto :goto_1

    .line 684
    :sswitch_2f
    const-string v0, "bmp"

    .line 685
    .line 686
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    move-result p0

    .line 690
    if-nez p0, :cond_30

    .line 691
    .line 692
    goto/16 :goto_0

    .line 693
    .line 694
    :cond_30
    const/4 v0, 0x2

    .line 695
    goto :goto_1

    .line 696
    :sswitch_30
    const-string v1, "js"

    .line 697
    .line 698
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result p0

    .line 702
    if-nez p0, :cond_32

    .line 703
    .line 704
    goto/16 :goto_0

    .line 705
    .line 706
    :sswitch_31
    const-string v0, "gz"

    .line 707
    .line 708
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 709
    .line 710
    .line 711
    move-result p0

    .line 712
    if-nez p0, :cond_31

    .line 713
    .line 714
    goto/16 :goto_0

    .line 715
    .line 716
    :cond_31
    const/4 v0, 0x0

    .line 717
    :cond_32
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 718
    .line 719
    .line 720
    return-object v4

    .line 721
    :pswitch_0
    const-string p0, "application/font-woff"

    .line 722
    .line 723
    return-object p0

    .line 724
    :pswitch_1
    const-string p0, "image/webp"

    .line 725
    .line 726
    return-object p0

    .line 727
    :pswitch_2
    const-string/jumbo p0, "video/webm"

    .line 728
    .line 729
    .line 730
    return-object p0

    .line 731
    :pswitch_3
    const-string p0, "application/wasm"

    .line 732
    .line 733
    return-object p0

    .line 734
    :pswitch_4
    const-string p0, "application/json"

    .line 735
    .line 736
    return-object p0

    .line 737
    :pswitch_5
    const-string p0, "audio/flac"

    .line 738
    .line 739
    return-object p0

    .line 740
    :pswitch_6
    const-string p0, "image/apng"

    .line 741
    .line 742
    return-object p0

    .line 743
    :pswitch_7
    const-string p0, "application/zip"

    .line 744
    .line 745
    return-object p0

    .line 746
    :pswitch_8
    const-string p0, "text/xml"

    .line 747
    .line 748
    return-object p0

    .line 749
    :pswitch_9
    const-string p0, "application/xhtml+xml"

    .line 750
    .line 751
    return-object p0

    .line 752
    :pswitch_a
    const-string p0, "audio/wav"

    .line 753
    .line 754
    return-object p0

    .line 755
    :pswitch_b
    const-string p0, "image/tiff"

    .line 756
    .line 757
    return-object p0

    .line 758
    :pswitch_c
    const-string p0, "image/svg+xml"

    .line 759
    .line 760
    return-object p0

    .line 761
    :pswitch_d
    const-string p0, "image/png"

    .line 762
    .line 763
    return-object p0

    .line 764
    :pswitch_e
    const-string p0, "application/pdf"

    .line 765
    .line 766
    return-object p0

    .line 767
    :pswitch_f
    const-string/jumbo p0, "video/ogg"

    .line 768
    .line 769
    .line 770
    return-object p0

    .line 771
    :pswitch_10
    const-string p0, "audio/ogg"

    .line 772
    .line 773
    return-object p0

    .line 774
    :pswitch_11
    const-string/jumbo p0, "video/mpeg"

    .line 775
    .line 776
    .line 777
    return-object p0

    .line 778
    :pswitch_12
    const-string p0, "audio/mpeg"

    .line 779
    .line 780
    return-object p0

    .line 781
    :pswitch_13
    const-string p0, "multipart/related"

    .line 782
    .line 783
    return-object p0

    .line 784
    :pswitch_14
    const-string/jumbo p0, "video/mp4"

    .line 785
    .line 786
    .line 787
    return-object p0

    .line 788
    :pswitch_15
    const-string p0, "audio/x-m4a"

    .line 789
    .line 790
    return-object p0

    .line 791
    :pswitch_16
    const-string p0, "image/jpeg"

    .line 792
    .line 793
    return-object p0

    .line 794
    :pswitch_17
    const-string p0, "image/x-icon"

    .line 795
    .line 796
    return-object p0

    .line 797
    :pswitch_18
    const-string p0, "text/html"

    .line 798
    .line 799
    return-object p0

    .line 800
    :pswitch_19
    const-string p0, "image/gif"

    .line 801
    .line 802
    return-object p0

    .line 803
    :pswitch_1a
    const-string p0, "text/css"

    .line 804
    .line 805
    return-object p0

    .line 806
    :pswitch_1b
    const-string p0, "image/bmp"

    .line 807
    .line 808
    return-object p0

    .line 809
    :pswitch_1c
    const-string p0, "text/javascript"

    .line 810
    .line 811
    return-object p0

    .line 812
    :pswitch_1d
    const-string p0, "application/gzip"

    .line 813
    .line 814
    return-object p0

    .line 815
    :sswitch_data_0
    .sparse-switch
        0xcf3 -> :sswitch_31
        0xd49 -> :sswitch_30
        0x17d85 -> :sswitch_2f
        0x18203 -> :sswitch_2e
        0x18fc4 -> :sswitch_2d
        0x194e1 -> :sswitch_2c
        0x19695 -> :sswitch_2b
        0x19be1 -> :sswitch_2a
        0x19fda -> :sswitch_29
        0x19fef -> :sswitch_28
        0x1a639 -> :sswitch_27
        0x1a676 -> :sswitch_26
        0x1a6f0 -> :sswitch_25
        0x1a6f1 -> :sswitch_24
        0x1a724 -> :sswitch_23
        0x1ad89 -> :sswitch_22
        0x1ad8f -> :sswitch_21
        0x1ad95 -> :sswitch_20
        0x1ad9e -> :sswitch_1f
        0x1b0f2 -> :sswitch_1e
        0x1b1b6 -> :sswitch_1d
        0x1b229 -> :sswitch_1c
        0x1be64 -> :sswitch_1b
        0x1c067 -> :sswitch_1a
        0x1c091 -> :sswitch_19
        0x1caec -> :sswitch_18
        0x1cf84 -> :sswitch_17
        0x1d017 -> :sswitch_16
        0x1d721 -> :sswitch_15
        0x2dca28 -> :sswitch_14
        0x2fff68 -> :sswitch_13
        0x3107ab -> :sswitch_12
        0x31bb59 -> :sswitch_11
        0x31e068 -> :sswitch_10
        0x31ece8 -> :sswitch_f
        0x333d85 -> :sswitch_e
        0x34283f -> :sswitch_d
        0x35db8e -> :sswitch_c
        0x360e96 -> :sswitch_b
        0x3651f5 -> :sswitch_a
        0x3792a4 -> :sswitch_9
        0x379f99 -> :sswitch_8
        0x379f9c -> :sswitch_7
        0x37c598 -> :sswitch_6
        0x382169 -> :sswitch_5
        0x5c04d90 -> :sswitch_4
        0x6310998 -> :sswitch_3
        0x65c28d8 -> :sswitch_2
        0x685969e -> :sswitch_1
        0x6cc0c23 -> :sswitch_0
    .end sparse-switch

    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_1c
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_16
        :pswitch_d
        :pswitch_c
        :pswitch_1d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_4
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
        :pswitch_18
        :pswitch_13
        :pswitch_16
        :pswitch_18
        :pswitch_9
    .end packed-switch
.end method
