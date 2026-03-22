.class public Lsm/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm/b$b;
    }
.end annotation


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x7b

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lsm/b;->a:[B

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a(II)I
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    add-int/2addr p1, v0

    .line 4
    add-int/2addr p2, v0

    .line 5
    if-ge p1, p2, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 p1, 0x1

    .line 14
    :goto_0
    return p1
.end method

.method private b(Lsm/b$b;)I
    .locals 1
    .param p1    # Lsm/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lsm/b$b;->b:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p1, Lsm/b$b;->c:I

    .line 6
    .line 7
    iget p1, p1, Lsm/b$b;->d:I

    .line 8
    .line 9
    sub-int/2addr v0, p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private c([BIILsm/b$b;)V
    .locals 18
    .param p4    # Lsm/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    iget-boolean v3, v2, Lsm/b$b;->e:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    if-gez v1, :cond_1

    .line 14
    .line 15
    iput-boolean v3, v2, Lsm/b$b;->e:Z

    .line 16
    .line 17
    :cond_1
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    move/from16 v4, p2

    .line 20
    .line 21
    :goto_0
    const/4 v6, 0x7

    .line 22
    const-wide/16 v7, 0xff

    .line 23
    .line 24
    if-ge v5, v1, :cond_4

    .line 25
    .line 26
    add-int/lit8 v9, v4, 0x1

    .line 27
    .line 28
    aget-byte v4, p1, v4

    .line 29
    .line 30
    const/16 v10, 0x3d

    .line 31
    .line 32
    if-ne v4, v10, :cond_2

    .line 33
    .line 34
    iput-boolean v3, v2, Lsm/b$b;->e:Z

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-direct {v0, v6, v2}, Lsm/b;->e(ILsm/b$b;)[B

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-ltz v4, :cond_3

    .line 42
    .line 43
    sget-object v10, Lsm/b;->a:[B

    .line 44
    .line 45
    array-length v11, v10

    .line 46
    if-ge v4, v11, :cond_3

    .line 47
    .line 48
    aget-byte v4, v10, v4

    .line 49
    .line 50
    if-ltz v4, :cond_3

    .line 51
    .line 52
    iget v10, v2, Lsm/b$b;->f:I

    .line 53
    .line 54
    add-int/2addr v10, v3

    .line 55
    const/16 v11, 0x8

    .line 56
    .line 57
    rem-int/2addr v10, v11

    .line 58
    iput v10, v2, Lsm/b$b;->f:I

    .line 59
    .line 60
    iget-wide v12, v2, Lsm/b$b;->a:J

    .line 61
    .line 62
    const/4 v14, 0x5

    .line 63
    shl-long/2addr v12, v14

    .line 64
    int-to-long v3, v4

    .line 65
    add-long/2addr v12, v3

    .line 66
    iput-wide v12, v2, Lsm/b$b;->a:J

    .line 67
    .line 68
    if-nez v10, :cond_3

    .line 69
    .line 70
    iget v3, v2, Lsm/b$b;->c:I

    .line 71
    .line 72
    add-int/lit8 v4, v3, 0x1

    .line 73
    .line 74
    iput v4, v2, Lsm/b$b;->c:I

    .line 75
    .line 76
    const/16 v10, 0x20

    .line 77
    .line 78
    shr-long v16, v12, v10

    .line 79
    .line 80
    and-long v14, v16, v7

    .line 81
    .line 82
    long-to-int v14, v14

    .line 83
    int-to-byte v14, v14

    .line 84
    aput-byte v14, v6, v3

    .line 85
    .line 86
    add-int/lit8 v14, v3, 0x2

    .line 87
    .line 88
    iput v14, v2, Lsm/b$b;->c:I

    .line 89
    .line 90
    const/16 v15, 0x18

    .line 91
    .line 92
    shr-long v15, v12, v15

    .line 93
    .line 94
    and-long v10, v15, v7

    .line 95
    .line 96
    long-to-int v10, v10

    .line 97
    int-to-byte v10, v10

    .line 98
    aput-byte v10, v6, v4

    .line 99
    .line 100
    add-int/lit8 v4, v3, 0x3

    .line 101
    .line 102
    iput v4, v2, Lsm/b$b;->c:I

    .line 103
    .line 104
    const/16 v10, 0x10

    .line 105
    .line 106
    shr-long v10, v12, v10

    .line 107
    .line 108
    and-long/2addr v10, v7

    .line 109
    long-to-int v10, v10

    .line 110
    int-to-byte v10, v10

    .line 111
    aput-byte v10, v6, v14

    .line 112
    .line 113
    add-int/lit8 v10, v3, 0x4

    .line 114
    .line 115
    iput v10, v2, Lsm/b$b;->c:I

    .line 116
    .line 117
    const/16 v11, 0x8

    .line 118
    .line 119
    shr-long v14, v12, v11

    .line 120
    .line 121
    and-long/2addr v14, v7

    .line 122
    long-to-int v11, v14

    .line 123
    int-to-byte v11, v11

    .line 124
    aput-byte v11, v6, v4

    .line 125
    .line 126
    const/4 v4, 0x5

    .line 127
    add-int/2addr v3, v4

    .line 128
    iput v3, v2, Lsm/b$b;->c:I

    .line 129
    .line 130
    and-long v3, v12, v7

    .line 131
    .line 132
    long-to-int v3, v3

    .line 133
    int-to-byte v3, v3

    .line 134
    aput-byte v3, v6, v10

    .line 135
    .line 136
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 137
    .line 138
    move v4, v9

    .line 139
    const/4 v3, 0x1

    .line 140
    goto :goto_0

    .line 141
    :cond_4
    :goto_1
    iget-boolean v1, v2, Lsm/b$b;->e:Z

    .line 142
    .line 143
    if-eqz v1, :cond_5

    .line 144
    .line 145
    iget v1, v2, Lsm/b$b;->f:I

    .line 146
    .line 147
    if-lez v1, :cond_5

    .line 148
    .line 149
    invoke-direct {v0, v6, v2}, Lsm/b;->e(ILsm/b$b;)[B

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iget v3, v2, Lsm/b$b;->f:I

    .line 154
    .line 155
    const/4 v4, 0x4

    .line 156
    const/4 v5, 0x3

    .line 157
    const/4 v9, 0x2

    .line 158
    packed-switch v3, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v4, "Impossible modulus "

    .line 169
    .line 170
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v2, v2, Lsm/b$b;->f:I

    .line 174
    .line 175
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v1

    .line 186
    :pswitch_0
    iget-wide v9, v2, Lsm/b$b;->a:J

    .line 187
    .line 188
    shr-long v5, v9, v5

    .line 189
    .line 190
    iput-wide v5, v2, Lsm/b$b;->a:J

    .line 191
    .line 192
    iget v3, v2, Lsm/b$b;->c:I

    .line 193
    .line 194
    add-int/lit8 v11, v3, 0x1

    .line 195
    .line 196
    iput v11, v2, Lsm/b$b;->c:I

    .line 197
    .line 198
    const/16 v12, 0x1b

    .line 199
    .line 200
    shr-long v12, v9, v12

    .line 201
    .line 202
    and-long/2addr v12, v7

    .line 203
    long-to-int v12, v12

    .line 204
    int-to-byte v12, v12

    .line 205
    aput-byte v12, v1, v3

    .line 206
    .line 207
    add-int/lit8 v12, v3, 0x2

    .line 208
    .line 209
    iput v12, v2, Lsm/b$b;->c:I

    .line 210
    .line 211
    const/16 v13, 0x13

    .line 212
    .line 213
    shr-long v13, v9, v13

    .line 214
    .line 215
    and-long/2addr v13, v7

    .line 216
    long-to-int v13, v13

    .line 217
    int-to-byte v13, v13

    .line 218
    aput-byte v13, v1, v11

    .line 219
    .line 220
    add-int/lit8 v11, v3, 0x3

    .line 221
    .line 222
    iput v11, v2, Lsm/b$b;->c:I

    .line 223
    .line 224
    const/16 v13, 0xb

    .line 225
    .line 226
    shr-long/2addr v9, v13

    .line 227
    and-long/2addr v9, v7

    .line 228
    long-to-int v9, v9

    .line 229
    int-to-byte v9, v9

    .line 230
    aput-byte v9, v1, v12

    .line 231
    .line 232
    add-int/2addr v3, v4

    .line 233
    iput v3, v2, Lsm/b$b;->c:I

    .line 234
    .line 235
    and-long v2, v5, v7

    .line 236
    .line 237
    long-to-int v2, v2

    .line 238
    int-to-byte v2, v2

    .line 239
    aput-byte v2, v1, v11

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :pswitch_1
    iget-wide v3, v2, Lsm/b$b;->a:J

    .line 244
    .line 245
    const/4 v6, 0x6

    .line 246
    shr-long v9, v3, v6

    .line 247
    .line 248
    iput-wide v9, v2, Lsm/b$b;->a:J

    .line 249
    .line 250
    iget v6, v2, Lsm/b$b;->c:I

    .line 251
    .line 252
    add-int/lit8 v11, v6, 0x1

    .line 253
    .line 254
    iput v11, v2, Lsm/b$b;->c:I

    .line 255
    .line 256
    const/16 v12, 0x16

    .line 257
    .line 258
    shr-long v12, v3, v12

    .line 259
    .line 260
    and-long/2addr v12, v7

    .line 261
    long-to-int v12, v12

    .line 262
    int-to-byte v12, v12

    .line 263
    aput-byte v12, v1, v6

    .line 264
    .line 265
    add-int/lit8 v12, v6, 0x2

    .line 266
    .line 267
    iput v12, v2, Lsm/b$b;->c:I

    .line 268
    .line 269
    const/16 v13, 0xe

    .line 270
    .line 271
    shr-long/2addr v3, v13

    .line 272
    and-long/2addr v3, v7

    .line 273
    long-to-int v3, v3

    .line 274
    int-to-byte v3, v3

    .line 275
    aput-byte v3, v1, v11

    .line 276
    .line 277
    add-int/2addr v6, v5

    .line 278
    iput v6, v2, Lsm/b$b;->c:I

    .line 279
    .line 280
    and-long v2, v9, v7

    .line 281
    .line 282
    long-to-int v2, v2

    .line 283
    int-to-byte v2, v2

    .line 284
    aput-byte v2, v1, v12

    .line 285
    .line 286
    goto :goto_2

    .line 287
    :pswitch_2
    iget-wide v3, v2, Lsm/b$b;->a:J

    .line 288
    .line 289
    const/4 v6, 0x1

    .line 290
    shr-long v9, v3, v6

    .line 291
    .line 292
    iput-wide v9, v2, Lsm/b$b;->a:J

    .line 293
    .line 294
    iget v6, v2, Lsm/b$b;->c:I

    .line 295
    .line 296
    add-int/lit8 v11, v6, 0x1

    .line 297
    .line 298
    iput v11, v2, Lsm/b$b;->c:I

    .line 299
    .line 300
    const/16 v12, 0x11

    .line 301
    .line 302
    shr-long v12, v3, v12

    .line 303
    .line 304
    and-long/2addr v12, v7

    .line 305
    long-to-int v12, v12

    .line 306
    int-to-byte v12, v12

    .line 307
    aput-byte v12, v1, v6

    .line 308
    .line 309
    add-int/lit8 v12, v6, 0x2

    .line 310
    .line 311
    iput v12, v2, Lsm/b$b;->c:I

    .line 312
    .line 313
    const/16 v13, 0x9

    .line 314
    .line 315
    shr-long/2addr v3, v13

    .line 316
    and-long/2addr v3, v7

    .line 317
    long-to-int v3, v3

    .line 318
    int-to-byte v3, v3

    .line 319
    aput-byte v3, v1, v11

    .line 320
    .line 321
    add-int/2addr v6, v5

    .line 322
    iput v6, v2, Lsm/b$b;->c:I

    .line 323
    .line 324
    and-long v2, v9, v7

    .line 325
    .line 326
    long-to-int v2, v2

    .line 327
    int-to-byte v2, v2

    .line 328
    aput-byte v2, v1, v12

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :pswitch_3
    iget-wide v5, v2, Lsm/b$b;->a:J

    .line 332
    .line 333
    shr-long v3, v5, v4

    .line 334
    .line 335
    iput-wide v3, v2, Lsm/b$b;->a:J

    .line 336
    .line 337
    iget v10, v2, Lsm/b$b;->c:I

    .line 338
    .line 339
    add-int/lit8 v11, v10, 0x1

    .line 340
    .line 341
    iput v11, v2, Lsm/b$b;->c:I

    .line 342
    .line 343
    const/16 v12, 0xc

    .line 344
    .line 345
    shr-long/2addr v5, v12

    .line 346
    and-long/2addr v5, v7

    .line 347
    long-to-int v5, v5

    .line 348
    int-to-byte v5, v5

    .line 349
    aput-byte v5, v1, v10

    .line 350
    .line 351
    add-int/2addr v10, v9

    .line 352
    iput v10, v2, Lsm/b$b;->c:I

    .line 353
    .line 354
    and-long v2, v3, v7

    .line 355
    .line 356
    long-to-int v2, v2

    .line 357
    int-to-byte v2, v2

    .line 358
    aput-byte v2, v1, v11

    .line 359
    .line 360
    goto :goto_2

    .line 361
    :pswitch_4
    iget v3, v2, Lsm/b$b;->c:I

    .line 362
    .line 363
    add-int/lit8 v4, v3, 0x1

    .line 364
    .line 365
    iput v4, v2, Lsm/b$b;->c:I

    .line 366
    .line 367
    iget-wide v4, v2, Lsm/b$b;->a:J

    .line 368
    .line 369
    shr-long/2addr v4, v6

    .line 370
    and-long/2addr v4, v7

    .line 371
    long-to-int v2, v4

    .line 372
    int-to-byte v2, v2

    .line 373
    aput-byte v2, v1, v3

    .line 374
    .line 375
    goto :goto_2

    .line 376
    :pswitch_5
    iget v3, v2, Lsm/b$b;->c:I

    .line 377
    .line 378
    add-int/lit8 v4, v3, 0x1

    .line 379
    .line 380
    iput v4, v2, Lsm/b$b;->c:I

    .line 381
    .line 382
    iget-wide v4, v2, Lsm/b$b;->a:J

    .line 383
    .line 384
    shr-long/2addr v4, v9

    .line 385
    and-long/2addr v4, v7

    .line 386
    long-to-int v2, v4

    .line 387
    int-to-byte v2, v2

    .line 388
    aput-byte v2, v1, v3

    .line 389
    .line 390
    :cond_5
    :goto_2
    return-void

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d([BILsm/b$b;)V
    .locals 3
    .param p3    # Lsm/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p3, Lsm/b$b;->b:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lsm/b;->b(Lsm/b$b;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p3, Lsm/b$b;->b:[B

    .line 14
    .line 15
    iget v1, p3, Lsm/b$b;->d:I

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    iget p1, p3, Lsm/b$b;->d:I

    .line 22
    .line 23
    add-int/2addr p1, p2

    .line 24
    iput p1, p3, Lsm/b$b;->d:I

    .line 25
    .line 26
    iget p2, p3, Lsm/b$b;->c:I

    .line 27
    .line 28
    if-lt p1, p2, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    iput-object p1, p3, Lsm/b$b;->b:[B

    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private e(ILsm/b$b;)[B
    .locals 2
    .param p2    # Lsm/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p2, Lsm/b$b;->b:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x2000

    .line 6
    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-array p1, p1, [B

    .line 12
    .line 13
    iput-object p1, p2, Lsm/b$b;->b:[B

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p2, Lsm/b$b;->c:I

    .line 17
    .line 18
    iput p1, p2, Lsm/b$b;->d:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v1, p2, Lsm/b$b;->c:I

    .line 22
    .line 23
    add-int/2addr v1, p1

    .line 24
    array-length p1, v0

    .line 25
    sub-int p1, v1, p1

    .line 26
    .line 27
    if-lez p1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p2, v1}, Lsm/b;->f(Lsm/b$b;I)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    :goto_0
    iget-object p1, p2, Lsm/b$b;->b:[B

    .line 35
    .line 36
    return-object p1
.end method

.method private f(Lsm/b$b;I)[B
    .locals 3
    .param p1    # Lsm/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lsm/b$b;->b:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    mul-int/lit8 v0, v0, 0x2

    .line 5
    .line 6
    invoke-direct {p0, v0, p2}, Lsm/b;->a(II)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-gez v1, :cond_0

    .line 11
    .line 12
    move v0, p2

    .line 13
    :cond_0
    const v1, 0x7ffffff7

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0, v1}, Lsm/b;->a(II)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_1

    .line 21
    .line 22
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :cond_1
    new-array p2, v0, [B

    .line 27
    .line 28
    iget-object v0, p1, Lsm/b$b;->b:[B

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput-object p2, p1, Lsm/b$b;->b:[B

    .line 36
    .line 37
    return-object p2
.end method


# virtual methods
.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lsm/b;->h([B)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public h([B)Ljava/lang/String;
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lsm/b$b;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lsm/b$b;-><init>(Lsm/b$a;)V

    .line 11
    .line 12
    .line 13
    array-length v1, p1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {p0, p1, v2, v1, v0}, Lsm/b;->c([BIILsm/b$b;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    invoke-direct {p0, p1, v2, v1, v0}, Lsm/b;->c([BIILsm/b$b;)V

    .line 20
    .line 21
    .line 22
    iget p1, v0, Lsm/b$b;->c:I

    .line 23
    .line 24
    new-array v1, p1, [B

    .line 25
    .line 26
    invoke-direct {p0, v1, p1, v0}, Lsm/b;->d([BILsm/b$b;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 38
    .line 39
    .line 40
    return-object v0
.end method
