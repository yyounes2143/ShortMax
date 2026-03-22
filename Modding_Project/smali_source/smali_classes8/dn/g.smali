.class public final Ldn/g;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn/g$b;,
        Ldn/g$m;,
        Ldn/g$k;,
        Ldn/g$c;,
        Ldn/g$d;,
        Ldn/g$f;,
        Ldn/g$j;,
        Ldn/g$a;,
        Ldn/g$h;,
        Ldn/g$e;,
        Ldn/g$i;,
        Ldn/g$l;,
        Ldn/g$g;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field private static final c:Ljava/lang/Object;

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Ldn/g;->a:[B

    .line 8
    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Ldn/g;->b:[F

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ldn/g;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    sput-object v0, Ldn/g;->d:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static A([BII)Ldn/g$l;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ldn/g;->B([BII)Ldn/g$l;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static B([BII)Ldn/g$l;
    .locals 1

    .line 1
    new-instance v0, Ldn/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ldn/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    new-instance v0, Ldn/g$l;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1, p2}, Ldn/g$l;-><init>(IIZ)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static C([BII)Ldn/g$m;
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Ldn/g;->D([BII)Ldn/g$m;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static D([BII)Ldn/g$m;
    .locals 32

    .line 1
    new-instance v0, Ldn/h;

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Ldn/h;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ldn/h;->f(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0, v1}, Ldn/h;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v0, v1}, Ldn/h;->f(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v2, 0x56

    .line 31
    .line 32
    const/16 v7, 0x2c

    .line 33
    .line 34
    const/16 v8, 0xf4

    .line 35
    .line 36
    const/16 v9, 0x7a

    .line 37
    .line 38
    const/16 v10, 0x6e

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    const/16 v12, 0x10

    .line 42
    .line 43
    const/4 v13, 0x1

    .line 44
    const/16 v15, 0x64

    .line 45
    .line 46
    if-eq v3, v15, :cond_1

    .line 47
    .line 48
    if-eq v3, v10, :cond_1

    .line 49
    .line 50
    if-eq v3, v9, :cond_1

    .line 51
    .line 52
    if-eq v3, v8, :cond_1

    .line 53
    .line 54
    if-eq v3, v7, :cond_1

    .line 55
    .line 56
    const/16 v14, 0x53

    .line 57
    .line 58
    if-eq v3, v14, :cond_1

    .line 59
    .line 60
    if-eq v3, v2, :cond_1

    .line 61
    .line 62
    const/16 v14, 0x76

    .line 63
    .line 64
    if-eq v3, v14, :cond_1

    .line 65
    .line 66
    const/16 v14, 0x80

    .line 67
    .line 68
    if-eq v3, v14, :cond_1

    .line 69
    .line 70
    const/16 v14, 0x8a

    .line 71
    .line 72
    if-ne v3, v14, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v14, v13

    .line 76
    const/16 v16, 0x0

    .line 77
    .line 78
    const/16 v17, 0x0

    .line 79
    .line 80
    const/16 v18, 0x0

    .line 81
    .line 82
    goto :goto_5

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-ne v14, v11, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 90
    .line 91
    .line 92
    move-result v16

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const/16 v16, 0x0

    .line 95
    .line 96
    :goto_1
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 97
    .line 98
    .line 99
    move-result v17

    .line 100
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 101
    .line 102
    .line 103
    move-result v18

    .line 104
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 108
    .line 109
    .line 110
    move-result v19

    .line 111
    if-eqz v19, :cond_6

    .line 112
    .line 113
    if-eq v14, v11, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    const/16 v19, 0xc

    .line 117
    .line 118
    move/from16 v1, v19

    .line 119
    .line 120
    :goto_2
    const/4 v8, 0x0

    .line 121
    :goto_3
    if-ge v8, v1, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 124
    .line 125
    .line 126
    move-result v19

    .line 127
    if-eqz v19, :cond_5

    .line 128
    .line 129
    const/4 v9, 0x6

    .line 130
    if-ge v8, v9, :cond_4

    .line 131
    .line 132
    move v9, v12

    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v9, 0x40

    .line 135
    .line 136
    :goto_4
    invoke-static {v0, v9}, Ldn/g;->J(Ldn/h;I)V

    .line 137
    .line 138
    .line 139
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 140
    .line 141
    const/16 v9, 0x7a

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/lit8 v1, v1, 0x4

    .line 149
    .line 150
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    if-nez v9, :cond_7

    .line 155
    .line 156
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    add-int/lit8 v8, v8, 0x4

    .line 161
    .line 162
    move/from16 v21, v3

    .line 163
    .line 164
    move/from16 v24, v8

    .line 165
    .line 166
    :goto_6
    const/16 v25, 0x0

    .line 167
    .line 168
    goto :goto_8

    .line 169
    :cond_7
    if-ne v9, v13, :cond_9

    .line 170
    .line 171
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-virtual {v0}, Ldn/h;->h()I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Ldn/h;->h()I

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    move/from16 v21, v3

    .line 186
    .line 187
    int-to-long v2, v10

    .line 188
    move/from16 v24, v8

    .line 189
    .line 190
    const/4 v10, 0x0

    .line 191
    :goto_7
    int-to-long v7, v10

    .line 192
    cmp-long v7, v7, v2

    .line 193
    .line 194
    if-gez v7, :cond_8

    .line 195
    .line 196
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 197
    .line 198
    .line 199
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_8
    move/from16 v25, v24

    .line 203
    .line 204
    const/16 v24, 0x0

    .line 205
    .line 206
    goto :goto_8

    .line 207
    :cond_9
    move/from16 v21, v3

    .line 208
    .line 209
    const/16 v24, 0x0

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :goto_8
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 220
    .line 221
    .line 222
    move-result v2

    .line 223
    add-int/2addr v2, v13

    .line 224
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    add-int/2addr v3, v13

    .line 229
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 230
    .line 231
    .line 232
    move-result v26

    .line 233
    rsub-int/lit8 v8, v26, 0x2

    .line 234
    .line 235
    mul-int/2addr v8, v3

    .line 236
    if-nez v26, :cond_a

    .line 237
    .line 238
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 239
    .line 240
    .line 241
    :cond_a
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 242
    .line 243
    .line 244
    mul-int/2addr v2, v12

    .line 245
    mul-int/2addr v8, v12

    .line 246
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_e

    .line 251
    .line 252
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 257
    .line 258
    .line 259
    move-result v27

    .line 260
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 261
    .line 262
    .line 263
    move-result v28

    .line 264
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 265
    .line 266
    .line 267
    move-result v29

    .line 268
    if-nez v14, :cond_b

    .line 269
    .line 270
    rsub-int/lit8 v14, v26, 0x2

    .line 271
    .line 272
    move/from16 v30, v13

    .line 273
    .line 274
    goto :goto_b

    .line 275
    :cond_b
    if-ne v14, v11, :cond_c

    .line 276
    .line 277
    move/from16 v30, v13

    .line 278
    .line 279
    goto :goto_9

    .line 280
    :cond_c
    const/16 v30, 0x2

    .line 281
    .line 282
    :goto_9
    if-ne v14, v13, :cond_d

    .line 283
    .line 284
    const/4 v14, 0x2

    .line 285
    goto :goto_a

    .line 286
    :cond_d
    move v14, v13

    .line 287
    :goto_a
    rsub-int/lit8 v31, v26, 0x2

    .line 288
    .line 289
    mul-int v14, v14, v31

    .line 290
    .line 291
    :goto_b
    add-int v3, v3, v27

    .line 292
    .line 293
    mul-int v3, v3, v30

    .line 294
    .line 295
    sub-int/2addr v2, v3

    .line 296
    add-int v28, v28, v29

    .line 297
    .line 298
    mul-int v28, v28, v14

    .line 299
    .line 300
    sub-int v8, v8, v28

    .line 301
    .line 302
    :cond_e
    move v14, v8

    .line 303
    move/from16 v3, v21

    .line 304
    .line 305
    move v8, v2

    .line 306
    const/16 v2, 0x2c

    .line 307
    .line 308
    if-eq v3, v2, :cond_f

    .line 309
    .line 310
    const/16 v2, 0x56

    .line 311
    .line 312
    if-eq v3, v2, :cond_f

    .line 313
    .line 314
    if-eq v3, v15, :cond_f

    .line 315
    .line 316
    const/16 v2, 0x6e

    .line 317
    .line 318
    if-eq v3, v2, :cond_f

    .line 319
    .line 320
    const/16 v2, 0x7a

    .line 321
    .line 322
    if-eq v3, v2, :cond_f

    .line 323
    .line 324
    const/16 v2, 0xf4

    .line 325
    .line 326
    if-ne v3, v2, :cond_10

    .line 327
    .line 328
    :cond_f
    and-int/lit8 v2, v4, 0x10

    .line 329
    .line 330
    if-eqz v2, :cond_10

    .line 331
    .line 332
    const/4 v2, 0x0

    .line 333
    goto :goto_c

    .line 334
    :cond_10
    move v2, v12

    .line 335
    :goto_c
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 336
    .line 337
    .line 338
    move-result v15

    .line 339
    const/16 v19, -0x1

    .line 340
    .line 341
    const/high16 v20, 0x3f800000    # 1.0f

    .line 342
    .line 343
    if-eqz v15, :cond_1f

    .line 344
    .line 345
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 346
    .line 347
    .line 348
    move-result v15

    .line 349
    if-eqz v15, :cond_13

    .line 350
    .line 351
    const/16 v15, 0x8

    .line 352
    .line 353
    invoke-virtual {v0, v15}, Ldn/h;->f(I)I

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    const/16 v15, 0xff

    .line 358
    .line 359
    if-ne v10, v15, :cond_11

    .line 360
    .line 361
    invoke-virtual {v0, v12}, Ldn/h;->f(I)I

    .line 362
    .line 363
    .line 364
    move-result v10

    .line 365
    invoke-virtual {v0, v12}, Ldn/h;->f(I)I

    .line 366
    .line 367
    .line 368
    move-result v12

    .line 369
    if-eqz v10, :cond_13

    .line 370
    .line 371
    if-eqz v12, :cond_13

    .line 372
    .line 373
    int-to-float v10, v10

    .line 374
    int-to-float v12, v12

    .line 375
    div-float v20, v10, v12

    .line 376
    .line 377
    goto :goto_d

    .line 378
    :cond_11
    sget-object v12, Ldn/g;->b:[F

    .line 379
    .line 380
    array-length v15, v12

    .line 381
    if-ge v10, v15, :cond_12

    .line 382
    .line 383
    aget v20, v12, v10

    .line 384
    .line 385
    goto :goto_d

    .line 386
    :cond_12
    new-instance v12, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v15, "Unexpected aspect_ratio_idc value: "

    .line 392
    .line 393
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v10

    .line 403
    const-string v12, "NalUnitUtil"

    .line 404
    .line 405
    invoke-static {v12, v10}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_13
    :goto_d
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    if-eqz v10, :cond_14

    .line 413
    .line 414
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 415
    .line 416
    .line 417
    :cond_14
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    if-eqz v10, :cond_17

    .line 422
    .line 423
    invoke-virtual {v0, v11}, Ldn/h;->m(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 427
    .line 428
    .line 429
    move-result v10

    .line 430
    if-eqz v10, :cond_15

    .line 431
    .line 432
    goto :goto_e

    .line 433
    :cond_15
    const/4 v13, 0x2

    .line 434
    :goto_e
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 435
    .line 436
    .line 437
    move-result v10

    .line 438
    if-eqz v10, :cond_16

    .line 439
    .line 440
    const/16 v10, 0x8

    .line 441
    .line 442
    invoke-virtual {v0, v10}, Ldn/h;->f(I)I

    .line 443
    .line 444
    .line 445
    move-result v11

    .line 446
    invoke-virtual {v0, v10}, Ldn/h;->f(I)I

    .line 447
    .line 448
    .line 449
    move-result v12

    .line 450
    invoke-virtual {v0, v10}, Ldn/h;->m(I)V

    .line 451
    .line 452
    .line 453
    invoke-static {v11}, Lzm/g;->j(I)I

    .line 454
    .line 455
    .line 456
    move-result v19

    .line 457
    invoke-static {v12}, Lzm/g;->k(I)I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    goto :goto_f

    .line 462
    :cond_16
    move/from16 v10, v19

    .line 463
    .line 464
    goto :goto_f

    .line 465
    :cond_17
    move/from16 v10, v19

    .line 466
    .line 467
    move v13, v10

    .line 468
    :goto_f
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 469
    .line 470
    .line 471
    move-result v11

    .line 472
    if-eqz v11, :cond_18

    .line 473
    .line 474
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 478
    .line 479
    .line 480
    :cond_18
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 481
    .line 482
    .line 483
    move-result v11

    .line 484
    if-eqz v11, :cond_19

    .line 485
    .line 486
    const/16 v11, 0x41

    .line 487
    .line 488
    invoke-virtual {v0, v11}, Ldn/h;->m(I)V

    .line 489
    .line 490
    .line 491
    :cond_19
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    if-eqz v11, :cond_1a

    .line 496
    .line 497
    invoke-static {v0}, Ldn/g;->I(Ldn/h;)V

    .line 498
    .line 499
    .line 500
    :cond_1a
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 501
    .line 502
    .line 503
    move-result v12

    .line 504
    if-eqz v12, :cond_1b

    .line 505
    .line 506
    invoke-static {v0}, Ldn/g;->I(Ldn/h;)V

    .line 507
    .line 508
    .line 509
    :cond_1b
    if-nez v11, :cond_1c

    .line 510
    .line 511
    if-eqz v12, :cond_1d

    .line 512
    .line 513
    :cond_1c
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 514
    .line 515
    .line 516
    :cond_1d
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_1e

    .line 524
    .line 525
    invoke-virtual {v0}, Ldn/h;->l()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 532
    .line 533
    .line 534
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 538
    .line 539
    .line 540
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 545
    .line 546
    .line 547
    :cond_1e
    move/from16 v22, v2

    .line 548
    .line 549
    move/from16 v21, v10

    .line 550
    .line 551
    move/from16 v10, v20

    .line 552
    .line 553
    move/from16 v20, v13

    .line 554
    .line 555
    goto :goto_10

    .line 556
    :cond_1f
    move/from16 v22, v2

    .line 557
    .line 558
    move/from16 v21, v19

    .line 559
    .line 560
    move/from16 v10, v20

    .line 561
    .line 562
    move/from16 v20, v21

    .line 563
    .line 564
    :goto_10
    new-instance v0, Ldn/g$m;

    .line 565
    .line 566
    move-object v2, v0

    .line 567
    move/from16 v23, v9

    .line 568
    .line 569
    move v9, v14

    .line 570
    move/from16 v11, v17

    .line 571
    .line 572
    move/from16 v12, v18

    .line 573
    .line 574
    move/from16 v13, v16

    .line 575
    .line 576
    move/from16 v14, v26

    .line 577
    .line 578
    move v15, v1

    .line 579
    move/from16 v16, v23

    .line 580
    .line 581
    move/from16 v17, v24

    .line 582
    .line 583
    move/from16 v18, v25

    .line 584
    .line 585
    invoke-direct/range {v2 .. v22}, Ldn/g$m;-><init>(IIIIIIIFIIZZIIIZIIII)V

    .line 586
    .line 587
    .line 588
    return-object v0
.end method

.method private static E(Ldn/h;I[I[I[[Z)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_6

    .line 4
    .line 5
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    :goto_1
    aget v5, p2, v1

    .line 12
    .line 13
    if-ge v4, v5, :cond_5

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    if-nez v4, :cond_1

    .line 25
    .line 26
    move v5, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    move v5, v3

    .line 29
    :goto_2
    if-eqz v5, :cond_4

    .line 30
    .line 31
    move v5, v3

    .line 32
    :goto_3
    aget v6, p3, v1

    .line 33
    .line 34
    if-ge v5, v6, :cond_3

    .line 35
    .line 36
    aget-object v6, p4, v1

    .line 37
    .line 38
    aget-boolean v6, v6, v5

    .line 39
    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 43
    .line 44
    .line 45
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_3
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 52
    .line 53
    .line 54
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_6
    return-void
.end method

.method private static F(Ldn/h;ZI)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x13

    .line 26
    .line 27
    invoke-virtual {p0, v3}, Ldn/h;->m(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    const/16 v3, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ldn/h;->m(I)V

    .line 33
    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p0, v3}, Ldn/h;->m(I)V

    .line 39
    .line 40
    .line 41
    :cond_3
    const/16 v3, 0xf

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Ldn/h;->m(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_4
    move p1, v0

    .line 48
    move v1, p1

    .line 49
    move v2, v1

    .line 50
    :goto_1
    move v3, v0

    .line 51
    :goto_2
    if-gt v3, p2, :cond_b

    .line 52
    .line 53
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    :cond_5
    if-eqz v4, :cond_6

    .line 64
    .line 65
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 66
    .line 67
    .line 68
    move v4, v0

    .line 69
    goto :goto_3

    .line 70
    :cond_6
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    :goto_3
    if-nez v4, :cond_7

    .line 75
    .line 76
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    goto :goto_4

    .line 81
    :cond_7
    move v4, v0

    .line 82
    :goto_4
    add-int v5, p1, v1

    .line 83
    .line 84
    move v6, v0

    .line 85
    :goto_5
    if-ge v6, v5, :cond_a

    .line 86
    .line 87
    move v7, v0

    .line 88
    :goto_6
    if-gt v7, v4, :cond_9

    .line 89
    .line 90
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 94
    .line 95
    .line 96
    if-eqz v2, :cond_8

    .line 97
    .line 98
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 102
    .line 103
    .line 104
    :cond_8
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_b
    return-void
.end method

.method private static G(Ldn/h;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x4

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    move v3, v0

    .line 7
    :goto_1
    const/4 v4, 0x6

    .line 8
    if-ge v3, v4, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 18
    .line 19
    .line 20
    goto :goto_3

    .line 21
    :cond_0
    shl-int/lit8 v4, v1, 0x1

    .line 22
    .line 23
    add-int/2addr v4, v2

    .line 24
    shl-int v4, v5, v4

    .line 25
    .line 26
    const/16 v6, 0x40

    .line 27
    .line 28
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-le v1, v5, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ldn/h;->h()I

    .line 35
    .line 36
    .line 37
    :cond_1
    move v6, v0

    .line 38
    :goto_2
    if-ge v6, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Ldn/h;->h()I

    .line 41
    .line 42
    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    :goto_3
    const/4 v4, 0x3

    .line 47
    if-ne v1, v4, :cond_3

    .line 48
    .line 49
    move v5, v4

    .line 50
    :cond_3
    add-int/2addr v3, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return-void
.end method

.method private static H(Ldn/h;)V
    .locals 19

    .line 1
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [I

    .line 7
    .line 8
    new-array v3, v1, [I

    .line 9
    .line 10
    const/4 v4, -0x1

    .line 11
    move v6, v1

    .line 12
    move v5, v4

    .line 13
    :goto_0
    if-ge v6, v0, :cond_11

    .line 14
    .line 15
    const/4 v7, 0x1

    .line 16
    if-eqz v6, :cond_c

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    if-eqz v8, :cond_c

    .line 23
    .line 24
    add-int v8, v4, v5

    .line 25
    .line 26
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v9

    .line 30
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    add-int/2addr v10, v7

    .line 35
    mul-int/lit8 v9, v9, 0x2

    .line 36
    .line 37
    rsub-int/lit8 v9, v9, 0x1

    .line 38
    .line 39
    mul-int/2addr v9, v10

    .line 40
    add-int/lit8 v10, v8, 0x1

    .line 41
    .line 42
    new-array v11, v10, [Z

    .line 43
    .line 44
    move v12, v1

    .line 45
    :goto_1
    if-gt v12, v8, :cond_1

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    if-nez v13, :cond_0

    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 54
    .line 55
    .line 56
    move-result v13

    .line 57
    aput-boolean v13, v11, v12

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_0
    aput-boolean v7, v11, v12

    .line 61
    .line 62
    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    new-array v7, v10, [I

    .line 66
    .line 67
    new-array v10, v10, [I

    .line 68
    .line 69
    add-int/lit8 v12, v5, -0x1

    .line 70
    .line 71
    move v13, v1

    .line 72
    :goto_3
    if-ltz v12, :cond_3

    .line 73
    .line 74
    aget v14, v3, v12

    .line 75
    .line 76
    add-int/2addr v14, v9

    .line 77
    if-gez v14, :cond_2

    .line 78
    .line 79
    add-int v15, v4, v12

    .line 80
    .line 81
    aget-boolean v15, v11, v15

    .line 82
    .line 83
    if-eqz v15, :cond_2

    .line 84
    .line 85
    add-int/lit8 v15, v13, 0x1

    .line 86
    .line 87
    aput v14, v7, v13

    .line 88
    .line 89
    move v13, v15

    .line 90
    :cond_2
    add-int/lit8 v12, v12, -0x1

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    if-gez v9, :cond_4

    .line 94
    .line 95
    aget-boolean v12, v11, v8

    .line 96
    .line 97
    if-eqz v12, :cond_4

    .line 98
    .line 99
    add-int/lit8 v12, v13, 0x1

    .line 100
    .line 101
    aput v9, v7, v13

    .line 102
    .line 103
    move v13, v12

    .line 104
    :cond_4
    move v12, v1

    .line 105
    :goto_4
    if-ge v12, v4, :cond_6

    .line 106
    .line 107
    aget v14, v2, v12

    .line 108
    .line 109
    add-int/2addr v14, v9

    .line 110
    if-gez v14, :cond_5

    .line 111
    .line 112
    aget-boolean v15, v11, v12

    .line 113
    .line 114
    if-eqz v15, :cond_5

    .line 115
    .line 116
    add-int/lit8 v15, v13, 0x1

    .line 117
    .line 118
    aput v14, v7, v13

    .line 119
    .line 120
    move v13, v15

    .line 121
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    add-int/lit8 v12, v4, -0x1

    .line 129
    .line 130
    move v14, v1

    .line 131
    :goto_5
    if-ltz v12, :cond_8

    .line 132
    .line 133
    aget v15, v2, v12

    .line 134
    .line 135
    add-int/2addr v15, v9

    .line 136
    if-lez v15, :cond_7

    .line 137
    .line 138
    aget-boolean v16, v11, v12

    .line 139
    .line 140
    if-eqz v16, :cond_7

    .line 141
    .line 142
    add-int/lit8 v16, v14, 0x1

    .line 143
    .line 144
    aput v15, v10, v14

    .line 145
    .line 146
    move/from16 v14, v16

    .line 147
    .line 148
    :cond_7
    add-int/lit8 v12, v12, -0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_8
    if-lez v9, :cond_9

    .line 152
    .line 153
    aget-boolean v2, v11, v8

    .line 154
    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    add-int/lit8 v2, v14, 0x1

    .line 158
    .line 159
    aput v9, v10, v14

    .line 160
    .line 161
    move v14, v2

    .line 162
    :cond_9
    move v2, v1

    .line 163
    :goto_6
    if-ge v2, v5, :cond_b

    .line 164
    .line 165
    aget v8, v3, v2

    .line 166
    .line 167
    add-int/2addr v8, v9

    .line 168
    if-lez v8, :cond_a

    .line 169
    .line 170
    add-int v12, v4, v2

    .line 171
    .line 172
    aget-boolean v12, v11, v12

    .line 173
    .line 174
    if-eqz v12, :cond_a

    .line 175
    .line 176
    add-int/lit8 v12, v14, 0x1

    .line 177
    .line 178
    aput v8, v10, v14

    .line 179
    .line 180
    move v14, v12

    .line 181
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 182
    .line 183
    goto :goto_6

    .line 184
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    move-object v3, v2

    .line 189
    move-object v2, v7

    .line 190
    move v4, v13

    .line 191
    move v5, v14

    .line 192
    goto :goto_b

    .line 193
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    new-array v4, v2, [I

    .line 202
    .line 203
    move v5, v1

    .line 204
    :goto_7
    if-ge v5, v2, :cond_e

    .line 205
    .line 206
    if-lez v5, :cond_d

    .line 207
    .line 208
    add-int/lit8 v8, v5, -0x1

    .line 209
    .line 210
    aget v8, v4, v8

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_d
    move v8, v1

    .line 214
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 215
    .line 216
    .line 217
    move-result v9

    .line 218
    add-int/2addr v9, v7

    .line 219
    sub-int/2addr v8, v9

    .line 220
    aput v8, v4, v5

    .line 221
    .line 222
    invoke-virtual/range {p0 .. p0}, Ldn/h;->l()V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v5, v5, 0x1

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_e
    new-array v5, v3, [I

    .line 229
    .line 230
    move v8, v1

    .line 231
    :goto_9
    if-ge v8, v3, :cond_10

    .line 232
    .line 233
    if-lez v8, :cond_f

    .line 234
    .line 235
    add-int/lit8 v9, v8, -0x1

    .line 236
    .line 237
    aget v9, v5, v9

    .line 238
    .line 239
    goto :goto_a

    .line 240
    :cond_f
    move v9, v1

    .line 241
    :goto_a
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    add-int/2addr v10, v7

    .line 246
    add-int/2addr v9, v10

    .line 247
    aput v9, v5, v8

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Ldn/h;->l()V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v8, v8, 0x1

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :cond_10
    move-object/from16 v17, v4

    .line 256
    .line 257
    move v4, v2

    .line 258
    move-object/from16 v2, v17

    .line 259
    .line 260
    move-object/from16 v18, v5

    .line 261
    .line 262
    move v5, v3

    .line 263
    move-object/from16 v3, v18

    .line 264
    .line 265
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_11
    return-void
.end method

.method private static I(Ldn/h;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ldn/h;->m(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ldn/h;->m(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private static J(Ldn/h;I)V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    move v1, v0

    .line 6
    :goto_0
    if-ge v2, p1, :cond_2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Ldn/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/2addr v0, v1

    .line 15
    add-int/lit16 v0, v0, 0x100

    .line 16
    .line 17
    rem-int/lit16 v0, v0, 0x100

    .line 18
    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v1, v0

    .line 23
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return-void
.end method

.method private static K(Ldn/h;I[[Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ldn/h;->m(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    if-ge v1, p1, :cond_3

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_1
    if-ge v3, v1, :cond_2

    .line 23
    .line 24
    aget-object v4, p2, v1

    .line 25
    .line 26
    aget-boolean v4, v4, v3

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ldn/h;->m(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    :goto_3
    if-gt v2, p1, :cond_4

    .line 44
    .line 45
    const/16 p2, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, p2}, Ldn/h;->m(I)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_3

    .line 53
    :cond_4
    return-void
.end method

.method public static L([BI)I
    .locals 8

    .line 1
    sget-object v0, Ldn/g;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    move v3, v2

    .line 7
    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0, v2, p1}, Ldn/g;->g([BII)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v2, p1, :cond_0

    .line 14
    .line 15
    sget-object v4, Ldn/g;->d:[I

    .line 16
    .line 17
    array-length v5, v4

    .line 18
    if-gt v5, v3, :cond_1

    .line 19
    .line 20
    array-length v5, v4

    .line 21
    mul-int/lit8 v5, v5, 0x2

    .line 22
    .line 23
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    sput-object v4, Ldn/g;->d:[I

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :cond_1
    :goto_1
    sget-object v4, Ldn/g;->d:[I

    .line 33
    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 35
    .line 36
    aput v2, v4, v3

    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x3

    .line 39
    .line 40
    move v3, v5

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sub-int/2addr p1, v3

    .line 43
    move v2, v1

    .line 44
    move v4, v2

    .line 45
    move v5, v4

    .line 46
    :goto_2
    if-ge v2, v3, :cond_3

    .line 47
    .line 48
    sget-object v6, Ldn/g;->d:[I

    .line 49
    .line 50
    aget v6, v6, v2

    .line 51
    .line 52
    sub-int/2addr v6, v5

    .line 53
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    add-int/2addr v4, v6

    .line 57
    add-int/lit8 v7, v4, 0x1

    .line 58
    .line 59
    aput-byte v1, p0, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x2

    .line 62
    .line 63
    aput-byte v1, p0, v7

    .line 64
    .line 65
    add-int/lit8 v6, v6, 0x3

    .line 66
    .line 67
    add-int/2addr v5, v6

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    sub-int v1, p1, v4

    .line 72
    .line 73
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return p1

    .line 78
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method private static a(IIII)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    :cond_0
    add-int/2addr p2, p3

    .line 6
    mul-int/2addr v0, p2

    .line 7
    sub-int/2addr p0, v0

    .line 8
    return p0
.end method

.method private static b(IIII)I
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :cond_1
    :goto_0
    add-int/2addr p2, p3

    .line 10
    mul-int/2addr v0, p2

    .line 11
    sub-int/2addr p0, v0

    .line 12
    return p0
.end method

.method public static c([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aput-boolean v0, p0, v1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput-boolean v0, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method private static d(Ldn/h;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Ldn/h;->m(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v1, v0, v2}, Ldn/g;->q(Ldn/h;ZILdn/g$c;)Ldn/g$c;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget v0, p0, Ldn/g$c;->a:I

    .line 20
    .line 21
    iget-boolean v1, p0, Ldn/g$c;->b:Z

    .line 22
    .line 23
    iget v2, p0, Ldn/g$c;->c:I

    .line 24
    .line 25
    iget v3, p0, Ldn/g$c;->d:I

    .line 26
    .line 27
    iget-object v4, p0, Ldn/g$c;->e:[I

    .line 28
    .line 29
    iget v5, p0, Ldn/g$c;->f:I

    .line 30
    .line 31
    invoke-static/range {v0 .. v5}, Lcn/i;->f(IZII[II)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static e([BII[Z)I
    .locals 8

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    invoke-static {v3}, Lcn/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_1
    aget-boolean v3, p3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-static {p3}, Ldn/g;->c([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    aget-boolean v4, p3, v2

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    aget-byte v4, p0, p1

    .line 34
    .line 35
    if-ne v4, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p3}, Ldn/g;->c([Z)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_3
    if-le v0, v3, :cond_4

    .line 43
    .line 44
    aget-boolean v4, p3, v3

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    aget-byte v4, p0, p1

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_4

    .line 57
    .line 58
    invoke-static {p3}, Ldn/g;->c([Z)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    :goto_1
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    aget-byte v5, p0, p1

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xfe

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 76
    .line 77
    aget-byte v7, p0, v6

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    add-int/lit8 v7, p1, -0x1

    .line 82
    .line 83
    aget-byte v7, p0, v7

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    if-ne v5, v2, :cond_6

    .line 88
    .line 89
    invoke-static {p3}, Ldn/g;->c([Z)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-le v0, v3, :cond_9

    .line 99
    .line 100
    add-int/lit8 p1, p2, -0x3

    .line 101
    .line 102
    aget-byte p1, p0, p1

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    add-int/lit8 p1, p2, -0x2

    .line 107
    .line 108
    aget-byte p1, p0, p1

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, p0, v4

    .line 113
    .line 114
    if-ne p1, v2, :cond_8

    .line 115
    .line 116
    :goto_3
    move p1, v2

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    move p1, v1

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    if-ne v0, v3, :cond_a

    .line 121
    .line 122
    aget-boolean p1, p3, v3

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    add-int/lit8 p1, p2, -0x2

    .line 127
    .line 128
    aget-byte p1, p0, p1

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    aget-byte p1, p0, v4

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    aget-boolean p1, p3, v2

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    aget-byte p1, p0, v4

    .line 142
    .line 143
    if-ne p1, v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    aput-boolean p1, p3, v1

    .line 147
    .line 148
    if-le v0, v2, :cond_c

    .line 149
    .line 150
    add-int/lit8 p1, p2, -0x2

    .line 151
    .line 152
    aget-byte p1, p0, p1

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    aget-byte p1, p0, v4

    .line 157
    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    :goto_5
    move p1, v2

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    move p1, v1

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    aget-boolean p1, p3, v3

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    aget-byte p1, p0, v4

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :goto_6
    aput-boolean p1, p3, v2

    .line 174
    .line 175
    aget-byte p0, p0, v4

    .line 176
    .line 177
    if-nez p0, :cond_d

    .line 178
    .line 179
    move v1, v2

    .line 180
    :cond_d
    aput-boolean v1, p3, v3

    .line 181
    .line 182
    return p2
.end method

.method private static f([B)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p0

    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    array-length v3, p0

    .line 13
    invoke-static {p0, v2, v3, v0}, Ldn/g;->e([BII[Z)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    array-length v3, p0

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static g([BII)I
    .locals 2

    .line 1
    :goto_0
    add-int/lit8 v0, p2, -0x2

    .line 2
    .line 3
    if-ge p1, v0, :cond_1

    .line 4
    .line 5
    aget-byte v0, p0, p1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x1

    .line 10
    .line 11
    aget-byte v0, p0, v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, p1, 0x2

    .line 16
    .line 17
    aget-byte v0, p0, v0

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return p1

    .line 23
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return p2
.end method

.method public static h(Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, [B

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x3

    .line 17
    if-le v3, v4, :cond_1

    .line 18
    .line 19
    invoke-static {v2}, Ldn/g;->f([B)Lcom/google/common/collect/ImmutableList;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move v6, v0

    .line 24
    :goto_1
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-ge v6, v7, :cond_1

    .line 29
    .line 30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    add-int/2addr v7, v4

    .line 41
    if-ge v7, v3, :cond_0

    .line 42
    .line 43
    new-instance v7, Ldn/h;

    .line 44
    .line 45
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    check-cast v8, Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    add-int/2addr v8, v4

    .line 56
    invoke-direct {v7, v2, v8, v3}, Ldn/h;-><init>([BII)V

    .line 57
    .line 58
    .line 59
    invoke-static {v7}, Ldn/g;->p(Ldn/h;)Ldn/g$b;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    iget v9, v8, Ldn/g$b;->a:I

    .line 64
    .line 65
    const/16 v10, 0x21

    .line 66
    .line 67
    if-ne v9, v10, :cond_0

    .line 68
    .line 69
    iget v8, v8, Ldn/g$b;->b:I

    .line 70
    .line 71
    if-nez v8, :cond_0

    .line 72
    .line 73
    invoke-static {v7}, Ldn/g;->d(Ldn/h;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 p0, 0x0

    .line 85
    return-object p0
.end method

.method public static i([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x7e

    .line 6
    .line 7
    shr-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public static j([BI)I
    .locals 0

    .line 1
    add-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    aget-byte p0, p0, p1

    .line 4
    .line 5
    and-int/lit8 p0, p0, 0x1f

    .line 6
    .line 7
    return p0
.end method

.method public static k([BIILio/bidmachine/media3/common/a;)Z
    .locals 2

    .line 1
    iget-object v0, p3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    aget-byte p0, p0, p1

    .line 12
    .line 13
    invoke-static {p0}, Ldn/g;->l(B)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    iget-object v0, p3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "video/hevc"

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0, p1, p2, p3}, Ldn/g;->m([BIILio/bidmachine/media3/common/a;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    return p0
.end method

.method public static l(B)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x60

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    and-int/lit8 p0, p0, 0x1f

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p0, v1, :cond_1

    .line 13
    .line 14
    return v0

    .line 15
    :cond_1
    const/16 v2, 0x9

    .line 16
    .line 17
    if-ne p0, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    const/16 v2, 0xe

    .line 21
    .line 22
    if-ne p0, v2, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    return v1
.end method

.method private static m([BIILio/bidmachine/media3/common/a;)Z
    .locals 2

    .line 1
    new-instance v0, Ldn/h;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    invoke-direct {v0, p0, p1, p2}, Ldn/h;-><init>([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Ldn/g;->p(Ldn/h;)Ldn/g$b;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    iget p1, p0, Ldn/g$b;->a:I

    .line 12
    .line 13
    const/16 p2, 0x23

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/16 p2, 0xe

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-gt p1, p2, :cond_1

    .line 23
    .line 24
    rem-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p0, p0, Ldn/g$b;->c:I

    .line 29
    .line 30
    iget p1, p3, Lio/bidmachine/media3/common/a;->D:I

    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    if-ne p0, p1, :cond_1

    .line 34
    .line 35
    return v0

    .line 36
    :cond_1
    return v1
.end method

.method public static n(Lio/bidmachine/media3/common/a;B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lzm/u;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    and-int/lit8 v0, p1, 0x1f

    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    if-eq v0, v1, :cond_4

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "video/hevc"

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, v1}, Lzm/u;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    :cond_2
    and-int/lit8 p0, p1, 0x7e

    .line 44
    .line 45
    shr-int/2addr p0, v2

    .line 46
    const/16 p1, 0x27

    .line 47
    .line 48
    if-ne p0, p1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    :cond_4
    :goto_0
    return v2
.end method

.method public static o(Lio/bidmachine/media3/common/a;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "video/hevc"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v1}, Lzm/u;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 35
    return p0
.end method

.method private static p(Ldn/h;)Ldn/g$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Ldn/h;->f(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    new-instance v2, Ldn/g$b;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0, p0}, Ldn/g$b;-><init>(III)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method

.method private static q(Ldn/h;ZILdn/g$c;)Ldn/g$c;
    .locals 19
    .param p3    # Ldn/g$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Ldn/h;->f(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-virtual {v0, v9}, Ldn/h;->f(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    move v10, v7

    .line 30
    move v11, v10

    .line 31
    :goto_0
    const/16 v12, 0x20

    .line 32
    .line 33
    if-ge v10, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    shl-int/2addr v12, v10

    .line 43
    or-int/2addr v11, v12

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v10, v7

    .line 48
    :goto_1
    if-ge v10, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ldn/h;->f(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    aput v12, v4, v10

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v13, v2

    .line 60
    :goto_2
    move-object/from16 v17, v4

    .line 61
    .line 62
    move v14, v8

    .line 63
    move v15, v9

    .line 64
    move/from16 v16, v11

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget v3, v2, Ldn/g$c;->a:I

    .line 70
    .line 71
    iget-boolean v8, v2, Ldn/g$c;->b:Z

    .line 72
    .line 73
    iget v9, v2, Ldn/g$c;->c:I

    .line 74
    .line 75
    iget v11, v2, Ldn/g$c;->d:I

    .line 76
    .line 77
    iget-object v4, v2, Ldn/g$c;->e:[I

    .line 78
    .line 79
    move v13, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object/from16 v17, v4

    .line 82
    .line 83
    move v13, v7

    .line 84
    move v14, v13

    .line 85
    move v15, v14

    .line 86
    move/from16 v16, v15

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0, v6}, Ldn/h;->f(I)I

    .line 89
    .line 90
    .line 91
    move-result v18

    .line 92
    move v2, v7

    .line 93
    :goto_4
    if-ge v7, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x58

    .line 102
    .line 103
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x8

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0, v2}, Ldn/h;->m(I)V

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    sub-int/2addr v6, v1

    .line 120
    mul-int/2addr v6, v5

    .line 121
    invoke-virtual {v0, v6}, Ldn/h;->m(I)V

    .line 122
    .line 123
    .line 124
    :cond_8
    new-instance v0, Ldn/g$c;

    .line 125
    .line 126
    move-object v12, v0

    .line 127
    invoke-direct/range {v12 .. v18}, Ldn/g$c;-><init>(IZII[II)V

    .line 128
    .line 129
    .line 130
    return-object v0
.end method

.method private static r(Ldn/h;)Ldn/g$e;
    .locals 9

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p0, v2}, Ldn/h;->f(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x4

    .line 29
    invoke-virtual {p0, v3}, Ldn/h;->f(I)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-virtual {p0, v3}, Ldn/h;->f(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    move v6, v3

    .line 38
    move v5, v4

    .line 39
    move v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    move v4, v2

    .line 43
    move v5, v4

    .line 44
    move v6, v5

    .line 45
    :goto_0
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-static {v1, v4, v2, v3}, Ldn/g;->b(IIII)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v0, v4, v7, p0}, Ldn/g;->a(IIII)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    :cond_2
    move v8, v0

    .line 76
    move v7, v1

    .line 77
    new-instance p0, Ldn/g$e;

    .line 78
    .line 79
    move-object v3, p0

    .line 80
    invoke-direct/range {v3 .. v8}, Ldn/g$e;-><init>(IIIII)V

    .line 81
    .line 82
    .line 83
    return-object p0
.end method

.method private static s(Ldn/h;I)Ldn/g$f;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldn/h;->i()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->s(I)Lcom/google/common/collect/ImmutableList$a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-array v3, p1, [I

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Ldn/g;->r(Ldn/h;)Ldn/g$e;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 21
    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-le v1, v4, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    int-to-double v0, v1

    .line 36
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 37
    .line 38
    invoke-static {v0, v1, v5}, Lj7/b;->d(DLjava/math/RoundingMode;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    if-ge v4, p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Ldn/h;->f(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    aput v1, v3, v4

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_2
    if-ge v4, p1, :cond_2

    .line 54
    .line 55
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    aput p0, v3, v4

    .line 60
    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    new-instance p0, Ldn/g$f;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p0, p1, v3}, Ldn/g$f;-><init>(Ljava/util/List;[I)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method

.method public static t([BII)Ldn/g$g;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    :goto_0
    aget-byte v0, p0, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-le p2, p1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_e

    .line 16
    .line 17
    if-gt p2, p1, :cond_1

    .line 18
    .line 19
    goto/16 :goto_7

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ldn/h;

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-direct {v0, p0, p1, p2}, Ldn/h;-><init>([BII)V

    .line 26
    .line 27
    .line 28
    :cond_2
    const/16 p0, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ldn/h;->c(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_e

    .line 35
    .line 36
    const/16 p0, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ldn/h;->f(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x0

    .line 43
    move v2, p2

    .line 44
    :goto_1
    const/16 v3, 0xff

    .line 45
    .line 46
    if-ne p1, v3, :cond_3

    .line 47
    .line 48
    add-int/lit16 v2, v2, 0xff

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ldn/h;->f(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    add-int/2addr v2, p1

    .line 56
    invoke-virtual {v0, p0}, Ldn/h;->f(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    move v4, p2

    .line 61
    :goto_2
    if-ne p1, v3, :cond_4

    .line 62
    .line 63
    add-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ldn/h;->f(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    add-int/2addr v4, p1

    .line 71
    if-eqz v4, :cond_e

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ldn/h;->c(I)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_5

    .line 78
    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_5
    const/16 p0, 0xb0

    .line 82
    .line 83
    if-ne v2, p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_6

    .line 94
    .line 95
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    move v5, p1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move v5, p2

    .line 102
    :goto_3
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 v2, -0x1

    .line 107
    move v7, v2

    .line 108
    move v8, v7

    .line 109
    move v9, v8

    .line 110
    move v10, v9

    .line 111
    move v11, v10

    .line 112
    move v12, v11

    .line 113
    move v2, p2

    .line 114
    :goto_4
    if-gt v2, p1, :cond_d

    .line 115
    .line 116
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual {v0}, Ldn/h;->i()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    const/4 v3, 0x6

    .line 125
    invoke-virtual {v0, v3}, Ldn/h;->f(I)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    const/16 v6, 0x3f

    .line 130
    .line 131
    if-ne v9, v6, :cond_7

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_7
    if-nez v9, :cond_8

    .line 135
    .line 136
    add-int/lit8 v10, v4, -0x1e

    .line 137
    .line 138
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v10

    .line 142
    goto :goto_5

    .line 143
    :cond_8
    add-int v10, v9, v4

    .line 144
    .line 145
    add-int/lit8 v10, v10, -0x1f

    .line 146
    .line 147
    invoke-static {p2, v10}, Ljava/lang/Math;->max(II)I

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    :goto_5
    invoke-virtual {v0, v10}, Ldn/h;->f(I)I

    .line 152
    .line 153
    .line 154
    move-result v10

    .line 155
    if-eqz p0, :cond_b

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Ldn/h;->f(I)I

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-ne v11, v6, :cond_9

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_9
    if-nez v11, :cond_a

    .line 165
    .line 166
    add-int/lit8 v3, v5, -0x1e

    .line 167
    .line 168
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    goto :goto_6

    .line 173
    :cond_a
    add-int v3, v11, v5

    .line 174
    .line 175
    add-int/lit8 v3, v3, -0x1f

    .line 176
    .line 177
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    :goto_6
    invoke-virtual {v0, v3}, Ldn/h;->f(I)I

    .line 182
    .line 183
    .line 184
    move-result v12

    .line 185
    :cond_b
    invoke-virtual {v0}, Ldn/h;->e()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_c

    .line 190
    .line 191
    const/16 v3, 0xa

    .line 192
    .line 193
    invoke-virtual {v0, v3}, Ldn/h;->m(I)V

    .line 194
    .line 195
    .line 196
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_d
    new-instance p0, Ldn/g$g;

    .line 200
    .line 201
    add-int/lit8 v6, p1, 0x1

    .line 202
    .line 203
    move-object v3, p0

    .line 204
    invoke-direct/range {v3 .. v12}, Ldn/g$g;-><init>(IIIIIIIII)V

    .line 205
    .line 206
    .line 207
    return-object p0

    .line 208
    :cond_e
    :goto_7
    return-object v1
.end method

.method public static u([BIILdn/g$k;)Ldn/g$h;
    .locals 1
    .param p3    # Ldn/g$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ldn/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ldn/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldn/g;->p(Ldn/h;)Ldn/g$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    add-int/lit8 p1, p1, 0x2

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0, p3}, Ldn/g;->v([BIILdn/g$b;Ldn/g$k;)Ldn/g$h;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static v([BIILdn/g$b;Ldn/g$k;)Ldn/g$h;
    .locals 22
    .param p4    # Ldn/g$k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    .line 1
    new-instance v2, Ldn/h;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v2, v3, v4, v5}, Ldn/h;-><init>([BII)V

    const/4 v3, 0x4

    .line 2
    invoke-virtual {v2, v3}, Ldn/h;->m(I)V

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v2, v3}, Ldn/h;->f(I)I

    move-result v4

    .line 4
    iget v5, v1, Ldn/g$b;->b:I

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v8, v0, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 6
    iget v8, v1, Ldn/g$b;->b:I

    iget-object v9, v0, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 7
    iget-object v9, v0, Ldn/g$k;->b:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldn/g$a;

    iget v8, v8, Ldn/g$a;->a:I

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-nez v5, :cond_2

    .line 8
    invoke-virtual {v2}, Ldn/h;->l()V

    .line 9
    invoke-static {v2, v6, v4, v9}, Ldn/g;->q(Ldn/h;ZILdn/g$c;)Ldn/g$c;

    move-result-object v9

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    iget-object v10, v0, Ldn/g$k;->c:Ldn/g$d;

    iget-object v11, v10, Ldn/g$d;->b:[I

    aget v11, v11, v8

    .line 11
    iget-object v10, v10, Ldn/g$d;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-le v10, v11, :cond_3

    .line 12
    iget-object v9, v0, Ldn/g$k;->c:Ldn/g$d;

    iget-object v9, v9, Ldn/g$d;->a:Lcom/google/common/collect/ImmutableList;

    .line 13
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldn/g$c;

    .line 14
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v10

    const/16 v11, 0x8

    const/4 v12, -0x1

    if-eqz v5, :cond_7

    .line 15
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 16
    invoke-virtual {v2, v11}, Ldn/h;->f(I)I

    move-result v13

    goto :goto_3

    :cond_4
    move v13, v12

    :goto_3
    if-eqz v0, :cond_6

    .line 17
    iget-object v14, v0, Ldn/g$k;->d:Ldn/g$f;

    if-eqz v14, :cond_6

    if-ne v13, v12, :cond_5

    .line 18
    iget-object v13, v14, Ldn/g$f;->b:[I

    aget v13, v13, v8

    :cond_5
    if-eq v13, v12, :cond_6

    .line 19
    iget-object v14, v14, Ldn/g$f;->a:Lcom/google/common/collect/ImmutableList;

    .line 20
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-le v14, v13, :cond_6

    .line 21
    iget-object v14, v0, Ldn/g$k;->d:Ldn/g$f;

    iget-object v14, v14, Ldn/g$f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ldn/g$e;

    .line 22
    iget v14, v13, Ldn/g$e;->a:I

    .line 23
    iget v15, v13, Ldn/g$e;->d:I

    .line 24
    iget v6, v13, Ldn/g$e;->e:I

    .line 25
    iget v7, v13, Ldn/g$e;->b:I

    .line 26
    iget v13, v13, Ldn/g$e;->c:I

    move v12, v13

    goto :goto_4

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v6

    if-ne v6, v3, :cond_8

    .line 28
    invoke-virtual {v2}, Ldn/h;->l()V

    .line 29
    :cond_8
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v7

    .line 30
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v13

    .line 31
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 32
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v14

    .line 33
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v15

    .line 34
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v12

    .line 35
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v3

    .line 36
    invoke-static {v7, v6, v14, v15}, Ldn/g;->b(IIII)I

    move-result v7

    .line 37
    invoke-static {v13, v6, v12, v3}, Ldn/g;->a(IIII)I

    move-result v3

    move v13, v3

    .line 38
    :cond_9
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v3

    .line 39
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v12

    move v14, v6

    move v15, v7

    move v6, v13

    move v7, v3

    .line 40
    :goto_4
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v3

    if-nez v5, :cond_b

    .line 41
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_5

    :cond_a
    move v13, v4

    :goto_5
    const/4 v11, -0x1

    :goto_6
    if-gt v13, v4, :cond_c

    .line 42
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 43
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v1

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 44
    invoke-virtual {v2}, Ldn/h;->i()I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p3

    goto :goto_6

    :cond_b
    const/4 v11, -0x1

    .line 45
    :cond_c
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 46
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 47
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 48
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 49
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 50
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 51
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v5, :cond_d

    .line 52
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_e

    const/4 v1, 0x6

    .line 53
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    goto :goto_8

    .line 54
    :cond_e
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 55
    invoke-static {v2}, Ldn/g;->G(Ldn/h;)V

    :cond_f
    :goto_8
    const/4 v1, 0x2

    .line 56
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    .line 57
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v5, 0x8

    .line 58
    invoke-virtual {v2, v5}, Ldn/h;->m(I)V

    .line 59
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 60
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 61
    invoke-virtual {v2}, Ldn/h;->l()V

    .line 62
    :cond_10
    invoke-static {v2}, Ldn/g;->H(Ldn/h;)V

    .line 63
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 64
    invoke-virtual {v2}, Ldn/h;->i()I

    move-result v5

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v5, :cond_11

    add-int/lit8 v1, v3, 0x5

    .line 65
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x2

    goto :goto_9

    .line 66
    :cond_11
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    .line 67
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1c

    .line 68
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0x8

    .line 69
    invoke-virtual {v2, v3}, Ldn/h;->f(I)I

    move-result v13

    const/16 v3, 0xff

    if-ne v13, v3, :cond_12

    const/16 v3, 0x10

    .line 70
    invoke-virtual {v2, v3}, Ldn/h;->f(I)I

    move-result v13

    .line 71
    invoke-virtual {v2, v3}, Ldn/h;->f(I)I

    move-result v3

    if-eqz v13, :cond_14

    if-eqz v3, :cond_14

    int-to-float v5, v13

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_a

    .line 72
    :cond_12
    sget-object v3, Ldn/g;->b:[F

    array-length v1, v3

    if-ge v13, v1, :cond_13

    .line 73
    aget v5, v3, v13

    goto :goto_a

    .line 74
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_14
    :goto_a
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 76
    invoke-virtual {v2}, Ldn/h;->l()V

    .line 77
    :cond_15
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x3

    .line 78
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    .line 79
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_b

    :cond_16
    const/4 v0, 0x2

    .line 80
    :goto_b
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x8

    .line 81
    invoke-virtual {v2, v1}, Ldn/h;->f(I)I

    move-result v3

    .line 82
    invoke-virtual {v2, v1}, Ldn/h;->f(I)I

    move-result v8

    .line 83
    invoke-virtual {v2, v1}, Ldn/h;->m(I)V

    .line 84
    invoke-static {v3}, Lzm/g;->j(I)I

    move-result v1

    .line 85
    invoke-static {v8}, Lzm/g;->k(I)I

    move-result v3

    goto :goto_d

    :cond_17
    :goto_c
    const/4 v1, -0x1

    const/4 v3, -0x1

    goto :goto_d

    :cond_18
    if-eqz v0, :cond_19

    .line 86
    iget-object v1, v0, Ldn/g$k;->e:Ldn/g$j;

    if-eqz v1, :cond_19

    .line 87
    iget-object v3, v1, Ldn/g$j;->b:[I

    aget v3, v3, v8

    .line 88
    iget-object v1, v1, Ldn/g$j;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-le v1, v3, :cond_19

    .line 89
    iget-object v0, v0, Ldn/g$k;->e:Ldn/g$j;

    iget-object v0, v0, Ldn/g$j;->a:Lcom/google/common/collect/ImmutableList;

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldn/g$i;

    .line 91
    iget v1, v0, Ldn/g$i;->a:I

    .line 92
    iget v3, v0, Ldn/g$i;->b:I

    .line 93
    iget v0, v0, Ldn/g$i;->c:I

    move/from16 v21, v3

    move v3, v0

    move/from16 v0, v21

    goto :goto_d

    :cond_19
    const/4 v0, -0x1

    goto :goto_c

    .line 94
    :goto_d
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 95
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 96
    invoke-virtual {v2}, Ldn/h;->i()I

    .line 97
    :cond_1a
    invoke-virtual {v2}, Ldn/h;->l()V

    .line 98
    invoke-virtual {v2}, Ldn/h;->e()Z

    move-result v2

    if-eqz v2, :cond_1b

    mul-int/lit8 v6, v6, 0x2

    :cond_1b
    move/from16 v18, v0

    move/from16 v17, v1

    move/from16 v19, v3

    move/from16 v16, v5

    move v13, v6

    goto :goto_e

    :cond_1c
    move/from16 v16, v5

    move v13, v6

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    .line 99
    :goto_e
    new-instance v20, Ldn/g$h;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v9

    move v4, v14

    move v5, v7

    move v6, v12

    move v7, v10

    move v8, v15

    move v9, v13

    move/from16 v10, v16

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    invoke-direct/range {v0 .. v14}, Ldn/g$h;-><init>(Ldn/g$b;ILdn/g$c;IIIIIIFIIII)V

    return-object v20
.end method

.method private static w(Ldn/h;)Ldn/g$i;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Ldn/h;->m(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    :goto_0
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ldn/h;->f(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-static {v2}, Lzm/g;->j(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0, v1}, Ldn/h;->f(I)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Lzm/g;->k(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0, v1}, Ldn/h;->m(I)V

    .line 33
    .line 34
    .line 35
    new-instance p0, Ldn/g$i;

    .line 36
    .line 37
    invoke-direct {p0, v2, v0, v3}, Ldn/g$i;-><init>(III)V

    .line 38
    .line 39
    .line 40
    return-object p0
.end method

.method private static x(Ldn/h;II[I)Ldn/g$j;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ldn/h;->l()V

    .line 17
    .line 18
    .line 19
    :cond_1
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    if-eqz v2, :cond_8

    .line 31
    .line 32
    :cond_2
    move v4, v3

    .line 33
    :goto_1
    if-ge v4, p2, :cond_8

    .line 34
    .line 35
    move v5, v3

    .line 36
    :goto_2
    aget v6, p3, v4

    .line 37
    .line 38
    if-ge v5, v6, :cond_7

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    goto :goto_3

    .line 47
    :cond_3
    move v6, v3

    .line 48
    :goto_3
    if-eqz v2, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    goto :goto_4

    .line 55
    :cond_4
    move v7, v3

    .line 56
    :goto_4
    if-eqz v6, :cond_5

    .line 57
    .line 58
    const/16 v6, 0x20

    .line 59
    .line 60
    invoke-virtual {p0, v6}, Ldn/h;->m(I)V

    .line 61
    .line 62
    .line 63
    :cond_5
    if-eqz v7, :cond_6

    .line 64
    .line 65
    const/16 v6, 0x12

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Ldn/h;->m(I)V

    .line 68
    .line 69
    .line 70
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_8
    invoke-virtual {p0}, Ldn/h;->e()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    const/4 p3, 0x4

    .line 81
    if-eqz p2, :cond_9

    .line 82
    .line 83
    invoke-virtual {p0, p3}, Ldn/h;->f(I)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    add-int/2addr v0, v1

    .line 88
    goto :goto_5

    .line 89
    :cond_9
    move v0, p1

    .line 90
    :goto_5
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->s(I)Lcom/google/common/collect/ImmutableList$a;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-array v4, p1, [I

    .line 95
    .line 96
    move v5, v3

    .line 97
    :goto_6
    if-ge v5, v0, :cond_a

    .line 98
    .line 99
    invoke-static {p0}, Ldn/g;->w(Ldn/h;)Ldn/g$i;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    invoke-virtual {v2, v6}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_a
    if-eqz p2, :cond_b

    .line 110
    .line 111
    if-le v0, v1, :cond_b

    .line 112
    .line 113
    :goto_7
    if-ge v3, p1, :cond_b

    .line 114
    .line 115
    invoke-virtual {p0, p3}, Ldn/h;->f(I)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    aput p2, v4, v3

    .line 120
    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_b
    new-instance p0, Ldn/g$j;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1, v4}, Ldn/g$j;-><init>(Ljava/util/List;[I)V

    .line 131
    .line 132
    .line 133
    return-object p0
.end method

.method public static y([BII)Ldn/g$k;
    .locals 1

    .line 1
    new-instance v0, Ldn/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Ldn/h;-><init>([BII)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ldn/g;->p(Ldn/h;)Ldn/g$b;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {v0, p0}, Ldn/g;->z(Ldn/h;Ldn/g$b;)Ldn/g$k;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static z(Ldn/h;Ldn/g$b;)Ldn/g$k;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Ldn/h;->m(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x6

    .line 16
    invoke-virtual {v0, v4}, Ldn/h;->f(I)I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    add-int/lit8 v6, v5, 0x1

    .line 21
    .line 22
    const/4 v7, 0x3

    .line 23
    invoke-virtual {v0, v7}, Ldn/h;->f(I)I

    .line 24
    .line 25
    .line 26
    move-result v8

    .line 27
    const/16 v9, 0x11

    .line 28
    .line 29
    invoke-virtual {v0, v9}, Ldn/h;->m(I)V

    .line 30
    .line 31
    .line 32
    const/4 v9, 0x1

    .line 33
    const/4 v10, 0x0

    .line 34
    invoke-static {v0, v9, v8, v10}, Ldn/g;->q(Ldn/h;ZILdn/g$c;)Ldn/g$c;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 39
    .line 40
    .line 41
    move-result v12

    .line 42
    const/4 v13, 0x0

    .line 43
    if-eqz v12, :cond_0

    .line 44
    .line 45
    move v12, v13

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v12, v8

    .line 48
    :goto_0
    if-gt v12, v8, :cond_1

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 57
    .line 58
    .line 59
    add-int/lit8 v12, v12, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, v4}, Ldn/h;->f(I)I

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 67
    .line 68
    .line 69
    move-result v14

    .line 70
    add-int/2addr v14, v9

    .line 71
    invoke-static {v11}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    new-instance v10, Ldn/g$d;

    .line 76
    .line 77
    new-array v1, v9, [I

    .line 78
    .line 79
    invoke-direct {v10, v15, v1}, Ldn/g$d;-><init>(Ljava/util/List;[I)V

    .line 80
    .line 81
    .line 82
    const/4 v1, 0x2

    .line 83
    if-lt v6, v1, :cond_2

    .line 84
    .line 85
    if-lt v14, v1, :cond_2

    .line 86
    .line 87
    move v15, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    move v15, v13

    .line 90
    :goto_1
    if-eqz v2, :cond_3

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    move v2, v9

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    move v2, v13

    .line 97
    :goto_2
    add-int/lit8 v3, v12, 0x1

    .line 98
    .line 99
    if-lt v3, v6, :cond_4

    .line 100
    .line 101
    move/from16 v18, v9

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    move/from16 v18, v13

    .line 105
    .line 106
    :goto_3
    if-eqz v15, :cond_55

    .line 107
    .line 108
    if-eqz v2, :cond_55

    .line 109
    .line 110
    if-nez v18, :cond_5

    .line 111
    .line 112
    goto/16 :goto_3e

    .line 113
    .line 114
    :cond_5
    new-array v2, v1, [I

    .line 115
    .line 116
    aput v3, v2, v9

    .line 117
    .line 118
    aput v14, v2, v13

    .line 119
    .line 120
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, [[I

    .line 127
    .line 128
    new-array v15, v14, [I

    .line 129
    .line 130
    new-array v1, v14, [I

    .line 131
    .line 132
    aget-object v19, v2, v13

    .line 133
    .line 134
    aput v13, v19, v13

    .line 135
    .line 136
    aput v9, v15, v13

    .line 137
    .line 138
    aput v13, v1, v13

    .line 139
    .line 140
    move v4, v9

    .line 141
    :goto_4
    if-ge v4, v14, :cond_8

    .line 142
    .line 143
    move v7, v13

    .line 144
    move/from16 v21, v7

    .line 145
    .line 146
    :goto_5
    if-gt v7, v12, :cond_7

    .line 147
    .line 148
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 149
    .line 150
    .line 151
    move-result v22

    .line 152
    if-eqz v22, :cond_6

    .line 153
    .line 154
    aget-object v22, v2, v4

    .line 155
    .line 156
    add-int/lit8 v23, v21, 0x1

    .line 157
    .line 158
    aput v7, v22, v21

    .line 159
    .line 160
    aput v7, v1, v4

    .line 161
    .line 162
    move/from16 v21, v23

    .line 163
    .line 164
    :cond_6
    aput v21, v15, v4

    .line 165
    .line 166
    add-int/lit8 v7, v7, 0x1

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 170
    .line 171
    const/4 v7, 0x3

    .line 172
    goto :goto_4

    .line 173
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_c

    .line 178
    .line 179
    const/16 v4, 0x40

    .line 180
    .line 181
    invoke-virtual {v0, v4}, Ldn/h;->m(I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    if-eqz v4, :cond_9

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 191
    .line 192
    .line 193
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    move v7, v13

    .line 198
    :goto_6
    if-ge v7, v4, :cond_c

    .line 199
    .line 200
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 201
    .line 202
    .line 203
    if-eqz v7, :cond_b

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 206
    .line 207
    .line 208
    move-result v21

    .line 209
    if-eqz v21, :cond_a

    .line 210
    .line 211
    goto :goto_7

    .line 212
    :cond_a
    move v9, v13

    .line 213
    :cond_b
    :goto_7
    invoke-static {v0, v9, v8}, Ldn/g;->F(Ldn/h;ZI)V

    .line 214
    .line 215
    .line 216
    add-int/lit8 v7, v7, 0x1

    .line 217
    .line 218
    const/4 v9, 0x1

    .line 219
    goto :goto_6

    .line 220
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_d

    .line 225
    .line 226
    new-instance v0, Ldn/g$k;

    .line 227
    .line 228
    const/16 v20, 0x0

    .line 229
    .line 230
    const/16 v21, 0x0

    .line 231
    .line 232
    const/16 v18, 0x0

    .line 233
    .line 234
    move-object/from16 v16, v0

    .line 235
    .line 236
    move-object/from16 v17, p1

    .line 237
    .line 238
    move-object/from16 v19, v10

    .line 239
    .line 240
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 241
    .line 242
    .line 243
    return-object v0

    .line 244
    :cond_d
    invoke-virtual/range {p0 .. p0}, Ldn/h;->b()V

    .line 245
    .line 246
    .line 247
    invoke-static {v0, v13, v8, v11}, Ldn/g;->q(Ldn/h;ZILdn/g$c;)Ldn/g$c;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    const/16 v9, 0x10

    .line 256
    .line 257
    new-array v13, v9, [Z

    .line 258
    .line 259
    move-object/from16 v23, v1

    .line 260
    .line 261
    move-object/from16 v24, v4

    .line 262
    .line 263
    const/4 v1, 0x0

    .line 264
    const/4 v4, 0x0

    .line 265
    :goto_8
    if-ge v1, v9, :cond_f

    .line 266
    .line 267
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 268
    .line 269
    .line 270
    move-result v25

    .line 271
    aput-boolean v25, v13, v1

    .line 272
    .line 273
    if-eqz v25, :cond_e

    .line 274
    .line 275
    add-int/lit8 v4, v4, 0x1

    .line 276
    .line 277
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_f
    if-eqz v4, :cond_54

    .line 281
    .line 282
    const/4 v1, 0x1

    .line 283
    aget-boolean v25, v13, v1

    .line 284
    .line 285
    if-nez v25, :cond_10

    .line 286
    .line 287
    goto/16 :goto_3d

    .line 288
    .line 289
    :cond_10
    new-array v1, v4, [I

    .line 290
    .line 291
    move-object/from16 v26, v11

    .line 292
    .line 293
    const/4 v9, 0x0

    .line 294
    :goto_9
    sub-int v11, v4, v7

    .line 295
    .line 296
    if-ge v9, v11, :cond_11

    .line 297
    .line 298
    const/4 v11, 0x3

    .line 299
    invoke-virtual {v0, v11}, Ldn/h;->f(I)I

    .line 300
    .line 301
    .line 302
    move-result v27

    .line 303
    aput v27, v1, v9

    .line 304
    .line 305
    add-int/lit8 v9, v9, 0x1

    .line 306
    .line 307
    goto :goto_9

    .line 308
    :cond_11
    add-int/lit8 v9, v4, 0x1

    .line 309
    .line 310
    new-array v9, v9, [I

    .line 311
    .line 312
    if-eqz v7, :cond_14

    .line 313
    .line 314
    const/4 v11, 0x1

    .line 315
    :goto_a
    if-ge v11, v4, :cond_13

    .line 316
    .line 317
    move-object/from16 v27, v2

    .line 318
    .line 319
    const/4 v2, 0x0

    .line 320
    :goto_b
    if-ge v2, v11, :cond_12

    .line 321
    .line 322
    aget v28, v9, v11

    .line 323
    .line 324
    aget v29, v1, v2

    .line 325
    .line 326
    const/16 v21, 0x1

    .line 327
    .line 328
    add-int/lit8 v29, v29, 0x1

    .line 329
    .line 330
    add-int v28, v28, v29

    .line 331
    .line 332
    aput v28, v9, v11

    .line 333
    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 338
    .line 339
    move-object/from16 v2, v27

    .line 340
    .line 341
    goto :goto_a

    .line 342
    :cond_13
    move-object/from16 v27, v2

    .line 343
    .line 344
    const/4 v2, 0x6

    .line 345
    aput v2, v9, v4

    .line 346
    .line 347
    :goto_c
    const/4 v2, 0x2

    .line 348
    goto :goto_d

    .line 349
    :cond_14
    move-object/from16 v27, v2

    .line 350
    .line 351
    goto :goto_c

    .line 352
    :goto_d
    new-array v11, v2, [I

    .line 353
    .line 354
    const/4 v2, 0x1

    .line 355
    aput v4, v11, v2

    .line 356
    .line 357
    const/4 v2, 0x0

    .line 358
    aput v6, v11, v2

    .line 359
    .line 360
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 361
    .line 362
    invoke-static {v2, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    check-cast v2, [[I

    .line 367
    .line 368
    new-array v11, v6, [I

    .line 369
    .line 370
    const/16 v22, 0x0

    .line 371
    .line 372
    aput v22, v11, v22

    .line 373
    .line 374
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 375
    .line 376
    .line 377
    move-result v28

    .line 378
    move-object/from16 v29, v15

    .line 379
    .line 380
    const/4 v15, 0x1

    .line 381
    :goto_e
    if-ge v15, v6, :cond_19

    .line 382
    .line 383
    if-eqz v28, :cond_15

    .line 384
    .line 385
    move/from16 v30, v8

    .line 386
    .line 387
    const/4 v8, 0x6

    .line 388
    invoke-virtual {v0, v8}, Ldn/h;->f(I)I

    .line 389
    .line 390
    .line 391
    move-result v19

    .line 392
    aput v19, v11, v15

    .line 393
    .line 394
    goto :goto_f

    .line 395
    :cond_15
    move/from16 v30, v8

    .line 396
    .line 397
    const/4 v8, 0x6

    .line 398
    aput v15, v11, v15

    .line 399
    .line 400
    :goto_f
    if-nez v7, :cond_17

    .line 401
    .line 402
    const/4 v8, 0x0

    .line 403
    :goto_10
    if-ge v8, v4, :cond_16

    .line 404
    .line 405
    aget-object v31, v2, v15

    .line 406
    .line 407
    aget v32, v1, v8

    .line 408
    .line 409
    move-object/from16 v33, v1

    .line 410
    .line 411
    const/16 v21, 0x1

    .line 412
    .line 413
    add-int/lit8 v1, v32, 0x1

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ldn/h;->f(I)I

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    aput v1, v31, v8

    .line 420
    .line 421
    add-int/lit8 v8, v8, 0x1

    .line 422
    .line 423
    move-object/from16 v1, v33

    .line 424
    .line 425
    goto :goto_10

    .line 426
    :cond_16
    move-object/from16 v33, v1

    .line 427
    .line 428
    goto :goto_12

    .line 429
    :cond_17
    move-object/from16 v33, v1

    .line 430
    .line 431
    const/4 v1, 0x0

    .line 432
    :goto_11
    if-ge v1, v4, :cond_18

    .line 433
    .line 434
    aget-object v8, v2, v15

    .line 435
    .line 436
    aget v31, v11, v15

    .line 437
    .line 438
    add-int/lit8 v32, v1, 0x1

    .line 439
    .line 440
    aget v34, v9, v32

    .line 441
    .line 442
    const/16 v21, 0x1

    .line 443
    .line 444
    shl-int v34, v21, v34

    .line 445
    .line 446
    add-int/lit8 v34, v34, -0x1

    .line 447
    .line 448
    and-int v31, v31, v34

    .line 449
    .line 450
    aget v34, v9, v1

    .line 451
    .line 452
    shr-int v31, v31, v34

    .line 453
    .line 454
    aput v31, v8, v1

    .line 455
    .line 456
    move/from16 v1, v32

    .line 457
    .line 458
    goto :goto_11

    .line 459
    :cond_18
    :goto_12
    add-int/lit8 v15, v15, 0x1

    .line 460
    .line 461
    move/from16 v8, v30

    .line 462
    .line 463
    move-object/from16 v1, v33

    .line 464
    .line 465
    goto :goto_e

    .line 466
    :cond_19
    move/from16 v30, v8

    .line 467
    .line 468
    new-array v1, v3, [I

    .line 469
    .line 470
    const/4 v4, 0x1

    .line 471
    const/4 v7, 0x0

    .line 472
    :goto_13
    const/4 v8, -0x1

    .line 473
    if-ge v7, v6, :cond_20

    .line 474
    .line 475
    aget v9, v11, v7

    .line 476
    .line 477
    aput v8, v1, v9

    .line 478
    .line 479
    const/4 v8, 0x0

    .line 480
    const/4 v9, 0x0

    .line 481
    :goto_14
    const/16 v15, 0x10

    .line 482
    .line 483
    if-ge v8, v15, :cond_1c

    .line 484
    .line 485
    aget-boolean v19, v13, v8

    .line 486
    .line 487
    if-eqz v19, :cond_1b

    .line 488
    .line 489
    const/4 v15, 0x1

    .line 490
    if-ne v8, v15, :cond_1a

    .line 491
    .line 492
    aget v15, v11, v7

    .line 493
    .line 494
    aget-object v19, v2, v7

    .line 495
    .line 496
    aget v19, v19, v9

    .line 497
    .line 498
    aput v19, v1, v15

    .line 499
    .line 500
    :cond_1a
    add-int/lit8 v9, v9, 0x1

    .line 501
    .line 502
    :cond_1b
    add-int/lit8 v8, v8, 0x1

    .line 503
    .line 504
    goto :goto_14

    .line 505
    :cond_1c
    if-lez v7, :cond_1f

    .line 506
    .line 507
    const/4 v8, 0x0

    .line 508
    :goto_15
    if-ge v8, v7, :cond_1e

    .line 509
    .line 510
    aget v9, v11, v7

    .line 511
    .line 512
    aget v9, v1, v9

    .line 513
    .line 514
    aget v15, v11, v8

    .line 515
    .line 516
    aget v15, v1, v15

    .line 517
    .line 518
    if-ne v9, v15, :cond_1d

    .line 519
    .line 520
    goto :goto_16

    .line 521
    :cond_1d
    add-int/lit8 v8, v8, 0x1

    .line 522
    .line 523
    goto :goto_15

    .line 524
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    .line 525
    .line 526
    :cond_1f
    :goto_16
    add-int/lit8 v7, v7, 0x1

    .line 527
    .line 528
    goto :goto_13

    .line 529
    :cond_20
    const/4 v7, 0x4

    .line 530
    invoke-virtual {v0, v7}, Ldn/h;->f(I)I

    .line 531
    .line 532
    .line 533
    move-result v2

    .line 534
    const/4 v7, 0x2

    .line 535
    if-lt v4, v7, :cond_53

    .line 536
    .line 537
    if-nez v2, :cond_21

    .line 538
    .line 539
    goto/16 :goto_3c

    .line 540
    .line 541
    :cond_21
    new-array v7, v4, [I

    .line 542
    .line 543
    const/4 v9, 0x0

    .line 544
    :goto_17
    if-ge v9, v4, :cond_22

    .line 545
    .line 546
    invoke-virtual {v0, v2}, Ldn/h;->f(I)I

    .line 547
    .line 548
    .line 549
    move-result v13

    .line 550
    aput v13, v7, v9

    .line 551
    .line 552
    add-int/lit8 v9, v9, 0x1

    .line 553
    .line 554
    goto :goto_17

    .line 555
    :cond_22
    new-array v2, v3, [I

    .line 556
    .line 557
    const/4 v9, 0x0

    .line 558
    :goto_18
    if-ge v9, v6, :cond_23

    .line 559
    .line 560
    aget v13, v11, v9

    .line 561
    .line 562
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 563
    .line 564
    .line 565
    move-result v13

    .line 566
    aput v9, v2, v13

    .line 567
    .line 568
    add-int/lit8 v9, v9, 0x1

    .line 569
    .line 570
    goto :goto_18

    .line 571
    :cond_23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 572
    .line 573
    .line 574
    move-result-object v9

    .line 575
    const/4 v13, 0x0

    .line 576
    :goto_19
    if-gt v13, v12, :cond_25

    .line 577
    .line 578
    aget v15, v1, v13

    .line 579
    .line 580
    const/16 v17, 0x1

    .line 581
    .line 582
    add-int/lit8 v8, v4, -0x1

    .line 583
    .line 584
    invoke-static {v15, v8}, Ljava/lang/Math;->min(II)I

    .line 585
    .line 586
    .line 587
    move-result v8

    .line 588
    if-ltz v8, :cond_24

    .line 589
    .line 590
    aget v8, v7, v8

    .line 591
    .line 592
    goto :goto_1a

    .line 593
    :cond_24
    const/4 v8, -0x1

    .line 594
    :goto_1a
    new-instance v15, Ldn/g$a;

    .line 595
    .line 596
    move-object/from16 v17, v1

    .line 597
    .line 598
    aget v1, v2, v13

    .line 599
    .line 600
    invoke-direct {v15, v1, v8}, Ldn/g$a;-><init>(II)V

    .line 601
    .line 602
    .line 603
    invoke-virtual {v9, v15}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 604
    .line 605
    .line 606
    add-int/lit8 v13, v13, 0x1

    .line 607
    .line 608
    move-object/from16 v1, v17

    .line 609
    .line 610
    const/4 v8, -0x1

    .line 611
    goto :goto_19

    .line 612
    :cond_25
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    const/4 v2, 0x0

    .line 617
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    check-cast v4, Ldn/g$a;

    .line 622
    .line 623
    iget v2, v4, Ldn/g$a;->b:I

    .line 624
    .line 625
    const/4 v4, -0x1

    .line 626
    if-ne v2, v4, :cond_26

    .line 627
    .line 628
    new-instance v0, Ldn/g$k;

    .line 629
    .line 630
    const/16 v20, 0x0

    .line 631
    .line 632
    const/16 v21, 0x0

    .line 633
    .line 634
    const/16 v18, 0x0

    .line 635
    .line 636
    move-object/from16 v16, v0

    .line 637
    .line 638
    move-object/from16 v17, p1

    .line 639
    .line 640
    move-object/from16 v19, v10

    .line 641
    .line 642
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 643
    .line 644
    .line 645
    return-object v0

    .line 646
    :cond_26
    const/4 v2, 0x1

    .line 647
    :goto_1b
    if-gt v2, v12, :cond_28

    .line 648
    .line 649
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v4

    .line 653
    check-cast v4, Ldn/g$a;

    .line 654
    .line 655
    iget v4, v4, Ldn/g$a;->b:I

    .line 656
    .line 657
    const/4 v7, -0x1

    .line 658
    if-eq v4, v7, :cond_27

    .line 659
    .line 660
    move v4, v2

    .line 661
    goto :goto_1c

    .line 662
    :cond_27
    add-int/lit8 v2, v2, 0x1

    .line 663
    .line 664
    goto :goto_1b

    .line 665
    :cond_28
    const/4 v7, -0x1

    .line 666
    move v4, v7

    .line 667
    :goto_1c
    if-ne v4, v7, :cond_29

    .line 668
    .line 669
    new-instance v0, Ldn/g$k;

    .line 670
    .line 671
    const/16 v20, 0x0

    .line 672
    .line 673
    const/16 v21, 0x0

    .line 674
    .line 675
    const/16 v18, 0x0

    .line 676
    .line 677
    move-object/from16 v16, v0

    .line 678
    .line 679
    move-object/from16 v17, p1

    .line 680
    .line 681
    move-object/from16 v19, v10

    .line 682
    .line 683
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 684
    .line 685
    .line 686
    return-object v0

    .line 687
    :cond_29
    const/4 v2, 0x2

    .line 688
    new-array v7, v2, [I

    .line 689
    .line 690
    const/4 v8, 0x1

    .line 691
    aput v6, v7, v8

    .line 692
    .line 693
    const/4 v9, 0x0

    .line 694
    aput v6, v7, v9

    .line 695
    .line 696
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 697
    .line 698
    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    move-result-object v7

    .line 702
    check-cast v7, [[Z

    .line 703
    .line 704
    new-array v13, v2, [I

    .line 705
    .line 706
    aput v6, v13, v8

    .line 707
    .line 708
    aput v6, v13, v9

    .line 709
    .line 710
    invoke-static {v12, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    check-cast v2, [[Z

    .line 715
    .line 716
    const/4 v8, 0x1

    .line 717
    :goto_1d
    if-ge v8, v6, :cond_2b

    .line 718
    .line 719
    const/4 v9, 0x0

    .line 720
    :goto_1e
    if-ge v9, v8, :cond_2a

    .line 721
    .line 722
    aget-object v12, v7, v8

    .line 723
    .line 724
    aget-object v13, v2, v8

    .line 725
    .line 726
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 727
    .line 728
    .line 729
    move-result v15

    .line 730
    aput-boolean v15, v13, v9

    .line 731
    .line 732
    aput-boolean v15, v12, v9

    .line 733
    .line 734
    add-int/lit8 v9, v9, 0x1

    .line 735
    .line 736
    goto :goto_1e

    .line 737
    :cond_2a
    add-int/lit8 v8, v8, 0x1

    .line 738
    .line 739
    goto :goto_1d

    .line 740
    :cond_2b
    const/4 v8, 0x1

    .line 741
    :goto_1f
    if-ge v8, v6, :cond_2f

    .line 742
    .line 743
    const/4 v9, 0x0

    .line 744
    :goto_20
    if-ge v9, v5, :cond_2e

    .line 745
    .line 746
    const/4 v12, 0x0

    .line 747
    :goto_21
    if-ge v12, v8, :cond_2d

    .line 748
    .line 749
    aget-object v13, v2, v8

    .line 750
    .line 751
    aget-boolean v15, v13, v12

    .line 752
    .line 753
    if-eqz v15, :cond_2c

    .line 754
    .line 755
    aget-object v15, v2, v12

    .line 756
    .line 757
    aget-boolean v15, v15, v9

    .line 758
    .line 759
    if-eqz v15, :cond_2c

    .line 760
    .line 761
    const/4 v15, 0x1

    .line 762
    aput-boolean v15, v13, v9

    .line 763
    .line 764
    goto :goto_22

    .line 765
    :cond_2c
    add-int/lit8 v12, v12, 0x1

    .line 766
    .line 767
    goto :goto_21

    .line 768
    :cond_2d
    :goto_22
    add-int/lit8 v9, v9, 0x1

    .line 769
    .line 770
    goto :goto_20

    .line 771
    :cond_2e
    add-int/lit8 v8, v8, 0x1

    .line 772
    .line 773
    goto :goto_1f

    .line 774
    :cond_2f
    new-array v8, v3, [I

    .line 775
    .line 776
    const/4 v9, 0x0

    .line 777
    :goto_23
    if-ge v9, v6, :cond_31

    .line 778
    .line 779
    const/4 v12, 0x0

    .line 780
    const/4 v13, 0x0

    .line 781
    :goto_24
    if-ge v12, v9, :cond_30

    .line 782
    .line 783
    aget-object v15, v7, v9

    .line 784
    .line 785
    aget-boolean v15, v15, v12

    .line 786
    .line 787
    add-int/2addr v13, v15

    .line 788
    add-int/lit8 v12, v12, 0x1

    .line 789
    .line 790
    goto :goto_24

    .line 791
    :cond_30
    aget v12, v11, v9

    .line 792
    .line 793
    aput v13, v8, v12

    .line 794
    .line 795
    add-int/lit8 v9, v9, 0x1

    .line 796
    .line 797
    goto :goto_23

    .line 798
    :cond_31
    const/4 v9, 0x0

    .line 799
    const/4 v12, 0x0

    .line 800
    :goto_25
    if-ge v9, v6, :cond_33

    .line 801
    .line 802
    aget v13, v11, v9

    .line 803
    .line 804
    aget v13, v8, v13

    .line 805
    .line 806
    if-nez v13, :cond_32

    .line 807
    .line 808
    add-int/lit8 v12, v12, 0x1

    .line 809
    .line 810
    :cond_32
    add-int/lit8 v9, v9, 0x1

    .line 811
    .line 812
    goto :goto_25

    .line 813
    :cond_33
    const/4 v9, 0x1

    .line 814
    if-le v12, v9, :cond_34

    .line 815
    .line 816
    new-instance v0, Ldn/g$k;

    .line 817
    .line 818
    const/16 v20, 0x0

    .line 819
    .line 820
    const/16 v21, 0x0

    .line 821
    .line 822
    const/16 v18, 0x0

    .line 823
    .line 824
    move-object/from16 v16, v0

    .line 825
    .line 826
    move-object/from16 v17, p1

    .line 827
    .line 828
    move-object/from16 v19, v10

    .line 829
    .line 830
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 831
    .line 832
    .line 833
    return-object v0

    .line 834
    :cond_34
    new-array v9, v6, [I

    .line 835
    .line 836
    new-array v12, v14, [I

    .line 837
    .line 838
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 839
    .line 840
    .line 841
    move-result v13

    .line 842
    if-eqz v13, :cond_36

    .line 843
    .line 844
    const/4 v13, 0x0

    .line 845
    :goto_26
    if-ge v13, v6, :cond_35

    .line 846
    .line 847
    const/4 v15, 0x3

    .line 848
    invoke-virtual {v0, v15}, Ldn/h;->f(I)I

    .line 849
    .line 850
    .line 851
    move-result v17

    .line 852
    aput v17, v9, v13

    .line 853
    .line 854
    add-int/lit8 v13, v13, 0x1

    .line 855
    .line 856
    goto :goto_26

    .line 857
    :cond_35
    move/from16 v13, v30

    .line 858
    .line 859
    goto :goto_27

    .line 860
    :cond_36
    move/from16 v13, v30

    .line 861
    .line 862
    const/4 v15, 0x0

    .line 863
    invoke-static {v9, v15, v6, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 864
    .line 865
    .line 866
    :goto_27
    const/4 v15, 0x0

    .line 867
    :goto_28
    if-ge v15, v14, :cond_38

    .line 868
    .line 869
    move-object/from16 v25, v2

    .line 870
    .line 871
    move-object/from16 v19, v8

    .line 872
    .line 873
    move-object/from16 v17, v11

    .line 874
    .line 875
    const/4 v8, 0x0

    .line 876
    const/4 v11, 0x0

    .line 877
    :goto_29
    aget v2, v29, v15

    .line 878
    .line 879
    if-ge v11, v2, :cond_37

    .line 880
    .line 881
    aget-object v2, v27, v15

    .line 882
    .line 883
    aget v2, v2, v11

    .line 884
    .line 885
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-result-object v2

    .line 889
    check-cast v2, Ldn/g$a;

    .line 890
    .line 891
    iget v2, v2, Ldn/g$a;->a:I

    .line 892
    .line 893
    aget v2, v9, v2

    .line 894
    .line 895
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 896
    .line 897
    .line 898
    move-result v8

    .line 899
    add-int/lit8 v11, v11, 0x1

    .line 900
    .line 901
    goto :goto_29

    .line 902
    :cond_37
    add-int/lit8 v8, v8, 0x1

    .line 903
    .line 904
    aput v8, v12, v15

    .line 905
    .line 906
    add-int/lit8 v15, v15, 0x1

    .line 907
    .line 908
    move-object/from16 v11, v17

    .line 909
    .line 910
    move-object/from16 v8, v19

    .line 911
    .line 912
    move-object/from16 v2, v25

    .line 913
    .line 914
    goto :goto_28

    .line 915
    :cond_38
    move-object/from16 v25, v2

    .line 916
    .line 917
    move-object/from16 v19, v8

    .line 918
    .line 919
    move-object/from16 v17, v11

    .line 920
    .line 921
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 922
    .line 923
    .line 924
    move-result v2

    .line 925
    if-eqz v2, :cond_3b

    .line 926
    .line 927
    const/4 v2, 0x0

    .line 928
    :goto_2a
    if-ge v2, v5, :cond_3b

    .line 929
    .line 930
    add-int/lit8 v8, v2, 0x1

    .line 931
    .line 932
    move v9, v8

    .line 933
    :goto_2b
    if-ge v9, v6, :cond_3a

    .line 934
    .line 935
    aget-object v11, v7, v9

    .line 936
    .line 937
    aget-boolean v11, v11, v2

    .line 938
    .line 939
    if-eqz v11, :cond_39

    .line 940
    .line 941
    const/4 v11, 0x3

    .line 942
    invoke-virtual {v0, v11}, Ldn/h;->m(I)V

    .line 943
    .line 944
    .line 945
    goto :goto_2c

    .line 946
    :cond_39
    const/4 v11, 0x3

    .line 947
    :goto_2c
    add-int/lit8 v9, v9, 0x1

    .line 948
    .line 949
    goto :goto_2b

    .line 950
    :cond_3a
    move v2, v8

    .line 951
    goto :goto_2a

    .line 952
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Ldn/h;->l()V

    .line 953
    .line 954
    .line 955
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 956
    .line 957
    .line 958
    move-result v2

    .line 959
    const/4 v5, 0x1

    .line 960
    add-int/2addr v2, v5

    .line 961
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList$a;

    .line 962
    .line 963
    .line 964
    move-result-object v8

    .line 965
    move-object/from16 v9, v26

    .line 966
    .line 967
    invoke-virtual {v8, v9}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 968
    .line 969
    .line 970
    if-le v2, v5, :cond_3c

    .line 971
    .line 972
    move-object/from16 v5, v24

    .line 973
    .line 974
    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 975
    .line 976
    .line 977
    const/4 v9, 0x2

    .line 978
    :goto_2d
    if-ge v9, v2, :cond_3c

    .line 979
    .line 980
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 981
    .line 982
    .line 983
    move-result v11

    .line 984
    invoke-static {v0, v11, v13, v5}, Ldn/g;->q(Ldn/h;ZILdn/g$c;)Ldn/g$c;

    .line 985
    .line 986
    .line 987
    move-result-object v5

    .line 988
    invoke-virtual {v8, v5}, Lcom/google/common/collect/ImmutableList$a;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 989
    .line 990
    .line 991
    add-int/lit8 v9, v9, 0x1

    .line 992
    .line 993
    goto :goto_2d

    .line 994
    :cond_3c
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    invoke-virtual/range {p0 .. p0}, Ldn/h;->i()I

    .line 999
    .line 1000
    .line 1001
    move-result v8

    .line 1002
    add-int/2addr v8, v14

    .line 1003
    if-le v8, v14, :cond_3d

    .line 1004
    .line 1005
    new-instance v0, Ldn/g$k;

    .line 1006
    .line 1007
    const/16 v20, 0x0

    .line 1008
    .line 1009
    const/16 v21, 0x0

    .line 1010
    .line 1011
    const/16 v18, 0x0

    .line 1012
    .line 1013
    move-object/from16 v16, v0

    .line 1014
    .line 1015
    move-object/from16 v17, p1

    .line 1016
    .line 1017
    move-object/from16 v19, v10

    .line 1018
    .line 1019
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1020
    .line 1021
    .line 1022
    return-object v0

    .line 1023
    :cond_3d
    const/4 v9, 0x2

    .line 1024
    invoke-virtual {v0, v9}, Ldn/h;->f(I)I

    .line 1025
    .line 1026
    .line 1027
    move-result v11

    .line 1028
    new-array v13, v9, [I

    .line 1029
    .line 1030
    const/4 v9, 0x1

    .line 1031
    aput v3, v13, v9

    .line 1032
    .line 1033
    const/4 v9, 0x0

    .line 1034
    aput v8, v13, v9

    .line 1035
    .line 1036
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1037
    .line 1038
    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v13

    .line 1042
    check-cast v13, [[Z

    .line 1043
    .line 1044
    new-array v15, v8, [I

    .line 1045
    .line 1046
    new-array v9, v8, [I

    .line 1047
    .line 1048
    move-object/from16 v20, v5

    .line 1049
    .line 1050
    const/4 v5, 0x0

    .line 1051
    :goto_2e
    if-ge v5, v14, :cond_42

    .line 1052
    .line 1053
    move/from16 v24, v14

    .line 1054
    .line 1055
    const/4 v14, 0x0

    .line 1056
    aput v14, v15, v5

    .line 1057
    .line 1058
    aget v22, v23, v5

    .line 1059
    .line 1060
    aput v22, v9, v5

    .line 1061
    .line 1062
    if-nez v11, :cond_3e

    .line 1063
    .line 1064
    move-object/from16 v26, v7

    .line 1065
    .line 1066
    aget-object v7, v13, v5

    .line 1067
    .line 1068
    move-object/from16 v28, v12

    .line 1069
    .line 1070
    aget v12, v29, v5

    .line 1071
    .line 1072
    move/from16 v30, v6

    .line 1073
    .line 1074
    const/4 v6, 0x1

    .line 1075
    invoke-static {v7, v14, v12, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1076
    .line 1077
    .line 1078
    aget v7, v29, v5

    .line 1079
    .line 1080
    aput v7, v15, v5

    .line 1081
    .line 1082
    move v7, v6

    .line 1083
    :goto_2f
    const/4 v6, 0x0

    .line 1084
    goto :goto_32

    .line 1085
    :cond_3e
    move/from16 v30, v6

    .line 1086
    .line 1087
    move-object/from16 v26, v7

    .line 1088
    .line 1089
    move-object/from16 v28, v12

    .line 1090
    .line 1091
    const/4 v6, 0x1

    .line 1092
    if-ne v11, v6, :cond_41

    .line 1093
    .line 1094
    aget v6, v23, v5

    .line 1095
    .line 1096
    const/4 v7, 0x0

    .line 1097
    :goto_30
    aget v12, v29, v5

    .line 1098
    .line 1099
    if-ge v7, v12, :cond_40

    .line 1100
    .line 1101
    aget-object v12, v13, v5

    .line 1102
    .line 1103
    aget-object v14, v27, v5

    .line 1104
    .line 1105
    aget v14, v14, v7

    .line 1106
    .line 1107
    if-ne v14, v6, :cond_3f

    .line 1108
    .line 1109
    const/4 v14, 0x1

    .line 1110
    goto :goto_31

    .line 1111
    :cond_3f
    const/4 v14, 0x0

    .line 1112
    :goto_31
    aput-boolean v14, v12, v7

    .line 1113
    .line 1114
    add-int/lit8 v7, v7, 0x1

    .line 1115
    .line 1116
    goto :goto_30

    .line 1117
    :cond_40
    const/4 v7, 0x1

    .line 1118
    aput v7, v15, v5

    .line 1119
    .line 1120
    goto :goto_2f

    .line 1121
    :cond_41
    move v7, v6

    .line 1122
    const/4 v6, 0x0

    .line 1123
    aget-object v12, v13, v6

    .line 1124
    .line 1125
    aput-boolean v7, v12, v6

    .line 1126
    .line 1127
    aput v7, v15, v6

    .line 1128
    .line 1129
    :goto_32
    add-int/lit8 v5, v5, 0x1

    .line 1130
    .line 1131
    move/from16 v14, v24

    .line 1132
    .line 1133
    move-object/from16 v7, v26

    .line 1134
    .line 1135
    move-object/from16 v12, v28

    .line 1136
    .line 1137
    move/from16 v6, v30

    .line 1138
    .line 1139
    goto :goto_2e

    .line 1140
    :cond_42
    move/from16 v30, v6

    .line 1141
    .line 1142
    move-object/from16 v26, v7

    .line 1143
    .line 1144
    move-object/from16 v28, v12

    .line 1145
    .line 1146
    move/from16 v24, v14

    .line 1147
    .line 1148
    const/4 v6, 0x0

    .line 1149
    const/4 v7, 0x1

    .line 1150
    new-array v5, v3, [I

    .line 1151
    .line 1152
    const/4 v12, 0x2

    .line 1153
    new-array v14, v12, [I

    .line 1154
    .line 1155
    aput v3, v14, v7

    .line 1156
    .line 1157
    aput v8, v14, v6

    .line 1158
    .line 1159
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1160
    .line 1161
    invoke-static {v3, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v3

    .line 1165
    check-cast v3, [[Z

    .line 1166
    .line 1167
    const/4 v6, 0x1

    .line 1168
    const/4 v7, 0x0

    .line 1169
    :goto_33
    if-ge v6, v8, :cond_4e

    .line 1170
    .line 1171
    if-ne v11, v12, :cond_44

    .line 1172
    .line 1173
    const/4 v12, 0x0

    .line 1174
    :goto_34
    aget v14, v29, v6

    .line 1175
    .line 1176
    if-ge v12, v14, :cond_44

    .line 1177
    .line 1178
    aget-object v14, v13, v6

    .line 1179
    .line 1180
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 1181
    .line 1182
    .line 1183
    move-result v23

    .line 1184
    aput-boolean v23, v14, v12

    .line 1185
    .line 1186
    aget v14, v15, v6

    .line 1187
    .line 1188
    aget-object v23, v13, v6

    .line 1189
    .line 1190
    aget-boolean v23, v23, v12

    .line 1191
    .line 1192
    add-int v14, v14, v23

    .line 1193
    .line 1194
    aput v14, v15, v6

    .line 1195
    .line 1196
    if-eqz v23, :cond_43

    .line 1197
    .line 1198
    aget-object v14, v27, v6

    .line 1199
    .line 1200
    aget v14, v14, v12

    .line 1201
    .line 1202
    aput v14, v9, v6

    .line 1203
    .line 1204
    :cond_43
    add-int/lit8 v12, v12, 0x1

    .line 1205
    .line 1206
    goto :goto_34

    .line 1207
    :cond_44
    if-nez v7, :cond_46

    .line 1208
    .line 1209
    aget-object v12, v27, v6

    .line 1210
    .line 1211
    const/4 v14, 0x0

    .line 1212
    aget v12, v12, v14

    .line 1213
    .line 1214
    if-nez v12, :cond_46

    .line 1215
    .line 1216
    aget-object v12, v13, v6

    .line 1217
    .line 1218
    aget-boolean v12, v12, v14

    .line 1219
    .line 1220
    if-eqz v12, :cond_46

    .line 1221
    .line 1222
    const/4 v12, 0x1

    .line 1223
    :goto_35
    aget v14, v29, v6

    .line 1224
    .line 1225
    if-ge v12, v14, :cond_46

    .line 1226
    .line 1227
    aget-object v14, v27, v6

    .line 1228
    .line 1229
    aget v14, v14, v12

    .line 1230
    .line 1231
    if-ne v14, v4, :cond_45

    .line 1232
    .line 1233
    aget-object v14, v13, v6

    .line 1234
    .line 1235
    aget-boolean v14, v14, v4

    .line 1236
    .line 1237
    if-eqz v14, :cond_45

    .line 1238
    .line 1239
    move v7, v6

    .line 1240
    :cond_45
    add-int/lit8 v12, v12, 0x1

    .line 1241
    .line 1242
    goto :goto_35

    .line 1243
    :cond_46
    const/4 v12, 0x0

    .line 1244
    :goto_36
    aget v14, v29, v6

    .line 1245
    .line 1246
    if-ge v12, v14, :cond_4c

    .line 1247
    .line 1248
    const/4 v14, 0x1

    .line 1249
    if-le v2, v14, :cond_4a

    .line 1250
    .line 1251
    aget-object v14, v3, v6

    .line 1252
    .line 1253
    aget-object v23, v13, v6

    .line 1254
    .line 1255
    aget-boolean v23, v23, v12

    .line 1256
    .line 1257
    aput-boolean v23, v14, v12

    .line 1258
    .line 1259
    move-object/from16 v23, v13

    .line 1260
    .line 1261
    int-to-double v13, v2

    .line 1262
    move/from16 v31, v2

    .line 1263
    .line 1264
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1265
    .line 1266
    invoke-static {v13, v14, v2}, Lj7/b;->d(DLjava/math/RoundingMode;)I

    .line 1267
    .line 1268
    .line 1269
    move-result v2

    .line 1270
    aget-object v13, v3, v6

    .line 1271
    .line 1272
    aget-boolean v13, v13, v12

    .line 1273
    .line 1274
    if-nez v13, :cond_48

    .line 1275
    .line 1276
    aget-object v13, v27, v6

    .line 1277
    .line 1278
    aget v13, v13, v12

    .line 1279
    .line 1280
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v13

    .line 1284
    check-cast v13, Ldn/g$a;

    .line 1285
    .line 1286
    iget v13, v13, Ldn/g$a;->a:I

    .line 1287
    .line 1288
    const/4 v14, 0x0

    .line 1289
    :goto_37
    if-ge v14, v12, :cond_48

    .line 1290
    .line 1291
    aget-object v32, v27, v6

    .line 1292
    .line 1293
    move/from16 v33, v4

    .line 1294
    .line 1295
    aget v4, v32, v14

    .line 1296
    .line 1297
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v4

    .line 1301
    check-cast v4, Ldn/g$a;

    .line 1302
    .line 1303
    iget v4, v4, Ldn/g$a;->a:I

    .line 1304
    .line 1305
    aget-object v32, v25, v13

    .line 1306
    .line 1307
    aget-boolean v4, v32, v4

    .line 1308
    .line 1309
    if-eqz v4, :cond_47

    .line 1310
    .line 1311
    aget-object v4, v3, v6

    .line 1312
    .line 1313
    const/4 v13, 0x1

    .line 1314
    aput-boolean v13, v4, v12

    .line 1315
    .line 1316
    goto :goto_38

    .line 1317
    :cond_47
    add-int/lit8 v14, v14, 0x1

    .line 1318
    .line 1319
    move/from16 v4, v33

    .line 1320
    .line 1321
    goto :goto_37

    .line 1322
    :cond_48
    move/from16 v33, v4

    .line 1323
    .line 1324
    :goto_38
    aget-object v4, v3, v6

    .line 1325
    .line 1326
    aget-boolean v4, v4, v12

    .line 1327
    .line 1328
    if-eqz v4, :cond_4b

    .line 1329
    .line 1330
    if-lez v7, :cond_49

    .line 1331
    .line 1332
    if-ne v6, v7, :cond_49

    .line 1333
    .line 1334
    invoke-virtual {v0, v2}, Ldn/h;->f(I)I

    .line 1335
    .line 1336
    .line 1337
    move-result v2

    .line 1338
    aput v2, v5, v12

    .line 1339
    .line 1340
    goto :goto_39

    .line 1341
    :cond_49
    invoke-virtual {v0, v2}, Ldn/h;->m(I)V

    .line 1342
    .line 1343
    .line 1344
    goto :goto_39

    .line 1345
    :cond_4a
    move/from16 v31, v2

    .line 1346
    .line 1347
    move/from16 v33, v4

    .line 1348
    .line 1349
    move-object/from16 v23, v13

    .line 1350
    .line 1351
    :cond_4b
    :goto_39
    add-int/lit8 v12, v12, 0x1

    .line 1352
    .line 1353
    move-object/from16 v13, v23

    .line 1354
    .line 1355
    move/from16 v2, v31

    .line 1356
    .line 1357
    move/from16 v4, v33

    .line 1358
    .line 1359
    goto :goto_36

    .line 1360
    :cond_4c
    move/from16 v31, v2

    .line 1361
    .line 1362
    move/from16 v33, v4

    .line 1363
    .line 1364
    move-object/from16 v23, v13

    .line 1365
    .line 1366
    aget v2, v15, v6

    .line 1367
    .line 1368
    const/4 v4, 0x1

    .line 1369
    if-ne v2, v4, :cond_4d

    .line 1370
    .line 1371
    aget v2, v9, v6

    .line 1372
    .line 1373
    aget v2, v19, v2

    .line 1374
    .line 1375
    if-lez v2, :cond_4d

    .line 1376
    .line 1377
    invoke-virtual/range {p0 .. p0}, Ldn/h;->l()V

    .line 1378
    .line 1379
    .line 1380
    :cond_4d
    add-int/lit8 v6, v6, 0x1

    .line 1381
    .line 1382
    move-object/from16 v13, v23

    .line 1383
    .line 1384
    move/from16 v2, v31

    .line 1385
    .line 1386
    move/from16 v4, v33

    .line 1387
    .line 1388
    const/4 v12, 0x2

    .line 1389
    goto/16 :goto_33

    .line 1390
    .line 1391
    :cond_4e
    const/4 v4, 0x1

    .line 1392
    if-nez v7, :cond_4f

    .line 1393
    .line 1394
    new-instance v0, Ldn/g$k;

    .line 1395
    .line 1396
    const/16 v20, 0x0

    .line 1397
    .line 1398
    const/16 v21, 0x0

    .line 1399
    .line 1400
    const/16 v18, 0x0

    .line 1401
    .line 1402
    move-object/from16 v16, v0

    .line 1403
    .line 1404
    move-object/from16 v17, p1

    .line 1405
    .line 1406
    move-object/from16 v19, v10

    .line 1407
    .line 1408
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1409
    .line 1410
    .line 1411
    return-object v0

    .line 1412
    :cond_4f
    move/from16 v2, v30

    .line 1413
    .line 1414
    invoke-static {v0, v2}, Ldn/g;->s(Ldn/h;I)Ldn/g$f;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v35

    .line 1418
    const/4 v6, 0x2

    .line 1419
    invoke-virtual {v0, v6}, Ldn/h;->m(I)V

    .line 1420
    .line 1421
    .line 1422
    move v9, v4

    .line 1423
    :goto_3a
    if-ge v9, v2, :cond_51

    .line 1424
    .line 1425
    aget v4, v17, v9

    .line 1426
    .line 1427
    aget v4, v19, v4

    .line 1428
    .line 1429
    if-nez v4, :cond_50

    .line 1430
    .line 1431
    invoke-virtual/range {p0 .. p0}, Ldn/h;->l()V

    .line 1432
    .line 1433
    .line 1434
    :cond_50
    add-int/lit8 v9, v9, 0x1

    .line 1435
    .line 1436
    goto :goto_3a

    .line 1437
    :cond_51
    move-object/from16 v6, v28

    .line 1438
    .line 1439
    move-object/from16 v4, v29

    .line 1440
    .line 1441
    invoke-static {v0, v8, v6, v4, v3}, Ldn/g;->E(Ldn/h;I[I[I[[Z)V

    .line 1442
    .line 1443
    .line 1444
    move-object/from16 v7, v26

    .line 1445
    .line 1446
    invoke-static {v0, v2, v7}, Ldn/g;->K(Ldn/h;I[[Z)V

    .line 1447
    .line 1448
    .line 1449
    invoke-virtual/range {p0 .. p0}, Ldn/h;->e()Z

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    if-eqz v3, :cond_52

    .line 1454
    .line 1455
    invoke-virtual/range {p0 .. p0}, Ldn/h;->b()V

    .line 1456
    .line 1457
    .line 1458
    move/from16 v14, v24

    .line 1459
    .line 1460
    invoke-static {v0, v2, v14, v6}, Ldn/g;->x(Ldn/h;II[I)Ldn/g$j;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v10

    .line 1464
    move-object/from16 v36, v10

    .line 1465
    .line 1466
    goto :goto_3b

    .line 1467
    :cond_52
    const/16 v36, 0x0

    .line 1468
    .line 1469
    :goto_3b
    new-instance v0, Ldn/g$k;

    .line 1470
    .line 1471
    new-instance v2, Ldn/g$d;

    .line 1472
    .line 1473
    move-object/from16 v3, v20

    .line 1474
    .line 1475
    invoke-direct {v2, v3, v5}, Ldn/g$d;-><init>(Ljava/util/List;[I)V

    .line 1476
    .line 1477
    .line 1478
    move-object/from16 v31, v0

    .line 1479
    .line 1480
    move-object/from16 v32, p1

    .line 1481
    .line 1482
    move-object/from16 v33, v1

    .line 1483
    .line 1484
    move-object/from16 v34, v2

    .line 1485
    .line 1486
    invoke-direct/range {v31 .. v36}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1487
    .line 1488
    .line 1489
    return-object v0

    .line 1490
    :cond_53
    :goto_3c
    new-instance v0, Ldn/g$k;

    .line 1491
    .line 1492
    const/16 v20, 0x0

    .line 1493
    .line 1494
    const/16 v21, 0x0

    .line 1495
    .line 1496
    const/16 v18, 0x0

    .line 1497
    .line 1498
    move-object/from16 v16, v0

    .line 1499
    .line 1500
    move-object/from16 v17, p1

    .line 1501
    .line 1502
    move-object/from16 v19, v10

    .line 1503
    .line 1504
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1505
    .line 1506
    .line 1507
    return-object v0

    .line 1508
    :cond_54
    :goto_3d
    new-instance v0, Ldn/g$k;

    .line 1509
    .line 1510
    const/16 v20, 0x0

    .line 1511
    .line 1512
    const/16 v21, 0x0

    .line 1513
    .line 1514
    const/16 v18, 0x0

    .line 1515
    .line 1516
    move-object/from16 v16, v0

    .line 1517
    .line 1518
    move-object/from16 v17, p1

    .line 1519
    .line 1520
    move-object/from16 v19, v10

    .line 1521
    .line 1522
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1523
    .line 1524
    .line 1525
    return-object v0

    .line 1526
    :cond_55
    :goto_3e
    new-instance v0, Ldn/g$k;

    .line 1527
    .line 1528
    const/16 v20, 0x0

    .line 1529
    .line 1530
    const/16 v21, 0x0

    .line 1531
    .line 1532
    const/16 v18, 0x0

    .line 1533
    .line 1534
    move-object/from16 v16, v0

    .line 1535
    .line 1536
    move-object/from16 v17, p1

    .line 1537
    .line 1538
    move-object/from16 v19, v10

    .line 1539
    .line 1540
    invoke-direct/range {v16 .. v21}, Ldn/g$k;-><init>(Ldn/g$b;Ljava/util/List;Ldn/g$d;Ldn/g$f;Ldn/g$j;)V

    .line 1541
    .line 1542
    .line 1543
    return-object v0
.end method
